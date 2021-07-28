unit AWS.SQS.Pipeline.ProcessRequestHandler;

interface

uses
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Internal.Request;

type
  TProcessRequestHandler = class(TPipelineHandler)
  strict protected
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

uses
  Sparkle.Uri;

{ TProcessRequestHandler }

procedure TProcessRequestHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

procedure TProcessRequestHandler.PreInvoke(AExecutionContext: TExecutionContext);
var
  Request: IRequest;
  Uri: TUri;
begin
  Request := AExecutionContext.RequestContext.Request;
  if Request.Parameters.ContainsKey('QueueUrl') then
  begin
    Uri := TUri.Create(Request.Parameters['QueueUrl']);
    try
      Request.Parameters.Remove('QueueUrl');
      Request.ResourcePath := Uri.OriginalPath;
    finally
      Uri.Free;
    end;
  end;
end;

end.
