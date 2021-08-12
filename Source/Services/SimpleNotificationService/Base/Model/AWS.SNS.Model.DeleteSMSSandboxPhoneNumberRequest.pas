unit AWS.SNS.Model.DeleteSMSSandboxPhoneNumberRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TDeleteSMSSandboxPhoneNumberRequest = class;
  
  IDeleteSMSSandboxPhoneNumberRequest = interface
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function Obj: TDeleteSMSSandboxPhoneNumberRequest;
    function IsSetPhoneNumber: Boolean;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
  TDeleteSMSSandboxPhoneNumberRequest = class(TAmazonSimpleNotificationServiceRequest, IDeleteSMSSandboxPhoneNumberRequest)
  strict private
    FPhoneNumber: Nullable<string>;
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
  strict protected
    function Obj: TDeleteSMSSandboxPhoneNumberRequest;
  public
    function IsSetPhoneNumber: Boolean;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
implementation

{ TDeleteSMSSandboxPhoneNumberRequest }

function TDeleteSMSSandboxPhoneNumberRequest.Obj: TDeleteSMSSandboxPhoneNumberRequest;
begin
  Result := Self;
end;

function TDeleteSMSSandboxPhoneNumberRequest.GetPhoneNumber: string;
begin
  Result := FPhoneNumber.ValueOrDefault;
end;

procedure TDeleteSMSSandboxPhoneNumberRequest.SetPhoneNumber(const Value: string);
begin
  FPhoneNumber := Value;
end;

function TDeleteSMSSandboxPhoneNumberRequest.IsSetPhoneNumber: Boolean;
begin
  Result := FPhoneNumber.HasValue;
end;

end.
