unit AWS.Util.EC2InstanceMetadata;

interface

uses
  System.SysUtils, System.Generics.Collections, System.Math, System.StrUtils, System.Classes,
  Bcl.Json.Attributes, Bcl.Json.Converters,
  Sparkle.Http.Headers,
  AWS.RegionEndpoint;

type
  TIAMSecurityCredentialMetadata = class
  private
    FCode: string;
    FMessage: string;
    [JsonConverter(TJsonLocalDateTimeConverter)]
    FLastUpdated: TDateTime;
    FType: string;
    FAccessKeyId: string;
    FSecretAccessKey: string;
    FToken: string;
    [JsonConverter(TJsonLocalDateTimeConverter)]
    FExpiration: TDateTime;
  public
    property Code: string read FCode write FCode;
    property Message: string read FMessage write FMessage;
    property LastUpdated: TDateTime read FLastUpdated write FLastUpdated;
    property CredentialType: string read FType write FType;
    property AccessKeyId: string read FAccessKeyId write FAccessKeyId;
    property SecretAccessKey: string read FSecretAccessKey write FSecretAccessKey;
    property Token: string read FToken write FToken;
    property Expiration: TDateTime read FExpiration write FExpiration;
  end;

  TEC2InstanceMetadata = class
  public const
    EC2_METADATA_SVC = 'http://169.254.169.254';
    LATEST = '/latest';
    EC2_METADATA_ROOT = EC2_METADATA_SVC + LATEST + '/meta-data';
    EC2_USERDATA_ROOT = EC2_METADATA_SVC + LATEST + '/user-data';
    EC2_DYNAMICDATA_ROOT = EC2_METADATA_SVC + LATEST + '/dynamic';
    AWS_EC2_METADATA_DISABLED = 'AWS_EC2_METADATA_DISABLED';
    EC2_APITOKEN_URL = EC2_METADATA_SVC + LATEST + '/api/token';
  strict private const
    DEFAULT_RETRIES = 3;
    MIN_PAUSE_MS = 250;
    MAX_RETRIES = 3;
    DEFAULT_APITOKEN_TTL = 21600;
  strict private
    class var FUseNullToken: Boolean;
    class function FetchApiToken(Tries: Integer): string; static;
    class procedure PauseExponentially(Retry: Integer); static;
  public
    class procedure ClearTokenFlag; static;
    class function GetItems(const Path: string): TArray<string>; overload; static;
    class function GetItems(const RelativeOrAbsolutePath: string; Tries: Integer;
      Slurp: Boolean): TArray<string>; overload; static;
    class function GetItems(const RelativeOrAbsolutePath: string; Tries: Integer;
      Slurp: Boolean; const Token: string): TArray<string>; overload; static;
    class function GetData(const Path: string): string; overload; static;
    class function GetData(const Path: string; Tries: Integer): string; overload; static;
    class function IdentityDocument: string; static;
    class function IsIMDSEnabled: Boolean; static;
    class function Region: IRegionEndpointEx; static;
    class function IAMSecurityCredentials: TObjectDictionary<string, TIAMSecurityCredentialMetadata>; static;
  end;

  IMDSDisabledException = class(EInvalidOpException)
  end;

implementation

uses
  Bcl.Logging,
  Bcl.Json,
  Bcl.Json.Classes,
  AWS.SDKUtils;

{ TEC2InstanceMetadata }

class function TEC2InstanceMetadata.GetData(const Path: string): string;
begin
  Result := GetData(Path, DEFAULT_RETRIES);
end;

class procedure TEC2InstanceMetadata.ClearTokenFlag;
begin
  FUseNullToken := False;
end;

class function TEC2InstanceMetadata.FetchApiToken(Tries: Integer): string;
var
  Headers: THttpHeaders;
  Retry: Integer;
  UriForToken: string;
  Content: string;
  StatusCode: Integer;
begin
  for Retry := 1 to Tries do
  begin
    if not IsIMDSEnabled or FUseNullToken then
      Exit('');

    try
      UriForToken := EC2_APITOKEN_URL;

      Headers := THttpHeaders.Create;
      try
        Headers.AddValue(THeaderKeys.XAwsEc2MetadataTokenTtlSeconds, IntToStr(DEFAULT_APITOKEN_TTL));
        Content := TAWSSDKUtils.ExecuteHttpRequest(UriForToken, 'PUT', '', 5000, Headers);
      finally
        Headers.Free;
      end;
      Result := Trim(Content);
    except
      on E: Exception do
      begin
        if E is EWebException then
          StatusCode := EWebException(E).StatusCode
        else
          StatusCode := 0;

        if (StatusCode = 404) or (StatusCode = 405) or (StatusCode = 403) then
        begin
          FUseNullToken := True;
          Exit('');
        end;

        if Retry >= Tries then
        begin
          if StatusCode = 400 then
          begin
            LogManager.GetLogger(TEC2InstanceMetadata).Error(
              'Unable to contact EC2 Metadata service to obtain a metadata token: ' + E.Message);
            raise;
          end;

          LogManager.GetLogger(TEC2InstanceMetadata).Error(
            '"Unable to contact EC2 Metadata service to obtain a metadata token. Attempting to access IMDS without a token.' + E.Message);

          //If there isn't a status code, it was a failure to contact the server which would be
          //a request failure, a network issue, or a timeout. Cache this response and fallback
          //to IMDS flow without a token. If the non token IMDS flow returns unauthorized, the
          //useNullToken flag will be cleared and the IMDS flow will attempt to obtain another
          //token.
          if StatusCode = 0 then
            FUseNullToken := True;

          //Return empty to fallback to the IMDS flow without using a token.
          Exit('');
        end;

        PauseExponentially(Retry - 1);
      end;
    end;
  end;

  Result := '';
end;

class function TEC2InstanceMetadata.GetData(const Path: string; Tries: Integer): string;
var
  Items: TArray<string>;
begin
  Items := GetItems(Path, Tries, True);
  if Length(Items) > 0 then
    Result := Items[0]
  else
    Result := '';
end;

class function TEC2InstanceMetadata.GetItems(const RelativeOrAbsolutePath: string; Tries: Integer; Slurp: Boolean;
  const Token: string): TArray<string>;
var
  Headers: THttpHeaders;
  Items: TList<string>;
  LocalToken: string;
  Uri: string;
  Content: string;
  Reader: TStringReader;
  Line: string;
  StatusCode: Integer;
begin
  Items := nil;
  Headers := THttpHeaders.Create;
  try
    Items := TList<string>.Create;

    // For all meta-data queries we need to fetch an api token to use. In the event a
    // token cannot be obtained we will fallback to not using a token.
    LocalToken := Token;
    if LocalToken = '' then
      LocalToken := FetchApiToken(DEFAULT_RETRIES);

    if LocalToken <> '' then
      Headers.AddValue(THeaderKeys.XAwsEc2MetadataToken, LocalToken);

    try
      if not IsIMDSEnabled then
        raise IMDSDisabledException.Create('EC2 metadata not enabled');

      // if we are given a relative path, we assume the data we need exists under the
      // main metadata root
      Uri := RelativeOrAbsolutePath;
      if not StartsText(EC2_METADATA_SVC, RelativeOrAbsolutePath) then
        Uri := EC2_METADATA_ROOT + Uri;

      Content := TAWSSDKUtils.ExecuteHttpRequest(Uri, 'GET', '', 5000, Headers);
      Reader := TStringReader.Create(Content);
      try
        if Slurp then
          Items.Add(Reader.ReadToEnd)
        else
        begin
          repeat
            Line := Reader.ReadLine;
            if Line <> '' then
              Items.Add(Trim(Line));
          until Line = '';
        end;
      finally
        Reader.Free;
      end;
    except
      on E: IMDSDisabledException do
      begin
        SetLength(Result, 0);
        Exit;
      end;
      on E: Exception do
      begin
        if E is EWebException then
          StatusCode := EWebException(E).StatusCode
        else
          StatusCode := 0;

        if StatusCode = 404 then
        begin
          SetLength(Result, 0);
          Exit;
        end
        else
        if StatusCode = 401 then
        begin
          ClearTokenFlag;
          LogManager.GetLogger(TEC2InstanceMetadata).Error(
            'EC2 Metadata service returned unauthorized for token based secure data flow. ' + E.Message);
          raise;
        end;

        if Tries <= 1 then
        begin
          LogManager.GetLogger(TEC2InstanceMetadata).Error(
            'Unable to contact EC2 Metadata service. ' + E.Message);
          SetLength(Result, 0);
          Exit;
        end;

        PauseExponentially(DEFAULT_RETRIES - Tries);
        Exit(GetItems(RelativeOrAbsolutePath, Tries - 1, Slurp, Token));
      end;
    end;

    Result := Items.ToArray;
  finally
    Headers.Free;
    Items.Free;
  end;
end;

class function TEC2InstanceMetadata.GetItems(const Path: string): TArray<string>;
begin
  Result := GetItems(Path, DEFAULT_RETRIES, False);
end;

class function TEC2InstanceMetadata.GetItems(const RelativeOrAbsolutePath: string; Tries: Integer;
  Slurp: Boolean): TArray<string>;
begin
  Result := GetItems(RelativeOrAbsolutePath, Tries, Slurp, '');
end;

class function TEC2InstanceMetadata.IAMSecurityCredentials: TObjectDictionary<string, TIAMSecurityCredentialMetadata>;
var
  List: TArray<string>;
  Creds: TObjectDictionary<string, TIAMSecurityCredentialMetadata>;
  Cred: TIAMSecurityCredentialMetadata;
  Item: string;
  Json: string;
begin
  List := GetItems('/iam/security-credentials');
  if Length(List) = 0 then
    Exit(nil);

  Creds := TObjectDictionary<string, TIAMSecurityCredentialMetadata>.Create([doOwnsValues]);
  try
    for Item in List do
    begin
      Json := GetData('/iam/security-credentials/' + item);
      try
        Cred := TJson.Deserialize<TIAMSecurityCredentialMetadata>(Json);
        Creds.AddOrSetValue(Item, Cred);
      except
        on E: Exception do
        begin
          LogManager.GetLogger(TEC2InstanceMetadata).Error(
            E.Message + sLineBreak + Json);
          Cred := TIAMSecurityCredentialMetadata.Create;
          Creds.AddOrSetValue(Item, Cred);
          Cred.Code := 'Failed';
          Cred.Message := 'Could not parse response from metadata service.';
        end;
      end;
    end;

    Result := Creds;
    Creds := nil;
  finally
    Creds.Free;
  end;
end;

class function TEC2InstanceMetadata.IdentityDocument: string;
begin
  Result := GetData(EC2_DYNAMICDATA_ROOT + '/instance-identity/document');
end;

class function TEC2InstanceMetadata.IsIMDSEnabled: Boolean;
const
  cTrue = 'true';
var
  Value: string;
begin
  Value := '';
  try
    Value := GetEnvironmentVariable(AWS_EC2_METADATA_DISABLED);
  except
  end;
  Result := not SameText(Value, cTrue);
end;

class procedure TEC2InstanceMetadata.PauseExponentially(Retry: Integer);
var
  Pause: Integer;
begin
  Pause := Trunc(Power(2, Retry) * MIN_PAUSE_MS);
  if Pause < MIN_PAUSE_MS then
    Pause := MIN_PAUSE_MS;
  Sleep(Pause);
end;

class function TEC2InstanceMetadata.Region: IRegionEndpointEx;
var
  Logger: ILogger;
  IdDocument: string;
  JsonDocument: TJObject;
  RegionName: TJElement;
begin
  IdDocument := IdentityDocument;
  if IdDocument <> '' then
  try
    JsonDocument := TJson.Deserialize<TJObject>(IdDocument);
    try
      RegionName := JsonDocument['region'];
      if RegionName <> nil then
        Exit(TRegionEndpoint.GetBySystemName(RegionName.AsString));
    finally
      JsonDocument.Free;
    end;
  except
    on E: Exception do
    begin
      Logger := LogManager.GetLogger(TEC2InstanceMetadata);
      Logger.Error('Error attempting to read region from instance metadata identity document' +
        E.Message);
    end;
  end;
  Result := nil;
end;

end.
