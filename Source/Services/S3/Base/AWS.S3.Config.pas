unit AWS.S3.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonS3Config = class(TClientConfig)
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

{ TAmazonS3Config }

procedure TAmazonS3Config.Init;
begin
  inherited;
  AuthenticationServiceName := 's3';
end;

function TAmazonS3Config.GetServiceVersion: string;
begin
  Result := '2006-03-01';
end;

function TAmazonS3Config.GetRegionEndpointServiceName: string;
begin
  Result := 's3';
end;

class constructor TAmazonS3Config.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.7.0.0');
end;

function TAmazonS3Config.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
