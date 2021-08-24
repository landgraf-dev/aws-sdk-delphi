unit AWS.SESv2.Model.PutConfigurationSetTrackingOptionsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutConfigurationSetTrackingOptionsResponse = class;
  
  IPutConfigurationSetTrackingOptionsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutConfigurationSetTrackingOptionsResponse;
  end;
  
  TPutConfigurationSetTrackingOptionsResponse = class(TAmazonWebServiceResponse, IPutConfigurationSetTrackingOptionsResponse)
  strict protected
    function Obj: TPutConfigurationSetTrackingOptionsResponse;
  end;
  
implementation

{ TPutConfigurationSetTrackingOptionsResponse }

function TPutConfigurationSetTrackingOptionsResponse.Obj: TPutConfigurationSetTrackingOptionsResponse;
begin
  Result := Self;
end;

end.
