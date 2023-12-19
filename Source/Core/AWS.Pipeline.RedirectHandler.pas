unit AWS.Pipeline.RedirectHandler;

interface

uses
  System.SysUtils,
  AWS.Lib.Logging,
  AWS.Internal.PipelineHandler,
  AWS.Internal.WebResponseData,
  AWS.Runtime.Contexts,
  AWS.SDKUtils;

type
  TRedirectHandler = class(TPipelineHandler)
  private
    function HandleRedirect(AExecutionContext: TExecutionContext): Boolean;
  protected
    procedure FinalizeForRedirect(AExecutionContext: TExecutionContext; const RedirectedLocation: string); virtual;
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;


implementation

{ TRedirectHandler }

procedure TRedirectHandler.FinalizeForRedirect(AExecutionContext: TExecutionContext; const RedirectedLocation: string);
begin
  var Logger := LogManager.GetLogger(TRedirectHandler);

  Logger.Info(Format('Request %s is being redirected to %s.',
    [AExecutionContext.RequestContext.RequestName, RedirectedLocation]));

  var uri: IUri := TUri.Create(RedirectedLocation);

  var requestContext := AExecutionContext.RequestContext;

  if uri.IsDefaultPort then
    requestContext.Request.Endpoint := TUri.Create(Format('%s://%s', [uri.Scheme, uri.Host]))
  else
    requestContext.Request.Endpoint := TUri.Create(Format('%s://%s:%d', [uri.Scheme, uri.Host, uri.Port]));

  {Todo: Review this}
  {$MESSAGE WARN 'Review this code as it involves hash stream}
//  TRetryHandler.PrepareForRetry(AExecutionContext.RequestContext);
end;

function TRedirectHandler.HandleRedirect(AExecutionContext: TExecutionContext): Boolean;
begin
  var response := AExecutionContext.ResponseContext.HttpResponse;

  // Handle all HTTP 3xx status codes
  if (response.StatusCode >= 300) and (response.StatusCode < 400) then
  begin
    if (response.StatusCode = 307) and response.IsHeaderPresent(THeaderKeys.LocationHeader) then
    begin
      var redirectedLocation := response.GetHeaderValue(THeaderKeys.LocationHeader);

      var isRewindableStream := AExecutionContext.RequestContext.Request.IsRequestStreamRewindable;
      if isRewindableStream and not string.IsNullOrEmpty(redirectedLocation) then
      begin
        FinalizeForRedirect(AExecutionContext, redirectedLocation);
        Exit(True);
      end;
    end;

    // Set HttpResponse on ResponseContext to null,
    // as the HttpResponse will be wrapped in an exception.
    AExecutionContext.ResponseContext.HttpResponse := nil;

    // Throw an exception contain the HTTP response, so that an
    // appropriate exception can be returned to the user.
    raise EHttpErrorResponseException.Create(response);
  end;

  Result := False;
end;

procedure TRedirectHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  repeat
    inherited InvokeSync(AExecutionContext);
  until not HandleRedirect(AExecutionContext);
end;

end.
