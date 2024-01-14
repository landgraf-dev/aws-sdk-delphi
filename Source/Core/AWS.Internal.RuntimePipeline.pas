unit AWS.Internal.RuntimePipeline;

interface

uses
  System.SysUtils,
  AWS.Lib.Logging,
  AWS.Runtime.Contexts,
  AWS.Internal.PipelineHandler;

type
  /// <summary>
  /// A runtime pipeline contains a collection of handlers which represent
  /// different stages of request and response processing.
  /// </summary>
  TRuntimePipeLine = class
  strict private
    FLogger: ILogger;
    FHandler: IPipelineHandler;
    class function GetInnermostHandler(AHandler: IPipelineHandler): IPipelineHandler;
    procedure SetHandlerProperties(AHandler: IPipelineHandler);
    procedure InsertHandler(AHandler, ACurrent: IPipelineHandler);
  public
    /// <summary>
    /// Constructor for RuntimePipeline.
    /// </summary>
    /// <param name="AHandler">The handler with which the pipeline is initalized.</param>
    constructor Create(AHandler: IPipelineHandler = nil; ALogger: ILogger = nil); overload;

    destructor Destroy; override;

    /// <summary>
    /// Constructor for RuntimePipeline.
    /// </summary>
    /// <param name="AHandlers">List of handlers with which the pipeline is initalized.</param>
    constructor Create(const AHandlers: TArray<IPipelineHandler>); overload;

    /// <summary>
    /// Retrieves a list of handlers, in the order of their execution.
    /// </summary>
    /// <returns>Handlers in the current pipeline.</returns>
    function Handlers: TArray<IPipelineHandler>;

    /// <summary>
    /// Retrieves current handlers, in the order of their execution.
    /// </summary>
    /// <returns>Handlers in the current pipeline.</returns>
    function EnumerateHandlers: TArray<IPipelineHandler>;

    /// <summary>
    /// The top-most handler in the pipeline.
    /// </summary>
    property Handler: IPipelineHandler read FHandler;

    /// <summary>
    /// Invokes the pipeline synchronously.
    /// </summary>
    /// <param name="AExecutionContext">Request context</param>
    /// <returns>Response context</returns>
    function InvokeSync(AExecutionContext: TExecutionContext): TResponseContext;

    /// <summary>
    /// Adds a new handler to the top of the pipeline.
    /// </summary>
    /// <param name="AHandler">The handler to be added to the pipeline.</param>
    procedure AddHandler(AHandler: IPipelineHandler);

    procedure AddHandlerAfter<T: TPipelineHandler>(AHandler: IPipelineHandler);
    procedure AddHandlerBefore<T: TPipelineHandler>(AHandler: IPipelineHandler);

    procedure ReplaceHandler<T: TPipelineHandler>(AHandler: IPipelineHandler);
  end;

implementation

{ TRuntimePipeLine }

constructor TRuntimePipeLine.Create(AHandler: IPipelineHandler = nil; ALogger: ILogger = nil);
begin
  inherited Create;
  if FLogger = nil then
    FLogger := LogManager.GetLogger(TRuntimePipeline)
  else
    FLogger := ALogger;
  if AHandler <> nil then
  begin
    FHandler := AHandler;
    FHandler.Logger := FLogger;
  end;
end;

procedure TRuntimePipeLine.AddHandler(AHandler: IPipelineHandler);
var
  InnerMostHandler: IPipelineHandler;
begin
  InnerMostHandler := GetInnermostHandler(AHandler);
  if FHandler <> nil then
  begin
    InnerMostHandler.InnerHandler := FHandler;
    FHandler.OuterHandler := InnerMostHandler;
  end;

  FHandler := AHandler;
  SetHandlerProperties(AHandler);
end;

procedure TRuntimePipeLine.AddHandlerAfter<T>(AHandler: IPipelineHandler);
var
  Current: IPipelineHandler;
begin
  if AHandler = nil then
    raise EArgumentNilException.Create('AHandler');

  Current := FHandler;
  while Current <> nil do
  begin
    if (Current as TObject).ClassType = T then
    begin
      InsertHandler(AHandler, Current);
      SetHandlerProperties(AHandler);
      Exit;
    end;
    Current := Current.InnerHandler;
  end;
  raise EInvalidOpException.CreateFmt('Cannot find a handler of type %s', [T.ClassName]);
end;

procedure TRuntimePipeLine.AddHandlerBefore<T>(AHandler: IPipelineHandler);
var
  Current: IPipelineHandler;
begin
  if AHandler = nil then
    raise EArgumentNilException.Create('AHandler');

  if (FHandler as TObject).ClassType = T then
  begin
    // Add the handler to the top of the pipeline
    AddHandler(AHandler);
    SetHandlerProperties(AHandler);
    Exit;
  end;

  Current := FHandler;
  while Current <> nil do
  begin
    if (Current.InnerHandler <> nil) and
      ((Current.InnerHandler as TObject).ClassType = T) then
    begin
      InsertHandler(AHandler, Current);
      SetHandlerProperties(AHandler);
      Exit;
    end;
    Current := Current.InnerHandler;
  end;
  raise EInvalidOpException.CreateFmt('Cannot find a handler of type %s', [T.ClassName]);
end;

constructor TRuntimePipeLine.Create(const AHandlers: TArray<IPipelineHandler>);
var
  Handler: IPipelineHandler;
begin
  inherited Create;
  FLogger := LogManager.GetLogger(TRuntimePipeline);
  for Handler in AHandlers do
    AddHandler(Handler);
end;

destructor TRuntimePipeLine.Destroy;
var
  Current: IPipelineHandler;
begin
  // Clear cyclical interface references to properly destroy the handlers
  Current := FHandler;
  while Current <> nil do
  begin
    Current.OuterHandler := nil;
    Current := Current.InnerHandler;
  end;
  inherited;
end;

function TRuntimePipeLine.EnumerateHandlers: TArray<IPipelineHandler>;
var
  LocalHandler: IPipelineHandler;
begin
  SetLength(Result, 0);
  LocalHandler := Self.Handler;
  while LocalHandler <> nil do
  begin
    SetLength(Result, Length(Result) + 1);
    Result[Length(Result) - 1] := LocalHandler;
    LocalHandler := LocalHandler.InnerHandler;
  end;
end;

class function TRuntimePipeLine.GetInnermostHandler(AHandler: IPipelineHandler): IPipelineHandler;
var
  Current: IPipelineHandler;
begin
  Current := AHandler;
  while (Current.InnerHandler <> nil) do
    Current := Current.InnerHandler;
  Result := Current;
end;

function TRuntimePipeLine.Handlers: TArray<IPipelineHandler>;
begin
  Result := EnumerateHandlers;
end;

procedure TRuntimePipeLine.InsertHandler(AHandler, ACurrent: IPipelineHandler);
var
  Next: IPipelineHandler;
  InnerMostHandler: IPipelineHandler;
begin
  Next := ACurrent.InnerHandler;
  ACurrent.InnerHandler := AHandler;
  AHandler.OuterHandler := ACurrent;
  if Next <> nil then
  begin
    InnerMostHandler := GetInnermostHandler(AHandler);
    InnerMostHandler.InnerHandler := Next;
    Next.OuterHandler := InnerMostHandler;
  end;
end;

function TRuntimePipeLine.InvokeSync(AExecutionContext: TExecutionContext): TResponseContext;
begin
  FHandler.InvokeSync(AExecutionContext);
  Result := AExecutionContext.ResponseContext;
end;

procedure TRuntimePipeLine.ReplaceHandler<T>(AHandler: IPipelineHandler);
begin
  if AHandler = nil then
    raise EArgumentNilException.Create('AHandler');

  var previous: IPipelineHandler := nil;
  var current := FHandler;
  while current <> nil do
  begin
    if (current as TObject).ClassType = T then
    begin
      // Replace current with handler.
      handler.InnerHandler := current.InnerHandler;
      handler.OuterHandler := current.OuterHandler;
      if previous <> nil then
      begin
        // Wireup previous handler
        previous.InnerHandler := AHandler;
      end
      else
      begin
        // Current is the top, replace it.
        FHandler := AHandler;
      end;

      if current.InnerHandler <> nil then
      begin
        // Wireup next handler
        current.InnerHandler.OuterHandler := AHandler;
      end;

      // Cleanup current
      current.InnerHandler := nil;
      current.OuterHandler := nil;

      SetHandlerProperties(AHandler);
      Exit;
    end;
    previous := current;
    current := current.InnerHandler;
  end;

  raise EInvalidOpException.CreateFmt('Cannot find a handler of type %s', [T.ClassName]);
end;

procedure TRuntimePipeLine.SetHandlerProperties(AHandler: IPipelineHandler);
begin
  AHandler.Logger := FLogger;
end;

end.
