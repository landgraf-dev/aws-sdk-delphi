unit AWS.Internal.DefaultRetryPolicy;

interface

uses
  System.Generics.Defaults, System.SysUtils,
  AWS.Runtime.ClientConfig,
  AWS.Lib.Collections,
  AWS.Runtime.Exceptions,
  AWS.Runtime.RetryPolicy,
  AWS.Runtime.Contexts,
  AWS.Internal.CapacityManager,
  AWS.SDKUtils;

type
  TDefaultRetryPolicy = class(TRetryPolicy)
  private const
    INVALID_ENDPOINT_EXCEPTION_STATUSCODE = 421;
  private
    class var FNetStandardRetryErrorMessages: HashSet<string>;
    class function CalculateRetryDelay(Retries: Integer; MaxBackoffInMilliseconds: Integer): Integer; static;
  private
    class constructor Create;
    class destructor Destroy;
    class var FCapacityManagerInstance: TCapacityManager;
    class function GetCapacityManagerInstance: TCapacityManager; static;
    class procedure SetCapacityManagerInstance(const Value: TCapacityManager); static;
  private
    FMaxBackoffInMilliseconds: Integer;
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

    class procedure DoWaitBeforeRetry(Retries: Integer; MaxBackoffInMilliseconds: Integer); static;
    property MaxBackoffInMilliseconds: Integer read FMaxBackoffInMilliseconds write FMaxBackoffInMilliseconds;
  end;

implementation

uses
  System.Math;

{ TDefaultRetryPolicy }

procedure TDefaultRetryPolicy.AfterConstruction;
begin
  inherited;
  FMaxBackoffInMilliseconds := 30000;
end;

class function TDefaultRetryPolicy.CalculateRetryDelay(Retries, MaxBackoffInMilliseconds: Integer): Integer;
begin
  var delay: Integer;

  if retries < 12 then
    delay := Trunc(IntPower(4, Retries) * 100)
  else
    delay := MaxInt;

  if (retries > 0) and ((delay > MaxBackoffInMilliseconds) or (delay <= 0)) then
    delay := MaxBackoffInMilliseconds;
  Result := delay;
end;

function TDefaultRetryPolicy.CanRetry(ExecutionContext: TExecutionContext): Boolean;
begin
  Result := ExecutionContext.RequestContext.Request.IsRequestStreamRewindable;
end;

class constructor TDefaultRetryPolicy.Create;
begin
  FCapacityManagerInstance := TCapacityManager.Create({AThrottleRetryCount:} 100,
    {AThrottleRetryCost:} 5, {AThrottleCost:} 1);
  FNetStandardRetryErrorMessages := HashSet<string>.Create(TIStringComparer.Ordinal);
  FNetStandardRetryErrorMessages.Add('The server returned an invalid or unrecognized response');
  FNetStandardRetryErrorMessages.Add('The connection with the server was terminated abnormally');
  FNetStandardRetryErrorMessages.Add('An error occurred while sending the request.');
  FNetStandardRetryErrorMessages.Add('Failed sending data to the peer');
end;

constructor TDefaultRetryPolicy.Create(AMaxRetries: Integer);
begin
  inherited Create;
  MaxRetries := AMaxRetries;
end;

constructor TDefaultRetryPolicy.Create(Config: IClientConfig);
begin
  inherited Create;
  MaxRetries := Config.MaxErrorRetry;
  if config.ThrottleRetries then
  begin
    var serviceURL := Config.DetermineServiceURL;
    RetryCapacity := CapacityManagerInstance.GetRetryCapacity(serviceURL);
  end;
end;

class destructor TDefaultRetryPolicy.Destroy;
begin
  CapacityManagerInstance := nil;
  FNetStandardRetryErrorMessages.Free;
end;

class function TDefaultRetryPolicy.GetCapacityManagerInstance: TCapacityManager;
begin
  Result := FCapacityManagerInstance;
end;

procedure TDefaultRetryPolicy.NotifySuccess(ExecutionContext: TExecutionContext);
begin
  if ExecutionContext.RequestContext.ClientConfig.ThrottleRetries and (RetryCapacity <> nil) then
    CapacityManagerInstance.ReleaseCapacity(ExecutionContext.RequestContext.LastCapacityType, RetryCapacity);
end;

function TDefaultRetryPolicy.OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity,
  IsThrottlingError: Boolean): Boolean;
begin
  Result := OnRetry(ExecutionContext, BypassAcquireCapacity, False);
end;

function TDefaultRetryPolicy.OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity: Boolean): Boolean;
begin
  if not BypassAcquireCapacity and ExecutionContext.RequestContext.ClientConfig.ThrottleRetries and (RetryCapacity <> nil) then
    Result := CapacityManagerInstance.TryAcquireCapacity(RetryCapacity, ExecutionContext.RequestContext.LastCapacityType)
  else
    Result := True;
end;

function TDefaultRetryPolicy.OnRetry(ExecutionContext: TExecutionContext): Boolean;
begin
  Result := OnRetry(ExecutionContext, False, False);
end;

function TDefaultRetryPolicy.RetryForException(ExecutionContext: TExecutionContext; E: Exception): Boolean;
begin
  // AmazonServiceException is thrown by ErrorHandler if it is this type of exception.
  var serviceException: EAmazonServiceException := nil;
  if E is EAmazonServiceException then
    serviceException := EAmazonServiceException(E);

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

function TDefaultRetryPolicy.RetryLimitReached(ExecutionContext: TExecutionContext): Boolean;
begin
  Result := ExecutionContext.RequestContext.Retries >= MaxRetries;
end;

class procedure TDefaultRetryPolicy.SetCapacityManagerInstance(const Value: TCapacityManager);
begin
  if FCapacityManagerInstance <> Value then
  begin
    FCapacityManagerInstance.Free;
    FCapacityManagerInstance := Value;
  end;
end;

procedure TDefaultRetryPolicy.WaitBeforeRetry(ExecutionContext: TExecutionContext);
begin
  TDefaultRetryPolicy.DoWaitBeforeRetry(ExecutionContext.RequestContext.Retries, MaxBackoffInMilliseconds);
end;

class procedure TDefaultRetryPolicy.DoWaitBeforeRetry(Retries, MaxBackoffInMilliseconds: Integer);
begin
  TAWSSDKUtils.Sleep(CalculateRetryDelay(Retries, MaxBackoffInMilliseconds));
end;

end.
