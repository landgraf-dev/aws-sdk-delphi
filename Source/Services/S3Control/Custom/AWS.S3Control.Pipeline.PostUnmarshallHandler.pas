unit AWS.S3Control.Pipeline.PostUnmarshallHandler;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Runtime.Model,
  AWS.SDKUtils;

type
  TAmazonS3ControlPostUnmarshallHandler = class(TPipelineHandler)
  strict private
    class procedure ProcessResponseHandlers(AExecutionContext: TExecutionContext); static;
  strict protected
    procedure PostInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3ControlPostUnmarshallHandler }

procedure TAmazonS3ControlPostUnmarshallHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  inherited InvokeSync(AExecutionContext);
  PostInvoke(AExecutionContext);
end;

procedure TAmazonS3ControlPostUnmarshallHandler.PostInvoke(AExecutionContext: TExecutionContext);
begin
  ProcessResponseHandlers(AExecutionContext);
end;

class procedure TAmazonS3ControlPostUnmarshallHandler.ProcessResponseHandlers(AExecutionContext: TExecutionContext);
begin
  var response := AExecutionContext.ResponseContext.Response;
  var httpResponse := AExecutionContext.ResponseContext.HttpResponse;
//  var metrics := AExecutionContext.RequestContext.Metrics;

  if httpResponse.IsHeaderPresent(THeaderKeys.XAmzId2Header) then
  begin
    var headerValue := httpResponse.GetHeaderValue(THeaderKeys.XAmzId2Header);

    // Make sure ResponseMetadata is set
    if response.ResponseMetadata = nil then
      response.ResponseMetadata := TResponseMetadata.Create;

    response.ResponseMetadata.Metadata.Add(THeaderKeys.XAmzId2Header, headerValue);
  end;
end;

end.
