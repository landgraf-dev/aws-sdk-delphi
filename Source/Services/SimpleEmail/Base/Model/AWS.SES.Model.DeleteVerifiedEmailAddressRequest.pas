unit AWS.SES.Model.DeleteVerifiedEmailAddressRequest;

interface

uses
  AWS.SES.Model.Request, 
  AWS.Nullable;

type
  TDeleteVerifiedEmailAddressRequest = class;
  
  IDeleteVerifiedEmailAddressRequest = interface
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function Obj: TDeleteVerifiedEmailAddressRequest;
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
  TDeleteVerifiedEmailAddressRequest = class(TAmazonSimpleEmailServiceRequest, IDeleteVerifiedEmailAddressRequest)
  strict private
    FEmailAddress: Nullable<string>;
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
  strict protected
    function Obj: TDeleteVerifiedEmailAddressRequest;
  public
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
implementation

{ TDeleteVerifiedEmailAddressRequest }

function TDeleteVerifiedEmailAddressRequest.Obj: TDeleteVerifiedEmailAddressRequest;
begin
  Result := Self;
end;

function TDeleteVerifiedEmailAddressRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TDeleteVerifiedEmailAddressRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TDeleteVerifiedEmailAddressRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

end.
