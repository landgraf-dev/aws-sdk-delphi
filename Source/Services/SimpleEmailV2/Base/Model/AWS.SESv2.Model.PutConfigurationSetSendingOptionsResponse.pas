unit AWS.SESv2.Model.PutConfigurationSetSendingOptionsResponse;

interface

uses
  AWS.Runtime.Model;

type
  TPutConfigurationSetSendingOptionsResponse = class;
  
  IPutConfigurationSetSendingOptionsResponse = interface(IAmazonWebServiceResponse)
    function Obj: TPutConfigurationSetSendingOptionsResponse;
  end;
  
  TPutConfigurationSetSendingOptionsResponse = class(TAmazonWebServiceResponse, IPutConfigurationSetSendingOptionsResponse)
  strict protected
    function Obj: TPutConfigurationSetSendingOptionsResponse;
  end;
  
implementation

{ TPutConfigurationSetSendingOptionsResponse }

function TPutConfigurationSetSendingOptionsResponse.Obj: TPutConfigurationSetSendingOptionsResponse;
begin
  Result := Self;
end;

end.
