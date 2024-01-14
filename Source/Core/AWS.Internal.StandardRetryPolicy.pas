unit AWS.Internal.StandardRetryPolicy;

interface

uses
  System.SysUtils, System.Math,
  AWS.Internal.CapacityManager,
  AWS.Runtime.ClientConfig,
  AWS.Runtime.Contexts,
  AWS.Runtime.Exceptions,
  AWS.Runtime.RetryPolicy,
  AWS.SDKUtils;

type
  TStandardRetryPolicy = class(TRetryPolicy)
  private
    FMaxBackoffInMilliseconds: Integer;
  private const
    INVALID_ENDPOINT_EXCEPTION_STATUSCODE = 421;
  private
    class constructor Create;
    class destructor Destroy;
    class var FCapacityManagerInstance: TCapacityManager;
    class function GetCapacityManagerInstance: TCapacityManager; static;
    class procedure SetCapacityManagerInstance(const Value: TCapacityManager); static;
    class function CalculateRetryDelay(Retries, MaxBackoffInMilliseconds: Integer): Integer; static;
  protected
    class property CapacityManagerInstance: TCapacityManager read GetCapacityManagerInstance write SetCapacityManagerInstance;
  public
    function CanRetry(ExecutionContext: TExecutionContext): Boolean; override;
    function RetryForException(ExecutionContext: TExecutionContext; E: Exception): Boolean; override;
    function RetryLimitReached(ExecutionContext: TExecutionContext): Boolean; override;
    procedure WaitBeforeRetry(ExecutionContext: TExecutionContext); override;
    procedure NotifySuccess(ExecutionContext: TExecutionContext); override;
    function OnRetry(ExecutionContext: TExecutionContext): Boolean; overload; override;
    function OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity: Boolean): Boolean; overload; override;
    function OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity, IsThrottlingError: Boolean): Boolean; overload; override;
  public
    constructor Create(AMaxRetries: Integer); overload;
    constructor Create(Config: IClientConfig); overload;
    procedure AfterConstruction; override;
    class procedure DoWaitBeforeRetry(Retries, MaxBackoffInMilliseconds: Integer); static;
    property MaxBackoffInMilliseconds: Integer read FMaxBackoffInMilliseconds write FMaxBackoffInMilliseconds;
  end;

implementation

{ TStandardRetryPolicy }

class constructor TStandardRetryPolicy.Create;
begin
  Randomize;
  FCapacityManagerInstance := TCapacityManager.Create({AThrottleRetryCount:} 100,
    {AThrottleRetryCost:} 5, {AThrottleCost:} 1, {ATimeoutRetryCost: } 10);
end;

procedure TStandardRetryPolicy.AfterConstruction;
begin
  inherited;
  FMaxBackoffInMilliseconds := 20000;
end;

class function TStandardRetryPolicy.CalculateRetryDelay(Retries, MaxBackoffInMilliseconds: Integer): Integer;
begin
  var jitter: Double := Random;
  Result := Round(System.Math.Min(jitter * System.Math.Power(2, Retries - 1) * 1000.0, MaxBackoffInMilliseconds));
end;

function TStandardRetryPolicy.CanRetry(ExecutionContext: TExecutionContext): Boolean;
begin
  Result := ExecutionContext.RequestContext.Request.IsRequestStreamRewindable;
end;

constructor TStandardRetryPolicy.Create(Config: IClientConfig);
begin
  inherited Create;
  MaxRetries := Config.MaxErrorRetry;
  if config.ThrottleRetries then
  begin
    var serviceURL := Config.DetermineServiceURL;
    RetryCapacity := CapacityManagerInstance.GetRetryCapacity(serviceURL);
  end;
end;

constructor TStandardRetryPolicy.Create(AMaxRetries: Integer);
begin
  inherited Create;
  MaxRetries := AMaxRetries;
end;

class destructor TStandardRetryPolicy.Destroy;
begin
  CapacityManagerInstance := nil;
end;

class procedure TStandardRetryPolicy.DoWaitBeforeRetry(Retries, MaxBackoffInMilliseconds: Integer);
begin
  TAWSSDKUtils.Sleep(CalculateRetryDelay(Retries, MaxBackoffInMilliseconds));
end;

class function TStandardRetryPolicy.GetCapacityManagerInstance: TCapacityManager;
begin
  Result := FCapacityManagerInstance;
end;

procedure TStandardRetryPolicy.NotifySuccess(ExecutionContext: TExecutionContext);
begin
  if ExecutionContext.RequestContext.ClientConfig.ThrottleRetries and (RetryCapacity <> nil) then
  begin
    var requestContext := ExecutionContext.RequestContext;
    CapacityManagerInstance.ReleaseCapacity(requestContext.LastCapacityType, RetryCapacity);
  end;
end;

function TStandardRetryPolicy.OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity,
  IsThrottlingError: Boolean): Boolean;
begin
  if not bypassAcquireCapacity and ExecutionContext.RequestContext.ClientConfig.ThrottleRetries and (RetryCapacity <> nil) then
    Result := CapacityManagerInstance.TryAcquireCapacity(RetryCapacity, ExecutionContext.RequestContext.LastCapacityType)
  else
    Result := True;
end;

function TStandardRetryPolicy.OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity: Boolean): Boolean;
begin
  Result := OnRetry(executionContext, BypassAcquireCapacity, false);
end;

function TStandardRetryPolicy.OnRetry(ExecutionContext: TExecutionContext): Boolean;
begin
  Result := OnRetry(ExecutionContext, false, false);
end;

function TStandardRetryPolicy.RetryForException(ExecutionContext: TExecutionContext; E: Exception): Boolean;
begin
  // EAmazonServiceException is thrown by ErrorHandler if it is this type of exception.
  var serviceException: EAmazonServiceException := nil;
  if E is EAmazonServiceException then
    serviceException := E as EAmazonServiceException;

  // To try and smooth out an occasional throttling error, we'll pause and
  // retry, hoping that the pause is long enough for the request to get through
  // the next time. Only the error code should be used to determine if an
  // error is a throttling error.
  if IsThrottlingError(E) then
    Exit(True);

  // Check for transient errors, but we need to use
  // an exponential back-off strategy so that we don't overload
  // a server with a flood of retries. If we've surpassed our
  // retry limit we handle the error response as a non-retryable
  // error and go ahead and throw it back to the user as an exception.
  if IsTransientError(ExecutionContext, E) or IsServiceTimeoutError(E) then
    Exit(True);

  //Check for Invalid Endpoint Exception indicating that the Endpoint Discovery
  //endpoint used was invalid for the request. One retry attempt is allowed for this
  //type of exception.
  if (serviceException <> nil) and (serviceException.StatusCode = INVALID_ENDPOINT_EXCEPTION_STATUSCODE) then
  begin
    if ExecutionContext.RequestContext.EndpointDiscoveryRetries < 1 then
    begin
      ExecutionContext.RequestContext.EndpointDiscoveryRetries := ExecutionContext.RequestContext.EndpointDiscoveryRetries + 1;
      Exit(True);
    end;

    Exit(False);
  end;

  Result := False;
end;

function TStandardRetryPolicy.RetryLimitReached(ExecutionContext: TExecutionContext): Boolean;
begin
  Result := ExecutionContext.RequestContext.Retries >= MaxRetries;
end;

class procedure TStandardRetryPolicy.SetCapacityManagerInstance(const Value: TCapacityManager);
begin
  if FCapacityManagerInstance <> Value then
  begin
    FCapacityManagerInstance.Free;
    FCapacityManagerInstance := Value;
  end;
end;

procedure TStandardRetryPolicy.WaitBeforeRetry(ExecutionContext: TExecutionContext);
begin
  TStandardRetryPolicy.DoWaitBeforeRetry(ExecutionContext.RequestContext.Retries, MaxBackoffInMilliseconds);
end;

end.
