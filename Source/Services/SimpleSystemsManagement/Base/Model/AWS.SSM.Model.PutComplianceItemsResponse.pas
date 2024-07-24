unit AWS.SSM.Model.PutComplianceItemsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutComplianceItemsResponse = class;
  
  IPutComplianceItemsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutComplianceItemsResponse;
  end;
  
  TPutComplianceItemsResponse = class(TAmazonWebServiceResponse, IPutComplianceItemsResponse)
  strict protected
    function Obj: TPutComplianceItemsResponse;
  end;
  
implementation

{ TPutComplianceItemsResponse }

function TPutComplianceItemsResponse.Obj: TPutComplianceItemsResponse;
begin
  Result := Self;
end;

end.
