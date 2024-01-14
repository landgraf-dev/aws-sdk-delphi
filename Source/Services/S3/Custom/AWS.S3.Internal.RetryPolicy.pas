unit AWS.S3.Internal.RetryPolicy;

interface

uses
  System.SysUtils,
  AWS.Auth.Signer,
  AWS.Internal.Auth.AWS4SignerHelper,
  AWS.Lib.Logging,
  AWS.Lib.Collections,
  AWS.Lib.Uri,
  AWS.Internal.DefaultRetryPolicy,
  AWS.Internal.StandardRetryPolicy,
  AWS.Internal.AdaptiveRetryPolicy,
  AWS.Nullable,
  AWS.RegionEndpoints,
  AWS.Runtime.Contexts,
  AWS.Runtime.Exceptions,
  AWS.S3.Model.CopyObjectRequest,
  AWS.S3.Model.CopyPartRequest,
  AWS.S3.Model.CompleteMultipartUploadRequest,
  AWS.S3.Util.BucketRegionDetector,
  AWS.S3.Util.AmazonS3Uri,
  AWS.S3.Util.S3Constants;

type
  TAmazonS3RetryPolicy = class(TDefaultRetryPolicy)
  private const
    AWS_KMS_Signature_Error = 'AWS KMS managed keys require AWS Signature Version 4';
  private
    class var RequestsWith200Error: HashSet<TClass>;
    class constructor Create;
    class destructor Destroy;
  private
    class function SharedRetryForExceptionSync(ExecutionContext: TExecutionContext; E: Exception;
      Logger: ILogger; baseRetryForException: TFunc<TExecutionContext, Exception, Boolean>): NullableBoolean; static;
    class function SharedRetryForException(ExecutionContext: TExecutionContext; E: Exception;
      retryForExceptionSync: TFunc<TExecutionContext, Exception, NullableBoolean>;
      baseRetryForException: TFunc<TExecutionContext, Exception, Boolean>): Boolean; static;
  public
    function RetryForExceptionSync(ExecutionContext: TExecutionContext; E: Exception): NullableBoolean;
  public
    function RetryForException(ExecutionContext: TExecutionContext; E: Exception): Boolean; override;
  end;

  TAmazonS3StandardRetryPolicy = class(TStandardRetryPolicy)
  public
    function RetryForExceptionSync(ExecutionContext: TExecutionContext; E: Exception): NullableBoolean;
  end;

  TAmazonS3AdaptiveRetryPolicy = class(TAdaptiveRetryPolicy)
  public
    function RetryForExceptionSync(ExecutionContext: TExecutionContext; E: Exception): NullableBoolean;
  end;

implementation

{ TAmazonS3RetryPolicy }

class constructor TAmazonS3RetryPolicy.Create;
begin
  RequestsWith200Error := HashSet<TClass>.Create;
  RequestsWith200Error.Add(TCopyObjectRequest);
  RequestsWith200Error.Add(TCopyPartRequest);
  RequestsWith200Error.Add(TCompleteMultipartUploadRequest);
end;

class destructor TAmazonS3RetryPolicy.Destroy;
begin
  RequestsWith200Error.Free;
end;

function TAmazonS3RetryPolicy.RetryForException(ExecutionContext: TExecutionContext; E: Exception): Boolean;
begin
  Result := SharedRetryForException(ExecutionContext, E,
    function(ExecutionContext: TExecutionContext; E: Exception): NullableBoolean
    begin
      Result := RetryForExceptionSync(ExecutionContext, E);
    end,
    function(ExecutionContext: TExecutionContext; E: Exception): Boolean
    begin
      Result := inherited RetryForException(ExecutionContext, E);
    end);

end;

function TAmazonS3RetryPolicy.RetryForExceptionSync(ExecutionContext: TExecutionContext; E: Exception): NullableBoolean;
begin
  Result := SharedRetryForExceptionSync(ExecutionContext, E, Logger,
    function(ExecutionContext: TExecutionContext; E: Exception): Boolean
    begin
      Result := inherited RetryForException(ExecutionContext, E);
    end);
end;

class function TAmazonS3RetryPolicy.SharedRetryForException(ExecutionContext: TExecutionContext; E: Exception;
  retryForExceptionSync: TFunc<TExecutionContext, Exception, NullableBoolean>;
  baseRetryForException: TFunc<TExecutionContext, Exception, Boolean>): Boolean;
begin
  var syncResult := retryForExceptionSync(ExecutionContext, E);
  if syncResult.HasValue then
    Exit(syncResult.Value)
  else
  begin
    var serviceException: EAmazonServiceException := nil;
    if E is EAmazonServiceException then
      serviceException := EAmazonServiceException(E);
    var correctedRegion := '';
    var s3BucketUri: TAmazonS3Uri;
    if TAmazonS3Uri.TryParseAmazonS3Uri(ExecutionContext.RequestContext.Request.Endpoint, s3BucketUri) then
    begin
      var credentials := ExecutionContext.RequestContext.ImmutableCredentials;
      if credentials <> nil then
        correctedRegion := TBucketRegionDetector.DetectMismatchWithHeadBucketFallback(s3BucketUri, serviceException, credentials);
    end;

    if correctedRegion = '' then
    begin
      Exit(baseRetryForException(executionContext, E));
    end
    else
    begin
      // change authentication region of request and signal the handler to sign again with the new region
      ExecutionContext.RequestContext.Request.AuthenticationRegion := correctedRegion;
      ExecutionContext.RequestContext.IsSigned := False;
      Exit(True);
    end;
  end;
end;

class function TAmazonS3RetryPolicy.SharedRetryForExceptionSync(ExecutionContext: TExecutionContext; E: Exception;
  Logger: ILogger; baseRetryForException: TFunc<TExecutionContext, Exception, Boolean>): NullableBoolean;
begin
  var serviceException: EAmazonServiceException := nil;
  if E is EAmazonServiceException then
    serviceException := EAmazonServiceException(E);

  if serviceException <> nil then
  begin
    if serviceException.StatusCode = 200 then
    begin
      var requestType := ExecutionContext.RequestContext.OriginalRequest.ClassType;
      if TAmazonS3RetryPolicy.RequestsWith200Error.Contains(requestType) then
      begin
        // Retry on HTTP 200 responses which contain an error response
        // CopyObject, CopyPart and CompleteMultipartUpload operations can return this
        // response.
        Exit(True);
      end;
    end;

    if serviceException.StatusCode = 400 then
    begin
      var configuredUri: IUri := TUri.Create(ExecutionContext.RequestContext.ClientConfig.DetermineServiceURL);
      if configuredUri.Host.Equals(TS3Constants.S3DefaultEndpoint) and
        (serviceException.Message.Contains(TAWS4SignerConsts.AWS4AlgorithmTag) or
         serviceException.Message.Contains(AWS_KMS_Signature_Error)) then
      begin
        // If the response message indicates AWS4 signing should have been used,
        // we've attempted to access a bucket in an AWS4-only region (e.g. EU Central (Frankfurt)) with an AWS2
        // signature and/or client not configured with the correct region.
        // Retry the request to the s3-external endpoint to yield a 307 redirect
        // that we can then follow to the correct bucket location with the expected
        // signing algorithm.
        Logger.Info(Format('Request %s: the bucket you are attempting to access should be addressed using a region-specific endpoint.'
                            + ' Additional calls will be made to attempt to determine the correct region to be used.'
                            + ' For better performance configure your client to use the correct region.',
                            [ExecutionContext.RequestContext.RequestName]));

        var r := executionContext.RequestContext.Request;
        var s3Uri := TAmazonS3Uri.Create(r.Endpoint);
        try
          // since DNS resolved, yielding an auth error from the service,
          // we're assuming we do not need to test (again) for dns compatibility
          // on the bucket name
          var tempEndpoint := Format('https://%s.%s', [s3Uri.Bucket, TS3Constants.S3AlternateDefaultEndpoint]);
          r.Endpoint := TUri.Create(tempEndpoint);

          if serviceException.Message.Contains(AWS_KMS_Signature_Error) then
          begin
            r.UseSigV4 := True;
            r.AuthenticationRegion := TRegionEndpoints.USEast1.SystemName;
            ExecutionContext.RequestContext.IsSigned := False;
          end;
          Exit(True);
        finally
          s3Uri.Free;
        end;
      end
      else
      begin
        // this means that the synchronous check is inconclusive and
        // the caller needs to check for a bucket/region mismatch
        Exit(NullableBoolean.Empty);
      end;
    end;
  end;

  Exit(baseRetryForException(executionContext, E));
end;

{ TAmazonS3StandardRetryPolicy }

function TAmazonS3StandardRetryPolicy.RetryForExceptionSync(ExecutionContext: TExecutionContext; E: Exception): NullableBoolean;
begin
  Result := TAmazonS3RetryPolicy.SharedRetryForExceptionSync(ExecutionContext, E, Logger,
    function(ExecutionContext: TExecutionContext; E: Exception): Boolean
    begin
      Result := inherited RetryForException(ExecutionContext, E);
    end);
end;

{ TAmazonS3AdaptiveRetryPolicy }

function TAmazonS3AdaptiveRetryPolicy.RetryForExceptionSync(ExecutionContext: TExecutionContext; E: Exception): NullableBoolean;
begin
  Result := TAmazonS3RetryPolicy.SharedRetryForExceptionSync(ExecutionContext, E, Logger,
    function(ExecutionContext: TExecutionContext; E: Exception): Boolean
    begin
      Result := inherited RetryForException(ExecutionContext, E);
    end);
end;

end.
