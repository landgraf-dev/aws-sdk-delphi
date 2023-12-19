unit AWS.Biz.Logging;

interface

uses
  System.Rtti,
  Bcl.Logging,
  AWS.Lib.Logging;

type
  TBizLogger = class(TInterfacedObject, AWS.Lib.Logging.ILogger)
  strict private
    FBizLogger: Bcl.Logging.ILogger;
  private
    procedure Error(const AValue: TValue);
    procedure Warning(const AValue: TValue);
    procedure Info(const AValue: TValue);
    procedure Trace(const AValue: TValue);
    procedure Debug(const AValue: TValue);
  public
    constructor Create(ABizLogger: Bcl.Logging.ILogger);
    property BizLogger: Bcl.Logging.ILogger read FBizLogger;
  end;


  TBizLoggerFactory = class(TInterfacedObject, AWS.Lib.Logging.ILoggerFactory)
    function GetLogger(const Name: string): ILogger;
  end;

procedure AWSRegisterBizLogger; overload;

implementation

procedure AWSRegisterBizLogger; overload;
begin
  AWS.Lib.Logging.LogManager.Factory := TBizLoggerFactory.Create;
end;

{ TBizLoggerFactory }

function TBizLoggerFactory.GetLogger(const Name: string): ILogger;
begin
  Result := TBizLogger.Create(Bcl.Logging.LogManager.Factory.GetLogger(Name));
end;

{ TBizLogger }

constructor TBizLogger.Create(ABizLogger: Bcl.Logging.ILogger);
begin
  inherited Create;
  FBizLogger := ABizLogger;
end;

procedure TBizLogger.Debug(const AValue: TValue);
begin
  FBizLogger.Debug(AValue);
end;

procedure TBizLogger.Error(const AValue: TValue);
begin
  FBizLogger.Error(AValue);
end;

procedure TBizLogger.Info(const AValue: TValue);
begin
  FBizLogger.Info(AValue);
end;

procedure TBizLogger.Trace(const AValue: TValue);
begin
  FBizLogger.Trace(AValue);
end;

procedure TBizLogger.Warning(const AValue: TValue);
begin
  FBizLogger.Warning(AValue);
end;

end.
