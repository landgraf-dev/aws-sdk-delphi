unit AWS.Translate.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonTranslateConfig = class(TClientConfig)
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

{ TAmazonTranslateConfig }

procedure TAmazonTranslateConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'translate';
end;

function TAmazonTranslateConfig.GetServiceVersion: string;
begin
  Result := '2017-07-01';
end;

function TAmazonTranslateConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'translate';
end;

class constructor TAmazonTranslateConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.5.0.0');
end;

function TAmazonTranslateConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
