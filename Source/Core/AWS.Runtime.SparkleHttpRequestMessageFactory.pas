unit AWS.Runtime.SparkleHttpRequestMessageFactory;

{$I AWS.inc}

interface

{$IFDEF USE_SPARKLE}

uses
  System.Generics.Collections, System.SysUtils, System.Classes,
  AWS.Internal.Util.ChunkedUploadWrapperStream,
  AWS.Runtime.Contexts,
  AWS.Runtime.ClientConfig,
  AWS.Runtime.IHttpRequestFactory,
  Sparkle.Http.Client,
  Sparkle.Http.Headers,
{$IFDEF MSWINDOWS}
  Sparkle.WinHttp.Engine,
{$ENDIF}
  AWS.SDKUtils,
  AWS.Internal.WebResponseData;

type
  TSparkleHttpRequestMessageFactory = class(TInterfacedObject, IHttpRequestFactory)
  strict private
    FClientConfig: IClientConfig;
    class function CreateManagedHttpClient(AClientConfig: IClientConfig): THttpClient;
  public
    constructor Create(AClientConfig: IClientConfig);
    class function CreateHttpClient(AClientConfig: IClientConfig): THttpClient;
    function CreateHttpRequest(const ARequestUri: string): IWebHttpRequest;
  end;

{$ENDIF}

implementation

{$IFDEF USE_SPARKLE}

type
  THttpWebRequestMessage = class(TInterfacedObject, IWebHttpRequest)
  strict private
    const ContentHeaderNames: array[0..5] of string = (
      THeaderKeys.ContentLengthHeader,
//      THeaderKeys.ContentTypeHeader,
      THeaderKeys.ContentRangeHeader,
      THeaderKeys.ContentMD5Header,
      THeaderKeys.ContentEncodingHeader,
      THeaderKeys.ContentDispositionHeader,
      THeaderKeys.Expires
    );
  strict private
    FRequest: THttpRequest;
    FHttpClient: THttpClient;
    FClientConfig: IClientConfig;
    function GetMethod: string;
    procedure SetMethod(const Value: string);
    function GetRequestUri: string;
    procedure WriteContentHeaders(ContentHeaders: TDictionary<string, string>);
  public
    constructor Create(AHttpClient: THttpClient; ARequestUri: string; AConfig: IClientConfig);
    destructor Destroy; override;
    procedure ConfigureRequest(ARequestContext: TRequestContext);
    procedure SetRequestHeaders(AHeaders: TDictionary<string, string>);
    procedure WriteToRequestBody(const Content: TArray<Byte>; AHeaders: TDictionary<string, string>); overload;
    procedure WriteToRequestBody(Stream: TStream; AHeaders: TDictionary<string, string>; AOwnsStream: Boolean); overload;
    function GetResponse: IWebResponseData;
    property Method: string read GetMethod write SetMethod;
    property RequestUri: string read GetRequestUri;
    property HttpClient: THttpClient read FHttpClient;
    property Request: THttpRequest read FRequest;
  end;

  THttpClientResponseData = class(TInterfacedObject, IWebResponseData, IHttpResponseBody)
  strict private
    FResponse: THttpResponse;
    FHttpClient: THttpClient;
    function GetContentLength: Integer;
    function GetContentType: string;
    function GetStatusCode: Integer;
    function GetIsSuccessStatusCode: Boolean;
    function GetResponseBody: IHttpResponseBody;
  public
    constructor Create(AResponse: THttpResponse; AHttpClient: THttpClient);
    destructor Destroy; override;
    property Response: THttpResponse read FResponse;
    function OpenResponse: TStream;
    function IsHeaderPresent(const AHeaderName: string): Boolean;
    function GetHeaderValue(const AHeaderName: string): string;
    function GetHeaderNames: TArray<string>;
    property ContentLength: Integer read GetContentLength;
    property ContentType: string read GetContentType;
    property StatusCode: Integer read GetStatusCode;
    property IsSuccessStatusCode: Boolean read GetIsSuccessStatusCode;
    property ResponseBody: IHttpResponseBody read GetResponseBody;
  end;

{ TSparkleHttpRequestMessageFactory }

constructor TSparkleHttpRequestMessageFactory.Create(AClientConfig: IClientConfig);
begin
  inherited Create;
  FClientConfig := AClientConfig;
end;

class function TSparkleHttpRequestMessageFactory.CreateHttpClient(AClientConfig: IClientConfig): THttpClient;
begin
  {TODO: HttpClientFactory in client config}
//  if FClientConfig.HttpClientFactory = nil then
    Result := CreateManagedHttpClient(AClientConfig)
//  else
//    Result := FClientConfig.HttpClientFactory.CreateHttpClient(AClientConfig);
end;

function TSparkleHttpRequestMessageFactory.CreateHttpRequest(const ARequestUri: string): IWebHttpRequest;
var
  HttpClient: THttpClient;
begin
  HttpClient := CreateHttpClient(FClientConfig);
  Result := THttpWebRequestMessage.Create(HttpClient, ARequestUri, FClientConfig);
end;

class function TSparkleHttpRequestMessageFactory.CreateManagedHttpClient(AClientConfig: IClientConfig): THttpClient;
begin
  {TODO: Several options not implemented, including timeout}
  Result := THttpClient.Create;
  {$IFDEF MSWINDOWS}
  TWinHttpEngine(Result.Engine).ProxyMode := THttpProxyMode.Auto;
  {$ENDIF}
end;

{ THttpWebRequestMessage }

procedure THttpWebRequestMessage.ConfigureRequest(ARequestContext: TRequestContext);
begin

end;

constructor THttpWebRequestMessage.Create(AHttpClient: THttpClient; ARequestUri: string; AConfig: IClientConfig);
begin
  inherited Create;
  FHttpClient := AHttpClient;
  FClientConfig := AConfig;
  FRequest := FHttpClient.CreateRequest;
  FRequest.Uri := ARequestUri;
end;

destructor THttpWebRequestMessage.Destroy;
begin
  FRequest.Free;
  FHttpClient.Free;
  inherited;
end;

function THttpWebRequestMessage.GetMethod: string;
begin
  Result := FRequest.Method;
end;

function THttpWebRequestMessage.GetRequestUri: string;
begin
  Result := FRequest.Uri;
end;

function THttpWebRequestMessage.GetResponse: IWebResponseData;
var
  ResponseMessage: THttpResponse;
begin
  // From GetResponseAsync
  if FHttpClient = nil then
    raise EInvalidOpException.Create('The response was already retrieved');

  ResponseMessage := FHttpClient.Send(FRequest);
  Result := THttpClientResponseData.Create(ResponseMessage, FHttpClient);
  FHttpClient := nil;

  if (ResponseMessage.StatusCode < 200) or (ResponseMessage.StatusCode >= 300) then
    raise EHttpErrorResponseException.Create(Result)
end;

procedure THttpWebRequestMessage.SetMethod(const Value: string);
begin
  FRequest.Method := Value;
end;

procedure THttpWebRequestMessage.SetRequestHeaders(AHeaders: TDictionary<string, string>);
var
  IsContentHeader: Boolean;
  ContentHeader: string;
  Kvp: TPair<string, string>;
begin
  for Kvp in AHeaders do
  begin
    IsContentHeader := False;
    for ContentHeader in ContentHeaderNames do
      if SameText(Kvp.Key, ContentHeader) then
      begin
        IsContentHeader := True;
        break;
      end;

    if not IsContentHeader then
      FRequest.Headers.SetValue(Kvp.Key, Kvp.Value);
  end;
end;

procedure THttpWebRequestMessage.WriteContentHeaders(ContentHeaders: TDictionary<string, string>);
begin
  var ContentType := '';
  ContentHeaders.TryGetValue(THeaderKeys.ContentTypeHeader, ContentType);
  FRequest.Headers.SetValue(THeaderKeys.ContentTypeHeader, ContentType);

  if ContentHeaders.ContainsKey(THeaderKeys.ContentRangeHeader) then
    FRequest.Headers.SetValue(THeaderKeys.ContentRangeHeader, ContentHeaders[THeaderKeys.ContentRangeHeader]);

  if ContentHeaders.ContainsKey(THeaderKeys.ContentMD5Header) then
    FRequest.Headers.SetValue(THeaderKeys.ContentMD5Header, ContentHeaders[THeaderKeys.ContentMD5Header]);

  if ContentHeaders.ContainsKey(THeaderKeys.ContentEncodingHeader) then
    FRequest.Headers.SetValue(THeaderKeys.ContentEncodingHeader, ContentHeaders[THeaderKeys.ContentEncodingHeader]);

  if ContentHeaders.ContainsKey(THeaderKeys.ContentDispositionHeader) then
    FRequest.Headers.SetValue(THeaderKeys.ContentDispositionHeader, ContentHeaders[THeaderKeys.ContentDispositionHeader]);

  if ContentHeaders.ContainsKey(THeaderKeys.Expires) then
    FRequest.Headers.SetValue(THeaderKeys.Expires, ContentHeaders[THeaderKeys.Expires]);
end;

procedure THttpWebRequestMessage.WriteToRequestBody(Stream: TStream; AHeaders: TDictionary<string, string>; AOwnsStream: Boolean);
begin
  FRequest.ContentStream := Stream;
  FRequest.OwnsContentStream := AOwnsStream;
  if (Stream is TChunkedUploadWrapperStream) and TChunkedUploadWrapperStream(Stream).HasLength then
    FRequest.Headers.SetValue(THeaderKeys.ContentLengthHeader, IntToStr(Stream.Size));
  WriteContentHeaders(AHeaders);
end;

procedure THttpWebRequestMessage.WriteToRequestBody(const Content: TArray<Byte>; AHeaders: TDictionary<string, string>);
begin
  FRequest.SetContent(Content);
  WriteContentHeaders(AHeaders);
end;

{ THttpClientResponseData }

constructor THttpClientResponseData.Create(AResponse: THttpResponse; AHttpClient: THttpClient);
begin
  inherited Create;
  FResponse := AResponse;
  FHttpClient := AHttpClient;
end;

destructor THttpClientResponseData.Destroy;
begin
  FResponse.Free;
  FHttpClient.Free;
  inherited;
end;

function THttpClientResponseData.GetContentLength: Integer;
begin
  if not TryStrToInt(GetHeaderValue(THeaderKeys.ContentLengthHeader), Result) then
    Result := 0;
end;

function THttpClientResponseData.GetContentType: string;
begin
  Result := FResponse.ContentType;
end;

function THttpClientResponseData.GetHeaderNames: TArray<string>;
begin
  var Headers := TList<THttpHeaderInfo>.Create(FResponse.Headers.AllHeaders);
  SetLength(Result, Headers.Count);
  for var I := 0 to Headers.Count - 1 do
    Result[I] := Headers[I].Name;
end;

function THttpClientResponseData.GetHeaderValue(const AHeaderName: string): string;
begin
  Result := FResponse.Headers.Get(AHeaderName);
end;

function THttpClientResponseData.GetIsSuccessStatusCode: Boolean;
begin
  Result := (FResponse.StatusCode >= 200) and (FResponse.StatusCode <= 299);
end;

function THttpClientResponseData.GetResponseBody: IHttpResponseBody;
begin
  Result := Self;
end;

function THttpClientResponseData.GetStatusCode: Integer;
begin
  Result := FResponse.StatusCode;
end;

function THttpClientResponseData.IsHeaderPresent(const AHeaderName: string): Boolean;
begin
  Result := FResponse.Headers.Exists(AHeaderName);
end;

function THttpClientResponseData.OpenResponse: TStream;
begin
  Result := FResponse.ContentAsStream;
end;

{$ENDIF}

end.
