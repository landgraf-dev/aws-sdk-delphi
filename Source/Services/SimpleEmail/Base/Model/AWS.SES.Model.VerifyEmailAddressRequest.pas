unit AWS.SES.Model.VerifyEmailAddressRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TVerifyEmailAddressRequest = class;
  
  IVerifyEmailAddressRequest = interface
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function Obj: TVerifyEmailAddressRequest;
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
  TVerifyEmailAddressRequest = class(TAmazonSimpleEmailServiceRequest, IVerifyEmailAddressRequest)
  strict private
    FEmailAddress: Nullable<string>;
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
  strict protected
    function Obj: TVerifyEmailAddressRequest;
  public
    function IsSetEmailAddress: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
  end;
  
implementation

{ TVerifyEmailAddressRequest }

function TVerifyEmailAddressRequest.Obj: TVerifyEmailAddressRequest;
begin
  Result := Self;
end;

function TVerifyEmailAddressRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TVerifyEmailAddressRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TVerifyEmailAddressRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

end.
