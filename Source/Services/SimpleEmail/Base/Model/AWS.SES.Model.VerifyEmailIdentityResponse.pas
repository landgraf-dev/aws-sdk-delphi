unit AWS.SES.Model.VerifyEmailIdentityResponse;

interface

uses
  AWS.Runtime.Model;

type
  TVerifyEmailIdentityResponse = class;
  
  IVerifyEmailIdentityResponse = interface(IAmazonWebServiceResponse)
    function Obj: TVerifyEmailIdentityResponse;
  end;
  
  TVerifyEmailIdentityResponse = class(TAmazonWebServiceResponse, IVerifyEmailIdentityResponse)
  strict protected
    function Obj: TVerifyEmailIdentityResponse;
  end;
  
implementation

{ TVerifyEmailIdentityResponse }

function TVerifyEmailIdentityResponse.Obj: TVerifyEmailIdentityResponse;
begin
  Result := Self;
end;

end.
