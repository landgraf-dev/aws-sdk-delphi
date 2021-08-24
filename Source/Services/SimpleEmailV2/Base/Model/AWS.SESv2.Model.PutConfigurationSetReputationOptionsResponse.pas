unit AWS.SESv2.Model.PutConfigurationSetReputationOptionsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutConfigurationSetReputationOptionsResponse = class;
  
  IPutConfigurationSetReputationOptionsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutConfigurationSetReputationOptionsResponse;
  end;
  
  TPutConfigurationSetReputationOptionsResponse = class(TAmazonWebServiceResponse, IPutConfigurationSetReputationOptionsResponse)
  strict protected
    function Obj: TPutConfigurationSetReputationOptionsResponse;
  end;
  
implementation

{ TPutConfigurationSetReputationOptionsResponse }

function TPutConfigurationSetReputationOptionsResponse.Obj: TPutConfigurationSetReputationOptionsResponse;
begin
  Result := Self;
end;

end.
