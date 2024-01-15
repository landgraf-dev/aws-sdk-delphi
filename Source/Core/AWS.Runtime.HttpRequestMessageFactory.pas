unit AWS.Runtime.HttpRequestMessageFactory;

interface

uses
  System.Generics.Collections, System.SysUtils, System.Classes, System.Net.HttpClient,
  AWS.Internal.Util.ChunkedUploadWrapperStream,
  AWS.Lib.HttpHeaders,
  AWS.Runtime.Contexts,
  AWS.Runtime.ClientConfig,
  AWS.Runtime.IHttpRequestFactory,
  AWS.SDKUtils,
  AWS.Internal.WebResponseData;

type
  THttpRequestMessageFactory = class(TInterfacedObject, IHttpRequestFactory)
  strict private
    FClientConfig: IClientConfig;
    class function CreateManagedHttpClient(AClientConfig: IClientConfig): THttpClient;
  public
    constructor Create(AClientConfig: IClientConfig);
    class function CreateHttpClient(AClientConfig: IClientConfig): THttpClient;
    function CreateHttpRequest(const ARequestUri: string): IWebHttpRequest;
  end;

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
    FRequest: IHttpRequest;
    FRequestUri: string;
    FHttpClient: THttpClient;
    FClientConfig: IClientConfig;
    FOwnsSourceStream: Boolean;
    function GetMethod: string;
    procedure SetMethod(const Value: string);
    function GetRequestUri: string;
    procedure WriteContentHeaders(ContentHeaders: TDictionary<string, string>);
    procedure CheckRequest;
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
  end;

  THttpClientResponseData = class(TInterfacedObject, IWebResponseData, IHttpResponseBody)
  strict private
    FResponse: IHttpResponse;
    FHttpClient: THttpClient;
    function GetContentLength: Integer;
    function GetContentType: string;
    function GetStatusCode: Integer;
    function GetIsSuccessStatusCode: Boolean;
    function GetResponseBody: IHttpResponseBody;
  public
    constructor Create(AResponse: IHttpResponse; AHttpClient: THttpClient);
    destructor Destroy; override;
    property Response: IHttpResponse read FResponse;
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

implementation

{ THttpRequestMessageFactory }

constructor THttpRequestMessageFactory.Create(AClientConfig: IClientConfig);
begin
  inherited Create;
  FClientConfig := AClientConfig;
end;

class function THttpRequestMessageFactory.CreateHttpClient(AClientConfig: IClientConfig): THttpClient;
begin
  {TODO: HttpClientFactory in client config}
//  if FClientConfig.HttpClientFactory = nil then
    Result := CreateManagedHttpClient(AClientConfig)
//  else
//    Result := FClientConfig.HttpClientFactory.CreateHttpClient(AClientConfig);
end;

function THttpRequestMessageFactory.CreateHttpRequest(const ARequestUri: string): IWebHttpRequest;
var
  HttpClient: THttpClient;
begin
  HttpClient := CreateHttpClient(FClientConfig);
  Result := THttpWebRequestMessage.Create(HttpClient, ARequestUri, FClientConfig);
end;

class function THttpRequestMessageFactory.CreateManagedHttpClient(AClientConfig: IClientConfig): THttpClient;
begin
  {TODO: Several options not implemented, including timeout}
  Result := THttpClient.Create;
  Result.HandleRedirects := AClientConfig.AllowAutoRedirect;
end;

{ THttpWebRequestMessage }

procedure THttpWebRequestMessage.CheckRequest;
begin
  if FRequest = nil then
    raise EInvalidOpException.Create('Request is nil, method string was not set');
end;

procedure THttpWebRequestMessage.ConfigureRequest(ARequestContext: TRequestContext);
begin

end;

constructor THttpWebRequestMessage.Create(AHttpClient: THttpClient; ARequestUri: string; AConfig: IClientConfig);
begin
  inherited Create;
  FHttpClient := AHttpClient;
  FClientConfig := AConfig;
  FRequestUri := ARequestUri;
end;

destructor THttpWebRequestMessage.Destroy;
begin
{$IFNDEF AUTOREFCOUNT}
  if (FRequest <> nil) and FOwnsSourceStream then
    FRequest.SourceStream.Free;
{$ENDIF}
  FHttpClient.Free;
  inherited;
end;

function THttpWebRequestMessage.GetMethod: string;
begin
  if FRequest <> nil then
    Result := FRequest.MethodString
  else
    Result := '';
end;

function THttpWebRequestMessage.GetRequestUri: string;
begin
  Result := FRequestUri;
end;

function THttpWebRequestMessage.GetResponse: IWebResponseData;
var
  ResponseMessage: IHttpResponse;
begin
  // From GetResponseAsync
  if FHttpClient = nil then
    raise EInvalidOpException.Create('The response was already retrieved');
  CheckRequest;

  ResponseMessage := FHttpClient.Execute(FRequest);

  Result := THttpClientResponseData.Create(ResponseMessage, FHttpClient);
  FHttpClient := nil;

  // If AllowAutoRedirect is set to false, HTTP 3xx responses are returned back as response.
  if not FClientConfig.AllowAutoRedirect and
    (ResponseMessage.StatusCode >= 300) and (ResponseMessage.StatusCode < 400) then
    Exit;

  if (ResponseMessage.StatusCode < 200) or (ResponseMessage.StatusCode >= 300) then
    raise EHttpErrorResponseException.Create(Result)
end;

procedure THttpWebRequestMessage.SetMethod(const Value: string);
begin
  FRequest := FHttpClient.GetRequest(Value, FRequestUri);
end;

procedure THttpWebRequestMessage.SetRequestHeaders(AHeaders: TDictionary<string, string>);
var
  IsContentHeader: Boolean;
  ContentHeader: string;
  Kvp: TPair<string, string>;
begin
  CheckRequest;
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
      FRequest.SetHeaderValue(Kvp.Key, Kvp.Value);
  end;
end;

procedure THttpWebRequestMessage.WriteContentHeaders(ContentHeaders: TDictionary<string, string>);
begin
  var ContentType := '';
  ContentHeaders.TryGetValue(THeaderKeys.ContentTypeHeader, ContentType);
  FRequest.SetHeaderValue(THeaderKeys.ContentTypeHeader, ContentType);

  if ContentHeaders.ContainsKey(THeaderKeys.ContentRangeHeader) then
    FRequest.SetHeaderValue(THeaderKeys.ContentRangeHeader, ContentHeaders[THeaderKeys.ContentRangeHeader]);

  if ContentHeaders.ContainsKey(THeaderKeys.ContentMD5Header) then
    FRequest.SetHeaderValue(THeaderKeys.ContentMD5Header, ContentHeaders[THeaderKeys.ContentMD5Header]);

  if ContentHeaders.ContainsKey(THeaderKeys.ContentEncodingHeader) then
    FRequest.SetHeaderValue(THeaderKeys.ContentEncodingHeader, ContentHeaders[THeaderKeys.ContentEncodingHeader]);

  if ContentHeaders.ContainsKey(THeaderKeys.ContentDispositionHeader) then
    FRequest.SetHeaderValue(THeaderKeys.ContentDispositionHeader, ContentHeaders[THeaderKeys.ContentDispositionHeader]);

  if ContentHeaders.ContainsKey(THeaderKeys.Expires) then
    FRequest.SetHeaderValue(THeaderKeys.Expires, ContentHeaders[THeaderKeys.Expires]);
end;

procedure THttpWebRequestMessage.WriteToRequestBody(Stream: TStream; AHeaders: TDictionary<string, string>; AOwnsStream: Boolean);
begin
  CheckRequest;
  FRequest.SourceStream := Stream;
  FOwnsSourceStream := AOwnsStream;
  if (Stream is TChunkedUploadWrapperStream) and TChunkedUploadWrapperStream(Stream).HasLength then
    FRequest.SetHeaderValue(THeaderKeys.ContentLengthHeader, IntToStr(Stream.Size));
  WriteContentHeaders(AHeaders);
end;

procedure THttpWebRequestMessage.WriteToRequestBody(const Content: TArray<Byte>; AHeaders: TDictionary<string, string>);
begin
  CheckRequest;
  FRequest.SourceStream := TBytesStream.Create(Content);
  FOwnsSourceStream := True;
  WriteContentHeaders(AHeaders);
end;

{ THttpClientResponseData }

constructor THttpClientResponseData.Create(AResponse: IHttpResponse; AHttpClient: THttpClient);
begin
  inherited Create;
  FResponse := AResponse;
  FHttpClient := AHttpClient;
end;

destructor THttpClientResponseData.Destroy;
begin
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
  Result := FResponse.GetHeaderValue(THeaderKeys.ContentTypeHeader);
end;

function THttpClientResponseData.GetHeaderNames: TArray<string>;
begin
  var Headers := FResponse.GetHeaders;
  SetLength(Result, Length(Headers));
  for var I := 0 to Length(Headers) - 1 do
    Result[I] := Headers[I].Name;
end;

function THttpClientResponseData.GetHeaderValue(const AHeaderName: string): string;
begin
  Result := FResponse.GetHeaderValue(AHeaderName);
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
  Result := FResponse.ContainsHeader(AHeaderName);
end;

function THttpClientResponseData.OpenResponse: TStream;
begin
  Result := FResponse.ContentStream;
end;

end.
