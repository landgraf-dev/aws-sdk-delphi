unit AWS.Runtime.HttpRequestMessageFactory;

interface

uses
  System.Generics.Collections, System.SysUtils, System.Classes,
  AWS.Runtime.Contexts,
  AWS.Runtime.ClientConfig,
  AWS.Runtime.IHttpRequestFactory,
  Sparkle.Http.Client,
  {$IFDEF MSWINDOWS}
  Sparkle.WinHttp.Engine,
  {$ENDIF}
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
    FRequest: THttpRequest;
    FHttpClient: THttpClient;
    FClientConfig: IClientConfig;
    function GetMethod: string;
    procedure SetMethod(const Value: string);
    function GetRequestUri: string;
  public
    constructor Create(AHttpClient: THttpClient; ARequestUri: string; AConfig: IClientConfig);
    destructor Destroy; override;
    procedure ConfigureRequest(ARequestContext: TRequestContext);
    procedure SetRequestHeaders(AHeaders: TDictionary<string, string>);
    procedure WriteToRequestBody(const Content: TArray<Byte>; AHeaders: TDictionary<string, string>); overload;
    procedure WriteToRequestBody(Stream: TStream; AHeaders: TDictionary<string, string>); overload;
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

procedure THttpWebRequestMessage.WriteToRequestBody(Stream: TStream; AHeaders: TDictionary<string, string>);
var
  BytesStream: TBytesStream;
begin
  BytesStream := TBytesStream.Create;
  try
    BytesStream.CopyFrom(Stream);
    BytesStream.Size := Stream.Size;
    WriteToRequestBody(BytesStream.Bytes, AHeaders);
  finally
    BytesStream.Free;
  end;
end;

procedure THttpWebRequestMessage.WriteToRequestBody(const Content: TArray<Byte>; AHeaders: TDictionary<string, string>);
begin
  FRequest.SetContent(Content);
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
  Result := FResponse.ContentLength;
end;

function THttpClientResponseData.GetContentType: string;
begin
  Result := FResponse.ContentType;
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

end.
