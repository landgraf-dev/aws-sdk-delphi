unit AWS.SSM.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonSimpleSystemsManagementConfig = class(TClientConfig)
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

{ TAmazonSimpleSystemsManagementConfig }

procedure TAmazonSimpleSystemsManagementConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'ssm';
end;

function TAmazonSimpleSystemsManagementConfig.GetServiceVersion: string;
begin
  Result := '2014-11-06';
end;

function TAmazonSimpleSystemsManagementConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'ssm';
end;

class constructor TAmazonSimpleSystemsManagementConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.7.0.0');
end;

function TAmazonSimpleSystemsManagementConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
