unit AWS.Configs;

interface

type
  TResponseLoggingOption = (Never, OnError, Always);

  TLoggingConfig = class
  public
    const DefaultLogResponsesSizeLimit = 1024;
  private
    FLogResponses: TResponseLoggingOption;
    FLogResponsesSizeLimit: Integer;
    FLogMetrics: Boolean;
  public
    constructor Create;
    property LogResponses: TResponseLoggingOption read FLogResponses write FLogResponses;
    property LogResponsesSizeLimit: Integer read FLogResponsesSizeLimit write FLogResponsesSizeLimit;
    property LogMetrics: Boolean read FLogMetrics write FLogMetrics;
  end;

  TRootConfig = class
  private
    FProfilesLocation: string;
    FProfileName: string;
    FLogging: TLoggingConfig;
  public
    constructor Create;
    destructor Destroy; override;
    property ProfilesLocation: string read FProfilesLocation write FProfilesLocation;
    property ProfileName: string read FProfileName write FProfileName;
    property Logging: TLoggingConfig read FLogging;
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
    class function GetLoggingConfig: TLoggingConfig; static;
  public
    class constructor Create;
    class destructor Destroy;
    class function GetConfig(const AName: string): string;
    class property AWSProfilesLocation: string read GetAWSProfilesLocation;
    class property AWSProfileName: string read GetAWSProfileName write SetAWSProfileName;
    class property LoggingConfig: TLoggingConfig read GetLoggingConfig;
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

class function TAWSConfigs.GetLoggingConfig: TLoggingConfig;
begin
  Result := FRootConfig.Logging;
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
  FLogging := TLoggingConfig.Create;
end;

destructor TRootConfig.Destroy;
begin
  FLogging.Free;
  inherited;
end;

{ TLoggingConfig }

constructor TLoggingConfig.Create;
begin
  inherited Create;
  FLogResponsesSizeLimit := DefaultLogResponsesSizeLimit;

end;

end.
