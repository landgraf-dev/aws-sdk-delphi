unit AWS.SES.Model.DeleteIdentityRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TDeleteIdentityRequest = class;
  
  IDeleteIdentityRequest = interface
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
    function Obj: TDeleteIdentityRequest;
    function IsSetIdentity: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
  end;
  
  TDeleteIdentityRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteIdentityRequest)
  strict private
    FIdentity: Nullable<string>;
    function GetIdentity: string;
    procedure SetIdentity(const Value: string);
  strict protected
    function Obj: TDeleteIdentityRequest;
  public
    function IsSetIdentity: Boolean;
    property Identity: string read GetIdentity write SetIdentity;
  end;
  
implementation

{ TDeleteIdentityRequest }

function TDeleteIdentityRequest.Obj: TDeleteIdentityRequest;
begin
  Result := Self;
end;

function TDeleteIdentityRequest.GetIdentity: string;
begin
  Result := FIdentity.ValueOrDefault;
end;

procedure TDeleteIdentityRequest.SetIdentity(const Value: string);
begin
  FIdentity := Value;
end;

function TDeleteIdentityRequest.IsSetIdentity: Boolean;
begin
  Result := FIdentity.HasValue;
end;

end.
