unit AWS.SES.Model.GetIdentityPoliciesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TGetIdentityPoliciesResponse = class;
  
  IGetIdentityPoliciesResponse = interface(IAmazonWebServiceResponse)
    function GetPolicies: TDictionary<string, string>;
    procedure SetPolicies(const Value: TDictionary<string, string>);
    function GetKeepPolicies: Boolean;
    procedure SetKeepPolicies(const Value: Boolean);
    function Obj: TGetIdentityPoliciesResponse;
    function IsSetPolicies: Boolean;
    property Policies: TDictionary<string, string> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
  end;
  
  TGetIdentityPoliciesResponse = class(TAmazonWebServiceResponse, IGetIdentityPoliciesResponse)
  strict private
    FPolicies: TDictionary<string, string>;
    FKeepPolicies: Boolean;
    function GetPolicies: TDictionary<string, string>;
    procedure SetPolicies(const Value: TDictionary<string, string>);
    function GetKeepPolicies: Boolean;
    procedure SetKeepPolicies(const Value: Boolean);
  strict protected
    function Obj: TGetIdentityPoliciesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPolicies: Boolean;
    property Policies: TDictionary<string, string> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
  end;
  
implementation

{ TGetIdentityPoliciesResponse }

constructor TGetIdentityPoliciesResponse.Create;
begin
  inherited;
  FPolicies := TDictionary<string, string>.Create;
end;

destructor TGetIdentityPoliciesResponse.Destroy;
begin
  Policies := nil;
  inherited;
end;

function TGetIdentityPoliciesResponse.Obj: TGetIdentityPoliciesResponse;
begin
  Result := Self;
end;

function TGetIdentityPoliciesResponse.GetPolicies: TDictionary<string, string>;
begin
  Result := FPolicies;
end;

procedure TGetIdentityPoliciesResponse.SetPolicies(const Value: TDictionary<string, string>);
begin
  if FPolicies <> Value then
  begin
    if not KeepPolicies then
      FPolicies.Free;
    FPolicies := Value;
  end;
end;

function TGetIdentityPoliciesResponse.GetKeepPolicies: Boolean;
begin
  Result := FKeepPolicies;
end;

procedure TGetIdentityPoliciesResponse.SetKeepPolicies(const Value: Boolean);
begin
  FKeepPolicies := Value;
end;

function TGetIdentityPoliciesResponse.IsSetPolicies: Boolean;
begin
  Result := (FPolicies <> nil) and (FPolicies.Count > 0);
end;

end.
