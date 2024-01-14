unit AWS.Pipeline.RetryHandler;

interface

uses
  System.SysUtils,
  AWS.Lib.Logging,
  AWS.Internal.PipelineHandler,
  AWS.Internal.Util.HashStream,
  AWS.Internal.WebResponseData,
  AWS.Runtime.Contexts,
  AWS.Runtime.RetryPolicy,
  AWS.SDKUtils;

type
  TRetryHandler = class(TPipelineHandler)
  private
    FLogger: ILogger;
    FRetryPolicy: TRetryPolicy;
    FOwnsRetryPolicy: Boolean;
    procedure LogForRetry(RequestContext: TRequestContext; E: Exception);
    procedure LogForError(RequestContext: TRequestContext; E: Exception);
    procedure SetRetryHeaders(RequestContext: TRequestContext );
  protected
    function GetLogger: ILogger; override;
    procedure SetLogger(const Value: ILogger); override;
  public
    constructor Create(ARetryPolicy: TRetryPolicy; AOwnsRetryPolicy: Boolean = True);
    destructor Destroy; override;
    class procedure PrepareForRetry(RequestContext: TRequestContext); static;
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
    property RetryPolicy: TRetryPolicy read FRetryPolicy;
  end;

implementation

{ TRetryHandler }

constructor TRetryHandler.Create(ARetryPolicy: TRetryPolicy; AOwnsRetryPolicy: Boolean = True);
begin
  inherited Create;
  FRetryPolicy := ARetryPolicy;
  FOwnsRetryPolicy := AOwnsRetryPolicy;
end;

destructor TRetryHandler.Destroy;
begin
  if FOwnsRetryPolicy then
    FRetryPolicy.Free;
  inherited;
end;

function TRetryHandler.GetLogger: ILogger;
begin
  Result := FLogger;
end;

procedure TRetryHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  var requestContext := AExecutionContext.RequestContext;
  var shouldRetry := False;
  RetryPolicy.ObtainSendToken(AExecutionContext, nil);
  repeat
    try
      SetRetryHeaders(requestContext);
      inherited InvokeSync(AExecutionContext);
      RetryPolicy.NotifySuccess(AExecutionContext);
      Exit;
    except
      on E: Exception do
      begin
        shouldRetry := RetryPolicy.Retry(AExecutionContext, E);
        if not shouldRetry then
        begin
          LogForError(requestContext, E);
          raise;
        end
        else
        begin
          requestContext.Retries := requestContext.Retries + 1;
//          requestContext.Metrics.SetCounter(Metric.AttemptCount, requestContext.Retries);
          LogForRetry(requestContext, E);
        end;

        RetryPolicy.ObtainSendToken(AExecutionContext, E);
      end;
    end;

    PrepareForRetry(requestContext);

    RetryPolicy.WaitBeforeRetry(AExecutionContext);
  until not shouldRetry;
end;

procedure TRetryHandler.LogForError(RequestContext: TRequestContext; E: Exception);
begin
  Logger.Error(Format('%s making request %s to %s. Attempt %s.', [
    E.ClassName, RequestContext.RequestName, RequestContext.Request.Endpoint.AbsoluteUri, IntToStr(RequestContext.Retries + 1)]));
end;

procedure TRetryHandler.LogForRetry(RequestContext: TRequestContext; E: Exception);
begin
  Logger.Info(Format('%s making request %s to %s. Attempting retry %s of %s.', [
    E.ClassName, RequestContext.RequestName, RequestContext.Request.Endpoint.AbsoluteUri,
    IntToStr(RequestContext.Retries), IntToStr(RetryPolicy.MaxRetries)]));
end;

class procedure TRetryHandler.PrepareForRetry(RequestContext: TRequestContext);
begin
  if (RequestContext.Request.ContentStream <> nil) and (RequestContext.Request.OriginalStreamPosition >= 0) then
  begin
    var stream := RequestContext.Request.ContentStream;

    // If the stream is wrapped in a HashStream, reset the HashStream
    if stream is THashStream then
    begin
      THashStream(stream).Reset;
      stream := THashStream(stream).GetSeekableBaseStream;
    end;
    stream.Position := RequestContext.Request.OriginalStreamPosition;
  end;
end;

procedure TRetryHandler.SetLogger(const Value: ILogger);
begin
  FLogger := Value;
  RetryPolicy.Logger := Value;
end;

procedure TRetryHandler.SetRetryHeaders(RequestContext: TRequestContext);
begin
  var request := RequestContext.Request;

  //The invocation id will be the same for all retry requests for the initial operation invocation.
  if not request.Headers.ContainsKey(THeaderKeys.AmzSdkInvocationId) then
  begin
    Request.Headers.Add(THeaderKeys.AmzSdkInvocationId, requestContext.InvocationId.ToString());
  end;

  //Update the amz-sdk-request header with the current retry index.
  var requestPairs := Format('attempt=%d; max=%d',
    [RequestContext.Retries + 1, RetryPolicy.MaxRetries + 1]);

  if request.Headers.ContainsKey(THeaderKeys.AmzSdkRequest) then
    request.Headers.AddOrSetValue(THeaderKeys.AmzSdkRequest, requestPairs)
  else
   request.Headers.Add(THeaderKeys.AmzSdkRequest, requestPairs);
end;

end.
