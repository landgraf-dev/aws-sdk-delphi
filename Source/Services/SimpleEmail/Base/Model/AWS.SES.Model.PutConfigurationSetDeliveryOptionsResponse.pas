unit AWS.SES.Model.PutConfigurationSetDeliveryOptionsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutConfigurationSetDeliveryOptionsResponse = class;
  
  IPutConfigurationSetDeliveryOptionsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutConfigurationSetDeliveryOptionsResponse;
  end;
  
  TPutConfigurationSetDeliveryOptionsResponse = class(TAmazonWebServiceResponse, IPutConfigurationSetDeliveryOptionsResponse)
  strict protected
    function Obj: TPutConfigurationSetDeliveryOptionsResponse;
  end;
  
implementation

{ TPutConfigurationSetDeliveryOptionsResponse }

function TPutConfigurationSetDeliveryOptionsResponse.Obj: TPutConfigurationSetDeliveryOptionsResponse;
begin
  Result := Self;
end;

end.
