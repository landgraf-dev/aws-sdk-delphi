unit AWS.SNS.Model.OptInPhoneNumberResponse;

interface

uses
  AWS.Runtime.Model;

type
  TOptInPhoneNumberResponse = class;
  
  IOptInPhoneNumberResponse = interface(IAmazonWebServiceResponse)
    function Obj: TOptInPhoneNumberResponse;
  end;
  
  TOptInPhoneNumberResponse = class(TAmazonWebServiceResponse, IOptInPhoneNumberResponse)
  strict protected
    function Obj: TOptInPhoneNumberResponse;
  end;
  
implementation

{ TOptInPhoneNumberResponse }

function TOptInPhoneNumberResponse.Obj: TOptInPhoneNumberResponse;
begin
  Result := Self;
end;

end.
