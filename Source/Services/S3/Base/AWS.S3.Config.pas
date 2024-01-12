unit AWS.S3.Config;

interface

uses
  System.SysUtils, System.TypInfo,
  AWS.Enums, 
  AWS.Runtime.ClientConfig,
  AWS.Runtime.Exceptions,
  AWS.Internal.SDKUtils,
  AWS.RegionEndpoint,
  AWS.RegionEndpoints,
  AWS.Runtime.Credentials,
  AWS.Nullable;

type
  TAmazonS3Config = class(TClientConfig)
  strict private
    class var FUserAgent: string;
    class constructor Create;
    class destructor Destroy;
  private
    FForcePathStyle: Boolean;
    FUseAccelerateEndpoint: Boolean;
    FLegacyUSEast1GlobalRegionSystemName: string;
  strict protected
    FUseArnRegion: NullableBoolean;
    FS3UsEast1RegionalEndpointValue: Nullable<TS3UsEast1RegionalEndpointValue>;
    procedure Init; override;
    function GetServiceVersion: string; override;
    function GetRegionEndpointServiceName: string; override;
    function GetUserAgent: string; override;
  public
    function DetermineServiceUrl: string; override;
    procedure Validate; override;
    property ForcePathStyle: Boolean read FForcePathStyle write FForcePathStyle;
    property UseAccelerateEndpoint: Boolean read FUseAccelerateEndpoint write FUseAccelerateEndpoint;

  private
    const UseArnRegionEnvName = 'AWS_S3_USE_ARN_REGION';
    const AccelerateEndpointSuffix = 's3-accelerate.amazonaws.com';
    const AccelerateDualstackEndpointSuffix = 's3-accelerate.dualstack.amazonaws.com';
    const AwsProfileEnvironmentVariable = 'AWS_PROFILE';
    const DefaultProfileName = 'default';
    const AwsS3UsEast1RegionalEndpointsEnvironmentVariable = 'AWS_S3_US_EAST_1_REGIONAL_ENDPOINT';
  private
    function GetUseArnRegion: Boolean;
    procedure SetUseArnRegion(const Value: Boolean);
    function GetUSEast1RegionalEndpointValue: Nullable<TS3UsEast1RegionalEndpointValue>;
    procedure SetUSEast1RegionalEndpointValue(const Value: Nullable<TS3UsEast1RegionalEndpointValue>);
    class function CheckS3EnvironmentVariable: Nullable<TS3UsEast1RegionalEndpointValue>;
    class function CheckCredentialsFile: Nullable<TS3UsEast1RegionalEndpointValue>;
  private
    class var FCredentialProfileChain: TCredentialProfileStoreChain;
  public
    property UseArnRegion: Boolean read GetUseArnRegion write SetUseArnRegion;
    property USEast1RegionalEndpointValue: Nullable<TS3UsEast1RegionalEndpointValue> read GetUSEast1RegionalEndpointValue write SetUSEast1RegionalEndpointValue;
  end;

implementation

{ TAmazonS3Config }

procedure TAmazonS3Config.Init;
begin
  inherited;
  AuthenticationServiceName := 's3';
  AllowAutoRedirect := False;
  FLegacyUSEast1GlobalRegionSystemName := TRegionEndpoints.USEast1.SystemName;
end;

function TAmazonS3Config.GetServiceVersion: string;
begin
  Result := '2006-03-01';
end;

function TAmazonS3Config.GetRegionEndpointServiceName: string;
begin
  Result := 's3';
end;

class constructor TAmazonS3Config.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.7.0.0');
  FCredentialProfileChain := TCredentialProfileStoreChain.Create;
end;

function TAmazonS3Config.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

{ TAmazonS3Config }

class function TAmazonS3Config.CheckCredentialsFile: Nullable<TS3UsEast1RegionalEndpointValue>;
begin
  var profileName := GetEnvironmentVariable(AwsProfileEnvironmentVariable);
  if profileName = '' then
    profileName := DefaultProfileName;
  var profile: TCredentialProfile;
  FCredentialProfileChain.TryGetProfile(profileName, profile);
  try
    if profile <> nil then
      Result := profile.S3RegionalEndpoint
    else
      Result := Nullable<TS3UsEast1RegionalEndpointValue>.Empty;
  finally
    profile.Free;
  end;
end;

class function TAmazonS3Config.CheckS3EnvironmentVariable: Nullable<TS3UsEast1RegionalEndpointValue>;
begin
  var s3RegionalFlag := GetEnvironmentVariable(AwsS3UsEast1RegionalEndpointsEnvironmentVariable);
  if not string.IsNullOrEmpty(s3RegionalFlag) then
  begin
    var s3RegionalFlagValue: Integer;
    s3RegionalFlagValue := GetEnumValue(TypeInfo(TS3UsEast1RegionalEndpointValue), s3RegionalFlag);
    if s3RegionalFlagValue < 0 then
      raise EInvalidOpException.Create('Invalid value for AWS_S3_US_EAST_1_REGIONAL_ENDPOINT variable. A string regional/legacy is expected.');
    Exit(TS3UsEast1RegionalEndpointValue(s3RegionalFlagValue));
  end;
  Result := Nullable<TS3UsEast1RegionalEndpointValue>.Empty;
end;

class destructor TAmazonS3Config.Destroy;
begin
  FCredentialProfileChain.Free;
end;

function TAmazonS3Config.DetermineServiceUrl: string;
begin
  if ServiceUrl <> '' then
    Exit(ServiceURL);

  var actual := RegionEndpoint;
  if (actual <> nil) and (actual.SystemName = FLegacyUSEast1GlobalRegionSystemName)
    and not UseAccelerateEndpoint and not UseDualstackEndpoint
    and USEast1RegionalEndpointValue.HasValue and (USEast1RegionalEndpointValue = TS3UsEast1RegionalEndpointValue.Regional) then
    actual := TRegionEndpoint.GetBySystemName('us-east-1-regional');

  Result := GetUrl(actual, RegionEndpointServiceName, UseHttp, UseDualstackEndpoint);
end;

function TAmazonS3Config.GetUseArnRegion: Boolean;
begin
  if not FUseArnRegion.HasValue then
  begin
    var profileName := GetEnvironmentVariable(AwsProfileEnvironmentVariable);
    if profileName = '' then
      profileName := DefaultProfileName;

    var profile: TCredentialProfile;
    if FCredentialProfileChain.TryGetProfile(profileName, profile) then
      FUseArnRegion := profile.S3UseArnRegion;

    if not FUseArnRegion.HasValue and not string.IsNullOrEmpty(GetEnvironmentVariable(UseArnRegionEnvName)) then
    begin
      var value: Boolean;
      if TryStrToBool(GetEnvironmentVariable(UseArnRegionEnvName), value) then
        FUseArnRegion := Value;
    end;

    if not FUseArnRegion.HasValue then
      // To maintain consistency with buckets default UseArnRegion to true when client configured for us-east-1.
      FUseArnRegion := (RegionEndpoint <> nil) and (RegionEndpoint.SystemName = TRegionEndpoints.USEast1.SystemName);
  end;

  Result := FUseArnRegion.ValueOrDefault;
end;

function TAmazonS3Config.GetUSEast1RegionalEndpointValue: Nullable<TS3UsEast1RegionalEndpointValue>;
begin
  if FS3UsEast1RegionalEndpointValue.IsNull then
  begin
    FS3UsEast1RegionalEndpointValue := CheckS3EnvironmentVariable;
    if FS3UsEast1RegionalEndpointValue.IsNull then
    begin
      FS3UsEast1RegionalEndpointValue := CheckCredentialsFile;
      if FS3UsEast1RegionalEndpointValue.IsNull then
        FS3UsEast1RegionalEndpointValue := TS3UsEast1RegionalEndpointValue.Legacy;
    end;
  end;
  Result := FS3UsEast1RegionalEndpointValue;
end;

procedure TAmazonS3Config.SetUseArnRegion(const Value: Boolean);
begin
  FUseArnRegion := Value;
end;

procedure TAmazonS3Config.SetUSEast1RegionalEndpointValue(const Value: Nullable<TS3UsEast1RegionalEndpointValue>);
begin

end;

procedure TAmazonS3Config.Validate;
begin
  inherited Validate;

  if ForcePathStyle and UseAccelerateEndpoint then
    raise EAmazonClientException.Create(
      'S3 accelerate is not compatible with Path style requests. Disable Path style requests' +
      ' using AmazonS3Config.ForcePathStyle property to use S3 accelerate.');

  var isExplicitAccelerateEndpoint := not string.IsNullOrEmpty(ServiceURL) and
    ((ServiceURL.ToLower.IndexOf(AccelerateEndpointSuffix) >= 0) or
     (ServiceURL.ToLower.IndexOf(AccelerateDualstackEndpointSuffix) >= 0));

  if isExplicitAccelerateEndpoint then
  begin
    if (RegionEndpoint = nil) and string.IsNullOrEmpty(AuthenticationRegion) then
      raise EAmazonClientException.Create(
        'Specify a region using AmazonS3Config.RegionEndpoint or AmazonS3Config.AuthenticationRegion' +
        ' to use S3 accelerate.')
    else
    begin
      if (RegionEndpoint = nil) and not string.IsNullOrEmpty(AuthenticationRegion) then
        RegionEndpoint := TRegionEndpoint.GetBySystemName(AuthenticationRegion);
      UseAccelerateEndpoint := True;
    end;
  end;
end;

end.
