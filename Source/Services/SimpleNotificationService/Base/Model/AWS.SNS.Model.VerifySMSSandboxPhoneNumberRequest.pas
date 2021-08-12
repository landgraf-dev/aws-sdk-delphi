unit AWS.SNS.Model.VerifySMSSandboxPhoneNumberRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TVerifySMSSandboxPhoneNumberRequest = class;
  
  IVerifySMSSandboxPhoneNumberRequest = interface
    function GetOneTimePassword: string;
    procedure SetOneTimePassword(const Value: string);
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function Obj: TVerifySMSSandboxPhoneNumberRequest;
    function IsSetOneTimePassword: Boolean;
    function IsSetPhoneNumber: Boolean;
    property OneTimePassword: string read GetOneTimePassword write SetOneTimePassword;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
  TVerifySMSSandboxPhoneNumberRequest = class(TAmazonSimpleNotificationServiceRequest, IVerifySMSSandboxPhoneNumberRequest)
  strict private
    FOneTimePassword: Nullable<string>;
    FPhoneNumber: Nullable<string>;
    function GetOneTimePassword: string;
    procedure SetOneTimePassword(const Value: string);
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
  strict protected
    function Obj: TVerifySMSSandboxPhoneNumberRequest;
  public
    function IsSetOneTimePassword: Boolean;
    function IsSetPhoneNumber: Boolean;
    property OneTimePassword: string read GetOneTimePassword write SetOneTimePassword;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
implementation

{ TVerifySMSSandboxPhoneNumberRequest }

function TVerifySMSSandboxPhoneNumberRequest.Obj: TVerifySMSSandboxPhoneNumberRequest;
begin
  Result := Self;
end;

function TVerifySMSSandboxPhoneNumberRequest.GetOneTimePassword: string;
begin
  Result := FOneTimePassword.ValueOrDefault;
end;

procedure TVerifySMSSandboxPhoneNumberRequest.SetOneTimePassword(const Value: string);
begin
  FOneTimePassword := Value;
end;

function TVerifySMSSandboxPhoneNumberRequest.IsSetOneTimePassword: Boolean;
begin
  Result := FOneTimePassword.HasValue;
end;

function TVerifySMSSandboxPhoneNumberRequest.GetPhoneNumber: string;
begin
  Result := FPhoneNumber.ValueOrDefault;
end;

procedure TVerifySMSSandboxPhoneNumberRequest.SetPhoneNumber(const Value: string);
begin
  FPhoneNumber := Value;
end;

function TVerifySMSSandboxPhoneNumberRequest.IsSetPhoneNumber: Boolean;
begin
  Result := FPhoneNumber.HasValue;
end;

end.
