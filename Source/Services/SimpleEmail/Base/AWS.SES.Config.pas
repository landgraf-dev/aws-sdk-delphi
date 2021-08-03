unit AWS.SES.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonSimpleEmailServiceConfig = class(TClientConfig)
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

{ TAmazonSimpleEmailServiceConfig }

procedure TAmazonSimpleEmailServiceConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'ses';
end;

function TAmazonSimpleEmailServiceConfig.GetServiceVersion: string;
begin
  Result := '2010-12-01';
end;

function TAmazonSimpleEmailServiceConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'email';
end;

class constructor TAmazonSimpleEmailServiceConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.2.0.0');
end;

function TAmazonSimpleEmailServiceConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
