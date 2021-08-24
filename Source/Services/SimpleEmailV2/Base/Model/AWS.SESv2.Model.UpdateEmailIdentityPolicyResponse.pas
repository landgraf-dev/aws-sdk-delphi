unit AWS.SESv2.Model.UpdateEmailIdentityPolicyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateEmailIdentityPolicyResponse = class;
  
  IUpdateEmailIdentityPolicyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateEmailIdentityPolicyResponse;
  end;
  
  TUpdateEmailIdentityPolicyResponse = class(TAmazonWebServiceResponse, IUpdateEmailIdentityPolicyResponse)
  strict protected
    function Obj: TUpdateEmailIdentityPolicyResponse;
  end;
  
implementation

{ TUpdateEmailIdentityPolicyResponse }

function TUpdateEmailIdentityPolicyResponse.Obj: TUpdateEmailIdentityPolicyResponse;
begin
  Result := Self;
end;

end.
