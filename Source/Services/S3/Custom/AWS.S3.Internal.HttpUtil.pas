unit AWS.S3.Internal.HttpUtil;

interface

uses
  System.Net.HttpClient,
  AWS.Nullable,
  AWS.Runtime.ClientConfig,
  AWS.S3.ClientIntf;

type
  TGetHeadResponse = record
  public
    StatusCode: Nullable<Integer>;
    HeaderValue: string;
  end;

  TAmazonS3HttpUtil = class
  private
    class function GetHeadHttpRequest(Client: THttpClient; Config: IClientConfig; const Url: string): IHttpRequest; static;
    class function HandleWebResponse(const Header: string; HttpResponse: IHttpResponse): TGetHeadResponse; static;
    class procedure SetProxyIfAvailableAndConfigured(Config: IClientConfig; Client: THttpClient); static;
  public
    class function GetHead(S3Client: IAmazonS3; Config: IClientConfig; const Url, Header: string): TGetHeadResponse; static;
  end;

implementation

{ TAmazonS3HttpUtil }

class function TAmazonS3HttpUtil.GetHead(S3Client: IAmazonS3; Config: IClientConfig; const Url,
  Header: string): TGetHeadResponse;
begin
  var client := THttpClient.Create;
  try
    var httpRequest: IHttpRequest := GetHeadHttpRequest(client, Config, Url);
    var httpResponse := client.Execute(httpRequest);
    Result := HandleWebResponse(Header, httpResponse);
  finally
    client.Free;
  end;
end;

class function TAmazonS3HttpUtil.GetHeadHttpRequest(Client: THttpClient; Config: IClientConfig; const Url: string): IHttpRequest;
begin
  Result := Client.GetRequest('HEAD', Url);
  SetProxyIfAvailableAndConfigured(Config, Client);
end;

class function TAmazonS3HttpUtil.HandleWebResponse(const Header: string; HttpResponse: IHttpResponse): TGetHeadResponse;
begin
  Result.HeaderValue := HttpResponse.HeaderValue[Header];
  Result.Statuscode := HttpResponse.StatusCode;
end;

class procedure TAmazonS3HttpUtil.SetProxyIfAvailableAndConfigured(Config: IClientConfig; Client: THttpClient);
begin
  { TODO: set proxy configuration in client }
//  Client.ProxySettings := Config.WebProxy;
end;

end.
