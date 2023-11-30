unit AWS.SESv2.Model.DeleteEmailIdentityRequest;

interface

uses
  AWS.SESv2.Model.Request, 
  AWS.Nullable;

type
  TDeleteEmailIdentityRequest = class;
  
  IDeleteEmailIdentityRequest = interface
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
    function Obj: TDeleteEmailIdentityRequest;
    function IsSetEmailIdentity: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
  TDeleteEmailIdentityRequest = class(TAmazonSimpleEmailServiceV2Request, IDeleteEmailIdentityRequest)
  strict private
    FEmailIdentity: Nullable<string>;
    function GetEmailIdentity: string;
    procedure SetEmailIdentity(const Value: string);
  strict protected
    function Obj: TDeleteEmailIdentityRequest;
  public
    function IsSetEmailIdentity: Boolean;
    property EmailIdentity: string read GetEmailIdentity write SetEmailIdentity;
  end;
  
implementation

{ TDeleteEmailIdentityRequest }

function TDeleteEmailIdentityRequest.Obj: TDeleteEmailIdentityRequest;
begin
  Result := Self;
end;

function TDeleteEmailIdentityRequest.GetEmailIdentity: string;
begin
  Result := FEmailIdentity.ValueOrDefault;
end;

procedure TDeleteEmailIdentityRequest.SetEmailIdentity(const Value: string);
begin
  FEmailIdentity := Value;
end;

function TDeleteEmailIdentityRequest.IsSetEmailIdentity: Boolean;
begin
  Result := FEmailIdentity.HasValue;
end;

end.
