unit AWS.SES.Model.GetIdentityPoliciesRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TGetIdentityPoliciesRequest = class;
  
  IGetIdentityPoliciesRequest = interface
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetPolicyNames: TList<string>;
    procedure SetPolicyNames(const Value: TList<string>);
    function GetKeepPolicyNames: Boolean;
    procedure SetKeepPolicyNames(const Value: Boolean);
    function Obj: TGetIdentityPoliciesRequest;
    function IsSetIdentity: Boolean;
    function IsSetPolicyNames: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
    property PolicyNames: TList<string> read GetPolicyNames write SetPolicyNames;
    property KeepPolicyNames: Boolean read GetKeepPolicyNames write SetKeepPolicyNames;
  end;
  
  TGetIdentityPoliciesRequest = class(TAmazonSimpleEmailServiceRequest, IGetIdentityPoliciesRequest)
  strict private
    FIdentity: Nullable<string>;
    FPolicyNames: TList<string>;
    FKeepPolicyNames: Boolean;
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function GetPolicyNames: TList<string>;
    procedure SetPolicyNames(const Value: TList<string>);
    function GetKeepPolicyNames: Boolean;
    procedure SetKeepPolicyNames(const Value: Boolean);
  strict protected
    function Obj: TGetIdentityPoliciesRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetIdentity: Boolean;
    function IsSetPolicyNames: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
    property PolicyNames: TList<string> read GetPolicyNames write SetPolicyNames;
    property KeepPolicyNames: Boolean read GetKeepPolicyNames write SetKeepPolicyNames;
  end;
  
implementation

{ TGetIdentityPoliciesRequest }

constructor TGetIdentityPoliciesRequest.Create;
begin
  inherited;
  FPolicyNames := TList<string>.Create;
end;

destructor TGetIdentityPoliciesRequest.Destroy;
begin
  PolicyNames := nil;
  inherited;
end;

function TGetIdentityPoliciesRequest.Obj: TGetIdentityPoliciesRequest;
begin
  Result := Self;
end;

function TGetIdentityPoliciesRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TGetIdentityPoliciesRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TGetIdentityPoliciesRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

function TGetIdentityPoliciesRequest.GetPolicyNames: TList<string>;
begin
  Result := FPolicyNames;
end;

procedure TGetIdentityPoliciesRequest.SetPolicyNames(const Value: TList<string>);
begin
  if FPolicyNames <> Value then
  begin
    if not KeepPolicyNames then
      FPolicyNames.Free;
    FPolicyNames := Value;
  end;
end;

function TGetIdentityPoliciesRequest.GetKeepPolicyNames: Boolean;
begin
  Result := FKeepPolicyNames;
end;

procedure TGetIdentityPoliciesRequest.SetKeepPolicyNames(const Value: Boolean);
begin
  FKeepPolicyNames := Value;
end;

function TGetIdentityPoliciesRequest.IsSetPolicyNames: Boolean;
begin
  Result := (FPolicyNames <> nil) and (FPolicyNames.Count > 0);
end;

end.
