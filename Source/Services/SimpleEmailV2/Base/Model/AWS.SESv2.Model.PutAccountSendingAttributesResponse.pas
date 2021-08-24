unit AWS.SESv2.Model.PutAccountSendingAttributesResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutAccountSendingAttributesResponse = class;
  
  IPutAccountSendingAttributesResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutAccountSendingAttributesResponse;
  end;
  
  TPutAccountSendingAttributesResponse = class(TAmazonWebServiceResponse, IPutAccountSendingAttributesResponse)
  strict protected
    function Obj: TPutAccountSendingAttributesResponse;
  end;
  
implementation

{ TPutAccountSendingAttributesResponse }

function TPutAccountSendingAttributesResponse.Obj: TPutAccountSendingAttributesResponse;
begin
  Result := Self;
end;

end.
