unit AWS.SESv2.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonSimpleEmailServiceV2Config = class(TClientConfig)
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

{ TAmazonSimpleEmailServiceV2Config }

procedure TAmazonSimpleEmailServiceV2Config.Init;
begin
  inherited;
  AuthenticationServiceName := 'ses';
end;

function TAmazonSimpleEmailServiceV2Config.GetServiceVersion: string;
begin
  Result := '2019-09-27';
end;

function TAmazonSimpleEmailServiceV2Config.GetRegionEndpointServiceName: string;
begin
  Result := 'email';
end;

class constructor TAmazonSimpleEmailServiceV2Config.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.5.0.0');
end;

function TAmazonSimpleEmailServiceV2Config.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
