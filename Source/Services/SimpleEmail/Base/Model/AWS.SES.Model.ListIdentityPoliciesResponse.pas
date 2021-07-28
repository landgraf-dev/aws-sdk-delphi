unit AWS.SES.Model.ListIdentityPoliciesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TListIdentityPoliciesResponse = class;
  
  IListIdentityPoliciesResponse = interface
    function GetPolicyNames: TList<string>;
    procedure SetPolicyNames(const Value: TList<string>);
    function Obj: TListIdentityPoliciesResponse;
    function IsSetPolicyNames: Boolean;
    property PolicyNames: TList<string> read GetPolicyNames write SetPolicyNames;
  end;
  
  TListIdentityPoliciesResponse = class(TAmazonWebServiceResponse, IListIdentityPoliciesResponse)
  strict private
    FPolicyNames: TList<string>;
    function GetPolicyNames: TList<string>;
    procedure SetPolicyNames(const Value: TList<string>);
  strict protected
    function Obj: TListIdentityPoliciesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPolicyNames: Boolean;
    property PolicyNames: TList<string> read GetPolicyNames write SetPolicyNames;
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
  FPolicyNames.Free;
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
    FPolicyNames.Free;
    FPolicyNames := Value;
  end;
end;

function TListIdentityPoliciesResponse.IsSetPolicyNames: Boolean;
begin
  Result := (FPolicyNames <> nil) and (FPolicyNames.Count > 0);
end;

end.
