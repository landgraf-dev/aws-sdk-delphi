unit AWS.Pipeline.ErrorCallbackHandler;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts;

type
  TErrorCallbackHandler = class(TPipelineHandler)
  private
    FOnError: TProc<TExecutionContext, Exception>; 
  strict protected
    procedure HandleException(AExecutionContext: TExecutionContext; AException: Exception);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
    property OnError: TProc<TExecutionContext, Exception> read FOnError write FOnError;
  end;      
  
implementation

{ TErrorCallbackHandler }

procedure TErrorCallbackHandler.HandleException(AExecutionContext: TExecutionContext; AException: Exception);
begin
  if Assigned(FOnError) then
    OnError(AExecutionContext, AException);
end;

procedure TErrorCallbackHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  try
    inherited InvokeSync(AExecutionContext)
  except
    on E: Exception do
    begin
      HandleException(AExecutionContext, E);
      raise;
    end;
  end;
end;

end.
