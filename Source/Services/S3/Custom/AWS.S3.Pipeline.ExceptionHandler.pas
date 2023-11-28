unit AWS.S3.Pipeline.ExceptionHandler;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Runtime.Model,
  AWS.SDKUtils,
  AWS.S3.ClientExtensions;

type
  TAmazonS3ExceptionHandler = class(TPipelineHandler)
  strict protected
    procedure HandleException(AExecutionContext: TExecutionContext; AException: Exception);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3ExceptionHandler }

procedure TAmazonS3ExceptionHandler.HandleException(AExecutionContext: TExecutionContext; AException: Exception);
begin
  {$MESSAGE WARN 'Recover hash streams'}

  TAmazonS3ClientExtensions.CleanupRequest(AExecutionContext.RequestContext.OriginalRequest);
end;

procedure TAmazonS3ExceptionHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  try
    inherited InvokeSync(AExecutionContext);
  except
    on E: Exception do
    begin
      HandleException(AExecutionContext, E);
      raise;
    end;
  end;
end;

end.
