unit AWS.Configs;

{$I AWS.inc}

{$IFNDEF DELPHI11_LVL}
  {$DEFINE USE_OLD_MREW}
{$ENDIF}

interface

uses
  System.SysUtils, System.SyncObjs, System.DateUtils, System.TimeSpan, System.Generics.Collections,
  AWS.Nullable;

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
    FCorrectForClockSkew: Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    property ProfilesLocation: string read FProfilesLocation write FProfilesLocation;
    property ProfileName: string read FProfileName write FProfileName;
    property Logging: TLoggingConfig read FLogging;
    property CorrectForClockSkew: Boolean read FCorrectForClockSkew write FCorrectForClockSkew;
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
    class function GetCorrectForClockSkew: Boolean; static;
    class procedure SetCorrectForClockSkew(const Value: Boolean); static;
  public
    class constructor Create;
    class destructor Destroy;
    class function GetConfig(const AName: string): string;
    class property AWSProfilesLocation: string read GetAWSProfilesLocation;
    class property AWSProfileName: string read GetAWSProfileName write SetAWSProfileName;
    class property LoggingConfig: TLoggingConfig read GetLoggingConfig;
    class property ManualClockCorrection: Nullable<TTimeSpan> read GetManualClockCorrection write SetManualClockCorrection;
    class property CorrectForClockSkew: Boolean read GetCorrectForClockSkew write SetCorrectForClockSkew;
  end;

  /// <summary>
  /// Utility class that stores clock skew information.
  /// </summary>
  TCorrectClockSkew = class
  private
    class var FManualClockCorrection: Nullable<TTimeSpan>;
    class var FClockCorrectionDictionary: TDictionary<string, TTimeSpan>;
{$IFNDEF USE_OLD_MREW}
    class var FManualClockCorrectionLock: TLightweightMREW;
    class var FClockCorrectionDictionaryLock: TLightweightMREW;
{$ELSE}
    class var FManualClockCorrectionLock: TMultiReadExclusiveWriteSynchronizer;
    class var FClockCorrectionDictionaryLock: TMultiReadExclusiveWriteSynchronizer;
{$ENDIF}
  private
    class function GetGlobalClockCorrection: Nullable<TTimeSpan>; static;
    class procedure SetGlobalClockCorrection(const Value: Nullable<TTimeSpan>); static;

    class constructor Create;
    class destructor Destroy;

  protected
    class procedure SetClockCorrectionForEndpoint(const endpoint: string; const Correction: TTimeSpan); static;
  public
    /// <summary>
    /// GlobalClockCorrection should be only set by AWSConfigs.ManualClockCorrection property
    /// and is only available to maintain backward compatibilty.  This should override any
    /// endpoint specific clockskew correction.
    /// </summary>
    class property GlobalClockCorrection: Nullable<TTimeSpan> read GetGlobalClockCorrection write SetGlobalClockCorrection;

    /// <summary>
    /// Get clock skew corrected UTC now value.  If ManualClockCorrection is set,
    /// use ManualClockCorrection instead of endpoint specific clock correction value.
    /// </summary>
    /// <param name="endpoint"></param>
    /// <returns></returns>
    class function GetCorrectedUtcNowForEndpoint(const endpoint: string): TDateTime; static;

    /// <summary>
    /// Return clock skew correction value for an endpoint if there is one.
    ///
    /// AWSConfigs.ManualClockCorrection overrides globally any calculated service endpoint specific
    /// clock correction value.
    /// </summary>
    /// <param name="endpoint">Endpoint should in a form such as "https://s3"</param>
    /// <returns>Clock correction value for an endpoint in TimeSpan. TTimeSpan.Zero if no such clock correction is set.</returns>
    class function GetClockCorrectionForEndpoint(const endpoint: string): TTimeSpan;
  end;

implementation

{ TCorrectClockSkew }

class constructor TCorrectClockSkew.Create;
begin
  FClockCorrectionDictionary := TDictionary<string, TTimeSpan>.Create;
{$IFDEF USE_OLD_MREW}
  FManualClockCorrectionLock := TMultiReadExclusiveWriteSynchronizer.Create;
  FClockCorrectionDictionaryLock := TMultiReadExclusiveWriteSynchronizer.Create;
{$ENDIF}
end;

class destructor TCorrectClockSkew.Destroy;
begin
  FClockCorrectionDictionary.Free;
{$IFDEF USE_OLD_MREW}
  FManualClockCorrectionLock.Free;
  FClockCorrectionDictionaryLock.Free;
{$ENDIF}
end;

class function TCorrectClockSkew.GetClockCorrectionForEndpoint(const endpoint: string): TTimeSpan;
begin
  var span: TTimeSpan;
  var hasValue: Boolean;
  FClockCorrectionDictionaryLock.BeginRead;
  try
    hasValue := FClockCorrectionDictionary.TryGetValue(endpoint, span);
  finally
    FClockCorrectionDictionaryLock.EndRead;
  end;

  if hasValue then
    Result := span
  else
    Result := TTimeSpan.Zero;
end;

class function TCorrectClockSkew.GetCorrectedUtcNowForEndpoint(const endpoint: string): TDateTime;
begin
  var adjustment: TTimeSpan := TTimeSpan.Zero;

  FManualClockCorrectionLock.BeginRead;
  try
    if FManualClockCorrection.HasValue then
      adjustment := FManualClockCorrection.Value;
  finally
    FManualClockCorrectionLock.EndRead;
  end;

  if TAWSConfigs.CorrectForClockSkew and (adjustment = TTimeSpan.Zero) then
    adjustment := GetClockCorrectionForEndpoint(endpoint);

  Result := TAWSConfigs.UtcNowSource() + adjustment;
end;

class function TCorrectClockSkew.GetGlobalClockCorrection: Nullable<TTimeSpan>;
begin
  FManualClockCorrectionLock.BeginRead;
  try
    Result := FManualClockCorrection;
  finally
    FManualClockCorrectionLock.EndRead;
  end;
end;

class procedure TCorrectClockSkew.SetClockCorrectionForEndpoint(const endpoint: string; const Correction: TTimeSpan);
begin
  FClockCorrectionDictionaryLock.BeginWrite;
  try
    FClockCorrectionDictionary.AddOrSetValue(endpoint, Correction);
  finally
    FClockCorrectionDictionaryLock.EndWrite;
  end;
end;

class procedure TCorrectClockSkew.SetGlobalClockCorrection(const Value: Nullable<TTimeSpan>);
begin
  FManualClockCorrectionLock.BeginWrite;
  try
    FManualClockCorrection := Value;
  finally
    FManualClockCorrectionLock.EndWrite;
  end;
end;

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

class function TAWSConfigs.GetCorrectForClockSkew: Boolean;
begin
  Result := FRootConfig.CorrectForClockSkew;
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

class procedure TAWSConfigs.SetCorrectForClockSkew(const Value: Boolean);
begin
  FRootConfig.CorrectForClockSkew := Value;
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
