unit AWS.Runtime.ClientConfig;

{$I AWS.inc}

interface

uses
  System.TimeSpan,
  AWS.RegionEndpoint,
  AWS.Configs,
  AWS.Enums,
  AWS.Runtime.InternalConfiguration,
  AWS.SDKUtils,
  AWS.Nullable;

type
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
    procedure SetRegionEndpoint(const Value: IRegionEndpointEx);
    function GetRegionEndpointServiceName: string;
    function GetResignRetries: Boolean;
    function GetServiceURL: string;
    function GetSignatureMethod: TSigningAlgorithm;
    function GetSignatureVersion: string;
    procedure SetSignatureVersion(const Value: string);
    function GetUseAlternateUserAgentHeader: Boolean;
    function GetUseDualstackEndpoint: Boolean;
    function GetUseHttp: Boolean;
    function GetUserAgent: string;
    function GetAllowAutoRedirect: Boolean;
    function GetRetryMode: TRequestRetryMode;
    function GetThrottleRetries: Boolean;
    function GetFastFailRequests: Boolean;

    function DetermineServiceUrl: string;
    function CorrectedUtcNow: TDateTime;
    procedure Validate;

    /// <summary>
    /// Returns the calculated clock skew value for this config's service endpoint. If AWSConfigs.CorrectForClockSkew is false,
    /// this value won't be used to construct service requests.
    /// </summary>
    function ClockOffset: TTimeSpan;

    property AuthenticationRegion: string read GetAuthenticationRegion;
    property AuthenticationServiceName: string read GetAuthenticationServiceName;
    property BufferSize: Integer read GetBufferSize;
    property DisableLogging: Boolean read GetDisableLogging;
    property IsMaxErrorRetrySet: Boolean read GetIsMaxErrorRetrySet;
    property LogMetrics: Boolean read GetLogMetrics;
    property LogResponse: Boolean read GetLogResponse;
    property MaxErrorRetry: Integer read GetMaxErrorRetry;
    property ReadEntireResponse: Boolean read GetReadEntireResponse;
    property RegionEndpoint: IRegionEndpointEx read GetRegionEndpoint write SetRegionEndpoint;
    property RegionEndpointServiceName: string read GetRegionEndpointServiceName;
    property ResignRetries: Boolean read GetResignRetries;
    property ServiceURL: string read GetServiceURL;
    property SignatureMethod: TSigningAlgorithm read GetSignatureMethod;
    property SignatureVersion: string read GetSignatureVersion write SetSignatureVersion;
    property UseAlternateUserAgentHeader: Boolean read GetUseAlternateUserAgentHeader;
    property UseDualstackEndpoint: Boolean read GetUseDualstackEndpoint;
    property UseHttp: Boolean read GetUseHttp;
    property UserAgent: string read GetUserAgent;
    property AllowAutoRedirect: Boolean read GetAllowAutoRedirect;

    /// <summary>
    /// Returns the flag indicating the current mode in use for request
    /// retries and influences the value returned from <see cref="MaxErrorRetry"/>.
    /// The default value is RequestRetryMode.Legacy. This flag can be configured
    /// by using the AWS_RETRY_MODE environment variable, retry_mode in the
    /// shared configuration file, or by setting this value directly.
    /// </summary>
    property RetryMode: TRequestRetryMode read GetRetryMode;

    /// <summary>
    /// Configures a flag enabling to either opt in or opt out of the retry throttling service.
    /// Note: set value to true to enable retry throttling feature. The Default value for this flag is false.
    /// </summary>
    property ThrottleRetries: Boolean read GetThrottleRetries;

    /// <summary>
    /// Under Adaptive retry mode, this flag determines if the client should wait for
    /// a send token to become available or don't block and fail the request immediately
    /// if a send token is not available.
    /// </summary>
    property FastFailRequests: Boolean read GetFastFailRequests;
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
    FUseAlternateUserAgentHeader: Boolean;
    FAllowAutoRedirect: Boolean;
    FRetryMode: Nullable<TRequestRetryMode>;
    FThrottleRetries: Boolean;
    FFastFailRequests: Boolean;
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
    function GetUseAlternateUserAgentHeader: Boolean;
    procedure SetSignatureVersion(const Value: string);
    function GetAllowAutoRedirect: Boolean;
    function GetRetryMode: TRequestRetryMode;
    procedure SetRetryMode(const Value: TRequestRetryMode);
    function GetThrottleRetries: Boolean;
    function GetFastFailRequests: Boolean;
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
    function CorrectedUtcNow: TDateTime;
    procedure Validate; virtual;
    function ClockOffset: TTimeSpan;

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
    property SignatureVersion: string read GetSignatureVersion write SetSignatureVersion;
    property SignatureMethod: TSigningAlgorithm read GetSignatureMethod write FSignatureMethod;
    property UseAlternateUserAgentHeader: Boolean read GetUseAlternateUserAgentHeader write FUseAlternateUserAgentHeader;
    property UserAgent: string read GetUserAgent;
    property AllowAutoRedirect: Boolean read GetAllowAutoRedirect write FAllowAutoRedirect;

    /// <summary>
    /// Returns the flag indicating the current mode in use for request
    /// retries and influences the value returned from <see cref="MaxErrorRetry"/>.
    /// The default value is RequestRetryMode.Legacy. This flag can be configured
    /// by using the AWS_RETRY_MODE environment variable, retry_mode in the
    /// shared configuration file, or by setting this value directly.
    /// </summary>
    property RetryMode: TRequestRetryMode read GetRetryMode write SetRetryMode;

    property FastFailRequests: Boolean read GetFastFailRequests write FFastFailRequests;

    property ThrottleRetries: Boolean read GetThrottleRetries write FThrottleRetries;
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

function TClientConfig.ClockOffset: TTimeSpan;
begin
  if TAWSConfigs.ManualClockCorrection.HasValue then
    Result := TAWSConfigs.ManualClockCorrection.Value
  else
  begin
    var endpoint := DetermineServiceURL;
    Result := TCorrectClockSkew.GetClockCorrectionForEndpoint(endpoint);
  end;
end;

function TClientConfig.CorrectedUtcNow: TDateTime;
begin
  Result := TCorrectClockSkew.GetCorrectedUtcNowForEndpoint(DetermineServiceURL);
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

function TClientConfig.GetFastFailRequests: Boolean;
begin
  Result := FFastFailRequests;
end;

function TClientConfig.GetAllowAutoRedirect: Boolean;
begin
  Result := FAllowAutoRedirect;
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

function TClientConfig.GetRetryMode: TRequestRetryMode;
begin
  if not FRetryMode.HasValue then
  begin
    if TFallbackInternalConfigurationFactory.RetryMode.HasValue then
      Exit(TFallbackInternalConfigurationFactory.RetryMode.Value)
    else
      Exit(TRequestRetryMode.Legacy);
  end;

  Result := FRetryMode.Value;
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

function TClientConfig.GetThrottleRetries: Boolean;
begin
  Result := FThrottleRetries;
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

function TClientConfig.GetUseAlternateUserAgentHeader: Boolean;
begin
  Result := FUseAlternateUserAgentHeader;
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
  FAllowAutoRedirect := True;
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

procedure TClientConfig.SetRetryMode(const Value: TRequestRetryMode);
begin
  FRetryMode := Value;
end;

procedure TClientConfig.SetServiceURL(const Value: string);
begin
  FRegionEndpoint := nil;
  FProbeForRegionEndpoint := False;
  FServiceUrl := Value;
end;

procedure TClientConfig.SetSignatureVersion(const Value: string);
begin
  FSignatureVersion := Value;
end;

procedure TClientConfig.Validate;
begin
  if (RegionEndpoint = nil) and (ServiceUrl = '') then
    raise EAmazonClientException.Create('No RegionEndpoint or ServiceURL configured');
end;

end.
