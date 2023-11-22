unit AWS.S3Control.Model.DeleteAccessPointPolicyResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteAccessPointPolicyResponse = class;
  
  IDeleteAccessPointPolicyResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteAccessPointPolicyResponse;
  end;
  
  TDeleteAccessPointPolicyResponse = class(TAmazonWebServiceResponse, IDeleteAccessPointPolicyResponse)
  strict protected
    function Obj: TDeleteAccessPointPolicyResponse;
  end;
  
implementation

{ TDeleteAccessPointPolicyResponse }

function TDeleteAccessPointPolicyResponse.Obj: TDeleteAccessPointPolicyResponse;
begin
  Result := Self;
end;

end.
