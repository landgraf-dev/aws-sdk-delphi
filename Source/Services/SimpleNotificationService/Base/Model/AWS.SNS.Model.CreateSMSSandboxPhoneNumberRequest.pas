unit AWS.SNS.Model.CreateSMSSandboxPhoneNumberRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request, 
  AWS.SNS.Enums;

type
  TCreateSMSSandboxPhoneNumberRequest = class;
  
  ICreateSMSSandboxPhoneNumberRequest = interface
    function GetLanguageCode: TLanguageCodeString;
    procedure SetLanguageCode(const Value: TLanguageCodeString);
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function Obj: TCreateSMSSandboxPhoneNumberRequest;
    function IsSetLanguageCode: Boolean;
    function IsSetPhoneNumber: Boolean;
    property LanguageCode: TLanguageCodeString read GetLanguageCode write SetLanguageCode;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
  TCreateSMSSandboxPhoneNumberRequest = class(TAmazonSimpleNotificationServiceRequest, ICreateSMSSandboxPhoneNumberRequest)
  strict private
    FLanguageCode: Nullable<TLanguageCodeString>;
    FPhoneNumber: Nullable<string>;
    function GetLanguageCode: TLanguageCodeString;
    procedure SetLanguageCode(const Value: TLanguageCodeString);
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
  strict protected
    function Obj: TCreateSMSSandboxPhoneNumberRequest;
  public
    function IsSetLanguageCode: Boolean;
    function IsSetPhoneNumber: Boolean;
    property LanguageCode: TLanguageCodeString read GetLanguageCode write SetLanguageCode;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
implementation

{ TCreateSMSSandboxPhoneNumberRequest }

function TCreateSMSSandboxPhoneNumberRequest.Obj: TCreateSMSSandboxPhoneNumberRequest;
begin
  Result := Self;
end;

function TCreateSMSSandboxPhoneNumberRequest.GetLanguageCode: TLanguageCodeString;
begin
  Result := FLanguageCode.ValueOrDefault;
end;

procedure TCreateSMSSandboxPhoneNumberRequest.SetLanguageCode(const Value: TLanguageCodeString);
begin
  FLanguageCode := Value;
end;

function TCreateSMSSandboxPhoneNumberRequest.IsSetLanguageCode: Boolean;
begin
  Result := FLanguageCode.HasValue;
end;

function TCreateSMSSandboxPhoneNumberRequest.GetPhoneNumber: string;
begin
  Result := FPhoneNumber.ValueOrDefault;
end;

procedure TCreateSMSSandboxPhoneNumberRequest.SetPhoneNumber(const Value: string);
begin
  FPhoneNumber := Value;
end;

function TCreateSMSSandboxPhoneNumberRequest.IsSetPhoneNumber: Boolean;
begin
  Result := FPhoneNumber.HasValue;
end;

end.
