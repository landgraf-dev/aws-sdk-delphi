unit AWS.SESv2.Model.CreateEmailIdentityPolicyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateEmailIdentityPolicyResponse = class;
  
  ICreateEmailIdentityPolicyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateEmailIdentityPolicyResponse;
  end;
  
  TCreateEmailIdentityPolicyResponse = class(TAmazonWebServiceResponse, ICreateEmailIdentityPolicyResponse)
  strict protected
    function Obj: TCreateEmailIdentityPolicyResponse;
  end;
  
implementation

{ TCreateEmailIdentityPolicyResponse }

function TCreateEmailIdentityPolicyResponse.Obj: TCreateEmailIdentityPolicyResponse;
begin
  Result := Self;
end;

end.
