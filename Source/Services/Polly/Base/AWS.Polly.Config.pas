unit AWS.Polly.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonPollyConfig = class(TClientConfig)
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

{ TAmazonPollyConfig }

procedure TAmazonPollyConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'polly';
end;

function TAmazonPollyConfig.GetServiceVersion: string;
begin
  Result := '2016-06-10';
end;

function TAmazonPollyConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'polly';
end;

class constructor TAmazonPollyConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.5.0.0');
end;

function TAmazonPollyConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
