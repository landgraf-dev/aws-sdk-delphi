unit AWS.Configs;

interface

type
  TRootConfig = class
  private
    FProfilesLocation: string;
    FProfileName: string;
  public
    constructor Create;
    property ProfilesLocation: string read FProfilesLocation write FProfilesLocation;
    property ProfileName: string read FProfileName write FProfileName;
  end;

  TAWSConfigs = class
  private class var
    FAWSProfileName: string;
    FAWSAccountsLocation: string;
  strict private
    class procedure InitFields;
  strict private
    class var FRootConfig: TRootConfig;
  public const
    AWSProfileNameKey = 'AWSProfileName';
    AWSProfilesLocationKey = 'AWSProfilesLocation';
  private
    class function GetAWSProfilesLocation: string; static;
    class function GetAWSProfileName: string; static;
    class procedure SetAWSProfileName(const Value: string); static;
  public
    class constructor Create;
    class destructor Destroy;
    class function GetConfig(const AName: string): string;
    class property AWSProfilesLocation: string read GetAWSProfilesLocation;
    class property AWSProfileName: string read GetAWSProfileName write SetAWSProfileName;
  end;

implementation

{ TAWSConfigs }

class constructor TAWSConfigs.Create;
begin
  InitFields;
  FRootConfig := TRootConfig.Create;
end;

class destructor TAWSConfigs.Destroy;
begin
  FRootConfig.Free;
end;

class function TAWSConfigs.GetAWSProfileName: string;
begin
  Result := FRootConfig.ProfileName;
end;

class function TAWSConfigs.GetAWSProfilesLocation: string;
begin
  Result := FRootConfig.ProfilesLocation;
end;

class function TAWSConfigs.GetConfig(const AName: string): string;
begin
  {TODO: Read from configuration file, if needed}
  Result := '';
end;

class procedure TAWSConfigs.InitFields;
begin
  FAWSProfileName := GetConfig(AWSProfileNameKey);
  FAWSAccountsLocation := GetConfig(AWSProfilesLocationKey);
end;

class procedure TAWSConfigs.SetAWSProfileName(const Value: string);
begin
  FRootConfig.ProfileName := Value;
end;

{ TRootConfig }

constructor TRootConfig.Create;
begin
  {TODO: Implement initialization}
  inherited Create;
  FProfileName := TAWSConfigs.FAWSProfileName;
  FProfilesLocation := TAWSConfigs.FAWSAccountsLocation;
end;

end.
