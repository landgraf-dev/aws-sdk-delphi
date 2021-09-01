unit AWS.LexRuntimeService.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonLexConfig = class(TClientConfig)
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

{ TAmazonLexConfig }

procedure TAmazonLexConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'lex';
end;

function TAmazonLexConfig.GetServiceVersion: string;
begin
  Result := '2016-11-28';
end;

function TAmazonLexConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'runtime.lex';
end;

class constructor TAmazonLexConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.6.0.0');
end;

function TAmazonLexConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
