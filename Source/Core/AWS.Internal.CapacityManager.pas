unit AWS.Internal.CapacityManager;

{$I AWS.inc}

{$IFNDEF DELPHI11_LVL}
  {$DEFINE USE_OLD_MREW}
{$ENDIF}

interface

uses
  System.SysUtils, System.Generics.Collections, System.SyncObjs, System.Math;

type
  /// <summary>
  /// CapacityType determines the type of capacity to obtain or use.
  /// </summary>
  TCapacityType = (
    /// <summary>
    /// The increment capacity type adds capacity.
    /// </summary>
    Increment,
    /// <summary>
    /// The default retry capacity type uses the default capacity amount.
    /// </summary>
    Retry,
    /// <summary>
    /// The timeout capacity type uses the timeout capacity amount.
    /// </summary>
    Timeout
  );

  TRetryCapacity = class;

  TCapacityManager = class
  strict private
    class var FServiceUrlToCapacityMap: TObjectDictionary<string, TRetryCapacity>;
    class constructor Create;
    class destructor Destroy;
    class procedure ReleaseCapacity(Capacity: Integer; RetryCapacity: TRetryCapacity); overload; static;
  private
    //Read write slim lock for performing said operations on CapacityManager._serviceUrlToCapacityMap.
{$IFNDEF USE_OLD_MREW}
    class var FRWLock: TLightweightMREW;
{$ELSE}
    class var FRWLock: TMultiReadExclusiveWriteSynchronizer;
{$ENDIF}

    // This parameter sets the cost of making a retry call on a request.The default value is set at 5.
    FRetryCost: Integer;

    // This parameter sets the cost of making a retry call when the request was a timeout. The default value is 5 for
    // legacy retry modes and 10 for all other retry modes.
    FTimeoutRetryCost: Integer;

    // Maximum capacity in a bucket set to 100 for legacy retry mode and 500 for all other retry modes.
    FInitialRetryTokens: Integer;

    // For every successful request, lesser value capacity would be released. This
    // is done to ensure that the bucket has a strategy for filling up if an explosion of bad retry requests
    // were to deplete the entire capacity.The default value is set at 1.
    FNoRetryIncrement: Integer;
  public
    constructor Create(AThrottleRetryCount, AThrottleRetryCost, AThrottleCost: Integer); overload;
    constructor Create(AThrottleRetryCount, AThrottleRetryCost, AThrottleCost, ATimeoutRetryCost: Integer); overload;

    function TryAcquireCapacity(RetryCapacity: TRetryCapacity): Boolean; overload;
    function TryAcquireCapacity(RetryCapacity: TRetryCapacity; CapacityType: TCapacityType): Boolean; overload;
    procedure ReleaseCapacity(CapacityType: TCapacityType; RetryCapacity: TRetryCapacity); overload;
    function GetRetryCapacity(const ServiceURL: string): TRetryCapacity;
    function TryGetRetryCapacity(const Key: string; var Value: TRetryCapacity): Boolean;
    function AddNewRetryCapacity(const ServiceURL: string): TRetryCapacity;
  end;

  TRetryCapacity = class
  strict private
    FMaxCapacity: Integer;
  private
    FAvailableCapacity: Integer;
  public
    constructor Create(AMaxCapacity: Integer);
    property MaxCapacity: Integer read FMaxCapacity;
    property AvailableCapacity: Integer read FAvailableCapacity write FAvailableCapacity;
  end;

implementation

{ TRetryCapacity }

constructor TRetryCapacity.Create(AMaxCapacity: Integer);
begin
  FMaxCapacity := AMaxCapacity;
  FAvailableCapacity := AMaxCapacity;
end;

{ TCapacityManager }

function TCapacityManager.AddNewRetryCapacity(const ServiceURL: string): TRetryCapacity;
begin
  var retryCapacity: TRetryCapacity;
  FRWlock.BeginWrite;
  try
    if not FServiceUrlToCapacityMap.TryGetValue(ServiceURL, retryCapacity) then
    begin
      retryCapacity := TRetryCapacity.Create(FRetryCost * FInitialRetryTokens);
      FServiceUrlToCapacityMap.Add(serviceURL, retryCapacity);
      Result := retryCapacity
    end
    else
      Result := retryCapacity;
  finally
    FRWLock.EndWrite;
  end;
end;

constructor TCapacityManager.Create(AThrottleRetryCount, AThrottleRetryCost, AThrottleCost, ATimeoutRetryCost: Integer);
begin
  FRetryCost := AThrottleRetryCost;
  FInitialRetryTokens := AThrottleRetryCount;
  FNoRetryIncrement := AThrottleCost;
  FTimeoutRetryCost := ATimeoutRetryCost;
end;

class constructor TCapacityManager.Create;
begin
  FServiceUrlToCapacityMap := TObjectDictionary<string, TRetryCapacity>.Create([doOwnsValues]);
{$IFDEF USE_OLD_MREW}
  FRWLock := TMultiReadExclusiveWriteSynchronizer.Create;
{$ENDIF}
end;

class destructor TCapacityManager.Destroy;
begin
  FServiceUrlToCapacityMap.Free;
{$IFDEF USE_OLD_MREW}
  FRWLock.Free;
{$ENDIF}
end;

function TCapacityManager.GetRetryCapacity(const ServiceURL: string): TRetryCapacity;
begin
  if not TryGetRetryCapacity(ServiceURL, Result) then
    Result := AddNewRetryCapacity(ServiceURL);
end;

class procedure TCapacityManager.ReleaseCapacity(Capacity: Integer; RetryCapacity: TRetryCapacity);
begin
  if (RetryCapacity.AvailableCapacity >= 0) and (RetryCapacity.AvailableCapacity < RetryCapacity.MaxCapacity) then
  begin
    TMonitor.Enter(RetryCapacity);
    try
      RetryCapacity.AvailableCapacity := System.Math.Min((RetryCapacity.AvailableCapacity + Capacity), RetryCapacity.MaxCapacity);
    finally
      TMonitor.Exit(RetryCapacity);
    end;
  end;
end;

procedure TCapacityManager.ReleaseCapacity(CapacityType: TCapacityType; RetryCapacity: TRetryCapacity);
begin
  case CapacityType of
    TCapacityType.Retry:
      ReleaseCapacity(FRetryCost, RetryCapacity);
    TCapacityType.Timeout:
      ReleaseCapacity(FTimeoutRetryCost, RetryCapacity);
    TCapacityType.Increment:
      ReleaseCapacity(FNoRetryIncrement, RetryCapacity);
  else
    raise ENotSupportedException.CreateFmt('Unsupported CapacityType %d', [Ord(CapacityType)]);
  end;
end;

function TCapacityManager.TryAcquireCapacity(RetryCapacity: TRetryCapacity; CapacityType: TCapacityType): Boolean;
begin
  var capacityCost: Integer;
  if CapacityType = TCapacityType.Timeout then
    capacityCost := FTimeoutRetryCost
  else
    capacityCost := FRetryCost;

  if capacityCost < 0 then
    Exit(False);

  TMonitor.Enter(RetryCapacity);
  try
    if (RetryCapacity.AvailableCapacity - capacityCost) >= 0 then
    begin
      RetryCapacity.AvailableCapacity := RetryCapacity.AvailableCapacity - capacityCost;
      Exit(True);
    end
    else
      Exit(False);
  finally
    TMonitor.Exit(RetryCapacity);
  end;
end;

function TCapacityManager.TryGetRetryCapacity(const Key: string; var Value: TRetryCapacity): Boolean;
begin
  FRWlock.BeginRead;
  try
    Result := FServiceUrlToCapacityMap.TryGetValue(key, Value);
  finally
    FRWlock.EndRead;
  end;
end;

function TCapacityManager.TryAcquireCapacity(RetryCapacity: TRetryCapacity): Boolean;
begin
  Result := TryAcquireCapacity(RetryCapacity, TCapacityType.Retry);
end;

constructor TCapacityManager.Create(AThrottleRetryCount, AThrottleRetryCost, AThrottleCost: Integer);
begin
  Create(AThrottleRetryCount, AThrottleRetryCost, AThrottleCost, AThrottleRetryCost);
end;

end.
