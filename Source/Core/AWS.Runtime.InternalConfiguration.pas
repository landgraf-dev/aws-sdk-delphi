unit AWS.Runtime.InternalConfiguration;

interface

uses
  System.Generics.Collections, System.SysUtils, System.TypInfo,
  AWS.Enums,
  AWS.Lib.Logging,
  AWS.Nullable,
  AWS.Runtime.Credentials;

type
  TInternalConfiguration = class
  private
    FEndpointDiscoveryEnabled: NullableBoolean;
    FMaxAttempts: NullableInteger;
    FRetryMode: Nullable<TRequestRetryMode>;
  public
    /// <summary>
    /// Flag indicating if Endpoint Discovery is enabled.
    /// </summary>
    property EndpointDiscoveryEnabled: Nullable<Boolean> read FEndpointDiscoveryEnabled write FEndpointDiscoveryEnabled;

    /// <summary>
    /// The retry mode to use: Legacy, Standard, or Adaptive.
    /// </summary>
    property RetryMode: Nullable<TRequestRetryMode> read FRetryMode write FRetryMode;

    /// <summary>
    /// The max number of request attempts.
    /// </summary>
    property MaxAttempts: Nullable<Integer> read FMaxAttempts write FMaxAttempts;
  end;

  TEnvironmentVariableInternalConfiguration = class(TInternalConfiguration)
  public const
    ENVIRONMENT_VARIABLE_AWS_ENABLE_ENDPOINT_DISCOVERY = 'AWS_ENABLE_ENDPOINT_DISCOVERY';
    ENVIRONMENT_VARIABLE_AWS_MAX_ATTEMPTS = 'AWS_MAX_ATTEMPTS';
    ENVIRONMENT_VARIABLE_AWS_RETRY_MODE = 'AWS_RETRY_MODE';
  private
    FLogger: ILogger;
    function TryGetEnvironmentVariable(const Name: string; var Value: string): Boolean;
    function GetEnvironmentVariable<T>(const Name: string; Convert: TFunc<string, T>): Nullable<T>;
  private
    constructor Create;
  end;

  TProfileInternalConfiguration = class(TInternalConfiguration)
  private
    FLogger: ILogger;
    procedure Setup(Source: ICredentialProfileSource; const ProfileName: string);
  public
    constructor Create(Source: ICredentialProfileSource);
  end;

  TFallbackInternalConfigurationFactory = class
  private
    class var FCachedConfiguration: TInternalConfiguration;
    class var FCredentialProfileChain: TCredentialProfileStoreChain;
  private
    class function GetRetryMode: Nullable<TRequestRetryMode>; static;
    class function SeekValue<T>(Generators: TList<TInternalConfiguration>; GetValue: TFunc<TInternalConfiguration, Nullable<T>>): Nullable<T>; static;
  private
    class constructor Create;
    class destructor Destroy;
  public
    class procedure Reset;
    class property RetryMode: Nullable<TRequestRetryMode> read GetRetryMode;
  end;

implementation

{ TFallbackInternalConfigurationFactory }

class constructor TFallbackInternalConfigurationFactory.Create;
begin
  FCredentialProfileChain := TCredentialProfileStoreChain.Create;
  Reset;
end;

class destructor TFallbackInternalConfigurationFactory.Destroy;
begin
  FCredentialProfileChain.Free;
  FCachedConfiguration.Free;
end;

class function TFallbackInternalConfigurationFactory.GetRetryMode: Nullable<TRequestRetryMode>;
begin
  Result := FCachedConfiguration.RetryMode;
end;

class procedure TFallbackInternalConfigurationFactory.Reset;
begin
  //should be called for specific values dynamically.
  var standardGenerators := TObjectList<TInternalConfiguration>.Create;
  try
    var environmentVariablesConfiguration :=  TEnvironmentVariableInternalConfiguration.Create;
    standardGenerators.Add(environmentVariablesConfiguration);

    var profileConfiguration := TProfileInternalConfiguration.Create(FCredentialProfileChain);
    standardGenerators.Add(profileConfiguration);

    FCachedConfiguration.Free;
    FCachedConfiguration := TInternalConfiguration.Create;

    //Find the priority first ordered config value for each property
    FCachedConfiguration.EndpointDiscoveryEnabled := SeekValue<Boolean>(standardGenerators,
      function(c: TInternalConfiguration): Nullable<Boolean>
      begin
        Result := c.EndpointDiscoveryEnabled;
      end);
    FCachedConfiguration.RetryMode := SeekValue<TRequestRetryMode>(standardGenerators,
      function(c: TInternalConfiguration): Nullable<TRequestRetryMode>
      begin
        Result := c.RetryMode;
      end);
    FCachedConfiguration.MaxAttempts := SeekValue<Integer>(standardGenerators,
      function(c: TInternalConfiguration): Nullable<Integer>
      begin
        Result := c.MaxAttempts;
      end);
  finally
    standardGenerators.Free;
  end;
end;

class function TFallbackInternalConfigurationFactory.SeekValue<T>(Generators: TList<TInternalConfiguration>;
  GetValue: TFunc<TInternalConfiguration, Nullable<T>>): Nullable<T>;
begin
  //Look for the configuration value stopping at the first generator that returns the expected value.
  for var generator in Generators do
  begin
    var configuration := generator;
    Result := GetValue(configuration);
    if Result.HasValue then
      Exit;
  end;
  Result := Nullable<T>.Empty;
end;

{ TEnvironmentVariableInternalConfiguration }

constructor TEnvironmentVariableInternalConfiguration.Create;
begin
  FLogger := LogManager.GetLogger(TEnvironmentVariableInternalConfiguration);

  EndpointDiscoveryEnabled := GetEnvironmentVariable<Boolean>(ENVIRONMENT_VARIABLE_AWS_ENABLE_ENDPOINT_DISCOVERY,
    function(Value: string): Boolean
    begin
      Result := StrToBool(Value);
    end);
  MaxAttempts := GetEnvironmentVariable<Integer>(ENVIRONMENT_VARIABLE_AWS_MAX_ATTEMPTS,
    function(Value: string): Integer
    begin
     Result := StrToInt(Value);
    end);
  RetryMode := GetEnvironmentVariable<TRequestRetryMode>(ENVIRONMENT_VARIABLE_AWS_RETRY_MODE,
    function(Value: string): TRequestRetryMode
    var IntValue: Integer;
    begin
      IntValue := GetEnumValue(TypeInfo(TRequestRetryMode), Value);
      if IntValue < 0 then
        raise Exception.CreateFmt('Invalid Request Retry Mode: %s', [Value]);
      Result := TRequestRetryMode(IntValue);
    end);
end;

function TEnvironmentVariableInternalConfiguration.GetEnvironmentVariable<T>(const Name: string;
  Convert: TFunc<string, T>): Nullable<T>;
begin
  var value: string;
  if not TryGetEnvironmentVariable(name, value) then
    Exit(Nullable<T>.Empty);

  try
    Result := Convert(value);
    Exit;
  except
    FLogger.Error(Format('The environment variable %s was set with value %s, ' +
      'but it could not be parsed as a valid value.', [Name, value]));
  end;
  Result := Nullable<T>.Empty;
end;

function TEnvironmentVariableInternalConfiguration.TryGetEnvironmentVariable(const Name: string; var Value: string): Boolean;
begin
  Value := System.SysUtils.GetEnvironmentVariable(Name);
  if string.IsNullOrEmpty(Value) then
  begin
    FLogger.Info(Format('The environment variable %s was not set with a value.', [Name]));
    Value := '';
    Exit(False);
  end;

  Result := True;
end;

{ TProfileInternalConfiguration }

constructor TProfileInternalConfiguration.Create(Source: ICredentialProfileSource);
begin
  FLogger := LogManager.GetLogger(TProfileInternalConfiguration);
  var profileName := System.SysUtils.GetEnvironmentVariable(TFallbackCredentialsFactory.AWS_PROFILE_ENVIRONMENT_VARIABLE);
  if profileName = '' then
    profileName := TFallbackCredentialsFactory.DefaultProfileName;
  Setup(source, profileName);
end;

procedure TProfileInternalConfiguration.Setup(Source: ICredentialProfileSource; const ProfileName: string);
begin
  var store := (source as TObject).ClassName;
  var profile: TCredentialProfile;
  try
    if source.TryGetProfile(ProfileName, profile) then
    begin
      EndpointDiscoveryEnabled := profile.EndpointDiscoveryEnabled;
      RetryMode := profile.RetryMode;
      MaxAttempts := profile.MaxAttempts;
    end
    else
    begin
      FLogger.Info('Unable to find a profile named "' + profileName + '" in store ' + store);
      Exit;
    end;

    if profile.EndpointDiscoveryEnabled.HasValue then
      FLogger.Info(Format('%s found in profile "%s" in store %s', ['endpoint_discovery_enabled', ProfileName, store]))
    else
      FLogger.Info(Format('There is no %s set in profile named "%s" in store %s', ['endpoint_discovery_enabled', ProfileName, store]));

    if profile.RetryMode.HasValue then
      FLogger.Info(Format('%s found in profile "%s" in store %s', ['retry_mode', ProfileName, store]))
    else
      FLogger.Info(Format('There is no %s set in profile named "%s" in store %s', ['retry_mode', ProfileName, store]));

    if profile.MaxAttempts.HasValue then
      FLogger.Info(Format('%s found in profile "%s" in store %s', ['max_attemps', ProfileName, store]))
    else
      FLogger.Info(Format('There is no %s set in profile named "%s" in store %s', ['max_attemps', ProfileName, store]));
  finally
    profile.Free;
  end;
end;

end.
