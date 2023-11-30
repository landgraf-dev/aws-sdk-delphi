unit AWS.SESv2.Model.GetEmailIdentityRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TGetEmailIdentityRequest = class;
  
  IGetEmailIdentityRequest = interface
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function Obj: TGetEmailIdentityRequest;
    function IsSetEmailIdentity: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
  TGetEmailIdentityRequest = class(TAmazonSimpleEmailServiceV2Request, IGetEmailIdentityRequest)
  strict private
    FEmailIdentity: Nullable<string>;
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
  strict protected
    function Obj: TGetEmailIdentityRequest;
  public
    function IsSetEmailIdentity: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
implementation

{ TGetEmailIdentityRequest }

function TGetEmailIdentityRequest.Obj: TGetEmailIdentityRequest;
begin
  Result := Self;
end;

function TGetEmailIdentityRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TGetEmailIdentityRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TGetEmailIdentityRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

end.
