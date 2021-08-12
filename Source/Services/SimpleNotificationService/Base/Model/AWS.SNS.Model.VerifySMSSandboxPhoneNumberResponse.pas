unit AWS.SNS.Model.VerifySMSSandboxPhoneNumberResponse;

interface

uses
  AWS.Runtime.Model;

type
  TVerifySMSSandboxPhoneNumberResponse = class;
  
  IVerifySMSSandboxPhoneNumberResponse = interface(IAmazonWebServiceResponse)
    function Obj: TVerifySMSSandboxPhoneNumberResponse;
  end;
  
  TVerifySMSSandboxPhoneNumberResponse = class(TAmazonWebServiceResponse, IVerifySMSSandboxPhoneNumberResponse)
  strict protected
    function Obj: TVerifySMSSandboxPhoneNumberResponse;
  end;
  
implementation

{ TVerifySMSSandboxPhoneNumberResponse }

function TVerifySMSSandboxPhoneNumberResponse.Obj: TVerifySMSSandboxPhoneNumberResponse;
begin
  Result := Self;
end;

end.
