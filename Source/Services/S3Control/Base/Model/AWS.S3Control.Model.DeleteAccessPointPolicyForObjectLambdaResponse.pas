unit AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteAccessPointPolicyForObjectLambdaResponse = class;
  
  IDeleteAccessPointPolicyForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteAccessPointPolicyForObjectLambdaResponse;
  end;
  
  TDeleteAccessPointPolicyForObjectLambdaResponse = class(TAmazonWebServiceResponse, IDeleteAccessPointPolicyForObjectLambdaResponse)
  strict protected
    function Obj: TDeleteAccessPointPolicyForObjectLambdaResponse;
  end;
  
implementation

{ TDeleteAccessPointPolicyForObjectLambdaResponse }

function TDeleteAccessPointPolicyForObjectLambdaResponse.Obj: TDeleteAccessPointPolicyForObjectLambdaResponse;
begin
  Result := Self;
end;

end.
