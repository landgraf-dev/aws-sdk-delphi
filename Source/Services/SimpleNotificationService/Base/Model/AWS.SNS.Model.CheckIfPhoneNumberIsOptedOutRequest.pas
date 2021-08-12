unit AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SNS.Model.Request;

type
  TCheckIfPhoneNumberIsOptedOutRequest = class;
  
  ICheckIfPhoneNumberIsOptedOutRequest = interface
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function Obj: TCheckIfPhoneNumberIsOptedOutRequest;
    function IsSetPhoneNumber: Boolean;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
  TCheckIfPhoneNumberIsOptedOutRequest = class(TAmazonSimpleNotificationServiceRequest, ICheckIfPhoneNumberIsOptedOutRequest)
  strict private
    FPhoneNumber: Nullable<string>;
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
  strict protected
    function Obj: TCheckIfPhoneNumberIsOptedOutRequest;
  public
    function IsSetPhoneNumber: Boolean;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
implementation

{ TCheckIfPhoneNumberIsOptedOutRequest }

function TCheckIfPhoneNumberIsOptedOutRequest.Obj: TCheckIfPhoneNumberIsOptedOutRequest;
begin
  Result := Self;
end;

function TCheckIfPhoneNumberIsOptedOutRequest.GetPhoneNumber: string;
begin
  Result := FPhoneNumber.ValueOrDefault;
end;

procedure TCheckIfPhoneNumberIsOptedOutRequest.SetPhoneNumber(const Value: string);
begin
  FPhoneNumber := Value;
end;

function TCheckIfPhoneNumberIsOptedOutRequest.IsSetPhoneNumber: Boolean;
begin
  Result := FPhoneNumber.HasValue;
end;

end.
