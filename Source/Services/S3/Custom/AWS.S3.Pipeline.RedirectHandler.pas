unit AWS.S3.Pipeline.RedirectHandler;

interface

uses
  AWS.Pipeline.RedirectHandler,
  AWS.Pipeline.Signer,
  AWS.Runtime.Contexts,
  AWS.SDKUtils,
  AWS.S3.Config,
  AWS.S3.Internal.AWSConfigsS3,
  AWS.S3.Pipeline.KmsHandler,
  AWS.S3.Util.AmazonS3Uri;

type
  TAmazonS3RedirectHandler = class(TRedirectHandler)
  protected
    procedure FinalizeForRedirect(AExecutionContext: TExecutionContext; const RedirectedLocation: string); override;
  end;

implementation

{ TAmazonS3RedirectHandler }

procedure TAmazonS3RedirectHandler.FinalizeForRedirect(AExecutionContext: TExecutionContext; const RedirectedLocation: string);
begin
  var request := AExecutionContext.RequestContext.Request;
  if request.UseChunkEncoding then
  begin
    if request.Headers.ContainsKey(THeaderKeys.XAmzDecodedContentLengthHeader) then
      request.Headers.AddOrSetValue(THeaderKeys.ContentLengthHeader, request.Headers[THeaderKeys.XAmzDecodedContentLengthHeader]);
  end;

  if request.Headers.ContainsKey(THeaderKeys.HostHeader) then
    request.Headers.Remove(THeaderKeys.HostHeader);

  // FinalizeForRedirect() sets the correct endpoint as per the redirected location.
  inherited FinalizeForRedirect(AExecutionContext, RedirectedLocation);

  // Evaluate if this request requires SigV4. The endpoint set by FinalizeForRedirect()
  // is one of the inputs to decide if SigV4 is required.
  TAmazonS3KmsHandler.EvaluateIfSigV4Required(AExecutionContext.RequestContext.Request);

  var redirect := TAmazonS3Uri.Create(RedirectedLocation);
  try
    if TAWSConfigsS3.UseSignatureVersion4 or request.UseSigV4
      or (redirect.Region.GetEndpointForService('s3').SignatureVersionOverride = '4')
      or (redirect.Region.GetEndpointForService('s3').SignatureVersionOverride = '') then
    begin
      // Resign if sigV4 is enabled, the request explicitly requires SigV4 or if the redirected region mandates sigV4.
      // resign appropriately for the redirected region, re-instating the user's client
      // config to original state when done
      request.AuthenticationRegion := redirect.Region.SystemName;
      TSigner.SignRequest(AExecutionContext.RequestContext);
    end;
  finally
    redirect.Free;
  end;
end;

end.
