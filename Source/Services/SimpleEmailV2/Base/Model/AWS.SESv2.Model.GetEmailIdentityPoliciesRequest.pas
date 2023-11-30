unit AWS.SESv2.Model.GetEmailIdentityPoliciesRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TGetEmailIdentityPoliciesRequest = class;
  
  IGetEmailIdentityPoliciesRequest = interface
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function Obj: TGetEmailIdentityPoliciesRequest;
    function IsSetEmailIdentity: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
  TGetEmailIdentityPoliciesRequest = class(TAmazonSimpleEmailServiceV2Request, IGetEmailIdentityPoliciesRequest)
  strict private
    FEmailIdentity: Nullable<string>;
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
  strict protected
    function Obj: TGetEmailIdentityPoliciesRequest;
  public
    function IsSetEmailIdentity: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
implementation

{ TGetEmailIdentityPoliciesRequest }

function TGetEmailIdentityPoliciesRequest.Obj: TGetEmailIdentityPoliciesRequest;
begin
  Result := Self;
end;

function TGetEmailIdentityPoliciesRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TGetEmailIdentityPoliciesRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TGetEmailIdentityPoliciesRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

end.
