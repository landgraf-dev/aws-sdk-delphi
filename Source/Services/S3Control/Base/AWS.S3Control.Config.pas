unit AWS.S3Control.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils, 
  Bcl.Types.Nullable;

type
  TAmazonS3ControlConfig = class(TClientConfig)
  strict private
    class var FUserAgent: string;
  private
    class constructor Create;
  strict protected
    FUseArnRegion: NullableBoolean;
    procedure Init; override;
    function GetServiceVersion: string; override;
    function GetRegionEndpointServiceName: string; override;
    function GetUserAgent: string; override;
  end;
  
implementation

{ TAmazonS3ControlConfig }

procedure TAmazonS3ControlConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 's3';
end;

function TAmazonS3ControlConfig.GetServiceVersion: string;
begin
  Result := '2018-08-20';
end;

function TAmazonS3ControlConfig.GetRegionEndpointServiceName: string;
begin
  Result := 's3-control';
end;

class constructor TAmazonS3ControlConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.7.0.0');
end;

function TAmazonS3ControlConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
