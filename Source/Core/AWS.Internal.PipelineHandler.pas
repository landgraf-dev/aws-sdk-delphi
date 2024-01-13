unit AWS.Internal.PipelineHandler;

interface

uses
  System.SysUtils,
  AWS.Lib.Logging,
  AWS.Runtime.Contexts;

type
  IPipelineHandler = interface
    function GetLogger: ILogger;
    procedure SetLogger(const Value: ILogger);
    function GetInnerHandler: IPipeLineHandler;
    procedure SetInnerHandler(const Value: IPipeLineHandler);
    function GetOuterHandler: IPipeLineHandler;
    procedure SetOuterHandler(const Value: IPipeLineHandler);

    property Logger: ILogger read GetLogger write SetLogger;
    property InnerHandler: IPipeLineHandler read GetInnerHandler write SetInnerHandler;
    property OuterHandler: IPipeLineHandler read GetOuterHandler write SetOuterHandler;
    procedure InvokeSync(AExecutionContext: TExecutionContext);
  end;

  TPipelineHandler = class(TInterfacedObject, IPipelineHandler)
  strict private
    FLogger: ILogger;
    FInnerHandler: IPipelineHandler;
    FOuterHandler: IPipelineHandler;
    function GetInnerHandler: IPipeLineHandler;
    procedure SetInnerHandler(const Value: IPipeLineHandler);
    function GetOuterHandler: IPipeLineHandler;
    procedure SetOuterHandler(const Value: IPipeLineHandler);
  protected
    function GetLogger: ILogger; virtual;
    procedure SetLogger(const Value: ILogger); virtual;
  public
    property Logger: ILogger read GetLogger write SetLogger;
    property InnerHandler: IPipeLineHandler read GetInnerHandler write SetInnerHandler;
    property OuterHandler: IPipeLineHandler read GetOuterHandler write SetOuterHandler;
    procedure InvokeSync(AExecutionContext: TExecutionContext); virtual;
  end;

implementation

{ TPipelineHandler }

function TPipelineHandler.GetInnerHandler: IPipeLineHandler;
begin
  Result := FInnerHandler;
end;

function TPipelineHandler.GetLogger: ILogger;
begin
  Result := FLogger;
end;

function TPipelineHandler.GetOuterHandler: IPipeLineHandler;
begin
  Result := FOuterHandler;
end;

procedure TPipelineHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  if InnerHandler = nil then
    raise EInvalidOpException.Create('Cannot invoke InnerHandler. InnerHandler is not set');

  InnerHandler.InvokeSync(AExecutionContext);
end;

procedure TPipelineHandler.SetInnerHandler(const Value: IPipeLineHandler);
begin
  FInnerHandler := Value;
end;

procedure TPipelineHandler.SetLogger(const Value: ILogger);
begin
  FLogger := Value;
end;

procedure TPipelineHandler.SetOuterHandler(const Value: IPipeLineHandler);
begin
  FOuterHandler := Value;
end;

end.
