unit AWS.Rekognition.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonRekognitionConfig = class(TClientConfig)
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

{ TAmazonRekognitionConfig }

procedure TAmazonRekognitionConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'rekognition';
end;

function TAmazonRekognitionConfig.GetServiceVersion: string;
begin
  Result := '2016-06-27';
end;

function TAmazonRekognitionConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'rekognition';
end;

class constructor TAmazonRekognitionConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.7.0.0');
end;

function TAmazonRekognitionConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
