unit AWS.SES.Model.DeleteIdentityResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteIdentityResponse = class;
  
  IDeleteIdentityResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteIdentityResponse;
  end;
  
  TDeleteIdentityResponse = class(TAmazonWebServiceResponse, IDeleteIdentityResponse)
  strict protected
    function Obj: TDeleteIdentityResponse;
  end;
  
implementation

{ TDeleteIdentityResponse }

function TDeleteIdentityResponse.Obj: TDeleteIdentityResponse;
begin
  Result := Self;
end;

end.
