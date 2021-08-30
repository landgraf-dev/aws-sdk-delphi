unit AWS.SNS.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonSimpleNotificationServiceConfig = class(TClientConfig)
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

{ TAmazonSimpleNotificationServiceConfig }

procedure TAmazonSimpleNotificationServiceConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'sns';
end;

function TAmazonSimpleNotificationServiceConfig.GetServiceVersion: string;
begin
  Result := '2010-03-31';
end;

function TAmazonSimpleNotificationServiceConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'sns';
end;

class constructor TAmazonSimpleNotificationServiceConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.5.0.0');
end;

function TAmazonSimpleNotificationServiceConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
