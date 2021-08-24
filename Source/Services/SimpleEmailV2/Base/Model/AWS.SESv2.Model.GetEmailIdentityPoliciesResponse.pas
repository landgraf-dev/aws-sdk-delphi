unit AWS.SESv2.Model.GetEmailIdentityPoliciesResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model;

type
  TGetEmailIdentityPoliciesResponse = class;
  
  IGetEmailIdentityPoliciesResponse = interface(IAmazonWebServiceResponse)
    function GetPolicies: TDictionary<string, string>;
    procedure SetPolicies(const Value: TDictionary<string, string>);
    function GetKeepPolicies: Boolean;
    procedure SetKeepPolicies(const Value: Boolean);
    function Obj: TGetEmailIdentityPoliciesResponse;
    function IsSetPolicies: Boolean;
    property Policies: TDictionary<string, string> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
  end;
  
  TGetEmailIdentityPoliciesResponse = class(TAmazonWebServiceResponse, IGetEmailIdentityPoliciesResponse)
  strict private
    FPolicies: TDictionary<string, string>;
    FKeepPolicies: Boolean;
    function GetPolicies: TDictionary<string, string>;
    procedure SetPolicies(const Value: TDictionary<string, string>);
    function GetKeepPolicies: Boolean;
    procedure SetKeepPolicies(const Value: Boolean);
  strict protected
    function Obj: TGetEmailIdentityPoliciesResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPolicies: Boolean;
    property Policies: TDictionary<string, string> read GetPolicies write SetPolicies;
    property KeepPolicies: Boolean read GetKeepPolicies write SetKeepPolicies;
  end;
  
implementation

{ TGetEmailIdentityPoliciesResponse }

constructor TGetEmailIdentityPoliciesResponse.Create;
begin
  inherited;
  FPolicies := TDictionary<string, string>.Create;
end;

destructor TGetEmailIdentityPoliciesResponse.Destroy;
begin
  Policies := nil;
  inherited;
end;

function TGetEmailIdentityPoliciesResponse.Obj: TGetEmailIdentityPoliciesResponse;
begin
  Result := Self;
end;

function TGetEmailIdentityPoliciesResponse.GetPolicies: TDictionary<string, string>;
begin
  Result := FPolicies;
end;

procedure TGetEmailIdentityPoliciesResponse.SetPolicies(const Value: TDictionary<string, string>);
begin
  if FPolicies <> Value then
  begin
    if not KeepPolicies then
      FPolicies.Free;
    FPolicies := Value;
  end;
end;

function TGetEmailIdentityPoliciesResponse.GetKeepPolicies: Boolean;
begin
  Result := FKeepPolicies;
end;

procedure TGetEmailIdentityPoliciesResponse.SetKeepPolicies(const Value: Boolean);
begin
  FKeepPolicies := Value;
end;

function TGetEmailIdentityPoliciesResponse.IsSetPolicies: Boolean;
begin
  Result := (FPolicies <> nil) and (FPolicies.Count > 0);
end;

end.
