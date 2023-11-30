unit AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TPutEmailIdentityConfigurationSetAttributesRequest = class;
  
  IPutEmailIdentityConfigurationSetAttributesRequest = interface
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function Obj: TPutEmailIdentityConfigurationSetAttributesRequest;
    function IsSetConfigurationSetName: Boolean;
    function IsSetEmailIdentity: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
  TPutEmailIdentityConfigurationSetAttributesRequest = class(TAmazonSimpleEmailServiceV2Request, IPutEmailIdentityConfigurationSetAttributesRequest)
  strict private
    FConfigurationSetName: Nullable<string>;
    FEmailIdentity: Nullable<string>;
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
  strict protected
    function Obj: TPutEmailIdentityConfigurationSetAttributesRequest;
  public
    function IsSetConfigurationSetName: Boolean;
    function IsSetEmailIdentity: Boolean;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
implementation

{ TPutEmailIdentityConfigurationSetAttributesRequest }

function TPutEmailIdentityConfigurationSetAttributesRequest.Obj: TPutEmailIdentityConfigurationSetAttributesRequest;
begin
  Result := Self;
end;

function TPutEmailIdentityConfigurationSetAttributesRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TPutEmailIdentityConfigurationSetAttributesRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TPutEmailIdentityConfigurationSetAttributesRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

function TPutEmailIdentityConfigurationSetAttributesRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TPutEmailIdentityConfigurationSetAttributesRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TPutEmailIdentityConfigurationSetAttributesRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

end.
