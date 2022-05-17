unit AWS.Transcribe.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonTranscribeServiceConfig = class(TClientConfig)
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

{ TAmazonTranscribeServiceConfig }

procedure TAmazonTranscribeServiceConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'transcribe';
end;

function TAmazonTranscribeServiceConfig.GetServiceVersion: string;
begin
  Result := '2017-10-26';
end;

function TAmazonTranscribeServiceConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'transcribe';
end;

class constructor TAmazonTranscribeServiceConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.7.0.0');
end;

function TAmazonTranscribeServiceConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
