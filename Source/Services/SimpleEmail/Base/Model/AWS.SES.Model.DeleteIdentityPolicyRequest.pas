unit AWS.SES.Model.DeleteIdentityPolicyRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TDeleteIdentityPolicyRequest = class;
  
  IDeleteIdentityPolicyRequest = interface
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetPolicyName: string;
    procedure SetPolicyName(const Value: string);
    function Obj: TDeleteIdentityPolicyRequest;
    function IsSetIdentity: Boolean;
    function IsSetPolicyName: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
  TDeleteIdentityPolicyRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteIdentityPolicyRequest)
  strict private
    FIdentity: Nullable<string>;
    FPolicyName: Nullable<string>;
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetPolicyName: string;
    procedure SetPolicyName(const Value: string);
  strict protected
    function Obj: TDeleteIdentityPolicyRequest;
  public
    function IsSetIdentity: Boolean;
    function IsSetPolicyName: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
implementation

{ TDeleteIdentityPolicyRequest }

function TDeleteIdentityPolicyRequest.Obj: TDeleteIdentityPolicyRequest;
begin
  Result := Self;
end;

function TDeleteIdentityPolicyRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TDeleteIdentityPolicyRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TDeleteIdentityPolicyRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

function TDeleteIdentityPolicyRequest.GetPolicyName: string;
begin
  Result := FPolicyName.ValueOrDefault;
end;

procedure TDeleteIdentityPolicyRequest.SetPolicyName(const Value: string);
begin
  FPolicyName := Value;
end;

function TDeleteIdentityPolicyRequest.IsSetPolicyName: Boolean;
begin
  Result := FPolicyName.HasValue;
end;

end.
