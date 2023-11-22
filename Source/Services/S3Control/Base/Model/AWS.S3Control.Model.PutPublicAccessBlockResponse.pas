unit AWS.S3Control.Model.PutPublicAccessBlockResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutPublicAccessBlockResponse = class;
  
  IPutPublicAccessBlockResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutPublicAccessBlockResponse;
  end;
  
  TPutPublicAccessBlockResponse = class(TAmazonWebServiceResponse, IPutPublicAccessBlockResponse)
  strict protected
    function Obj: TPutPublicAccessBlockResponse;
  end;
  
implementation

{ TPutPublicAccessBlockResponse }

function TPutPublicAccessBlockResponse.Obj: TPutPublicAccessBlockResponse;
begin
  Result := Self;
end;

end.
