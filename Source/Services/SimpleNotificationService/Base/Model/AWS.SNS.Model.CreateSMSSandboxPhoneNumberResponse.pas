unit AWS.SNS.Model.CreateSMSSandboxPhoneNumberResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateSMSSandboxPhoneNumberResponse = class;
  
  ICreateSMSSandboxPhoneNumberResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateSMSSandboxPhoneNumberResponse;
  end;
  
  TCreateSMSSandboxPhoneNumberResponse = class(TAmazonWebServiceResponse, ICreateSMSSandboxPhoneNumberResponse)
  strict protected
    function Obj: TCreateSMSSandboxPhoneNumberResponse;
  end;
  
implementation

{ TCreateSMSSandboxPhoneNumberResponse }

function TCreateSMSSandboxPhoneNumberResponse.Obj: TCreateSMSSandboxPhoneNumberResponse;
begin
  Result := Self;
end;

end.
