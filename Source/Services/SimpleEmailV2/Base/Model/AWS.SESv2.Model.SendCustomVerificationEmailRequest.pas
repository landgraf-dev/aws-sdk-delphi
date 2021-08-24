unit AWS.SESv2.Model.SendCustomVerificationEmailRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TSendCustomVerificationEmailRequest = class;
  
  ISendCustomVerificationEmailRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
    function Obj: TSendCustomVerificationEmailRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetTemplateName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
  TSendCustomVerificationEmailRequest = class(TAmazonSimpleEmailServiceV2Request, ISendCustomVerificationEmailRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FEmailAddress: Nullable<string>;
    FTemplateName: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetTemplateName: string;
    procedure SetTemplateName(const Value: string);
  strict protected
    function Obj: TSendCustomVerificationEmailRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetEmailAddress: Boolean;
    function IsSetTemplateName: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property TemplateName: string read GetTemplateName write SetTemplateName;
  end;
  
implementation

{ TSendCustomVerificationEmailRequest }

function TSendCustomVerificationEmailRequest.Obj: TSendCustomVerificationEmailRequest;
begin
  Result := Self;
end;

function TSendCustomVerificationEmailRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TSendCustomVerificationEmailRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TSendCustomVerificationEmailRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TSendCustomVerificationEmailRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TSendCustomVerificationEmailRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TSendCustomVerificationEmailRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

function TSendCustomVerificationEmailRequest.GetTemplateName: string;
begin
  Result := FTemplateName.ValueOrDefault;
end;

procedure TSendCustomVerificationEmailRequest.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

function TSendCustomVerificationEmailRequest.IsSetTemplateName: Boolean;
begin
  Result := FTemplateName.HasValue;
end;

end.
