unit AWS.Internal.SDKUtils;

interface

uses
  System.SysUtils;

type
  TInternalSDKUtils = class
  strict private
    const CoreVersionNumber = '0.1.0.0';
    const UnknownPlaceholder = 'Unknown';
    const UnknownPlatform = 'unknown_platform';
    const EXECUTION_ENVIRONMENT_ENVVAR = 'AWS_EXECUTION_ENV';
  strict private
    class var FCustomSdkUserAgent: string;
    class var FUserAgentBaseName: string;
    class var FCustomData: string;
  strict private
    class constructor Create;
    class function GetExecutionEnvironmentUserAgentString: string; static;
    class function GetExecutionEnvironment: string; static;
  public
    class function BuildUserAgentString(const AServiceSdkVersion: string): string; static;
    class function PlatformUserAgent: string; static;
  end;

implementation

{ TInternalSDKUtils }

class function TInternalSDKUtils.BuildUserAgentString(const AServiceSdkVersion: string): string;
begin
  if FCustomSdkUserAgent <> '' then
    Result := FCustomSdkUserAgent
  else
    Result := Trim(Format('%s/%s aws-sdk-delphi-core/%s OS/%s %s %s',
      [FUserAgentBaseName, AServiceSdkVersion, CoreVersionNumber, PlatformUserAgent,
       GetExecutionEnvironmentUserAgentString,  FCustomData]));
end;

class constructor TInternalSDKUtils.Create;
begin
  FUserAgentBaseName := 'aws-sdk-delphi-core';
end;

class function TInternalSDKUtils.GetExecutionEnvironment: string;
begin
  Result := GetEnvironmentVariable(EXECUTION_ENVIRONMENT_ENVVAR);
end;

class function TInternalSDKUtils.GetExecutionEnvironmentUserAgentString: string;
begin
  Result := GetExecutionEnvironment;
  if Result <> '' then
    Result := Format('exec-env/%s', [Result]);
end;

class function TInternalSDKUtils.PlatformUserAgent: string;
begin
  try
    Result := TOSVersion.ToString;
    if Result <> '' then
      Result := StringReplace(Result, ' ', '_', [rfReplaceAll])
    else
      Result := UnknownPlaceholder;
  except
    Result := UnknownPlaceholder;
  end;
end;

end.
