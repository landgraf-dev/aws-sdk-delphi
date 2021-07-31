unit AWS.SES.Model.DeleteIdentityPolicyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteIdentityPolicyResponse = class;
  
  IDeleteIdentityPolicyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteIdentityPolicyResponse;
  end;
  
  TDeleteIdentityPolicyResponse = class(TAmazonWebServiceResponse, IDeleteIdentityPolicyResponse)
  strict protected
    function Obj: TDeleteIdentityPolicyResponse;
  end;
  
implementation

{ TDeleteIdentityPolicyResponse }

function TDeleteIdentityPolicyResponse.Obj: TDeleteIdentityPolicyResponse;
begin
  Result := Self;
end;

end.
