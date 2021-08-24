unit AWS.SESv2.Model.PutAccountSuppressionAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutAccountSuppressionAttributesResponse = class;
  
  IPutAccountSuppressionAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutAccountSuppressionAttributesResponse;
  end;
  
  TPutAccountSuppressionAttributesResponse = class(TAmazonWebServiceResponse, IPutAccountSuppressionAttributesResponse)
  strict protected
    function Obj: TPutAccountSuppressionAttributesResponse;
  end;
  
implementation

{ TPutAccountSuppressionAttributesResponse }

function TPutAccountSuppressionAttributesResponse.Obj: TPutAccountSuppressionAttributesResponse;
begin
  Result := Self;
end;

end.
