unit AWS.S3Control.Pipeline.PostMarshallHandler;

interface

uses
  System.SysUtils,
  AWS.Arn,
  AWS.Internal.PipelineHandler,
  AWS.RegionEndpoint,
  AWS.Runtime.Contexts,
  AWS.Runtime.Exceptions,
  AWS.S3Control.Internal.S3ArnUtils,
  AWS.S3Control.Internal.S3OutpostResource,
  AWS.S3Control.Internal.S3Resource,
  AWS.SDKUtils;

type
  TAmazonS3ControlPostMarshallHandler = class(TPipelineHandler)
  strict private
    class procedure ProcessRequestHandlers(AExecutionContext: TExecutionContext); static;
  strict protected
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3ControlPostMarshallHandler }

procedure TAmazonS3ControlPostMarshallHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

procedure TAmazonS3ControlPostMarshallHandler.PreInvoke(AExecutionContext: TExecutionContext);
begin
  ProcessRequestHandlers(AExecutionContext);
end;

class procedure TAmazonS3ControlPostMarshallHandler.ProcessRequestHandlers(AExecutionContext: TExecutionContext);
begin
  var request := AExecutionContext.RequestContext.Request;
  var config := AExecutionContext.RequestContext.ClientConfig;

  //If a ServiceURL is set the config ClientRegion should be null. Under this case
  //the region needs to be determined from the ServiceURL.
  var useRegion: IRegionEndpointEx := config.RegionEndpoint;
  if (useRegion = nil) and not string.IsNullOrEmpty(config.ServiceURL) then
  begin
    var regionName := TAWSSDKUtils.DetermineRegion(config.ServiceURL);
    useRegion := TRegionEndpoint.GetBySystemName(regionName);
  end;

  var nonArnOutpostId: string;
  var s3Arn := Default(TArn);
  if TS3ArnUtils.RequestContainsArn(request, s3Arn) then
  begin
    var s3Resource: IS3Resource := nil;;
    if TS3ArnUtils.IsOutpostArn(s3Arn) then
    begin
      if not TS3ArnUtils.IsValidService(s3Arn) then
        raise EAmazonClientException.CreateFmt('Invalid ARN: %s, not S3 Outposts ARN', [s3Arn.ToString]);
      s3Resource := TS3ArnUtils.ParseOutpost(s3Arn);
      request.Headers[THeaderKeys.XAmzOutpostId] := (s3Resource as TS3OutpostResource).OutpostId;
    end;
    if s3Resource <> nil then
    begin
      s3Resource.ValidateArnWithClientConfig(config, useRegion);
      if string.IsNullOrEmpty(config.ServiceURL) then
        request.Endpoint := s3Resource.GetEndpoint(config)
      else
        request.Endpoint := TUri.Create(config.ServiceURL);

      request.UseSigV4 := true;
      request.CanonicalResourcePrefix := '/' + s3Resource.FullResourceName;
      request.OverrideSigningServiceName := s3Arn.Service;

      // The access point arn can be using a region different from the configured region for the service client.
      // If so be sure to set the authentication region so the signer will use the correct region.
      request.AuthenticationRegion := s3Arn.Region;

      request.Headers[THeaderKeys.XAmzAccountId] := s3Arn.AccountId;

      // replace the ARNs in the resource path or query params with the extracted name of the resource
      // These methods assume that there is max 1 Arn in the PathResources or Parameters
      TS3ArnUtils.ReplacePathResourceArns(request.PathResources, s3Resource.Name);
      TS3ArnUtils.ReplacePathResourceArns(request.Parameters, s3Resource.Name);
    end;
  end
  else
  if TS3ArnUtils.DoesRequestHaveOutpostId(request.OriginalRequest, nonArnOutpostId) then
  begin
    if not TS3OutpostResource.IsValidOutpostId(nonArnOutpostId) then
      raise EAmazonClientException.Create('Invalid outpost ID. ID must contain only alphanumeric characters and dashes');

    request.OverrideSigningServiceName := TS3OutpostResource.S3OutpostsService;
    if string.IsNullOrEmpty(config.ServiceURL) then
      request.Endpoint := TS3ArnUtils.GetNonStandardOutpostIdEndpoint(config)
    else
      request.Endpoint := TUri.Create(config.ServiceURL);
    request.Headers[THeaderKeys.XAmzOutpostId] := nonArnOutpostId;
  end;
end;

end.
