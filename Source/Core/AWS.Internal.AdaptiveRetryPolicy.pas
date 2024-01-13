unit AWS.Internal.AdaptiveRetryPolicy;

interface

uses
  System.SysUtils, System.Math,
  AWS.Internal.CapacityManager,
  AWS.Internal.StandardRetryPolicy,
  AWS.Internal.TokenBucket,
  AWS.Runtime.ClientConfig,
  AWS.Runtime.Contexts,
  AWS.Runtime.Exceptions,
  AWS.Runtime.RetryPolicy,
  AWS.SDKUtils;

type
  TAdaptiveRetryPolicy = class(TStandardRetryPolicy)
  private
    FTokenBucket: TTokenBucket;
    procedure SeTTokenBucket(const Value: TTokenBucket);
  public
    function OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity, IsThrottlingError: Boolean): Boolean; overload; override;
    procedure ObtainSendToken(ExecutionContext: TExecutionContext; E: Exception); override;
    procedure NotifySuccess(ExecutionContext: TExecutionContext); override;
  public
    destructor Destroy; override;
    procedure AfterConstruction; override;

    property TokenBucket: TTokenBucket read FTokenBucket write SeTTokenBucket;
  end;

implementation

{ TAdaptiveRetryPolicy }

procedure TAdaptiveRetryPolicy.AfterConstruction;
begin
  inherited;
  TokenBucket := TTokenBucket.Create;
end;

destructor TAdaptiveRetryPolicy.Destroy;
begin
  TokenBucket := nil;
  inherited;
end;

procedure TAdaptiveRetryPolicy.NotifySuccess(ExecutionContext: TExecutionContext);
begin
  TokenBucket.UpdateClientSendingRate(False);
  inherited NotifySuccess(ExecutionContext);
end;

procedure TAdaptiveRetryPolicy.ObtainSendToken(ExecutionContext: TExecutionContext; E: Exception);
begin
  if not TokenBucket.TryAcquireToken(1, ExecutionContext.RequestContext.ClientConfig.FastFailRequests) then
  begin
    var whyFail: string;
    if E = nil then
      whyFail := 'The initial request cannot be attempted because capacity could not be obtained'
    else
      whyFail := 'While attempting to retry a request error capacity could not be obtained';

    if ExecutionContext.RequestContext.ClientConfig.FastFailRequests then
      raise EAmazonClientException.Create(whyFail + '. The client is configured to fail fast and there is insufficent capacity to attempt the request.');

    //Else we were unable to obtain capacity after looping.
    raise EAmazonClientException.Create(whyFail + '. There is insufficent capacity to attempt the request after attempting to obtain capacity multiple times.');
  end;
end;

function TAdaptiveRetryPolicy.OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity,
  IsThrottlingError: Boolean): Boolean;
begin
  TokenBucket.UpdateClientSendingRate(IsThrottlingError);
  Result := inherited OnRetry(ExecutionContext, BypassAcquireCapacity, IsThrottlingError);
end;

procedure TAdaptiveRetryPolicy.SeTTokenBucket(const Value: TTokenBucket);
begin
  if FTokenBucket <> Value then
  begin
    FTokenBucket.Free;
    FTokenBucket := Value;
  end;
end;

end.
