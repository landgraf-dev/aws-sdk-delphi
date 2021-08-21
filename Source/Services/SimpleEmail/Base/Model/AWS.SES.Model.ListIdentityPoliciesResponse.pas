unit AWS.SES.Model.ListIdentityPoliciesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TListIdentityPoliciesResponse = class;
  
  IListIdentityPoliciesResponse = interface(IAmazonWebServiceResponse)
    function GetPolicyNames: TList<string>;
    procedure SetPolicyNames(const Value: TList<string>);
    function GetKeepPolicyNames: Boolean;
    procedure SetKeepPolicyNames(const Value: Boolean);
    function Obj: TListIdentityPoliciesResponse;
    function IsSetPolicyNames: Boolean;
    property PolicyNames: TList<string> read GetPolicyNames write SetPolicyNames;
    property KeepPolicyNames: Boolean read GetKeepPolicyNames write SetKeepPolicyNames;
  end;
  
  TListIdentityPoliciesResponse = class(TAmazonWebServiceResponse, IListIdentityPoliciesResponse)
  strict private
    FPolicyNames: TList<string>;
    FKeepPolicyNames: Boolean;
    function GetPolicyNames: TList<string>;
    procedure SetPolicyNames(const Value: TList<string>);
    function GetKeepPolicyNames: Boolean;
    procedure SetKeepPolicyNames(const Value: Boolean);
  strict protected
    function Obj: TListIdentityPoliciesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPolicyNames: Boolean;
    property PolicyNames: TList<string> read GetPolicyNames write SetPolicyNames;
    property KeepPolicyNames: Boolean read GetKeepPolicyNames write SetKeepPolicyNames;
  end;
  
implementation

{ TListIdentityPoliciesResponse }

constructor TListIdentityPoliciesResponse.Create;
begin
  inherited;
  FPolicyNames := TList<string>.Create;
end;

destructor TListIdentityPoliciesResponse.Destroy;
begin
  PolicyNames := nil;
  inherited;
end;

function TListIdentityPoliciesResponse.Obj: TListIdentityPoliciesResponse;
begin
  Result := Self;
end;

function TListIdentityPoliciesResponse.GetPolicyNames: TList<string>;
begin
  Result := FPolicyNames;
end;

procedure TListIdentityPoliciesResponse.SetPolicyNames(const Value: TList<string>);
begin
  if FPolicyNames <> Value then
  begin
    if not KeepPolicyNames then
      FPolicyNames.Free;
    FPolicyNames := Value;
  end;
end;

function TListIdentityPoliciesResponse.GetKeepPolicyNames: Boolean;
begin
  Result := FKeepPolicyNames;
end;

procedure TListIdentityPoliciesResponse.SetKeepPolicyNames(const Value: Boolean);
begin
  FKeepPolicyNames := Value;
end;

function TListIdentityPoliciesResponse.IsSetPolicyNames: Boolean;
begin
  Result := (FPolicyNames <> nil) and (FPolicyNames.Count > 0);
end;

end.
