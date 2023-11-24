unit AWS.S3Control.Pipeline.ExceptionHandler;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Runtime.Model,
  AWS.SDKUtils;

type
  TAmazonS3ControlExceptionHandler = class(TPipelineHandler)
  strict private
    class procedure ExtractAmazonIdHeader(AExecutionContext: TExecutionContext; AException: Exception); static;
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3ControlExceptionHandler }

class procedure TAmazonS3ControlExceptionHandler.ExtractAmazonIdHeader(AExecutionContext: TExecutionContext;
  AException: Exception);
begin
//  if AException in EAmazonS3ControlException then
//  begin
//    var amazonS3ControlException := AException as EAmazonS3ControlException;
//  end;
end;

procedure TAmazonS3ControlExceptionHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  try
    inherited InvokeSync(AExecutionContext);
  except
    on E: Exception do
    begin
      ExtractAmazonIdHeader(AExecutionContext, E);
      raise;
    end;
  end;
end;

end.
