unit AWS.S3.Model.PutACLResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutACLResponse = class;
  
  IPutACLResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutACLResponse;
  end;
  
  TPutACLResponse = class(TAmazonWebServiceResponse, IPutACLResponse)
  strict protected
    function Obj: TPutACLResponse;
  end;
  
implementation

{ TPutACLResponse }

function TPutACLResponse.Obj: TPutACLResponse;
begin
  Result := Self;
end;

end.
