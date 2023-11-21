unit AWS.Configs;

{$I AWS.inc}

interface

uses
  System.SysUtils, System.DateUtils, System.TimeSpan, Bcl.Types.Nullable,
  AWS.Runtime.CorrectClockSkew;

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
    class var UtcNowSource: TFunc<TDateTime>;
  private
    class function GetAWSProfilesLocation: string; static;
    class function GetAWSProfileName: string; static;
    class procedure SetAWSProfileName(const Value: string); static;
    class function GetLoggingConfig: TLoggingConfig; static;
    class function GetUtcNow: TDateTime;
    class function GetManualClockCorrection: Nullable<TTimeSpan>; static;
    class procedure SetManualClockCorrection(const Value: Nullable<TTimeSpan>); static;
  public
    class constructor Create;
    class destructor Destroy;
    class function GetConfig(const AName: string): string;
    class property AWSProfilesLocation: string read GetAWSProfilesLocation;
    class property AWSProfileName: string read GetAWSProfileName write SetAWSProfileName;
    class property LoggingConfig: TLoggingConfig read GetLoggingConfig;
    class property ManualClockCorrection: Nullable<TTimeSpan> read GetManualClockCorrection write SetManualClockCorrection;
  end;

implementation

{ TAWSConfigs }

class constructor TAWSConfigs.Create;
begin
  InitFields;
  FRootConfig := TRootConfig.Create;
  UtcNowSource := GetUtcNow;
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

class function TAWSConfigs.GetManualClockCorrection: Nullable<TTimeSpan>;
begin
  Result := TCorrectClockSkew.GlobalClockCorrection;
end;

class function TAWSConfigs.GetUtcNow: TDateTime;
begin
{$IFDEF DELPHI11_LVL}
  Result := TDateTime.NowUTC;
{$ELSE}
  Result := TTimeZone.Local.ToUniversalTime(Now);
{$ENDIF}
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

class procedure TAWSConfigs.SetManualClockCorrection(const Value: Nullable<TTimeSpan>);
begin
  TCorrectClockSkew.GlobalClockCorrection := Value;
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
