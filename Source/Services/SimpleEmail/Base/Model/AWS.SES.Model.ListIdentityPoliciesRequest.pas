unit AWS.SES.Model.ListIdentityPoliciesRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TListIdentityPoliciesRequest = class;
  
  IListIdentityPoliciesRequest = interface
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function Obj: TListIdentityPoliciesRequest;
    function IsSetIdentity: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
  end;
  
  TListIdentityPoliciesRequest = class(TAmazonSimpleEmailServiceRequest, IListIdentityPoliciesRequest)
  strict private
    FIdentity: Nullable<string>;
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
  strict protected
    function Obj: TListIdentityPoliciesRequest;
  public
    function IsSetIdentity: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
  end;
  
implementation

{ TListIdentityPoliciesRequest }

function TListIdentityPoliciesRequest.Obj: TListIdentityPoliciesRequest;
begin
  Result := Self;
end;

function TListIdentityPoliciesRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TListIdentityPoliciesRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TListIdentityPoliciesRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

end.
