unit AWS.SESv2.Model.DeleteEmailIdentityPolicyRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TDeleteEmailIdentityPolicyRequest = class;
  
  IDeleteEmailIdentityPolicyRequest = interface
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetPolicyName: string;
    procedure SetPolicyName(const Value: string);
    function Obj: TDeleteEmailIdentityPolicyRequest;
    function IsSetEmailIdentity: Boolean;
    function IsSetPolicyName: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
  TDeleteEmailIdentityPolicyRequest = class(TAmazonSimpleEmailServiceV2Request, IDeleteEmailIdentityPolicyRequest)
  strict private
    FEmailIdentity: Nullable<string>;
    FPolicyName: Nullable<string>;
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function GetPolicyName: string;
    procedure SetPolicyName(const Value: string);
  strict protected
    function Obj: TDeleteEmailIdentityPolicyRequest;
  public
    function IsSetEmailIdentity: Boolean;
    function IsSetPolicyName: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
    property PolicyName: string read GetPolicyName write SetPolicyName;
  end;
  
implementation

{ TDeleteEmailIdentityPolicyRequest }

function TDeleteEmailIdentityPolicyRequest.Obj: TDeleteEmailIdentityPolicyRequest;
begin
  Result := Self;
end;

function TDeleteEmailIdentityPolicyRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TDeleteEmailIdentityPolicyRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TDeleteEmailIdentityPolicyRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

function TDeleteEmailIdentityPolicyRequest.GetPolicyName: string;
begin
  Result := FPolicyName.ValueOrDefault;
end;

procedure TDeleteEmailIdentityPolicyRequest.SetPolicyName(const Value: string);
begin
  FPolicyName := Value;
end;

function TDeleteEmailIdentityPolicyRequest.IsSetPolicyName: Boolean;
begin
  Result := FPolicyName.HasValue;
end;

end.
