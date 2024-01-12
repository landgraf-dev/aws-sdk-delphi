unit AWS.S3.ConfigExtension;

interface

uses
  System.SysUtils, System.TypInfo,
  AWS.Enums,
  AWS.Nullable,
  AWS.RegionEndpoints,
  AWS.Runtime.Credentials,
  AWS.S3.Config;

type
  TAmazonS3ConfigExtension = class helper for TAmazonS3Config
  private
    const UseArnRegionEnvName = 'AWS_S3_USE_ARN_REGION';
    const AccelerateEndpointSuffix = 's3-accelerate.amazonaws.com';
    const AccelerateDualstackEndpointSuffix = 's3-accelerate.dualstack.amazonaws.com';
    const AwsProfileEnvironmentVariable = 'AWS_PROFILE';
    const DefaultProfileName = 'default';
    const AwsS3UsEast1RegionalEndpointsEnvironmentVariable = 'AWS_S3_US_EAST_1_REGIONAL_ENDPOINT';
  private
    class var FCredentialProfileChain: TCredentialProfileStoreChain;
    class constructor Create;
    class destructor Destroy;
  private
    function GetUseArnRegion: Boolean;
    procedure SetUseArnRegion(const Value: Boolean);
    function GetUSEast1RegionalEndpointValue: Nullable<TS3UsEast1RegionalEndpointValue>;
    procedure SetUSEast1RegionalEndpointValue(const Value: Nullable<TS3UsEast1RegionalEndpointValue>);
    class function CheckS3EnvironmentVariable: Nullable<TS3UsEast1RegionalEndpointValue>;
    class function CheckCredentialsFile: Nullable<TS3UsEast1RegionalEndpointValue>;
  public
    property UseArnRegion: Boolean read GetUseArnRegion write SetUseArnRegion;
    property USEast1RegionalEndpointValue: Nullable<TS3UsEast1RegionalEndpointValue> read GetUSEast1RegionalEndpointValue write SetUSEast1RegionalEndpointValue;
  end;

implementation

{ TAmazonS3ConfigExtension }

class function TAmazonS3ConfigExtension.CheckCredentialsFile: Nullable<TS3UsEast1RegionalEndpointValue>;
begin
  var profile: TCredentialProfile;
  var profileName := GetEnvironmentVariable(AwsProfileEnvironmentVariable);
  if profileName = '' then
    profileName := DefaultProfileName;
  FCredentialProfileChain.TryGetProfile(profileName, profile);
  if profile <> nil then
    Result := profile.S3RegionalEndpoint
  else
    Result := Nullable<TS3UsEast1RegionalEndpointValue>.Empty;
end;

class function TAmazonS3ConfigExtension.CheckS3EnvironmentVariable: Nullable<TS3UsEast1RegionalEndpointValue>;
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

class constructor TAmazonS3ConfigExtension.Create;
begin
  FCredentialProfileChain := TCredentialProfileStoreChain.Create;
end;

class destructor TAmazonS3ConfigExtension.Destroy;
begin
  FCredentialProfileChain.Free;
end;

function TAmazonS3ConfigExtension.GetUseArnRegion: Boolean;
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

function TAmazonS3ConfigExtension.GetUSEast1RegionalEndpointValue: Nullable<TS3UsEast1RegionalEndpointValue>;
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

procedure TAmazonS3ConfigExtension.SetUseArnRegion(const Value: Boolean);
begin
  FUseArnRegion := Value;
end;

procedure TAmazonS3ConfigExtension.SetUSEast1RegionalEndpointValue(const Value: Nullable<TS3UsEast1RegionalEndpointValue>);
begin

end;

end.
