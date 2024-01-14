unit AWS.S3.Client.Extensions;

interface

uses
  System.SysUtils, System.DateUtils,
  AWS.Arn,
  AWS.Auth.Signer,
  AWS.Auth.NullSigner,
  AWS.Internal.DefaultRequest,
  AWS.Internal.Request,
  AWS.Lib.Uri,
  AWS.Pipeline.EndpointResolver,
  AWS.RegionEndpoint,
  AWS.RegionEndpoints,
  AWS.Runtime.Client,
  AWS.Runtime.ClientConfig,
  AWS.Runtime.Contexts,
  AWS.Runtime.Model,
  AWS.SDKUtils,
  AWS.S3.Enums,
  AWS.S3.Exception,
  AWS.S3.ArnExtensions,
  AWS.S3.Internal.AWSConfigsS3,
  AWS.S3.Internal.S3Signer,
  AWS.S3.Internal.S3Transforms,
  AWS.S3.Model.GetPresignedUrlRequest,
  AWS.S3.Pipeline.PostMarshallHandler,
  AWS.S3.Util.AmazonS3Util;

type
  TAmazonS3ClientExtensions = class
  strict private
    class function GetSecondsUntilExpiration(Config: IClientConfig; Request: IGetPreSignedUrlRequest; Aws4Signing: Boolean): Int64; static;
    class function Marshall(Config: IClientConfig; GetPreSignedUrlRequest: IGetPreSignedUrlRequest;
      const AccessKey, Token: string; Aws4Signing: Boolean): IRequest; static;
    class function DetermineProtocol(Config: IClientConfig): TProtocol; static;
  public
    class function GetPreSignedURLInternal(Client: IAmazonService; Request: IGetPresignedUrlRequest; UseSigV2Fallback: Boolean = True): string; static;
  public
    class function GetPresignedUrl(Client: IAmazonService; Request: IGetPresignedUrlRequest): string; static;
  end;

implementation

{ TAmazonS3ClientExtensions }

type
  THackClient = class(TAmazonServiceClient)
  end;

class function TAmazonS3ClientExtensions.GetPreSignedURLInternal(Client: IAmazonService; Request: IGetPresignedUrlRequest;
  UseSigV2Fallback: Boolean): string;
var
  Cl: THackClient;
begin
  Cl := THackClient(Client as TAmazonServiceClient);

  if Cl.Credentials = nil then
    raise EAmazonS3Exception.Create('Credentials must be specified, cannot call method anonymously');

  if Request = nil then
    raise EArgumentNilException.Create('The PreSignedUrlRequest specified is null');

  if not Request.IsSetExpires then
    raise EInvalidOpException.Create('The Expires specified is null');

  var aws4Signing := TAWSConfigsS3.UseSignatureVersion4;

  var Arn: TArn;
  var accessPoint: string;

  if TArn.TryParse(request.BucketName, Arn) and
    (TArnExtensions.TryParseAccessPoint(Arn, accessPoint) or TArnExtensions.IsOutpostArn(Arn)) then
    Aws4Signing := True
  else
  begin
    var region := TAWS4Signer.DetermineSigningRegion(Cl.Config, 's3', nil, nil);
    if aws4Signing and string.IsNullOrEmpty(region) then
      raise EInvalidOpException.Create('To use AWS4 signing, a region must be specified in the client configuration using the AuthenticationRegion or Region properties, or be determinable from the service URL.');

    var endpoint: IRegionEndpointEx := TRegionEndpoint.GetBySystemName(region);
    var s3SignatureVersionOverride := endpoint.GetEndpointForService('s3').SignatureVersionOverride;
    if (s3SignatureVersionOverride = '4') or (s3SignatureVersionOverride = '') then
      Aws4Signing := true;

    var fallbackToSigV2 := useSigV2Fallback and not TAWSConfigsS3.UseSigV4SetExplicitly;
    if (endpoint <> nil) and (endpoint.SystemName = TRegionEndpoints.USEast1.SystemName) and fallbackToSigV2 then
      aws4Signing := false;

    // If the expiration is longer than SigV4 will allow then automatically use SigV2 instead.
    // But only if the region we're signing for allows SigV2.
    if aws4Signing then
    begin
      var secondsUntilExpiration := GetSecondsUntilExpiration(cl.Config, Request, aws4Signing);
      if (secondsUntilExpiration > TAWS4PreSignedUrlSigner.MaxAWS4PreSignedUrlExpiry) and (s3SignatureVersionOverride = '2') then
        aws4Signing := False;
    end;
  end;

  var immutableCredentials := cl.Credentials.GetCredentials;
  var irequest := Marshall(cl.Config, Request, immutableCredentials.AccessKey, immutableCredentials.Token, aws4Signing);

  irequest.Endpoint := TEndpointResolver.DetermineEndpoint(cl.Config, irequest);

  var tempSigner := TNullSigner.Create;
  try
    var requestContext := TRequestContext.Create(True, tempSigner);
    try
      requestContext.Request := iRequest;
      requestContext.ClientConfig := cl.Config;
      var context := TExecutionContext.Create(requestContext, nil);
      try
        TAmazonS3PostMarshallHandler.ProcessRequestHandlers(context);

        var authorization: string;
        if aws4Signing then
        begin
          var aws4Signer := TAWS4PreSignedUrlSigner.Create;
          try
            var signingResult := aws4Signer.SignRequest(irequest, cl.Config,
              immutableCredentials.AccessKey, immutableCredentials.SecretKey);
            try
              authorization := '&' + signingResult.ForQueryParameters;
            finally
              signingResult.Free;
            end;
          finally
            aws4Signer.Free;
          end;
        end
        else
        begin
          TInternalS3Signer.SignRequest(irequest, immutableCredentials.AccessKey, immutableCredentials.SecretKey);
          irequest.Headers.TryGetValue(THeaderKeys.AuthorizationHeader, authorization);
          authorization := authorization.Substring(authorization.IndexOf(':') + 1);
          authorization := '&Signature=' + TAmazonS3Util.UrlEncode(authorization, false);
        end;

        Result := TAmazonServiceClient.ComposeUrl(irequest) + authorization;

        var protocol: TProtocol := DetermineProtocol(Cl.Config);
        if request.Protocol <> protocol then
        begin
          if protocol = TProtocol.Http then
            Result := Result.Replace('http://', 'https://')
          else
          if protocol = TProtocol.Https then
            Result := Result.Replace('https://', 'http://');
        end;
      finally
        context.Free;
      end;
    finally
      requestContext.Free;
    end;
  finally
    tempSigner.Free;
  end;
end;

class function TAmazonS3ClientExtensions.GetSecondsUntilExpiration(Config: IClientConfig; Request: IGetPreSignedUrlRequest;
  Aws4Signing: Boolean): Int64;
begin
  var baselineTime: TDateTime;
  if Aws4Signing then
    baselineTime := Config.CorrectedUtcNow
  else
    baselineTime := EncodeDate(1970, 1, 1);

  Result := TAWSSDKUtils.SecondsBetween(TTimeZone.Local.ToUniversalTime(Request.Expires), baselineTime);
end;

class function TAmazonS3ClientExtensions.Marshall(Config: IClientConfig; GetPreSignedUrlRequest: IGetPreSignedUrlRequest;
  const AccessKey, Token: string; Aws4Signing: Boolean): IRequest;
const
  VerbNames: array[THttpVerb] of string = ('GET', 'HEAD', 'PUT', 'DELETE');
begin
  var request: IRequest := TDefaultRequest.Create(GetPreSignedUrlRequest as TAmazonWebServiceRequest, 'AmazonS3');
  request.HttpMethod := VerbNames[getPreSignedUrlRequest.Verb];

  var headers := getPreSignedUrlRequest.Headers;
  for var key in headers.Keys do
    request.Headers.AddOrSetValue(key, headers[key]);

  TAmazonS3Util.SetMetadataHeaders(request, getPreSignedUrlRequest.Metadata);

  if GetPreSignedUrlRequest.IsSetServerSideEncryptionMethod and (GetPreSignedUrlRequest.ServerSideEncryptionMethod <> TServerSideEncryptionMethod.None) then
    Request.Headers.AddOrSetValue(THeaderKeys.XAmzServerSideEncryptionHeader, TS3Transforms.ToStringValue(GetPreSignedUrlRequest.ServerSideEncryptionMethod.Value));
  if GetPreSignedUrlRequest.IsSetServerSideEncryptionCustomerMethod then
    Request.Headers.AddOrSetValue(THeaderKeys.XAmzSSECustomerAlgorithmHeader, GetPreSignedUrlRequest.ServerSideEncryptionCustomerMethod.Value);
  if GetPreSignedUrlRequest.IsSetServerSideEncryptionKeyManagementServiceKeyId then
    Request.Headers.Add(THeaderKeys.XAmzServerSideEncryptionAwsKmsKeyIdHeader, GetPreSignedUrlRequest.ServerSideEncryptionKeyManagementServiceKeyId);

  if GetPreSignedUrlRequest.IsSetRequestPayer and (GetPreSignedUrlRequest.RequestPayer = TRequestPayer.Requester) then
    Request.Parameters.Add('x-amz-request-payer', TRequestPayer.Requester.Value);

  var queryParameters := Request.Parameters;

  var uriResourcePath := TStringBuilder.Create('/');
  try
    if not string.IsNullOrEmpty(GetPreSignedUrlRequest.BucketName) then
      uriResourcePath.Append(TS3Transforms.ToStringValue(GetPreSignedUrlRequest.BucketName));
    if not string.IsNullOrEmpty(GetPreSignedUrlRequest.Key) then
    begin
      if uriResourcePath.Length > 1 then
        uriResourcePath.Append('/');
      uriResourcePath.Append(TS3Transforms.ToStringValue(GetPreSignedUrlRequest.Key));
    end;

    var expires := GetSecondsUntilExpiration(Config, GetPreSignedUrlRequest, Aws4Signing);

    if Aws4Signing and (expires > TAWS4PreSignedUrlSigner.MaxAWS4PreSignedUrlExpiry) then
    begin
      var msg := Format('The maximum expiry period for a presigned url using AWS4 signing is %d seconds',
        [TAWS4PreSignedUrlSigner.MaxAWS4PreSignedUrlExpiry]);
      raise EArgumentException.Create(msg);
    end;

    if Aws4Signing then
      queryParameters.Add('X-Amz-Expires', IntToStr(expires))
    else
      queryParameters.Add('Expires', IntToStr(expires));

    if not string.IsNullOrEmpty(token) then
    begin
      if Aws4Signing then
        queryParameters.Add('X-Amz-Security-Token', token)
      else
        queryParameters.Add('x-amz-security-token', token);
    end;
    if not Aws4Signing then
      queryParameters.Add('AWSAccessKeyId', accessKey);
    if GetPreSignedUrlRequest.IsSetVersionId then
      Request.AddSubResource('versionId', TS3Transforms.ToStringValue(GetPreSignedUrlRequest.VersionId));

    if GetPreSignedUrlRequest.IsSetUploadId then
      Request.AddSubResource('uploadId', TS3Transforms.ToStringValue(GetPreSignedUrlRequest.UploadId));
    if GetPreSignedUrlRequest.IsSetPartNumber then
      Request.AddSubResource('partNumber', TS3Transforms.ToStringValue(GetPreSignedUrlRequest.PartNumber));

    var responseHeaderOverrides := GetPreSignedUrlRequest.ResponseHeaderOverrides;
    if responseHeaderOverrides.CacheControl <> '' then
      queryParameters.Add('response-cache-control', responseHeaderOverrides.CacheControl);
    if responseHeaderOverrides.ContentType <> '' then
      queryParameters.Add('response-content-type', responseHeaderOverrides.ContentType);
    if responseHeaderOverrides.ContentLanguage <> '' then
      queryParameters.Add('response-content-language', responseHeaderOverrides.ContentLanguage);
    if responseHeaderOverrides.Expires <> '' then
      queryParameters.Add('response-expires', responseHeaderOverrides.Expires);
    if responseHeaderOverrides.ContentDisposition <> '' then
      queryParameters.Add('response-content-disposition', responseHeaderOverrides.ContentDisposition);
    if responseHeaderOverrides.ContentEncoding <> '' then
      queryParameters.Add('response-content-encoding', responseHeaderOverrides.ContentEncoding);

    // Add custom parameters to be included and signed
    for var k in getPreSignedUrlRequest.Parameters.Keys do
      queryParameters.Add(k, getPreSignedUrlRequest.Parameters[k]);

    request.ResourcePath := uriResourcePath.ToString;
    request.UseQueryString := true;
  finally
    uriResourcePath.Free;
  end;

  Result := request;
end;

{ TAmazonS3ClientExtensions }

class function TAmazonS3ClientExtensions.DetermineProtocol(Config: IClientConfig): TProtocol;
begin
  var serviceUrl := Config.DetermineServiceURL;
  if serviceUrl.StartsWith('https', True) then
    Result := TProtocol.HTTPS
  else
    Result := TProtocol.HTTP;
end;

class function TAmazonS3ClientExtensions.GetPresignedUrl(Client: IAmazonService; Request: IGetPresignedUrlRequest): string;
begin
  Result := GetPreSignedURLInternal(Client, Request);
end;

end.
