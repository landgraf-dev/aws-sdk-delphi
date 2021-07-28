unit AWS.Pipeline.HttpHandler;

interface

uses
  System.SysUtils,
  Sparkle.Http.Engine,
  AWS.Internal.PipelineHandler,
  AWS.Internal.Request,
  AWS.Runtime.Contexts,
  AWS.Runtime.HttpRequestMessageFactory,
  AWS.Runtime.IHttpRequestFactory,
  AWS.Runtime.Client;

type
  TSparkleHttpHandler = class(TPipelineHandler)
  strict private
    FRequestFactory: IHttpRequestFactory;
    FCallbackSender: TObject;
    procedure WriteContentToRequestBody(AHttpRequest: IWebHttpRequest; ARequestContext: TRequestContext);
  strict protected
    function CreateWebRequest(ARequestContext: TRequestContext): IWebHttpRequest; virtual;
  public
    constructor Create(ARequestFactory: IHttpRequestFactory; ACallbackSender: TObject); reintroduce;
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

uses
  AWS.SDKUtils;

{ TSparkleHttpHandler }

constructor TSparkleHttpHandler.Create(ARequestFactory: IHttpRequestFactory; ACallbackSender: TObject);
begin
  inherited Create;
  FRequestFactory := ARequestFactory;
  FCallbackSender := ACallbackSender;
end;

function TSparkleHttpHandler.CreateWebRequest(ARequestContext: TRequestContext): IWebHttpRequest;
var
  Request: IRequest;
  HttpRequest: IWebHttpRequest;
  Url: string;
  Content: TArray<Byte>;
begin
  Request := ARequestContext.Request;
  Url := TAmazonServiceClient.ComposeUrl(Request);
  HttpRequest := FRequestFactory.CreateHttpRequest(Url);
  HttpRequest.ConfigureRequest(ARequestContext);
  HttpRequest.Method := Request.HttpMethod;
  if Request.MayContainRequestBody then
  begin
    Content := Request.Content;
    if Request.SetContentFromParameters or ((Length(Content) = 0) and (Request.ContentStream = nil)) then
    begin
      if not Request.UseQueryString then
      begin
        Content := TEncoding.UTF8.GetBytes(TAWSSDKUtils.GetParametersAsString(Request.ParameterCollection));
        Request.Content := Content;
        Request.SetContentFromParameters := True;
      end
      else
        Request.Content := nil;
    end;

    if Length(Content) > 0 then
      Request.Headers.AddOrSetValue(THeaderKeys.ContentLengthHeader, IntToStr(Length(Content)))
    else
    if (Request.ContentStream <> nil) and not Request.Headers.ContainsKey(THeaderKeys.ContentLengthHeader) then
      Request.Headers.AddOrSetValue(THeaderKeys.ContentLengthHeader, IntToStr(Request.ContentStream.Size));
  end;
  Result := HttpRequest;
end;

procedure TSparkleHttpHandler.InvokeSync(AExecutionContext: TExecutionContext);
var
  HttpRequest: IWebHttpRequest;
  WrappedRequest: IRequest;
begin
  {TODO: Missing several parts of implementation, like SetMetrics}
//  SetMetrics(AExecutionContext.RequestContext);
  WrappedRequest := AExecutionContext.RequestContext.Request;
  HttpRequest := CreateWebRequest(AExecutionContext.RequestContext);
  HttpRequest.SetRequestHeaders(WrappedRequest.Headers);

  if WrappedRequest.HasRequestBody then
    WriteContentToRequestBody(HttpRequest, AExecutionContext.RequestContext);
  AExecutionContext.ResponseContext.HttpResponse := HttpRequest.GetResponse;
end;

procedure TSparkleHttpHandler.WriteContentToRequestBody(AHttpRequest: IWebHttpRequest;
  ARequestContext: TRequestContext);
var
  WrappedRequest: IRequest;
begin
  WrappedRequest := ARequestContext.Request;
  if Length(WrappedRequest.Content) > 0 then
    AHttpRequest.WriteToRequestBody(WrappedRequest.Content, ARequestContext.Request.Headers)
  else
  if WrappedRequest.ContentStream <> nil then
    AHttpRequest.WriteToRequestBody(WrappedRequest.ContentStream, ARequestContext.Request.Headers);
end;

end.
