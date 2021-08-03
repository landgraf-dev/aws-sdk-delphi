unit AWS.Runtime.ClientConfig;

{$I AWS.inc}

interface

uses
  AWS.RegionEndpoint,
  AWS.SDKUtils,
  Bcl.Types.Nullable;

type
  /// <summary>
  /// RetryMode determines which request retry mode is used for requests that do
  /// not complete successfully.
  /// </summary>
  TRequestRetryMode = (Legacy, Standard, Adaptive);

  /// <summary>
  /// This interface is the read only access to the ClientConfig object used when setting up service clients. Once service clients
  /// are initiated the config object should not be changed to avoid issues with using a service client in a multi threaded environment.
  /// </summary>
  IClientConfig = interface
    function GetAuthenticationRegion: string;
    function GetAuthenticationServiceName: string;
    function GetBufferSize: Integer;
    function GetDisableLogging: Boolean;
    function GetIsMaxErrorRetrySet: Boolean;
    function GetLogMetrics: Boolean;
    function GetLogResponse: Boolean;
    function GetMaxErrorRetry: Integer;
    function GetReadEntireResponse: Boolean;
    function GetRegionEndpoint: IRegionEndpointEx;
    function GetRegionEndpointServiceName: string;
    function GetResignRetries: Boolean;
    function GetServiceURL: string;
    function GetSignatureMethod: TSigningAlgorithm;
    function GetSignatureVersion: string;
    function GetUseDualstackEndpoint: Boolean;
    function GetUseHttp: Boolean;
    function GetUserAgent: string;

    function DetermineServiceUrl: string;
    procedure Validate;

    property AuthenticationRegion: string read GetAuthenticationRegion;
    property AuthenticationServiceName: string read GetAuthenticationServiceName;
    property BufferSize: Integer read GetBufferSize;
    property DisableLogging: Boolean read GetDisableLogging;
    property IsMaxErrorRetrySet: Boolean read GetIsMaxErrorRetrySet;
    property LogMetrics: Boolean read GetLogMetrics;
    property LogResponse: Boolean read GetLogResponse;
    property MaxErrorRetry: Integer read GetMaxErrorRetry;
    property ReadEntireResponse: Boolean read GetReadEntireResponse;
    property RegionEndpoint: IRegionEndpointEx read GetRegionEndpoint;
    property RegionEndpointServiceName: string read GetRegionEndpointServiceName;
    property ResignRetries: Boolean read GetResignRetries;
    property ServiceURL: string read GetServiceURL;
    property SignatureMethod: TSigningAlgorithm read GetSignatureMethod;
    property SignatureVersion: string read GetSignatureVersion;
    property UseDualstackEndpoint: Boolean read GetUseDualstackEndpoint;
    property UseHttp: Boolean read GetUseHttp;
    property UserAgent: string read GetUserAgent;
  end;

  TClientConfig = class(TInterfacedObject, IClientConfig)
  private
    FAuthenticationServiceName: string;
    FLogMetrics: Boolean;
    FUseHttp: Boolean;
    FUseDualstackEndpoint: Boolean;
    FServiceURL: string;
    FProbeForRegionEndpoint: Boolean;
    FRegionEndpoint: IRegionEndpointEx;
    FResignRetries: Boolean;
    FAuthenticationRegion: string;
    FDisableLogging: Boolean;
    FLogResponse: Boolean;
    FReadEntireResponse: Boolean;
    FMaxRetries: Nullable<Integer>;
    FBufferSize: Integer;
    FSignatureVersion: string;
    FSignatureMethod: TSigningAlgorithm;
    function GetLogMetrics: Boolean;
    function GetLogResponse: Boolean;
    function GetUseDualstackEndpoint: Boolean;
    function GetUseHttp: Boolean;
    function GetServiceURL: string;
    procedure SetServiceURL(const Value: string);
    function GetRegionEndpoint: IRegionEndpointEx;
    procedure SetRegionEndpoint(const Value: IRegionEndpointEx);
    function GetDefaultRegionEndpoint: IRegionEndpointEx;
    function GetResignRetries: Boolean;
    function GetAuthenticationServiceName: string;
    function GetAuthenticationRegion: string;
    function GetDisableLogging: Boolean;
    function GetReadEntireResponse: Boolean;
    function GetMaxErrorRetry: Integer;
    procedure SetMaxErrorRetry(const Value: Integer);
    function GetIsMaxErrorRetrySet: Boolean;
    function GetBufferSize: Integer;
    function GetSignatureVersion: string;
    function GetSignatureMethod: TSigningAlgorithm;
  strict protected
    function GetRegionEndpointServiceName: string; virtual; abstract;
    function GetServiceVersion: string; virtual; abstract;
    function GetUserAgent: string; virtual; abstract;
    procedure Init; virtual;
  public
    // internal functions
    class function GetUrl(ARegionEndpoint: IRegionEndpointEx; const ARegionEndpointServiceName: string;
      AUseHttp, AUseDualStack: Boolean): string;
  public
    constructor Create; overload;
    constructor Create(ARegion: IRegionEndpointEx); overload;
    function DetermineServiceUrl: string; virtual;
    procedure Validate; virtual;
    property AuthenticationServiceName: string read GetAuthenticationServiceName write FAuthenticationServiceName;
    property AuthenticationRegion: string read GetAuthenticationRegion write FAuthenticationRegion;
    property ServiceURL: string read GetServiceURL write SetServiceURL;
    property ServiceVersion: string read GetServiceVersion;
    property LogMetrics: Boolean read GetLogMetrics;
    property LogResponse: Boolean read GetLogResponse write FLogResponse;
    property RegionEndpointServiceName: string read GetRegionEndpointServiceName;
    property UseDualstackEndpoint: Boolean read GetUseDualstackEndpoint write FUseDualstackEndpoint;
    property UseHttp: Boolean read GetUseHttp write FUseHttp;
    property RegionEndpoint: IRegionEndpointEx read GetRegionEndpoint write SetRegionEndpoint;
    property ResignRetries: Boolean read GetResignRetries;
    property DisableLogging: Boolean read GetDisableLogging write FDisableLogging;
    property ReadEntireResponse: Boolean read GetReadEntireResponse write FReadEntireResponse;
    property MaxErrorRetry: Integer read GetMaxErrorRetry write SetMaxErrorRetry;
    property IsMaxErrorRetrySet: Boolean read GetIsMaxErrorRetrySet;
    property BufferSize: Integer read GetBufferSize write FBufferSize;
    property SignatureVersion: string read GetSignatureVersion write FSignatureVersion;
    property SignatureMethod: TSigningAlgorithm read GetSignatureMethod write FSignatureMethod;
    property UserAgent: string read GetUserAgent;
  end;

implementation

uses
  AWS.Runtime.AWSRegion,
  AWS.Runtime.Exceptions,
  AWS.Internal.IRegionEndpoint;

{ TClientConfig }

constructor TClientConfig.Create;
begin
  inherited Create;
  Init;
end;

constructor TClientConfig.Create(ARegion: IRegionEndpointEx);
begin
  Create;
  RegionEndpoint := ARegion;
end;

function TClientConfig.DetermineServiceUrl: string;
begin
  if ServiceUrl <> '' then
    Result := ServiceURL
  else
    Result := GetUrl(RegionEndpoint, RegionEndpointServiceName, UseHttp, UseDualstackEndpoint);
end;

function TClientConfig.GetAuthenticationRegion: string;
begin
  Result := FAuthenticationRegion;
end;

function TClientConfig.GetAuthenticationServiceName: string;
begin
  Result := FAuthenticationServiceName;
end;

function TClientConfig.GetBufferSize: Integer;
begin
  Result := FBufferSize;
end;

function TClientConfig.GetDefaultRegionEndpoint: IRegionEndpointEx;
begin
  Result := TFallbackRegionFactory.GetRegionEndpoint;
end;

function TClientConfig.GetDisableLogging: Boolean;
begin
  Result := FDisableLogging;
end;

function TClientConfig.GetIsMaxErrorRetrySet: Boolean;
begin
  Result := FMaxRetries.HasValue;
end;

function TClientConfig.GetLogMetrics: Boolean;
begin
  Result := FLogMetrics;
end;

function TClientConfig.GetLogResponse: Boolean;
begin
  Result := FLogResponse;
end;

function TClientConfig.GetMaxErrorRetry: Integer;
begin
  if not FMaxRetries.HasValue then
  begin
    {TODO: Implement this}
//    if RetryMode = TRequestRetryMode.Legacy then
//      Exit(MaxRetriesLegacyDefault);



  end;
  Result := FMaxRetries.Value;
end;

function TClientConfig.GetReadEntireResponse: Boolean;
begin
  Result := FReadEntireResponse;
end;

function TClientConfig.GetRegionEndpoint: IRegionEndpointEx;
begin
  if FProbeForRegionEndpoint then
  begin
    RegionEndpoint := GetDefaultRegionEndpoint;
    FProbeForRegionEndpoint := False;
  end;
  Result := FRegionEndpoint;
end;

function TClientConfig.GetResignRetries: Boolean;
begin
  Result := FResignRetries;
end;

function TClientConfig.GetServiceURL: string;
begin
  Result := FServiceURL;
end;

function TClientConfig.GetSignatureMethod: TSigningAlgorithm;
begin
  Result := FSignatureMethod;
end;

function TClientConfig.GetSignatureVersion: string;
begin
  Result := FSignatureVersion;
end;

class function TClientConfig.GetUrl(ARegionEndpoint: IRegionEndpointEx; const ARegionEndpointServiceName: string;
  AUseHttp, AUseDualStack: Boolean): string;
var
  Endpoint: IEndpoint;
begin
  Endpoint := ARegionEndpoint.GetEndpointForService(ARegionEndpointServiceName, AUseDualStack);
  if AUseHttp then
    Result := 'http://' + Endpoint.HostName
  else
    Result := 'https://' + Endpoint.HostName;
end;

function TClientConfig.GetUseDualstackEndpoint: Boolean;
begin
  Result := FUseDualstackEndpoint;
end;

function TClientConfig.GetUseHttp: Boolean;
begin
  Result := FUseHttp;
end;

procedure TClientConfig.Init;
begin
  FProbeForRegionEndpoint := True;
  FSignatureVersion := '4';
  FSignatureMethod := TSigningAlgorithm.HmacSHA256;
  FBufferSize := TAWSSDKUtils.DefaultBufferSize;
end;

procedure TClientConfig.SetMaxErrorRetry(const Value: Integer);
begin
  FMaxRetries := Value;
end;

procedure TClientConfig.SetRegionEndpoint(const Value: IRegionEndpointEx);
begin
  FServiceURL := '';
  FRegionEndpoint := Value;
  FProbeForRegionEndpoint := FRegionEndpoint = nil;
end;

procedure TClientConfig.SetServiceURL(const Value: string);
begin
  FRegionEndpoint := nil;
  FProbeForRegionEndpoint := False;
  FServiceUrl := Value;
end;

procedure TClientConfig.Validate;
begin
  if (RegionEndpoint = nil) and (ServiceUrl = '') then
    raise EAmazonClientException.Create('No RegionEndpoint or ServiceURL configured');
end;

end.
