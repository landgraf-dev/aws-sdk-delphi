unit AWS.SESv2.Model.PutDeliverabilityDashboardOptionResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutDeliverabilityDashboardOptionResponse = class;
  
  IPutDeliverabilityDashboardOptionResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutDeliverabilityDashboardOptionResponse;
  end;
  
  TPutDeliverabilityDashboardOptionResponse = class(TAmazonWebServiceResponse, IPutDeliverabilityDashboardOptionResponse)
  strict protected
    function Obj: TPutDeliverabilityDashboardOptionResponse;
  end;
  
implementation

{ TPutDeliverabilityDashboardOptionResponse }

function TPutDeliverabilityDashboardOptionResponse.Obj: TPutDeliverabilityDashboardOptionResponse;
begin
  Result := Self;
end;

end.
