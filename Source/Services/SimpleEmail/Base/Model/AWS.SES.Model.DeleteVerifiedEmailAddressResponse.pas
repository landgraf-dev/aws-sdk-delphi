unit AWS.SES.Model.DeleteVerifiedEmailAddressResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteVerifiedEmailAddressResponse = class;
  
  IDeleteVerifiedEmailAddressResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteVerifiedEmailAddressResponse;
  end;
  
  TDeleteVerifiedEmailAddressResponse = class(TAmazonWebServiceResponse, IDeleteVerifiedEmailAddressResponse)
  strict protected
    function Obj: TDeleteVerifiedEmailAddressResponse;
  end;
  
implementation

{ TDeleteVerifiedEmailAddressResponse }

function TDeleteVerifiedEmailAddressResponse.Obj: TDeleteVerifiedEmailAddressResponse;
begin
  Result := Self;
end;

end.
