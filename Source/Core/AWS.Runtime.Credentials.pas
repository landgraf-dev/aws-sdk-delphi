unit AWS.Runtime.Credentials;

{$I AWS.inc}

interface

uses
  System.Generics.Collections, System.SysUtils, System.Classes,
  Bcl.Logging,
  AWS.SDKUtils,
  AWS.RegionEndpoint,
  Sparkle.Sys.Timer;

type
  TCredentialProfile = class;

  EProcessAWSCredentialException = class(Exception)
  end;

  EInvalidProfileData = class(Exception)
  end;

  IImmutableCredentials = interface
    function GetAccessKey: string;
    function GetSecretKey: string;
    function GetUseToken: Boolean;
    function GetToken: string;

    /// <summary>
    /// Returns a copy of the current credentials.
    /// </summary>
    function Copy: IImmutableCredentials;

    /// <summary>
    /// Gets the AccessKey property for the current credentials.
    /// </summary>
    property AccessKey: string read GetAccessKey;

    /// <summary>
    /// Gets the SecretKey property for the current credentials.
    /// </summary>
    property SecretKey: string read GetSecretKey;

    /// <summary>
    /// Gets the Token property for the current credentials.
    /// </summary>
    property Token: string read GetToken;

    /// <summary>
    /// Gets the UseToken property for the current credentials.
    /// Specifies if Token property is non-empty.
    /// </summary>
    property UseToken: Boolean read GetUseToken;
  end;

  /// <summary>
  /// Immutable representation of AWS credentials.
  /// </summary>
  TImmutableCredentials = class(TInterfacedObject, IImmutableCredentials)
  private
    FSecretKey: string;
    FToken: string;
    FAccessKey: string;
    function GetAccessKey: string;
    function GetSecretKey: string;
    function GetToken: string;
    function GetUseToken: Boolean;
  public
    /// <summary>
    /// Constructs an ImmutableCredentials object with supplied accessKey, secretKey.
    /// </summary>
    /// <param name="AAwsAccessKeyId"></param>
    /// <param name="AAwsSecretAccessKey"></param>
    /// <param name="AToken">Optional. Can be set to null or empty for non-session credentials.</param>
    constructor Create(const AAwsAccessKeyId, AAwsSecretAccessKey, AToken: string);

    /// <summary>
    /// Returns a copy of the current credentials.
    /// </summary>
    function Copy: IImmutableCredentials; virtual;
  public
    /// <summary>
    /// Gets the AccessKey property for the current credentials.
    /// </summary>
    property AccessKey: string read GetAccessKey;

    /// <summary>
    /// Gets the SecretKey property for the current credentials.
    /// </summary>
    property SecretKey: string read GetSecretKey;

    /// <summary>
    /// Gets the Token property for the current credentials.
    /// </summary>
    property Token: string read GetToken;

    /// <summary>
    /// Gets the UseToken property for the current credentials.
    /// Specifies if Token property is non-empty.
    /// </summary>
    property UseToken: Boolean read GetUseToken;
  end;

  /// <summary>
  /// Interface that represents credentials data for AWS services.
  /// </summary>
  IAWSCredentials = interface
    /// <summary>
    /// Called by AmazonServiceClient to validate the credential state
    /// on client construction.
    /// </summary>
    procedure Validate;

    /// <summary>
    /// Returns a copy of ImmutableCredentials
    /// </summary>
    function GetCredentials: IImmutableCredentials;
  end;

  /// <summary>
  /// Abstract class that represents a credentials object for AWS services.
  /// </summary>
  TAWSCredentials = class abstract(TInterfacedObject, IAWSCredentials)
  strict protected
    /// <summary>
    /// Called by AmazonServiceClient to validate the credential state
    /// on client construction.
    /// </summary>
    procedure Validate; virtual;
  public
    /// <summary>
    /// Returns a copy of ImmutableCredentials
    /// </summary>
    function GetCredentials: IImmutableCredentials; virtual; abstract;
  end;

  /// <summary>
  /// Anonymous credentials.
  /// Using these credentials, the client does not sign the request.
  /// </summary>
  TAnonymousAWSCredentials = class(TAWSCredentials)
  public
    /// <summary>
    /// Returns an instance of ImmutableCredentials for this instance
    /// </summary>
    function GetCredentials: IImmutableCredentials; override;
  end;

  /// <summary>
  /// Basic set of credentials consisting of an AccessKey and SecretKey
  /// </summary>
  TBasicAWSCredentials = class(TAWSCredentials)
  strict private
    FCredentials: IImmutableCredentials;
  public
    /// <summary>
    /// Constructs a BasicAWSCredentials object for the specified accessKey and secretKey.
    /// </summary>
    /// <param name="AAccessKey"></param>
    /// <param name="ASecretKey"></param>
    constructor Create(const AAccessKey, ASecretKey: string);

    destructor Destroy; override;

    /// <summary>
    /// Returns an instance of ImmutableCredentials for this instance
    /// </summary>
    function GetCredentials: IImmutableCredentials; override;
  end;

  /// <summary>
  /// Session credentials consisting of AccessKey, SecretKey and Token
  /// </summary>
  TSessionAWSCredentials = class(TAWSCredentials)
  strict private
    FLastCredentials: IImmutableCredentials;
  public
    /// <summary>
    /// Constructs a SessionAWSCredentials object for the specified accessKey, secretKey.
    /// </summary>
    /// <param name="AAwsAccessKeyId"></param>
    /// <param name="AAwsSecretAccessKey"></param>
    /// <param name="AToken"></param>
    constructor Create(const AAwsAccessKeyId, AAwsSecretAccessKey, AToken: string);

    destructor Destroy; override;

    /// <summary>
    /// Returns an instance of ImmutableCredentials for this instance
    /// </summary>
    function GetCredentials: IImmutableCredentials; override;
  end;

  TEnvironmentVariablesAWSCredentials = class(TAWSCredentials)
  strict private
    FLogger: ILogger;
  public const
    // these variable names are standard across all AWS SDKs that support reading keys from
    // environment variables
    ENVIRONMENT_VARIABLE_ACCESSKEY = 'AWS_ACCESS_KEY_ID';
    ENVIRONMENT_VARIABLE_SECRETKEY = 'AWS_SECRET_ACCESS_KEY';
    ENVIRONMENT_VARIABLE_SESSION_TOKEN = 'AWS_SESSION_TOKEN';

    // this legacy key was used by previous versions of the AWS SDK for .NET and is
    // used if no value exists for the standard key for backwards compatibility.
    LEGACY_ENVIRONMENT_VARIABLE_SECRETKEY = 'AWS_SECRET_KEY';
  public
    constructor Create;
    function GetCredentials: IImmutableCredentials; override;
    function FetchCredentials: IImmutableCredentials;
  end;

  TDefaultInstanceProfileAWSCredentials = class(TAWSCredentials)
  strict private const
    FailedToGetCredentialsMessage = 'Failed to retrieve credentials from EC2 Instance Metadata Service.';
    RefreshRate = 2 * 60 * 1000; // 2 minutes
    CredentialsLockTimeout = 5000; // 5 seconds
  strict private
    class var FInstance: IAWSCredentials;
    class var FInstanceLock: TObject;
    class constructor Create;
    class destructor Destroy;
    class procedure CheckIsIMDSEnabled; static;
    class function FetchCredentials: IImmutableCredentials; static;
  strict private
    FLogger: ILogger;
    FCredentialsRetrieverTimer: TSparkleTimer;
    FLastRetrievedCredentials: IImmutableCredentials;
    FCredentialsLock: TObject;
    procedure RenewCredentials(Unused: TObject);
  public
    class function Instance: IAWSCredentials; static;
  public
    constructor Create;
    destructor Destroy; override;
    function GetCredentials: IImmutableCredentials; override;
  end;

  TCredentialsGenerator = TFunc<IAWSCredentials>;

  ICredentialProfileSource = interface
    function TryGetProfile(const AProfileName: string; var AProfile: TCredentialProfile): Boolean;
  end;

  TCredentialProfileOptions = class
  strict private
    FSecretKey: string;
    FAccessKey: string;
    FToken: string;
  public
    property AccessKey: string read FAccessKey write FAccessKey;
    property SecretKey: string read FSecretKey write FSecretKey;
    property Token: string read FToken write FToken;
  end;

  TCredentialProfileType = (
    Unknown,
    AssumeRole,
    AssumeRoleCredentialSource,
    AssumeRoleExternal,
    AssumeRoleExternalMFA,
    AssumeRoleMFA,
    Basic,
    SAMLRole,
    SAMLRoleUserIdentity,
    Session,
    CredentialProcess,
    AssumeRoleWithWebIdentity,
    AssumeRoleWithWebIdentitySessionName,
    AssumeRoleSessionName,
    AssumeRoleCredentialSourceSessionName,
    AssumeRoleExternalSessionName,
    AssumeRoleExternalMFASessionName,
    AssumeRoleMFASessionName
  );

  TCredentialProfile = class
  strict private
    FName: string;
    FOptions: TCredentialProfileOptions;
    FRegion: IRegionEndpointEx;
    function GetProfileType: TCredentialProfileType;
  private
    function GetAWSCredentials(AProfileSource: ICredentialProfileSource; ANonCallBackOnly: Boolean): IAWSCredentials;
    property ProfileType: TCredentialProfileType read GetProfileType;
  public
    constructor Create;
    destructor Destroy; override;
    property Name: string read FName;
    property Options: TCredentialProfileOptions read FOptions;
    property Region: IRegionEndpointEx read FRegion write FRegion;
  end;

  ICredentialProfileStore = interface(ICredentialProfileSource)
  end;

  TCredentialProfileStoreChain = class(TInterfacedObject, ICredentialProfileSource)
  private
    FProfilesLocation: string;
  public
    constructor Create(const AProfilesLocation: string = '');
    function TryGetProfile(const AProfileName: string; var AProfile: TCredentialProfile): Boolean;
    property ProfilesLocation: string read FProfilesLocation;
  end;

  TFallbackCredentialsFactory = class
  strict private
    class var FCachedCredentials: IAWSCredentials;
    class var FCredentialsGenerator: TList<TCredentialsGenerator>;
    class var FCredentialProfileChain: ICredentialProfileSource;
  strict private
    class function GetAWSCredentials(ASource: ICredentialProfileSource): IAWSCredentials; static;
    class function ECSEC2CredentialsWrapper: IAWSCredentials; static;
  public
    const AWS_PROFILE_ENVIRONMENT_VARIABLE = 'AWS_PROFILE';
    const DefaultProfileName = 'default';
  public
    class constructor Create;
    class destructor Destroy;
    class procedure Reset;
    class function GetCredentials(AFallbackToAnonymous: Boolean = false): IAWSCredentials;
    class property CredentialsGenerators: TList<TCredentialsGenerator> read FCredentialsGenerator;
  end;

  TSharedCredentialsFile = class(TInterfacedObject, ICredentialProfileStore)
  strict private
    // Credential options
    const AccessKeyField = 'aws_access_key_id';
    const SecretKeyField = 'aws_secret_access_key';
//    const CredentialSourceField = 'credential_source';
//    const ExternalIDField = 'external_id';
//    const MfaSerialField = 'mfa_serial';
//    const RoleArnField = 'role_arn';
//    const RoleSessionNameField = 'role_session_name';
//    const SourceProfileField = 'source_profile';
//    const TokenField = 'aws_session_token';
//    const CredentialProcessField = 'credential_process';
//    const WebIdentityTokenFileField = 'web_identity_token_file';

    // Reserved words
//    const ToolkitArtifactGuidField = 'toolkit_artifact_guid';
    const RegionField = 'region';
//    const EndpointDiscoveryEnabledField = 'endpoint_discovery_enabled';
//    const CredentialProcess = 'credential_process';
//    const StsRegionalEndpointsField = 'sts_regional_endpoints';
//    const S3UseArnRegionField = 's3_use_arn_region';
//    const S3RegionalEndpointField = 's3_us_east_1_regional_endpoint';
    const RetryModeField = 'retry_mode';
    const MaxAttemptsField = 'max_attempts';
//    const SsoAccountId = 'sso_account_id';
//    const SsoRegion = 'sso_region';
//    const SsoRoleName = 'sso_role_name';
//    const SsoStartUrl = 'sso_start_url';

    // File and folder names
    const DefaultFileName = 'credentials';
    const ConfigFileName = 'config';
    const DefaultDirectoryName = '.aws';
  public
    const DefaultProfileName = 'default';
  strict private
    class var FDefaultDirectory: string;
    class var FDefaultFilePath: string;
    class constructor Create;
    class function IsSupportedProfileType(AProfileType: TCredentialProfileType): Boolean;
  strict private
    FFilePath: string;
    FCredentialsFile: TProfileIniFile;
    FConfigFile: TProfileIniFile;
    FLogger: ILogger;
    procedure Refresh;
    procedure SetUpFilePath(const AFilePath: string);
    function TryGetProfile(const AProfileName: string; ADoRefresh: Boolean;
      var AProfile: TCredentialProfile): Boolean; overload;
    function TryGetSection(const ASectionName: string; AIniProperties: TStrings): Boolean;
  public
    constructor Create(const AFilePath: string = ''); reintroduce;
    destructor Destroy; override;
    function TryGetProfile(const AProfileName: string; var AProfile: TCredentialProfile): Boolean; overload;
    property FilePath: string read FFilePath;
  end;

  TAWSCredentialsFactory = class
  strict private
    class function GetAWSCredentialsInternal(const AProfileName: string; AProfileType: TCredentialProfileType;
      AOptions: TCredentialProfileOptions; AStsRegion: IRegionEndpointEx; AProfileSource: ICredentialProfileSource;
      AThrowIfInvalid: Boolean): IAWSCredentials; overload;
    class function GetAWSCredentials(const AProfileName: string; AProfileSource: ICredentialProfileSource;
      AOptions: TCredentialProfileOptions; AStsRegion: IRegionEndpointEx; ANonCallbackOnly: Boolean): IAWSCredentials; overload;
    class function ThrowInvalidOrReturnNull(const AProfileName: string; ADoThrow: Boolean): TBasicAWSCredentials;
    class function ThrowOrReturnNull(const AMessage: string; AInnerException: Exception; ADoThrow: Boolean): TBasicAWSCredentials;
  public
    class function GetAWSCredentials(AProfile: TCredentialProfile; AProfileSource: ICredentialProfileSource;
      ANonCallBackOnly: Boolean): IAWSCredentials; overload;
  end;

  TCredentialProfileTypeDetector = class
  public
    class function DetectProfileType(AProfileOptions: TCredentialProfileOptions): TCredentialProfileType;
  end;

implementation

uses
  System.IOUtils,
  AWS.Configs,
  AWS.Runtime.Exceptions,
  AWS.Util.EC2InstanceMetadata;

{ TFallbackCredentialsFactory }

class constructor TFallbackCredentialsFactory.Create;
begin
  FCredentialProfileChain := TCredentialProfileStoreChain.Create;
  Reset;
end;

class destructor TFallbackCredentialsFactory.Destroy;
begin
  FCredentialsGenerator.Free;
end;

class function TFallbackCredentialsFactory.ECSEC2CredentialsWrapper: IAWSCredentials;
//var
//  RelativeUri: string;
//  FullUri: string;
begin
  {TODO: Implement ECS endpoint for credentials retrieval}
(*
  /// If either AWS_CONTAINER_CREDENTIALS_RELATIVE_URI or AWS_CONTAINER_CREDENTIALS_FULL_URI environment variables are set, we want to attempt to retrieve credentials
  /// using ECS endpoint instead of referring to instance profile credentials.
  try
    RelativeUri := GetEnvironmentVariable(TECSTaskCredentials.ContainerCredentialsURIEnvVariable);
    if RelativeUri <> '' then
      Exit(TECSTaskCredential.Create);


    FullUri := GetEnvironmentVariable(TECSTaskCredentials.ContainerCredentialsFullURIEnvVariable);
    if FullUri <> '' then
      Exit(TECSTaskCredentials.Create);
  except
    on E: ESecurityException do
    begin
      LogManager.GetLogger(TECSTaskCredentials).Error(Format(
        'Failed to access environment variables %0:s and %1:s.' +
          ' Either %0:s or %1:s environment variables must be set.');
        [TECSTaskCredentials.ContainerCredentialsURIEnvVariable,
         TECSTaskCredentials.ContainerCredentialsFullURIEnvVariable]));
    end;
  end; *)
  Result := TDefaultInstanceProfileAWSCredentials.Instance;
end;

class function TFallbackCredentialsFactory.GetAWSCredentials(ASource: ICredentialProfileSource): IAWSCredentials;
var
  ProfileName: string;
  Profile: TCredentialProfile;
begin
  ProfileName := TAWSConfigs.AWSProfileName;
  if ProfileName = '' then
    ProfileName := GetEnvironmentVariable(AWS_PROFILE_ENVIRONMENT_VARIABLE);
  if ProfileName = '' then
    ProfileName := DefaultProfileName;

  if ASource.TryGetProfile(ProfileName, Profile) then
  begin
    try
      Result := Profile.GetAWSCredentials(ASource, True);
    finally
      Profile.Free;
    end;
  end
  else
    raise EAmazonClientException.Create('Unable to find the "' + ProfileName +
      '" profile in CredentialProfileStoreChain.');
end;

class function TFallbackCredentialsFactory.GetCredentials(AFallbackToAnonymous: Boolean): IAWSCredentials;
var
  Errors: TArray<string>;
  Generator: TCredentialsGenerator;
begin
  if FCachedCredentials <> nil then
    Exit(FCachedCredentials);

  for Generator in CredentialsGenerators do
  begin
    try
      FCachedCredentials := Generator();
    except
      on E: EProcessAWSCredentialException do
        raise;
      on E: Exception do
      begin
        FCachedCredentials := nil;
        SetLength(Errors, Length(Errors) + 1);
        Errors[Length(Errors) - 1] := E.Message;
      end;
    end;
    if FCachedCredentials <> nil then
      Break;
  end;

  if FCachedCredentials = nil then
  begin
//    if AFallbackToAnonymous then
//      Exit(TAnonymousAWSCredentials.Create);

    raise EAmazonServiceException.Create('Unable to find credentials');
  end;

  Result := FCachedCredentials;
end;

class procedure TFallbackCredentialsFactory.Reset;
begin
  {TODO: Add other credential generators}
  FCachedCredentials := nil;
  FCredentialsGenerator.Free;
  FCredentialsGenerator := TList<TCredentialsGenerator>.Create;
  FCredentialsGenerator.Add(
    function: IAWSCredentials
    begin
      Result := GetAWSCredentials(FCredentialProfileChain);
    end);
  FCredentialsGenerator.Add(
    function: IAWSCredentials
    begin
      Result := TEnvironmentVariablesAWSCredentials.Create;
    end);
  FCredentialsGenerator.Add(
    function: IAWSCredentials
    begin
      Result := ECSEC2CredentialsWrapper;
    end);
end;

{ TCredentialProfileStoreChain }

constructor TCredentialProfileStoreChain.Create(const AProfilesLocation: string);
begin
  inherited Create;
  FProfilesLocation := AProfilesLocation;
end;

function TCredentialProfileStoreChain.TryGetProfile(const AProfileName: string;
  var AProfile: TCredentialProfile): Boolean;
var
  SharedCredentialsFile: ICredentialProfileStore;
begin
  SharedCredentialsFile := TSharedCredentialsFile.Create(ProfilesLocation);
  if SharedCredentialsFile.TryGetProfile(AProfileName, AProfile) then
    Exit(True);

  AProfile := nil;
  Result := False;
end;

{ TCredentialProfile }

constructor TCredentialProfile.Create;
begin
  inherited;
  FOptions := TCredentialProfileOptions.Create;
end;

destructor TCredentialProfile.Destroy;
begin
  FOptions.Free;
  inherited;
end;

function TCredentialProfile.GetAWSCredentials(AProfileSource: ICredentialProfileSource;
  ANonCallBackOnly: Boolean): IAWSCredentials;
begin
  Result := TAWSCredentialsFactory.GetAWSCredentials(Self, AProfileSource, ANonCallBackOnly);
end;

function TCredentialProfile.GetProfileType: TCredentialProfileType;
begin
  Result := TCredentialProfileTypeDetector.DetectProfileType(Options);
end;

{ TSharedCredentialsFile }

constructor TSharedCredentialsFile.Create(const AFilePath: string);
begin
  inherited Create;
  FLogger := LogManager.GetLogger(Self.ClassType);
  SetUpFilePath(AFilePath);
  Refresh;
end;

class constructor TSharedCredentialsFile.Create;
var
  BaseDirectory: string;
begin
  BaseDirectory := GetEnvironmentVariable('HOME');
  if BaseDirectory = '' then
    BaseDirectory := GetEnvironmentVariable('USERPROFILE');
  if BaseDirectory = '' then
    BaseDirectory := GetCurrentDir;
  FDefaultDirectory := TPath.Combine(BaseDirectory, DefaultDirectoryName);
  FDefaultFilePath := TPath.Combine(FDefaultDirectory, DefaultFileName);
end;

destructor TSharedCredentialsFile.Destroy;
begin
  FCredentialsFile.Free;
  FConfigFile.Free;
  inherited;
end;

class function TSharedCredentialsFile.IsSupportedProfileType(AProfileType: TCredentialProfileType): Boolean;
begin
  {TODO: Different, simpler implementation}
  Result := not (AProfileType in [TCredentialProfileType.SAMLRole, TCredentialProfileType.SAMLRoleUserIdentity]);
end;

procedure TSharedCredentialsFile.Refresh;
var
  ConfigPath: string;
begin
  FCredentialsFile.Free;
  FCredentialsFile := TProfileIniFile.Create(FilePath, False);

  ConfigPath := TPath.Combine(TPath.GetDirectoryName(FilePath), ConfigFileName);
  if TFile.Exists(ConfigPath) then
  begin
    FConfigFile.Free;
    FConfigFile := TProfileIniFile.Create(ConfigPath, True);
  end;
end;

procedure TSharedCredentialsFile.SetUpFilePath(const AFilePath: string);
begin
  if AFilePath = '' then
  begin
    if TAWSConfigs.AWSProfilesLocation = '' then
      FFilePath := FDefaultFilePath
    else
      FFilePath := TAWSConfigs.AWSProfilesLocation;
  end
  else
    FFilePath := AFilePath;
end;

function TSharedCredentialsFile.TryGetProfile(const AProfileName: string; ADoRefresh: Boolean;
  var AProfile: TCredentialProfile): Boolean;
var
  ProfileDictionary: TStrings;
  TempProfile: TCredentialProfile;
  TempValue: string;
  Region: IRegionEndpointEx;
begin
  if ADoRefresh then
    Refresh;

  AProfile := nil;
  ProfileDictionary := TStringList.Create;
  try
    TempProfile := TCredentialProfile.Create;
    try
      if TryGetSection(AProfileName, ProfileDictionary) then
      begin
        {TODO: This is a different implementation from original, which was overengineered.
         But pay attention to manually add the missing properties when they are needed}

        TempProfile.Options.AccessKey := ProfileDictionary.Values[AccessKeyField];
        TempProfile.Options.SecretKey := ProfileDictionary.Values[SecretKeyField];

        Region := nil;
        TempValue := ProfileDictionary.Values[RegionField];
        if TempValue <> '' then
          Region := TRegionEndpoint.GetBySystemName(TempValue);

        // toolkitArtifactGuid
        // EndPointDiscoveryEnabled
        // stsRegionalEndpoints
        // s3UseArnRegionString
        // s3RegionalEndpoint
        // requestRetryMode
        // maxAttempts

        TempProfile.Region := Region;
        if not IsSupportedProfileType(TempProfile.ProfileType) then
        begin
          FLogger.Info(Format('The profile type %d is not supported by SharedCredentialsFile.', [Ord(TempProfile.ProfileType)]));
          Exit(False);
        end;

        AProfile := TempProfile;
        TempProfile := nil;
        Exit(True);
      end;

      AProfile := nil;
      Result := False;
    finally
      TempProfile.Free;
    end;
  finally
    ProfileDictionary.Free;
  end;
end;

function TSharedCredentialsFile.TryGetProfile(const AProfileName: string; var AProfile: TCredentialProfile): Boolean;
begin
  Result := TryGetProfile(AProfileName, True, AProfile);
end;

function TSharedCredentialsFile.TryGetSection(const ASectionName: string; AIniProperties: TStrings): Boolean;
var
  CredentialProperties: TStrings;
  ConfigProperties: TStrings;
  HasCredentialProperties: Boolean;
  HasConfigProperties: Boolean;
  I: Integer;
begin
  CredentialProperties := TStringList.Create;
  ConfigProperties := TStringList.Create;
  try
    HasCredentialProperties := FCredentialsFile.TryGetSection(ASectionName, CredentialProperties);
    HasConfigProperties := False;
    if (FConfigFile <> nil) then
    begin
      FConfigFile.ProfileMarkerRequired := ASectionName <> DefaultProfileName;
      HasConfigProperties := FConfigFile.TryGetSection(ASectionName, ConfigProperties);
    end;

    if HasConfigProperties then
    begin
      AIniProperties.Assign(ConfigProperties);
      if HasCredentialProperties then
      begin
        for I := 0 to CredentialProperties.Count - 1 do
          AIniProperties.Values[CredentialProperties.Names[I]] := CredentialProperties.ValueFromIndex[I];
      end;
      Exit(True);
    end;

    AIniProperties.Assign(CredentialProperties);
    Result := HasCredentialProperties;
  finally
    ConfigProperties.Free;
    CredentialProperties.Free;
  end;
end;

{ TAWSCredentialsFactory }

class function TAWSCredentialsFactory.GetAWSCredentials(AProfile: TCredentialProfile;
  AProfileSource: ICredentialProfileSource; ANonCallBackOnly: Boolean): IAWSCredentials;
begin
  Result := GetAWSCredentials(AProfile.Name, AProfileSource, AProfile.Options,
    AProfile.Region, ANonCallBackOnly);
end;

class function TAWSCredentialsFactory.GetAWSCredentialsInternal(const AProfileName: string;
  AProfileType: TCredentialProfileType; AOptions: TCredentialProfileOptions; AStsRegion: IRegionEndpointEx;
  AProfileSource: ICredentialProfileSource; AThrowIfInvalid: Boolean): IAWSCredentials;
var
  DefaultMessage: string;
begin
  {TODO: Only Basic and Session profile types are supported by now}
  case AProfileType of
    TCredentialProfileType.Basic:
      Result := TBasicAWSCredentials.Create(AOptions.AccessKey, AOptions.SecretKey);
    TCredentialProfileType.Session:
      Result := TSessionAWSCredentials.Create(AOptions.AccessKey, AOptions.SecretKey, AOptions.Token);
//    TCredentialProfileType.AssumeRole: ;
//    TCredentialProfileType.AssumeRoleCredentialSource: ;
//    TCredentialProfileType.AssumeRoleExternal: ;
//    TCredentialProfileType.AssumeRoleExternalMFA: ;
//    TCredentialProfileType.AssumeRoleMFA: ;
//    TCredentialProfileType.SAMLRole: ;
//    TCredentialProfileType.SAMLRoleUserIdentity: ;
//    TCredentialProfileType.CredentialProcess: ;
//    TCredentialProfileType.AssumeRoleWithWebIdentity: ;
//    TCredentialProfileType.AssumeRoleWithWebIdentitySessionName: ;
//    TCredentialProfileType.AssumeRoleSessionName: ;
//    TCredentialProfileType.AssumeRoleCredentialSourceSessionName: ;
//    TCredentialProfileType.AssumeRoleExternalSessionName: ;
//    TCredentialProfileType.AssumeRoleExternalMFASessionName: ;
//    TCredentialProfileType.AssumeRoleMFASessionName: ;
  else
    if AProfileType = TCredentialProfileType.Unknown then
      Result := ThrowInvalidOrReturnNull(AProfileName, AThrowIfInvalid)
    else
    begin
      if AProfileName = '' then
        DefaultMessage := Format('Invalid ProfileType %d for the credential options provided', [Ord(AProfileType)])
      else
        DefaultMessage := Format('Invalid ProfileType %d for credential profile [%s]', [Ord(AProfileType), AProfileName]);
      Result := ThrowOrReturnNull(DefaultMessage, nil, AThrowIfInvalid);
    end;
  end;

end;

class function TAWSCredentialsFactory.ThrowInvalidOrReturnNull(const AProfileName: string;
  ADoThrow: Boolean): TBasicAWSCredentials;
var
  Msg: string;
begin
  if AProfileName = '' then
    Msg := 'The credential options provided are not valid.  Please ensure the options contain a valid combination of properties.'
  else
    Msg := Format('Credential profile [%s] is not valid.  Please ensure the profile contains a valid combination of properties.', [AProfileName]);
  Result := ThrowOrReturnNull(Msg, nil, ADoThrow);
end;

class function TAWSCredentialsFactory.ThrowOrReturnNull(const AMessage: string; AInnerException: Exception;
  ADoThrow: Boolean): TBasicAWSCredentials;
begin
  if ADoThrow then
    raise EInvalidProfileData.Create(AMessage)
  else
    Result := nil;
end;

class function TAWSCredentialsFactory.GetAWSCredentials(const AProfileName: string;
  AProfileSource: ICredentialProfileSource; AOptions: TCredentialProfileOptions; AStsRegion: IRegionEndpointEx;
  ANonCallbackOnly: Boolean): IAWSCredentials;
var
  ProfileType: TCredentialProfileType;
begin
  ProfileType := TCredentialProfileTypeDetector.DetectProfileType(AOptions);

  {TODO: specific profile types not implemented}
//  if ANonCallbackOnly and (ProfileType <> TCredentialProfileType.Unknown) and IsCallbackRequired(ProfileType) then
//  begin
//  end;

  Result := GetAWSCredentialsInternal(AProfileName, ProfileType, AOptions, AStsRegion, AProfileSource, True);
end;

{ TCredentialProfileTypeDetector }

class function TCredentialProfileTypeDetector.DetectProfileType(
  AProfileOptions: TCredentialProfileOptions): TCredentialProfileType;
var
  O: TCredentialProfileOptions;
begin
  O := AProfileOptions;
  Result := TCredentialProfileType.Unknown;

  {TODO: Different implementation. Missing all other profile types}
  if (O.AccessKey <> '') and (O.SecretKey <> '') then
  begin
    if O.Token <> '' then
      Result := TCredentialProfileType.Session
    else
      Result := TCredentialProfileType.Basic;
  end;

end;

{ TImmutableCredentials }

function TImmutableCredentials.Copy: IImmutableCredentials;
begin
  Result := TImmutableCredentials.Create(FAccessKey, FSecretKey, FToken);
end;

constructor TImmutableCredentials.Create(const AAwsAccessKeyId, AAwsSecretAccessKey, AToken: string);
begin
  inherited Create;
  if AAwsAccessKeyId = '' then
    raise EArgumentNilException.Create('AAwsAccessKeyId');
  if AAwsSecretAccessKey = '' then
    raise EArgumentNilException.Create('AAwsSecretAccessKey');

  FAccessKey := AAwsAccessKeyId;
  FSecretKey := AAwsSecretAccessKey;
  FToken := AToken;
end;

function TImmutableCredentials.GetAccessKey: string;
begin
  Result := FAccessKey;
end;

function TImmutableCredentials.GetSecretKey: string;
begin
  Result := FSecretKey;
end;

function TImmutableCredentials.GetToken: string;
begin
  Result := FToken;
end;

function TImmutableCredentials.GetUseToken: Boolean;
begin
  Result := Token <> '';
end;

{ TAWSCredentials }

procedure TAWSCredentials.Validate;
begin

end;

{ TBasicAWSCredentials }

constructor TBasicAWSCredentials.Create(const AAccessKey, ASecretKey: string);
begin
  inherited Create;
  if AAccessKey <> '' then
    FCredentials := TImmutableCredentials.Create(AAccessKey, ASecretKey, '');
end;

destructor TBasicAWSCredentials.Destroy;
begin
  inherited;
end;

function TBasicAWSCredentials.GetCredentials: IImmutableCredentials;
begin
  if FCredentials <> nil then
    Result := FCredentials.Copy
  else
    Result := nil;
end;

{ TSessionAWSCredentials }

constructor TSessionAWSCredentials.Create(const AAwsAccessKeyId, AAwsSecretAccessKey, AToken: string);
begin
  inherited Create;
  if AAwsAccessKeyId = '' then
    raise EArgumentNilException.Create('AAwsAccessKeyId');
  if AAwsSecretAccessKey = '' then
    raise EArgumentNilException.Create('AAwsSecretAccessKey');
  if AToken = '' then
    raise EArgumentNilException.Create('AToken');
  FLastCredentials := TImmutableCredentials.Create(AAwsAccessKeyId, AAwsSecretAccessKey, AToken);
end;

destructor TSessionAWSCredentials.Destroy;
begin
  inherited;
end;

function TSessionAWSCredentials.GetCredentials: IImmutableCredentials;
begin
  Result := FLastCredentials.Copy;
end;

{ TAnonymousAWSCredentials }

function TAnonymousAWSCredentials.GetCredentials: IImmutableCredentials;
begin
  raise ENotSupportedException.Create('TAnonymousAWSCredentials does not support this operation');
end;

{ TEnvironmentVariablesAWSCredentials }

constructor TEnvironmentVariablesAWSCredentials.Create;
begin
  inherited Create;
  FLogger := LogManager.GetLogger(TEnvironmentVariablesAWSCredentials);
  FetchCredentials;
end;

function TEnvironmentVariablesAWSCredentials.FetchCredentials: IImmutableCredentials;
var
  AccessKeyId: string;
  SecretKey: string;
  SessionToken: string;
begin
  AccessKeyId := GetEnvironmentVariable(ENVIRONMENT_VARIABLE_ACCESSKEY);
  SecretKey := GetEnvironmentVariable(ENVIRONMENT_VARIABLE_SECRETKEY);
  if SecretKey = '' then
  begin
    SecretKey := GetEnvironmentVariable(LEGACY_ENVIRONMENT_VARIABLE_SECRETKEY);
    if SecretKey <> '' then
      FLogger.Info(Format('AWS secret key found using legacy and non-standard ' +
        'environment variable "%s", consider updating to the cross-SDK standard variable "%s".',
        [LEGACY_ENVIRONMENT_VARIABLE_SECRETKEY, ENVIRONMENT_VARIABLE_SECRETKEY]));
  end;

  if (AccessKeyId = '') or (SecretKey = '') then
    raise EInvalidOpException.CreateFmt(
      'The environment variables %s/%s/%s were not set with AWS credentials.',
      [ENVIRONMENT_VARIABLE_ACCESSKEY, ENVIRONMENT_VARIABLE_SECRETKEY, ENVIRONMENT_VARIABLE_SESSION_TOKEN]);

  SessionToken := GetEnvironmentVariable(ENVIRONMENT_VARIABLE_SESSION_TOKEN);
  FLogger.Info('Credentials found using environment variables.');
  Result := TImmutableCredentials.Create(AccessKeyId, SecretKey, SessionToken);
end;

function TEnvironmentVariablesAWSCredentials.GetCredentials: IImmutableCredentials;
begin
  Result := FetchCredentials;
end;

{ TDefaultInstanceProfileAWSCredentials }

class procedure TDefaultInstanceProfileAWSCredentials.CheckIsIMDSEnabled;
begin
  if not TEC2InstanceMetadata.IsIMDSEnabled then
    raise EAmazonServiceException.Create('Unable to retrieve credentials.');
end;

constructor TDefaultInstanceProfileAWSCredentials.Create;
begin
  inherited Create;

  // if IMDS is turned off, no need to spin up the timer task
  if not TEC2InstanceMetadata.IsIMDSEnabled then Exit;

  {TODO: Replace this by a ReadWriterLock later}
  FCredentialsLock := TObject.Create;
  FLogger := LogManager.GetLogger(TDefaultInstanceProfileAWSCredentials);
  FCredentialsRetrieverTimer := TSparkleTimer.Create(RenewCredentials, nil, 0, TTimerType.Periodic);
end;

destructor TDefaultInstanceProfileAWSCredentials.Destroy;
begin
  FCredentialsLock.Free;
  FCredentialsRetrieverTimer.Free;
  inherited;
end;

class function TDefaultInstanceProfileAWSCredentials.FetchCredentials: IImmutableCredentials;
var
  SecurityCredentials: TDictionary<string, TIAMSecurityCredentialMetadata>;
  Metadata: TIAMSecurityCredentialMetadata;
  FirstRole: string;
  Role: string;
begin
  SecurityCredentials := TEC2InstanceMetadata.IAMSecurityCredentials;
  try
    if SecurityCredentials = nil then
      raise EAmazonServiceException.Create('Unable to get IAM security credentials from EC2 Instance Metadata Service.');

    FirstRole := '';
    for role in SecurityCredentials.Keys do
    begin
      FirstRole := Role;
      Break;
    end;

    if FirstRole = '' then
      raise EAmazonServiceException.Create('Unable to get EC2 instance role from EC2 Instance Metadata Service.');

    Metadata := SecurityCredentials[FirstRole];
    if Metadata = nil then
      raise EAmazonServiceException.Create(
        'Unable to get credentials for role "' + FirstRole + '" from EC2 Instance Metadata Service.');

    Result := TImmutableCredentials.Create(Metadata.AccessKeyId, Metadata.SecretAccessKey, Metadata.Token);
  finally
    SecurityCredentials.Free;
  end;
end;

class constructor TDefaultInstanceProfileAWSCredentials.Create;
begin
  FInstanceLock := TObject.Create;
end;

class destructor TDefaultInstanceProfileAWSCredentials.Destroy;
begin
  FInstanceLock.Free;
end;

function TDefaultInstanceProfileAWSCredentials.GetCredentials: IImmutableCredentials;
var
  Credentials: IImmutableCredentials;
begin
  CheckIsIMDSEnabled();
  Credentials := nil;

  TMonitor.Enter(FCredentialsLock, CredentialsLockTimeout);
  try
    if FLastRetrievedCredentials <> nil then
      Credentials := FLastRetrievedCredentials.Copy;
    if Credentials <> nil then
      Exit(Credentials);
  finally
    TMonitor.Exit(FCredentialsLock);
  end;

  // If there's no credentials cached, hit IMDS directly. Try to acquire write lock.
  TMonitor.Enter(FCredentialsLock, CredentialsLockTimeout);
  try
    // Check for last retrieved credentials again in case other thread might have already fetched it.
    if FLastRetrievedCredentials <> nil then
      Credentials := FLastRetrievedCredentials.Copy;
    if Credentials = nil then
    begin
      Credentials := FetchCredentials;
      FLastRetrievedCredentials := Credentials;
    end;
  finally
    TMonitor.Exit(FCredentialsLock);
  end;
  if Credentials = nil then
    raise EAmazonServiceException.Create(FailedToGetCredentialsMessage);
  Result := Credentials;
end;

class function TDefaultInstanceProfileAWSCredentials.Instance: IAWSCredentials;
begin
  CheckIsIMDSEnabled;
  if FInstance = nil then
  begin
    TMonitor.Enter(FInstanceLock);
    try
      if FInstance = nil then
        FInstance := TDefaultInstanceProfileAWSCredentials.Create;
    finally
      TMonitor.Exit(FInstanceLock);
    end;
  end;
  Result := FInstance;
end;

procedure TDefaultInstanceProfileAWSCredentials.RenewCredentials(Unused: TObject);
begin
  try
    try
      FLastRetrievedCredentials := FetchCredentials;
    except
      on E: Exception do
      begin
        FLastRetrievedCredentials := nil;

        // we want to suppress any exceptions from this timer task.
        FLogger.Error(FailedToGetCredentialsMessage + ' ' + E.Message);
      end;
    end;
  finally
    // re-invoke this task once after time specified by refreshRate
    FCredentialsRetrieverTimer.Update(RefreshRate, TTimerType.SingleShot);
  end;
end;

end.
