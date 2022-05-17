unit AWS.Textract.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonTextractConfig = class(TClientConfig)
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

{ TAmazonTextractConfig }

procedure TAmazonTextractConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'textract';
end;

function TAmazonTextractConfig.GetServiceVersion: string;
begin
  Result := '2018-06-27';
end;

function TAmazonTextractConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'textract';
end;

class constructor TAmazonTextractConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.7.0.0');
end;

function TAmazonTextractConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
