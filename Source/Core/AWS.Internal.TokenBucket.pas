unit AWS.Internal.TokenBucket;

interface

uses
  System.SysUtils, System.Math, System.DateUtils,
  AWS.Nullable,
  AWS.SDKUtils;

type
  TTokenBucket = class
  private const
    MaxAttempts = 15;
  private
    FBucketLock: TObject;
    FMinFillRate: Double;
    FMinCapacity: Double;
    FBeta: Double;
    FScaleConstant: Double;
    FSmooth: Double;
  private
    class var FEpoch: TDateTime;
    class constructor Create;
  private
    FFillRate: NullableDouble;
    FMaxCapacity: NullableDouble;
    FCurrentCapacity: Double;
    FLastTimestamp: NullableDouble;
    FMeasuredTxRate: Double;
    FLastTxRateBucket: Double;
    FRequestCount: Int64;
    FLastMaxRate: Double;
    FLastThrottleTime: Double;
    FTimeWindow: Double;
    FEnabled: Boolean;
    function SetupAcquireToken(Amount: Double): NullableBoolean;
    function ObtainCapacity(Amount: Double): Integer;
    class function GetTimeInSeconds: Double; static;
  protected
    procedure TokenBucketRefill; virtual;
    procedure TokenBucketUpdateRate(NewRps: Double); virtual;
    procedure UpdateMeasuredRate; virtual;
    procedure CalculateTimeWindow; virtual;
    function CUBICSuccess(Timestamp: Double): Double; virtual;
    function CUBICThrottle(RateToUse: Double): Double; virtual;
    function CalculateWait(Amount, CurCapacity, AFillRate: Double): Integer; virtual;
    procedure WaitForToken(DelayMs: Integer); virtual;
    function GetTimestamp: Double; virtual;
    property FillRate: NullableDouble read FFillRate write FFillRate;
    property MaxCapacity: NullableDouble read FMaxCapacity write FMaxCapacity;
    property CurrentCapacity: Double read FCurrentCapacity write FCurrentCapacity;
    property LastTimestamp: NullableDouble read FLastTimestamp write FLastTimestamp;
    property MeasuredTxRate: Double read FMeasuredTxRate write FMeasuredTxRate;
    property LastTxRateBucket: Double read FLastTxRateBucket write FLastTxRateBucket;
    property RequestCount: Int64 read FRequestCount write FRequestCount;
    property LastMaxRate: Double read FLastMaxRate write FLastMaxRate;
    property LastThrottleTime: Double read FLastThrottleTime write FLastThrottleTime;
    property TimeWindow: Double read FTimeWindow write FTimeWindow;
    property Enabled: Boolean read FEnabled write FEnabled;
  public
    constructor Create; overload;
    constructor Create(AMinFillRate, AMinCapacity, ABeta, AScaleConstant, ASmooth: Double); overload;
    destructor Destroy; override;

    procedure UpdateClientSendingRate(IsThrottlingError: Boolean);
    function TryAcquireToken(Amount: Double; FailFast: Boolean): Boolean;
  end;

implementation

{ TTokenBucket }

class constructor TTokenBucket.Create;
begin
  FEpoch := EncodeDate(1970, 1, 1);
end;

constructor TTokenBucket.Create;
begin
  Create(0.5, 1.0, 0.7, 0.4, 0.8);
end;

procedure TTokenBucket.CalculateTimeWindow;
begin
  //This is broken out into a separate calculation because it only
  //gets updated when LastMaxRate changes so it can be cached.
  TimeWindow := System.Math.Power(((LastMaxRate * (1.0 - FBeta)) / FScaleConstant), (1.0 / 3.0));
end;

function TTokenBucket.CalculateWait(Amount, CurCapacity, AFillRate: Double): Integer;
begin
  Result := Trunc((Amount - CurCapacity) / AfillRate * 1000.0);
end;

constructor TTokenBucket.Create(AMinFillRate, AMinCapacity, ABeta, AScaleConstant, ASmooth: Double);
begin
  inherited Create;
  FBucketLock := TObject.Create;

  FMinFillRate := AMinFillRate;
  FMinCapacity := AMinCapacity;
  FBeta := ABeta;
  FScaleConstant := AScaleConstant;
  FSmooth := ASmooth;

  LastTxRateBucket := System.Math.Floor(GetTimestamp);
  LastThrottleTime := GetTimestamp;
end;

function TTokenBucket.CUBICSuccess(Timestamp: Double): Double;
begin
  Timestamp := Timestamp - LastThrottleTime;
  Result := (FScaleConstant * System.Math.Power(timestamp - TimeWindow, 3)) + LastMaxRate;
end;

function TTokenBucket.CUBICThrottle(RateToUse: Double): Double;
begin
  Result := RateToUse * FBeta;
end;

destructor TTokenBucket.Destroy;
begin
  FBucketLock.Free;
  inherited;
end;

class function TTokenBucket.GetTimeInSeconds: Double;
begin
  Result := SecondsBetween(TTimeZone.Local.ToUniversalTime(Now), FEpoch);
end;

function TTokenBucket.GetTimestamp: Double;
begin
  Result := GetTimeInSeconds;
end;

function TTokenBucket.ObtainCapacity(Amount: Double): Integer;
begin
  //Next see if we have capacity for the requested amount.
  var curCapacity: Double;
  var localFillRate: Double;
  TMonitor.Enter(FBucketLock);
  try
    if Amount <= CurrentCapacity then
    begin
      CurrentCapacity := CurrentCapacity - Amount;
      Exit(0);
    end;

    curCapacity := CurrentCapacity;
    localFillRate := FillRate.Value;
  finally
    TMonitor.Exit(FBucketLock);
  end;

  Result := CalculateWait(Amount, curCapacity, localFillRate);
end;

function TTokenBucket.SetupAcquireToken(Amount: Double): NullableBoolean;
begin
  if Amount <= 0 then
    Exit(False);

  TMonitor.Enter(FBucketLock);
  try
    if not Enabled then
      Exit(True);

    TokenBucketRefill;
  finally
    TMonitor.Exit(FBucketLock);
  end;

  Result := NullableBoolean.Empty;
end;

procedure TTokenBucket.TokenBucketRefill;
begin
  var timestamp := GetTimestamp;
  if LastTimestamp.IsNull then
  begin
    LastTimestamp := timestamp;
    Exit;
  end;

  var fillAmount: Double := (timestamp - LastTimestamp.Value) * FillRate.Value;
  CurrentCapacity := System.Math.Min(MaxCapacity.Value, CurrentCapacity + fillAmount);
  LastTimestamp := timestamp;
end;

procedure TTokenBucket.TokenBucketUpdateRate(NewRps: Double);
begin
  //Refill based on our current rate before we update to the new fill rate.
  TokenBucketRefill;
  FillRate := System.Math.Max(NewRps, FMinFillRate);
  MaxCapacity := System.Math.Max(NewRps, FMinCapacity);

  //When we scale down we can't have a current capacity that exceeds our max_capacity.
  CurrentCapacity := System.Math.Min(CurrentCapacity, MaxCapacity.Value);
end;

function TTokenBucket.TryAcquireToken(Amount: Double; FailFast: Boolean): Boolean;
begin
  var res := SetupAcquireToken(Amount);
  if res.HasValue then
    Exit(res.Value);

  //We should never get to 15 attempts as the operation is only
  //waiting for any good capacity. If we still cannot obtain
  //capacity return false indicating that capacity couldn't be
  //obtained.
  var attempt := 0;
  while attempt < MaxAttempts do
  begin
    var delay := ObtainCapacity(Amount);
    if delay = 0 then
      Break;

    //If the client has asked us to fail quickly if we cannot get a send token
    //return indicating a token couldn't be obtained.
    if FailFast or (attempt + 1 = MaxAttempts) then
      Exit(False);

    WaitForToken(delay);
    Inc(attempt);
  end;

  Result := True;
end;

procedure TTokenBucket.UpdateClientSendingRate(IsThrottlingError: Boolean);
begin
  TMonitor.Enter(FBucketLock);
  try
    UpdateMeasuredRate;

    var calculatedRate: Double;

    if IsThrottlingError then
    begin
      var rateToUse: Double;
      if not Enabled then
        rateToUse := MeasuredTxRate
      else
        rateToUse := System.Math.Min(MeasuredTxRate, FillRate.Value);

      //The fill_rate is from the token
      LastMaxRate := rateToUse;
      CalculateTimeWindow;
      LastThrottleTime := GetTimestamp;
      calculatedRate := CUBICThrottle(rateToUse);
      Enabled := True;
    end
    else
    begin
      CalculateTimeWindow;
      calculatedRate := CUBICSuccess(GetTimestamp);
    end;

    var newRate := System.Math.Min(calculatedRate, 2.0 * MeasuredTxRate);
    TokenBucketUpdateRate(newRate);
  finally
    TMonitor.Exit(FBucketLock);
  end;
end;

procedure TTokenBucket.UpdateMeasuredRate;
begin
  var timestamp := GetTimestamp;
  var time_bucket := System.Math.Floor(timestamp * 2) / 2;
  RequestCount := RequestCount + 1;

  if time_bucket > LastTxRateBucket then
  begin
    var current_rate := RequestCount / (time_bucket - LastTxRateBucket);
    MeasuredTxRate := (current_rate * FSmooth) + (MeasuredTxRate * (1 - FSmooth));
    RequestCount := 0;
    LastTxRateBucket := time_bucket;
  end;
end;

procedure TTokenBucket.WaitForToken(DelayMs: Integer);
begin
  TAWSSDKUtils.Sleep(DelayMs);
end;

end.
