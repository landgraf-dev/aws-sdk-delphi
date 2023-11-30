unit AWS.Internal.DefaultRetryPolicy;

interface

uses
  AWS.Runtime.RetryPolicy,
  AWS.SDKUtils;

type
  {TODO: finish this class}
  TDefaultRetryPolicy = class(TRetryPolicy)
  private
    class function CalculateRetryDelay(Retries: Integer; MaxBackoffInMilliseconds: Integer): Integer; static;
  public
    class procedure WaitBeforeRetry(Retries: Integer; MaxBackoffInMilliseconds: Integer); static;
  end;


implementation

uses
  System.Math;

{ TDefaultRetryPolicy }

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

class procedure TDefaultRetryPolicy.WaitBeforeRetry(Retries, MaxBackoffInMilliseconds: Integer);
begin
  TAWSSDKUtils.Sleep(CalculateRetryDelay(Retries, MaxBackoffInMilliseconds));
end;

end.
