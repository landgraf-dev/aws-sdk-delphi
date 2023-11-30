unit AWS.SNS.Model.OptInPhoneNumberRequest;

interface

uses
  AWS.SNS.Model.Request, 
  AWS.Nullable;

type
  TOptInPhoneNumberRequest = class;
  
  IOptInPhoneNumberRequest = interface
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
    function Obj: TOptInPhoneNumberRequest;
    function IsSetPhoneNumber: Boolean;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
  TOptInPhoneNumberRequest = class(TAmazonSimpleNotificationServiceRequest, IOptInPhoneNumberRequest)
  strict private
    FPhoneNumber: Nullable<string>;
    function GetPhoneNumber: string;
    procedure SetPhoneNumber(const Value: string);
  strict protected
    function Obj: TOptInPhoneNumberRequest;
  public
    function IsSetPhoneNumber: Boolean;
    property PhoneNumber: string read GetPhoneNumber write SetPhoneNumber;
  end;
  
implementation

{ TOptInPhoneNumberRequest }

function TOptInPhoneNumberRequest.Obj: TOptInPhoneNumberRequest;
begin
  Result := Self;
end;

function TOptInPhoneNumberRequest.GetPhoneNumber: string;
begin
  Result := FPhoneNumber.ValueOrDefault;
end;

procedure TOptInPhoneNumberRequest.SetPhoneNumber(const Value: string);
begin
  FPhoneNumber := Value;
end;

function TOptInPhoneNumberRequest.IsSetPhoneNumber: Boolean;
begin
  Result := FPhoneNumber.HasValue;
end;

end.
