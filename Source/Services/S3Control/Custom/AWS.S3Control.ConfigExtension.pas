unit AWS.S3Control.ConfigExtension;

interface

uses
  System.SysUtils,
  AWS.RegionEndpoints,
  AWS.Runtime.Credentials,
  AWS.S3Control.Config;

type
  TAmazonS3ControlConfigExtension = class helper for TAmazonS3ControlConfig
  private
    const UseArnRegionEnvName = 'AWS_S3_USE_ARN_REGION';
    const AwsProfileEnvironmentVariable = 'AWS_PROFILE';
    const DefaultProfileName = 'default';
  private
    class var FCredentialProfileChain: TCredentialProfileStoreChain;
    class constructor Create;
    class destructor Destroy;
  private
    function GetUseArnRegion: Boolean;
    procedure SetUseArnRegion(const Value: Boolean);
  public
    property UseArnRegion: Boolean read GetUseArnRegion write SetUseArnRegion;
  end;

implementation

{ TAmazonS3ControlConfigExtension }

class constructor TAmazonS3ControlConfigExtension.Create;
begin
  FCredentialProfileChain := TCredentialProfileStoreChain.Create;
end;

class destructor TAmazonS3ControlConfigExtension.Destroy;
begin
  FCredentialProfileChain.Free;
end;

function TAmazonS3ControlConfigExtension.GetUseArnRegion: Boolean;
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

procedure TAmazonS3ControlConfigExtension.SetUseArnRegion(const Value: Boolean);
begin
  FUseArnRegion := Value;
end;

end.
