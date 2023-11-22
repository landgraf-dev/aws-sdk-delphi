unit AWS.S3Control.Model.DeleteAccessPointForObjectLambdaResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteAccessPointForObjectLambdaResponse = class;
  
  IDeleteAccessPointForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteAccessPointForObjectLambdaResponse;
  end;
  
  TDeleteAccessPointForObjectLambdaResponse = class(TAmazonWebServiceResponse, IDeleteAccessPointForObjectLambdaResponse)
  strict protected
    function Obj: TDeleteAccessPointForObjectLambdaResponse;
  end;
  
implementation

{ TDeleteAccessPointForObjectLambdaResponse }

function TDeleteAccessPointForObjectLambdaResponse.Obj: TDeleteAccessPointForObjectLambdaResponse;
begin
  Result := Self;
end;

end.
