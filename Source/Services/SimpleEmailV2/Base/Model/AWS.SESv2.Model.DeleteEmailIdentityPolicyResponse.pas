unit AWS.SESv2.Model.DeleteEmailIdentityPolicyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteEmailIdentityPolicyResponse = class;
  
  IDeleteEmailIdentityPolicyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteEmailIdentityPolicyResponse;
  end;
  
  TDeleteEmailIdentityPolicyResponse = class(TAmazonWebServiceResponse, IDeleteEmailIdentityPolicyResponse)
  strict protected
    function Obj: TDeleteEmailIdentityPolicyResponse;
  end;
  
implementation

{ TDeleteEmailIdentityPolicyResponse }

function TDeleteEmailIdentityPolicyResponse.Obj: TDeleteEmailIdentityPolicyResponse;
begin
  Result := Self;
end;

end.
