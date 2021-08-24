unit AWS.SESv2.Model.DeleteEmailIdentityResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteEmailIdentityResponse = class;
  
  IDeleteEmailIdentityResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteEmailIdentityResponse;
  end;
  
  TDeleteEmailIdentityResponse = class(TAmazonWebServiceResponse, IDeleteEmailIdentityResponse)
  strict protected
    function Obj: TDeleteEmailIdentityResponse;
  end;
  
implementation

{ TDeleteEmailIdentityResponse }

function TDeleteEmailIdentityResponse.Obj: TDeleteEmailIdentityResponse;
begin
  Result := Self;
end;

end.
