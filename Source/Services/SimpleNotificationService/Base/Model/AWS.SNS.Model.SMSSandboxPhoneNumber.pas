unit AWS.SNS.Model.SMSSandboxPhoneNumber;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Enums;

type
  TSMSSandboxPhoneNumber = class;
  
  ISMSSandboxPhoneNumber = interface
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function GetStatus: TSMSSandboxPhoneNumberVerificationStatus;
    procedure SetStatus(const Value: TSMSSandboxPhoneNumberVerificationStatus);
    function Obj: TSMSSandboxPhoneNumber;
    function IsSetPhoneNumber: Boolean;
    function IsSetStatus: Boolean;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
    property Status: TSMSSandboxPhoneNumberVerificationStatus read GetStatus write SetStatus;
  end;
  
  TSMSSandboxPhoneNumber = class
  strict private
    FPhoneNumber: Nullable<string>;
    FStatus: Nullable<TSMSSandboxPhoneNumberVerificationStatus>;
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function GetStatus: TSMSSandboxPhoneNumberVerificationStatus;
    procedure SetStatus(const Value: TSMSSandboxPhoneNumberVerificationStatus);
  strict protected
    function Obj: TSMSSandboxPhoneNumber;
  public
    function IsSetPhoneNumber: Boolean;
    function IsSetStatus: Boolean;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
    property Status: TSMSSandboxPhoneNumberVerificationStatus read GetStatus write SetStatus;
  end;
  
implementation

{ TSMSSandboxPhoneNumber }

function TSMSSandboxPhoneNumber.Obj: TSMSSandboxPhoneNumber;
begin
  Result := Self;
end;

function TSMSSandboxPhoneNumber.GetPhoneNumber: string;
begin
  Result := FPhoneNumber.ValueOrDefault;
end;

procedure TSMSSandboxPhoneNumber.SetPhoneNumber(const Value: string);
begin
  FPhoneNumber := Value;
end;

function TSMSSandboxPhoneNumber.IsSetPhoneNumber: Boolean;
begin
  Result := FPhoneNumber.HasValue;
end;

function TSMSSandboxPhoneNumber.GetStatus: TSMSSandboxPhoneNumberVerificationStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TSMSSandboxPhoneNumber.SetStatus(const Value: TSMSSandboxPhoneNumberVerificationStatus);
begin
  FStatus := Value;
end;

function TSMSSandboxPhoneNumber.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

end.
