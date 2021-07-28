unit AWS.SES.Model.VerifyEmailAddressResponse;

interface

uses
  AWS.Runtime.Model;

type
  TVerifyEmailAddressResponse = class;
  
  IVerifyEmailAddressResponse = interface
    function Obj: TVerifyEmailAddressResponse;
  end;
  
  TVerifyEmailAddressResponse = class(TAmazonWebServiceResponse, IVerifyEmailAddressResponse)
  strict protected
    function Obj: TVerifyEmailAddressResponse;
  end;
  
implementation

{ TVerifyEmailAddressResponse }

function TVerifyEmailAddressResponse.Obj: TVerifyEmailAddressResponse;
begin
  Result := Self;
end;

end.
