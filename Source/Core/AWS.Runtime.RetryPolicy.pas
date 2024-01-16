unit AWS.Runtime.RetryPolicy;

interface

uses
  System.SysUtils, System.Net.HttpClient, System.Generics.Defaults, System.TimeSpan, System.DateUtils,
  AWS.Configs,
  AWS.Lib.Collections,
  AWS.Lib.Logging,
  AWS.Lib.Utils,
  AWS.Internal.CapacityManager,
  AWS.Internal.WebResponseData,
  AWS.Runtime.Contexts,
  AWS.Runtime.Exceptions,
  AWS.SDKUtils;

type
  TRetryPolicy = class
  private const
    sslErrorZeroReturn = 'SSL_ERROR_ZERO_RETURN';

    clockSkewMessageFormat = 'Identified clock skew: local time = %s, local time with correction = %s, ' +
      'current clock skew correction = %s, server time = %s, service endpoint = %s.';
    clockSkewUpdatedFormat = 'Setting clock skew correction: new clock skew correction = %s, service endpoint = %s.';
    clockSkewMessageParen = '(';
    clockSkewMessagePlusSeparator = ' + ';
    clockSkewMessageMinusSeparator = ' - ';
  private
    class var FClockSkewErrorCodes: HashSet<string>;
    class var FClockSkewMaxThreshold: TTimeSpan;
    class constructor Create;
    class destructor Destroy;
  private
    FLogger: ILogger;
    FMaxRetries: Integer;
    FRetryCapacity: TRetryCapacity;
    FErrorCodesToRetryOn: HashSet<string>;
    FHttpStatusCodesToRetryOn: HashSet<Integer>;
    FTimeoutErrorCodesToRetryOn: HashSet<string>;
    FThrottlingErrorCodes: HashSet<string>;
    procedure SetRetryCapacity(const Value: TRetryCapacity);
    function IsClockskew(ExecutionContext: TExecutionContext; E: Exception): Boolean;
    class function TryParseDateHeader(Ase: EAmazonServiceException; var ServerTime: TDateTime): Boolean; static;
    class function TryParseExceptionMessage(Ase: EAmazonServiceException; var ServerTime: TDateTime): Boolean; static;
    class function GetWebData(Ase: EAmazonServiceException): IWebResponseData; static;
  public
    function CanRetry(ExecutionContext: TExecutionContext): Boolean; virtual; abstract;
    function RetryForException(ExecutionContext: TExecutionContext; E: Exception): Boolean; virtual; abstract;
    function RetryLimitReached(ExecutionContext: TExecutionContext): Boolean; virtual; abstract;
    procedure WaitBeforeRetry(ExecutionContext: TExecutionContext); virtual; abstract;
    procedure NotifySuccess(ExecutionContext: TExecutionContext); virtual;
    function OnRetry(ExecutionContext: TExecutionContext): Boolean; overload; virtual;
    function OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity: Boolean): Boolean; overload; virtual;
    function OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity, IsThrottlingError: Boolean): Boolean; overload; virtual;
    procedure ObtainSendToken(ExecutionContext: TExecutionContext; E: Exception); virtual;
    function IsThrottlingError(E: Exception): Boolean; virtual;
    function IsTransientError(ExecutionContext: TExecutionContext; E: Exception): Boolean; virtual;
    class function IsTransientSslError(E: Exception): Boolean;
    function IsServiceTimeoutError(E: Exception): Boolean; virtual;
  public
    constructor Create;
    destructor Destroy; override;
    function Retry(ExecutionContext: TExecutionContext; E: Exception): Boolean;

    property ThrottlingErrorCodes: HashSet<string> read FThrottlingErrorCodes;
    property TimeoutErrorCodesToRetryOn: HashSet<string> read FTimeoutErrorCodesToRetryOn;
    property ErrorCodesToRetryOn: HashSet<string> read FErrorCodesToRetryOn;
    property HttpStatusCodesToRetryOn: HashSet<Integer> read FHttpStatusCodesToRetryOn;
    property Logger: ILogger read FLogger write FLogger;
    property MaxRetries: Integer read FMaxRetries write FMaxRetries;
    property RetryCapacity: TRetryCapacity read FRetryCapacity write SetRetryCapacity;
  end;

implementation

{ TRetryPolicy }

class constructor TRetryPolicy.Create;
begin
  FClockSkewMaxThreshold := TTimeSpan.FromMinutes(5);
  FClockSkewErrorCodes := HashSet<string>.Create(TIStringComparer.Ordinal);
  FClockSkewErrorCodes.Add('RequestTimeTooSkewed');
  FClockSkewErrorCodes.Add('RequestExpired');
  FClockSkewErrorCodes.Add('InvalidSignatureException');
  FClockSkewErrorCodes.Add('SignatureDoesNotMatch');
  FClockSkewErrorCodes.Add('AuthFailure');
  FClockSkewErrorCodes.Add('RequestExpired');
  FClockSkewErrorCodes.Add('RequestInTheFuture');
end;

constructor TRetryPolicy.Create;
begin
  FErrorCodesToRetryOn := HashSet<string>.Create;
  FHttpStatusCodesToRetryOn := HashSet<Integer>.Create;
  FTimeoutErrorCodesToRetryOn := HashSet<string>.Create;
  FThrottlingErrorCodes := HashSet<string>.Create(TIStringComparer.Ordinal);

  FHttpStatusCodesToRetryOn.Add(500);
  FHttpStatusCodesToRetryOn.Add(503);
  FHttpStatusCodesToRetryOn.Add(502);
  FHttpStatusCodesToRetryOn.Add(504);

  FThrottlingErrorCodes.Add('Throttling');
  FThrottlingErrorCodes.Add('ThrottlingException');
  FThrottlingErrorCodes.Add('ThrottledException');
  FThrottlingErrorCodes.Add('RequestThrottledException');
  FThrottlingErrorCodes.Add('TooManyRequestsException');
  FThrottlingErrorCodes.Add('ProvisionedThroughputExceededException');
  FThrottlingErrorCodes.Add('TransactionInProgressException');
  FThrottlingErrorCodes.Add('RequestLimitExceeded');
  FThrottlingErrorCodes.Add('BandwidthLimitExceeded');
  FThrottlingErrorCodes.Add('LimitExceededException');
  FThrottlingErrorCodes.Add('RequestThrottled');
  FThrottlingErrorCodes.Add('SlowDown');
  FThrottlingErrorCodes.Add('PriorRequestNotComplete');

  FTimeoutErrorCodesToRetryOn.Add('RequestTimeout');
  FTimeoutErrorCodesToRetryOn.Add('RequestTimeoutException');
end;

destructor TRetryPolicy.Destroy;
begin
  RetryCapacity := nil;
  FErrorCodesToRetryOn.Free;
  FHttpStatusCodesToRetryOn.Free;
  FTimeoutErrorCodesToRetryOn.Free;
  FThrottlingErrorCodes.Free;
  inherited;
end;

class destructor TRetryPolicy.Destroy;
begin
  FClockSkewErrorCodes.Free;
end;

class function TRetryPolicy.GetWebData(Ase: EAmazonServiceException): IWebResponseData;
begin
  if Ase <> nil then
  begin
    var e: Exception := ase;
    repeat
      if e is EHttpErrorResponseException then
        Exit(EHttpErrorResponseException(e).Response);
      e := e.InnerException;
    until e = nil;
  end;
  Result := nil;
end;

function TRetryPolicy.IsClockskew(ExecutionContext: TExecutionContext; E: Exception): Boolean;
begin
  var clientConfig := ExecutionContext.RequestContext.ClientConfig;
  var ase: EAmazonServiceException := nil;
  if E is EAmazonServiceException then
    ase := EAmazonServiceException(E);

  var isHead := (ExecutionContext.RequestContext.Request <> nil) and (ExecutionContext.RequestContext.Request.HttpMethod = 'HEAD');
  var isClockskewErrorCode := (ase <> nil) and
    ((ase.ErrorCode = '') or (FClockSkewErrorCodes.Contains(ase.ErrorCode)));

  if isHead or isClockskewErrorCode then
  begin
    var endpoint := ExecutionContext.RequestContext.Request.Endpoint.AbsoluteUri;
    var realNow := TAWSConfigs.utcNowSource();
    var correctedNow := TCorrectClockSkew.GetCorrectedUtcNowForEndpoint(endpoint);

    var serverTime: TDateTime;

    // Try getting server time from the headers
    var serverTimeDetermined := TryParseDateHeader(ase, serverTime);

    // If that fails, try to parse it from the exception message
    if not serverTimeDetermined then
      serverTimeDetermined := TryParseExceptionMessage(ase, serverTime);

    if serverTimeDetermined then
    begin
      // using accurate server time, calculate correction if local time is off
      serverTime := TTimeZone.Local.ToUniversalTime(serverTime);
      var diff := TAWSSDKUtils.SecondsBetween(correctedNow, serverTime);
      var absDiff := Abs(diff);
      if absDiff > FClockSkewMaxThreshold.Seconds then
      begin
        var newCorrection := TTimeSpan.Create(0, 0, TAWSSDKUtils.SecondsBetween(serverTime, realNow));
        Logger.Info(Format(clockSkewMessageFormat, [
          DateTimeToStr(realNow), DateTimeToStr(correctedNow), clientConfig.ClockOffset.ToString,
          DateTimeToStr(serverTime), endpoint]));

        // Always set the correction, for informational purposes
        TCorrectClockSkew.SetClockCorrectionForEndpoint(endpoint, newCorrection);

        var shouldRetry := TAWSConfigs.CorrectForClockSkew and not TAWSConfigs.ManualClockCorrection.HasValue;

        // Only retry if clock skew correction is not disabled
        if shouldRetry then
        begin
          // Set clock skew correction
          Logger.Info(Format(clockSkewUpdatedFormat, [newCorrection.ToString, endpoint]));
          ExecutionContext.RequestContext.IsSigned := false;
          Exit(True);
        end;
      end;
    end;
  end;

  Result := False;
end;

function TRetryPolicy.IsServiceTimeoutError(E: Exception): Boolean;
begin
  Result := False;
  if E is EAmazonServiceException then
    Result := TimeoutErrorCodesToRetryOn.Contains(EAmazonServiceException(E).ErrorCode);
end;

function TRetryPolicy.IsThrottlingError(E: Exception): Boolean;
begin
  Result := False;
  if E is EAmazonServiceException then
  begin
    var serviceException := EAmazonServiceException(E);
    Result := ((serviceException.Retryable <> nil) and serviceException.Retryable.Throttling)
      or ThrottlingErrorCodes.Contains(serviceException.ErrorCode);
  end;
end;

function TRetryPolicy.IsTransientError(ExecutionContext: TExecutionContext; E: Exception): Boolean;
begin
  // An IOException was thrown by the underlying http client.
  if E is EInOutError then
    Exit(True);
  // Todo: does it worth to handle inner exceptions?
//  else
//  if TExceptionUtils.IsInnerException<EInOutError>(E) then
//    Exit(True);

  //Check for AmazonServiceExceptions specifically
  var serviceException: EAmazonServiceException := nil;
  if E is EAmazonServiceException then
  begin
    serviceException := E as EAmazonServiceException;

    //Check if the exception is marked retryable.
    if serviceException.Retryable <> nil then
      Exit(True);

    //Check for specific HTTP status codes that are associated with transient
    //service errors as long as they are not throttling errors.
    if HttpStatusCodesToRetryOn.Contains(serviceException.StatusCode) and not IsThrottlingError(E) then
      Exit(True);

    //Check for successful responses that couldn't be unmarshalled. These should be considered
    //transient errors because the payload could have been corrupted after OK was sent in the
    //header.
    if (serviceException.StatusCode = 200) and (serviceException is EAmazonUnmarshallingException) then
      Exit(True);
  end;

  { Todo: handle specific internal HTTP web exceptions? }
  //Check for WebExceptions that are considered transient
//  var webException: EWebException;
//  if TExceptionUtils.IsInnerException(E, webException) then
//  begin
//    if WebExceptionStatusesToRetryOn.Contains(webException.Status) then
//      Exit(True);
//  end;

  if IsTransientSslError(E) then
    Exit(True);

  //If it isn't a serviceException that we already processed for StatusCode and it
  //is a HttpRequestException, then it is a network type error that did not reach the
  //service and it should be retried.
  if (serviceException = nil) and (E is System.Net.HttpClient.ENetHTTPRequestException) then
    Exit(True);

  Result := False;
end;

class function TRetryPolicy.IsTransientSslError(E: Exception): Boolean;
begin
  Result := False;
end;

procedure TRetryPolicy.NotifySuccess(ExecutionContext: TExecutionContext);
begin
end;

procedure TRetryPolicy.ObtainSendToken(ExecutionContext: TExecutionContext; E: Exception);
begin
end;

function TRetryPolicy.OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity, IsThrottlingError: Boolean): Boolean;
begin
  Result := OnRetry(ExecutionContext, BypassAcquireCapacity);
end;

function TRetryPolicy.OnRetry(ExecutionContext: TExecutionContext; BypassAcquireCapacity: Boolean): Boolean;
begin
  Result := True;
end;

function TRetryPolicy.OnRetry(ExecutionContext: TExecutionContext): Boolean;
begin
  Result := True;
end;

function TRetryPolicy.Retry(ExecutionContext: TExecutionContext; E: Exception): Boolean;
begin
  // Boolean that denotes retries have not exceeded maxretries and request is rewindable
  var canRetry := not RetryLimitReached(ExecutionContext) and CanRetry(ExecutionContext);

  // If canRetry is false, we still want to evaluate the exception if its retryable or not,
  // is CSM is enabled. This is necessary to set the IsLastExceptionRetryable property on
  // CSM Call Attempt. For S3, with the BucketRegion mismatch exception, an overhead of 100-
  // 115 ms was added(because of GetPreSignedUrl and Http HEAD requests).
  if canRetry or ExecutionContext.RequestContext.CSMEnabled then
  begin
    var isClockSkewError := IsClockskew(ExecutionContext, E);
    if isClockSkewError or RetryForException(ExecutionContext, E) then
    begin
      ExecutionContext.RequestContext.IsLastExceptionRetryable := true;

      // If CSM is enabled but canRetry was false, we should not retry the request.
      // Return false after successfully evaluating the last exception for retryable.
      if not canRetry then
        Exit(False);

      if IsServiceTimeoutError(E) then
        ExecutionContext.RequestContext.LastCapacityType := TCapacityType.Timeout
      else
        ExecutionContext.RequestContext.LastCapacityType := TCapacityType.Retry;
      Exit(OnRetry(ExecutionContext, isClockSkewError,  IsThrottlingError(E)));
    end;
  end;
  Result := False;
end;

procedure TRetryPolicy.SetRetryCapacity(const Value: TRetryCapacity);
begin
  if FRetryCapacity <> Value then
  begin
    FRetryCapacity.Free;
    RetryCapacity := Value;
  end;
end;

class function TRetryPolicy.TryParseDateHeader(Ase: EAmazonServiceException; var ServerTime: TDateTime): Boolean;
begin
  var webData := GetWebData(Ase);

  if webData <> nil then
  begin
    // parse server time from "Date" header, if possible
    var dateValue := webData.GetHeaderValue(THeaderKeys.DateHeader);
    if not string.IsNullOrEmpty(dateValue) then
    begin
      if TAWSSDKUtils.TryRfc822ToDateTime(dateValue, serverTime) then
        Exit(True);
    end;
  end;

  serverTime := 0;
  Result := False;
end;

class function TRetryPolicy.TryParseExceptionMessage(Ase: EAmazonServiceException; var ServerTime: TDateTime): Boolean;
begin
  if (Ase <> nil) and not string.IsNullOrEmpty(Ase.Message) then
  begin
    var message := Ase.Message;

    // parse server time from exception message, if possible
    var parenIndex := message.IndexOf(clockSkewMessageParen);
    if parenIndex >= 0 then
    begin
      Inc(parenIndex);

      // Locate " + " or " - " separator that follows the server time string
      var separatorIndex := message.IndexOf(clockSkewMessagePlusSeparator, parenIndex);
      if separatorIndex < 0 then
        separatorIndex := message.IndexOf(clockSkewMessageMinusSeparator, parenIndex);

      // Get the server time string and parse it
      if separatorIndex > parenIndex then
      begin
        var timestamp := message.Substring(parenIndex, separatorIndex - parenIndex);
        if AWS.Lib.Utils.TryISOToDateTime(timestamp, ServerTime, TTimeZoneMode.zmAsLocal) then
          Exit(True);
      end;
    end;
  end;

  ServerTime := 0;
  Result := False;
end;

end.
