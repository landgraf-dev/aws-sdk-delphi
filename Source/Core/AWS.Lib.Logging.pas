unit AWS.Lib.Logging;

{$I AWS.inc}

interface

uses
  {$IFDEF MSWINDOWS}Winapi.Windows,{$ENDIF}
  System.Generics.Collections, System.SysUtils, System.Rtti, System.SyncObjs;

type
  TLogLevel = (Trace, Debug, Info, Warning, Error);
  TLogLevels = set of TLogLevel;

const
  AllLogLevels = [Low(TLogLevel)..High(TLogLevel)];

type
  ILogger = interface
  ['{4DAAF2DA-F39D-498A-AC68-6EBFD30C121F}']
    procedure Error(const AValue: TValue);
    procedure Warning(const AValue: TValue);
    procedure Info(const AValue: TValue);
    procedure Trace(const AValue: TValue);
    procedure Debug(const AValue: TValue);
  end;

  ILoggerFactory = interface
  ['{6976E7C2-ED1D-4C63-B8BC-1D93F17402F3}']
    function GetLogger(const Name: string): ILogger;
  end;

  TLogManager = class
  strict private
    FFactory: ILoggerFactory;
    FLoggers: TDictionary<string, ILogger>;
    class var FInstance: TLogManager;
  private
    class procedure Release;
    procedure SetFactory(const Value: ILoggerFactory);
    procedure RecreateWrapperLoggers;
  public
    class function Instance: TLogManager;
  public
    constructor Create;
    destructor Destroy; override;
    function GetLogger: ILogger; overload;
    function GetLogger(const AName: string): ILogger; overload;
    function GetLogger(Clazz: TClass): ILogger; overload;
    function GetLogger(Obj: TObject): ILogger; overload;
    property Factory: ILoggerFactory read FFactory write SetFactory;
  end;

  TNullLogger = class(TInterfacedObject, ILogger)
  private
    procedure Error(const AValue: TValue);
    procedure Warning(const AValue: TValue);
    procedure Info(const AValue: TValue);
    procedure Trace(const AValue: TValue);
    procedure Debug(const AValue: TValue);
  end;

  TDefaultLoggerFactory = class(TInterfacedObject, ILoggerFactory)
  private
    function GetLogger(const Name: string): ILogger;
  end;

  TWrapperLogger = class(TInterfacedObject, ILogger)
  strict private
    FLogger: ILogger;
  private
    constructor Create(ALogger: ILogger);
    procedure Error(const AValue: TValue);
    procedure Warning(const AValue: TValue);
    procedure Info(const AValue: TValue);
    procedure Trace(const AValue: TValue);
    procedure Debug(const AValue: TValue);
  public
    property Logger: ILogger read FLogger write FLogger;
  end;

  TDebugLogger = class(TInterfacedObject, ILogger)
  private
    FLevels: TLogLevels;
    procedure Error(const AValue: TValue);
    procedure Warning(const AValue: TValue);
    procedure Info(const AValue: TValue);
    procedure Trace(const AValue: TValue);
    procedure Debug(const AValue: TValue);
  private
    procedure Log(const Level: TLogLevel; const Value: TValue);
  public
    constructor Create(ALevels: TLogLevels);
  end;

  TDebugLoggerFactory = class(TInterfacedObject, ILoggerFactory)
  private
    FLevels: TLogLevels;
    function GetLogger(const Name: string): ILogger;
  public
    constructor Create(ALevels: TLogLevels);
  end;

function LogManager: TLogManager;
procedure RegisterDebugLogger(Levels: TLogLevels = AllLogLevels);

implementation

function LogManager: TLogManager;
begin
  Result := TLogManager.Instance;
end;

procedure RegisterDebugLogger(Levels: TLogLevels = AllLogLevels);
begin
  LogManager.Factory := TDebugLoggerFactory.Create(Levels);
end;

{ TLogManager }

constructor TLogManager.Create;
begin
  FFactory := TDefaultLoggerFactory.Create;
  FLoggers := TDictionary<string, ILogger>.Create;
end;

destructor TLogManager.Destroy;
begin
  FLoggers.Free;
  inherited;
end;

function TLogManager.GetLogger: ILogger;
begin
  Result := GetLogger('');
end;

function TLogManager.GetLogger(const AName: string): ILogger;
begin
  TMonitor.Enter(Self);
  try
    if not FLoggers.TryGetValue(AName, Result) then
    begin
      Result := FFactory.GetLogger(AName);
      FLoggers.Add(AName, Result);
    end;
  finally
    TMonitor.Exit(Self);
  end;
end;

class function TLogManager.Instance: TLogManager;
var
  LocalInstance: TLogManager;
begin
  if FInstance = nil then
  begin
    LocalInstance := TLogManager.Create;
    if TInterlocked.CompareExchange<TLogManager>(FInstance, LocalInstance, nil) <> nil then
      LocalInstance.Free;
  end;
  Result := FInstance;
end;

procedure TLogManager.RecreateWrapperLoggers;
var
  LoggerPair: TPair<string, ILogger>;
  NewLogger: ILogger;
begin
  TMonitor.Enter(Self);
  try
    for LoggerPair in FLoggers do
      if LoggerPair.Value is TWrapperLogger then
      begin
        NewLogger := FFactory.GetLogger(LoggerPair.Key);
        (LoggerPair.Value as TWrapperLogger).Logger := NewLogger;
      end;
  finally
    TMonitor.Exit(Self);
  end;
end;

class procedure TLogManager.Release;
begin
  if FInstance <> nil then
    FInstance.Free;
end;

procedure TLogManager.SetFactory(const Value: ILoggerFactory);
begin
  if FFactory <> Value then
  begin
    FFactory := Value;
    RecreateWrapperLoggers;
  end;
end;

function TLogManager.GetLogger(Clazz: TClass): ILogger;
begin
  Result := GetLogger(Clazz.QualifiedClassName);
end;

function TLogManager.GetLogger(Obj: TObject): ILogger;
begin
  Result := GetLogger(Obj.ClassType);
end;

{ TNullLogger }

procedure TNullLogger.Debug(const AValue: TValue);
begin
end;

procedure TNullLogger.Error(const AValue: TValue);
begin
end;

procedure TNullLogger.Info(const AValue: TValue);
begin
end;

procedure TNullLogger.Trace(const AValue: TValue);
begin
end;

procedure TNullLogger.Warning(const AValue: TValue);
begin
end;

{ TNullLoggerFactory }

function TDefaultLoggerFactory.GetLogger(const Name: string): ILogger;
begin
  Result := TWrapperLogger.Create(ILogger(TNullLogger.Create));
end;

{ TDebugLogger }

constructor TDebugLogger.Create(ALevels: TLogLevels);
begin
  FLevels := ALevels;
end;

procedure TDebugLogger.Debug(const AValue: TValue);
begin
  Log(TLogLevel.Debug, AValue);
end;

procedure TDebugLogger.Error(const AValue: TValue);
begin
  Log(TLogLevel.Error, AValue);
end;

procedure TDebugLogger.Info(const AValue: TValue);
begin
  Log(TLogLevel.Info, AValue);
end;

procedure TDebugLogger.Log(const Level: TLogLevel; const Value: TValue);
const
  LogLevelNames: array[TLogLevel] of string = ('TRACE', 'DEBUG', 'INFO', 'WARN', 'ERROR');
var
  Msg: string;
begin
  if Level in FLevels then
  begin
    Msg := Format('[%s] [%s] [%s]', [

      FormatDateTime('yyyy"-"mm"-"dd hh":"mm":"ss"."zzz', Now),
      LogLevelNames[Level],
      Value.ToString
    ]);
    {$IFDEF MSWINDOWS}
    OutputDebugString(PChar(Msg));
    {$ENDIF}
  end;
end;

procedure TDebugLogger.Trace(const AValue: TValue);
begin
  Log(TLogLevel.Trace, AValue);
end;

procedure TDebugLogger.Warning(const AValue: TValue);
begin
  Log(TLogLevel.Warning, AValue);
end;

{ TDebugLoggerFactory }

constructor TDebugLoggerFactory.Create(ALevels: TLogLevels);
begin
  FLevels := ALevels;
end;

function TDebugLoggerFactory.GetLogger(const Name: string): ILogger;
begin
  Result := TDebugLogger.Create(FLevels);
end;

{ TWrapperLogger }

constructor TWrapperLogger.Create(ALogger: ILogger);
begin
  FLogger := ALogger;
end;

procedure TWrapperLogger.Debug(const AValue: TValue);
begin
  FLogger.Debug(AValue);
end;

procedure TWrapperLogger.Error(const AValue: TValue);
begin
  FLogger.Error(AValue);
end;

procedure TWrapperLogger.Info(const AValue: TValue);
begin
  FLogger.Info(AValue);
end;

procedure TWrapperLogger.Trace(const AValue: TValue);
begin
  FLogger.Trace(AValue);
end;

procedure TWrapperLogger.Warning(const AValue: TValue);
begin
  FLogger.Warning(AValue);
end;

initialization

finalization
  TLogManager.Release;
end.
