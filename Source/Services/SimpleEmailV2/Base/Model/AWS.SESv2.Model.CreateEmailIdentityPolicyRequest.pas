unit AWS.SESv2.Model.CreateEmailIdentityPolicyRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TCreateEmailIdentityPolicyRequest = class;
  
  ICreateEmailIdentityPolicyRequest = interface
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function GetPolicyName: string;
    procedure SetPolicyName(const Value: string);
    function Obj: TCreateEmailIdentityPolicyRequest;
    function IsSetEmailIdentity: Boolean;
    function IsSetPolicy: Boolean;
    function IsSetPolicyName: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property Policy: string read GetPolicy write SetPolicy;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
  TCreateEmailIdentityPolicyRequest = class(TAmazonSimpleEmailServiceV2Request, ICreateEmailIdentityPolicyRequest)
  strict private
    FEmailIdentity: Nullable<string>;
    FPolicy: Nullable<string>;
    FPolicyName: Nullable<string>;
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function GetPolicyName: string;
    procedure SetPolicyName(const Value: string);
  strict protected
    function Obj: TCreateEmailIdentityPolicyRequest;
  public
    function IsSetEmailIdentity: Boolean;
    function IsSetPolicy: Boolean;
    function IsSetPolicyName: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property Policy: string read GetPolicy write SetPolicy;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
implementation

{ TCreateEmailIdentityPolicyRequest }

function TCreateEmailIdentityPolicyRequest.Obj: TCreateEmailIdentityPolicyRequest;
begin
  Result := Self;
end;

function TCreateEmailIdentityPolicyRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TCreateEmailIdentityPolicyRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TCreateEmailIdentityPolicyRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

function TCreateEmailIdentityPolicyRequest.GetPolicy: string;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TCreateEmailIdentityPolicyRequest.SetPolicy(const Value: string);
begin
  FPolicy := Value;
end;

function TCreateEmailIdentityPolicyRequest.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

function TCreateEmailIdentityPolicyRequest.GetPolicyName: string;
begin
  Result := FPolicyName.ValueOrDefault;
end;

procedure TCreateEmailIdentityPolicyRequest.SetPolicyName(const Value: string);
begin
  FPolicyName := Value;
end;

function TCreateEmailIdentityPolicyRequest.IsSetPolicyName: Boolean;
begin
  Result := FPolicyName.HasValue;
end;

end.
