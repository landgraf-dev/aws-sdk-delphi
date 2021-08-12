unit AWS.SNS.Model.DeleteSMSSandboxPhoneNumberResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteSMSSandboxPhoneNumberResponse = class;
  
  IDeleteSMSSandboxPhoneNumberResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteSMSSandboxPhoneNumberResponse;
  end;
  
  TDeleteSMSSandboxPhoneNumberResponse = class(TAmazonWebServiceResponse, IDeleteSMSSandboxPhoneNumberResponse)
  strict protected
    function Obj: TDeleteSMSSandboxPhoneNumberResponse;
  end;
  
implementation

{ TDeleteSMSSandboxPhoneNumberResponse }

function TDeleteSMSSandboxPhoneNumberResponse.Obj: TDeleteSMSSandboxPhoneNumberResponse;
begin
  Result := Self;
end;

end.
