unit AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutAccessPointConfigurationForObjectLambdaResponse = class;
  
  IPutAccessPointConfigurationForObjectLambdaResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutAccessPointConfigurationForObjectLambdaResponse;
  end;
  
  TPutAccessPointConfigurationForObjectLambdaResponse = class(TAmazonWebServiceResponse, IPutAccessPointConfigurationForObjectLambdaResponse)
  strict protected
    function Obj: TPutAccessPointConfigurationForObjectLambdaResponse;
  end;
  
implementation

{ TPutAccessPointConfigurationForObjectLambdaResponse }

function TPutAccessPointConfigurationForObjectLambdaResponse.Obj: TPutAccessPointConfigurationForObjectLambdaResponse;
begin
  Result := Self;
end;

end.
