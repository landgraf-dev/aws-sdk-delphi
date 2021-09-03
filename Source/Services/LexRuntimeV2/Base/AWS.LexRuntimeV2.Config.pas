unit AWS.LexRuntimeV2.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonLexRuntimeV2Config = class(TClientConfig)
  strict private
    class var FUserAgent: string;
  private
    class constructor Create;
  strict protected
    procedure Init; override;
    function GetServiceVersion: string; override;
    function GetRegionEndpointServiceName: string; override;
    function GetUserAgent: string; override;
  end;
  
implementation

{ TAmazonLexRuntimeV2Config }

procedure TAmazonLexRuntimeV2Config.Init;
begin
  inherited;
  AuthenticationServiceName := 'lex';
end;

function TAmazonLexRuntimeV2Config.GetServiceVersion: string;
begin
  Result := '2020-08-07';
end;

function TAmazonLexRuntimeV2Config.GetRegionEndpointServiceName: string;
begin
  Result := 'runtime-v2-lex';
end;

class constructor TAmazonLexRuntimeV2Config.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.7.0.0');
end;

function TAmazonLexRuntimeV2Config.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
