unit AWS.SESv2.Model.PutEmailIdentityDkimAttributesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TPutEmailIdentityDkimAttributesRequest = class;
  
  IPutEmailIdentityDkimAttributesRequest = interface
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetSigningEnabled: Boolean;
    procedure SetSigningEnabled(const Value: Boolean);
    function Obj: TPutEmailIdentityDkimAttributesRequest;
    function IsSetEmailIdentity: Boolean;
    function IsSetSigningEnabled: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property SigningEnabled: Boolean read GetSigningEnabled write SetSigningEnabled;
  end;
  
  TPutEmailIdentityDkimAttributesRequest = class(TAmazonSimpleEmailServiceV2Request, IPutEmailIdentityDkimAttributesRequest)
  strict private
    FEmailIdentity: Nullable<string>;
    FSigningEnabled: Nullable<Boolean>;
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetSigningEnabled: Boolean;
    procedure SetSigningEnabled(const Value: Boolean);
  strict protected
    function Obj: TPutEmailIdentityDkimAttributesRequest;
  public
    function IsSetEmailIdentity: Boolean;
    function IsSetSigningEnabled: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property SigningEnabled: Boolean read GetSigningEnabled write SetSigningEnabled;
  end;
  
implementation

{ TPutEmailIdentityDkimAttributesRequest }

function TPutEmailIdentityDkimAttributesRequest.Obj: TPutEmailIdentityDkimAttributesRequest;
begin
  Result := Self;
end;

function TPutEmailIdentityDkimAttributesRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TPutEmailIdentityDkimAttributesRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TPutEmailIdentityDkimAttributesRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

function TPutEmailIdentityDkimAttributesRequest.GetSigningEnabled: Boolean;
begin
  Result := FSigningEnabled.ValueOrDefault;
end;

procedure TPutEmailIdentityDkimAttributesRequest.SetSigningEnabled(const Value: Boolean);
begin
  FSigningEnabled := Value;
end;

function TPutEmailIdentityDkimAttributesRequest.IsSetSigningEnabled: Boolean;
begin
  Result := FSigningEnabled.HasValue;
end;

end.
