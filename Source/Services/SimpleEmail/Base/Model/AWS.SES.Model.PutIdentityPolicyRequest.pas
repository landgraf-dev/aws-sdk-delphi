unit AWS.SES.Model.PutIdentityPolicyRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TPutIdentityPolicyRequest = class;
  
  IPutIdentityPolicyRequest = interface
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function GetPolicyName: string;
    procedure SetPolicyName(const Value: string);
    function Obj: TPutIdentityPolicyRequest;
    function IsSetIdentity: Boolean;
    function IsSetPolicy: Boolean;
    function IsSetPolicyName: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
    property Policy: string read GetPolicy write SetPolicy;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
  TPutIdentityPolicyRequest = class(TAmazonSimpleEmailServiceRequest, IPutIdentityPolicyRequest)
  strict private
    FIdentity: Nullable<string>;
    FPolicy: Nullable<string>;
    FPolicyName: Nullable<string>;
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function GetPolicyName: string;
    procedure SetPolicyName(const Value: string);
  strict protected
    function Obj: TPutIdentityPolicyRequest;
  public
    function IsSetIdentity: Boolean;
    function IsSetPolicy: Boolean;
    function IsSetPolicyName: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
    property Policy: string read GetPolicy write SetPolicy;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
implementation

{ TPutIdentityPolicyRequest }

function TPutIdentityPolicyRequest.Obj: TPutIdentityPolicyRequest;
begin
  Result := Self;
end;

function TPutIdentityPolicyRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TPutIdentityPolicyRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TPutIdentityPolicyRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

function TPutIdentityPolicyRequest.GetPolicy: string;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TPutIdentityPolicyRequest.SetPolicy(const Value: string);
begin
  FPolicy := Value;
end;

function TPutIdentityPolicyRequest.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

function TPutIdentityPolicyRequest.GetPolicyName: string;
begin
  Result := FPolicyName.ValueOrDefault;
end;

procedure TPutIdentityPolicyRequest.SetPolicyName(const Value: string);
begin
  FPolicyName := Value;
end;

function TPutIdentityPolicyRequest.IsSetPolicyName: Boolean;
begin
  Result := FPolicyName.HasValue;
end;

end.
