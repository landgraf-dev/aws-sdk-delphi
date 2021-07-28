unit AWS.SES.Model.PutIdentityPolicyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutIdentityPolicyResponse = class;
  
  IPutIdentityPolicyResponse = interface
    function Obj: TPutIdentityPolicyResponse;
  end;
  
  TPutIdentityPolicyResponse = class(TAmazonWebServiceResponse, IPutIdentityPolicyResponse)
  strict protected
    function Obj: TPutIdentityPolicyResponse;
  end;
  
implementation

{ TPutIdentityPolicyResponse }

function TPutIdentityPolicyResponse.Obj: TPutIdentityPolicyResponse;
begin
  Result := Self;
end;

end.
