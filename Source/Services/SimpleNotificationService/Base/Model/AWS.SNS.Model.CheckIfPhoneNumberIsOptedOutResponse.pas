unit AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCheckIfPhoneNumberIsOptedOutResponse = class;
  
  ICheckIfPhoneNumberIsOptedOutResponse = interface(IAmazonWebServiceResponse)
    function GetIsOptedOut: Boolean;
    procedure SetIsOptedOut(const Value: Boolean);
    function Obj: TCheckIfPhoneNumberIsOptedOutResponse;
    function IsSetIsOptedOut: Boolean;
    property IsOptedOut: Boolean read GetIsOptedOut write SetIsOptedOut;
  end;
  
  TCheckIfPhoneNumberIsOptedOutResponse = class(TAmazonWebServiceResponse, ICheckIfPhoneNumberIsOptedOutResponse)
  strict private
    FIsOptedOut: Nullable<Boolean>;
    function GetIsOptedOut: Boolean;
    procedure SetIsOptedOut(const Value: Boolean);
  strict protected
    function Obj: TCheckIfPhoneNumberIsOptedOutResponse;
  public
    function IsSetIsOptedOut: Boolean;
    property IsOptedOut: Boolean read GetIsOptedOut write SetIsOptedOut;
  end;
  
implementation

{ TCheckIfPhoneNumberIsOptedOutResponse }

function TCheckIfPhoneNumberIsOptedOutResponse.Obj: TCheckIfPhoneNumberIsOptedOutResponse;
begin
  Result := Self;
end;

function TCheckIfPhoneNumberIsOptedOutResponse.GetIsOptedOut: Boolean;
begin
  Result := FIsOptedOut.ValueOrDefault;
end;

procedure TCheckIfPhoneNumberIsOptedOutResponse.SetIsOptedOut(const Value: Boolean);
begin
  FIsOptedOut := Value;
end;

function TCheckIfPhoneNumberIsOptedOutResponse.IsSetIsOptedOut: Boolean;
begin
  Result := FIsOptedOut.HasValue;
end;

end.
