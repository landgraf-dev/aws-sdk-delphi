unit AWS.Pipeline.ErrorHandler;

interface

uses
  System.Generics.Collections, System.SysUtils,
  Bcl.Logging,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Runtime.ExceptionHandler,
  AWS.Internal.WebResponseData;

type
  TErrorHandler = class(TPipelineHandler)
  strict private
    FExceptionHandlers: TDictionary<TClass, IExceptionHandler>;
    function ProcessException(AExecutionContext: TExecutionContext; AException: Exception): Boolean;
  public
    constructor Create(ALogger: ILogger);
    destructor Destroy; override;
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
    property ExceptionHandlers: TDictionary<TClass, IExceptionHandler> read FExceptionHandlers;
  end;

implementation

uses
  AWS.Internal.HttpErrorResponseExceptionHandler;

{ TErrorHandler }

constructor TErrorHandler.Create(ALogger: ILogger);
begin
  inherited Create;
  Logger := ALogger;
  FExceptionHandlers := TDictionary<TClass, IExceptionHandler>.Create;
  FExceptionHandlers.Add(EHttpErrorResponseException, THttpErrorResponseExceptionHandler.Create(Logger));
end;

destructor TErrorHandler.Destroy;
begin
  FExceptionHandlers.Free;
  inherited;
end;

procedure TErrorHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  try
    inherited InvokeSync(AExecutionContext)
  except
    on E: Exception do
    begin
      if ProcessException(AExecutionContext, E) then
        raise;
    end;
  end;
end;

function TErrorHandler.ProcessException(AExecutionContext: TExecutionContext; AException: Exception): Boolean;
var
  ExceptionType: TClass;
  ExceptionHandler: IExceptionHandler;
begin
  Logger.Error(Format('An exception of type %s was handled in ErrorHandler', [AException.ClassName]));

  ExceptionType := AException.ClassType;
  repeat
    ExceptionHandler := nil;
    if ExceptionHandlers.TryGetValue(ExceptionType, ExceptionHandler) then
      Exit(ExceptionHandler.Handle(AExecutionContext, AException));
    ExceptionType := ExceptionType.ClassParent;
  until (ExceptionType = Exception) or (ExceptionType = nil);
  Result := True;
end;

end.
