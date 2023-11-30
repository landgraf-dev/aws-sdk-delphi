unit AWS.S3.Pipeline.KmsHandler;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Internal.Request,
  AWS.RegionEndpoints,
  AWS.Runtime.Contexts,
  AWS.S3.Model.GetObjectRequest,
  AWS.S3.Util.AmazonS3Uri;

type
  TAmazonS3KmsHandler = class(TPipelineHandler)
  public
    class procedure EvaluateIfSigV4Required(Request: IRequest); static;
  strict protected
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3KmsHandler }

class procedure TAmazonS3KmsHandler.EvaluateIfSigV4Required(Request: IRequest);
begin
  var amazonS3Uri: TAmazonS3Uri := nil;
  try
    if (Request is TGetObjectRequest) and TAmazonS3Uri.TryParseAmazonS3Uri(Request.Endpoint, amazonS3Uri) then
    begin
      if (amazonS3Uri.Region = nil) or (amazonS3Uri.Region.SystemName <> TRegionEndpoints.USEast1.SystemName) then
        Request.UseSigV4 := True;
    end;
  finally
    amazonS3Uri.Free;
  end;
end;

procedure TAmazonS3KmsHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

procedure TAmazonS3KmsHandler.PreInvoke(AExecutionContext: TExecutionContext);
begin
  var request := AExecutionContext.RequestContext.Request;
  EvaluateIfSigV4Required(request);
end;

end.
