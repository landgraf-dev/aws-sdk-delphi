unit AWS.SESv2.Model.UpdateEmailIdentityPolicyRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request;

type
  TUpdateEmailIdentityPolicyRequest = class;
  
  IUpdateEmailIdentityPolicyRequest = interface
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetPolicy: string;
    procedure SetPolicy(const Value: string);
    function GetPolicyName: string;
    procedure SetPolicyName(const Value: string);
    function Obj: TUpdateEmailIdentityPolicyRequest;
    function IsSetEmailIdentity: Boolean;
    function IsSetPolicy: Boolean;
    function IsSetPolicyName: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property Policy: string read GetPolicy write SetPolicy;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
  TUpdateEmailIdentityPolicyRequest = class(TAmazonSimpleEmailServiceV2Request, IUpdateEmailIdentityPolicyRequest)
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
    function Obj: TUpdateEmailIdentityPolicyRequest;
  public
    function IsSetEmailIdentity: Boolean;
    function IsSetPolicy: Boolean;
    function IsSetPolicyName: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property Policy: string read GetPolicy write SetPolicy;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
implementation

{ TUpdateEmailIdentityPolicyRequest }

function TUpdateEmailIdentityPolicyRequest.Obj: TUpdateEmailIdentityPolicyRequest;
begin
  Result := Self;
end;

function TUpdateEmailIdentityPolicyRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TUpdateEmailIdentityPolicyRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TUpdateEmailIdentityPolicyRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

function TUpdateEmailIdentityPolicyRequest.GetPolicy: string;
begin
  Result := FPolicy.ValueOrDefault;
end;

procedure TUpdateEmailIdentityPolicyRequest.SetPolicy(const Value: string);
begin
  FPolicy := Value;
end;

function TUpdateEmailIdentityPolicyRequest.IsSetPolicy: Boolean;
begin
  Result := FPolicy.HasValue;
end;

function TUpdateEmailIdentityPolicyRequest.GetPolicyName: string;
begin
  Result := FPolicyName.ValueOrDefault;
end;

procedure TUpdateEmailIdentityPolicyRequest.SetPolicyName(const Value: string);
begin
  FPolicyName := Value;
end;

function TUpdateEmailIdentityPolicyRequest.IsSetPolicyName: Boolean;
begin
  Result := FPolicyName.HasValue;
end;

end.
