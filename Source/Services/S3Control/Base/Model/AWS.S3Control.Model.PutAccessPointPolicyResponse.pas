unit AWS.S3Control.Model.PutAccessPointPolicyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutAccessPointPolicyResponse = class;
  
  IPutAccessPointPolicyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutAccessPointPolicyResponse;
  end;
  
  TPutAccessPointPolicyResponse = class(TAmazonWebServiceResponse, IPutAccessPointPolicyResponse)
  strict protected
    function Obj: TPutAccessPointPolicyResponse;
  end;
  
implementation

{ TPutAccessPointPolicyResponse }

function TPutAccessPointPolicyResponse.Obj: TPutAccessPointPolicyResponse;
begin
  Result := Self;
end;

end.
