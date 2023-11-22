unit AWS.S3Control.Model.DeletePublicAccessBlockResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeletePublicAccessBlockResponse = class;
  
  IDeletePublicAccessBlockResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeletePublicAccessBlockResponse;
  end;
  
  TDeletePublicAccessBlockResponse = class(TAmazonWebServiceResponse, IDeletePublicAccessBlockResponse)
  strict protected
    function Obj: TDeletePublicAccessBlockResponse;
  end;
  
implementation

{ TDeletePublicAccessBlockResponse }

function TDeletePublicAccessBlockResponse.Obj: TDeletePublicAccessBlockResponse;
begin
  Result := Self;
end;

end.
