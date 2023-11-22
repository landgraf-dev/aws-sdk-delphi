unit AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutAccessPointPolicyForObjectLambdaResponse = class;
  
  IPutAccessPointPolicyForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutAccessPointPolicyForObjectLambdaResponse;
  end;
  
  TPutAccessPointPolicyForObjectLambdaResponse = class(TAmazonWebServiceResponse, IPutAccessPointPolicyForObjectLambdaResponse)
  strict protected
    function Obj: TPutAccessPointPolicyForObjectLambdaResponse;
  end;
  
implementation

{ TPutAccessPointPolicyForObjectLambdaResponse }

function TPutAccessPointPolicyForObjectLambdaResponse.Obj: TPutAccessPointPolicyForObjectLambdaResponse;
begin
  Result := Self;
end;

end.
