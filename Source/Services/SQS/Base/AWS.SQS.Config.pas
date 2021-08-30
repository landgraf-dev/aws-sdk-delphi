unit AWS.SQS.Config;

interface

uses
  AWS.Runtime.ClientConfig, 
  AWS.Internal.SDKUtils;

type
  TAmazonSQSConfig = class(TClientConfig)
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

{ TAmazonSQSConfig }

procedure TAmazonSQSConfig.Init;
begin
  inherited;
  AuthenticationServiceName := 'sqs';
end;

function TAmazonSQSConfig.GetServiceVersion: string;
begin
  Result := '2012-11-05';
end;

function TAmazonSQSConfig.GetRegionEndpointServiceName: string;
begin
  Result := 'sqs';
end;

class constructor TAmazonSQSConfig.Create;
begin
  FUserAgent := TInternalSDKUtils.BuildUserAgentString('0.5.0.0');
end;

function TAmazonSQSConfig.GetUserAgent: string;
begin
  Result := FUserAgent;
end;

end.
