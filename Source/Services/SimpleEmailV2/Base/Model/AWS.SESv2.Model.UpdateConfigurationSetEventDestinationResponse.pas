unit AWS.SESv2.Model.UpdateConfigurationSetEventDestinationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateConfigurationSetEventDestinationResponse = class;
  
  IUpdateConfigurationSetEventDestinationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TUpdateConfigurationSetEventDestinationResponse;
  end;
  
  TUpdateConfigurationSetEventDestinationResponse = class(TAmazonWebServiceResponse, IUpdateConfigurationSetEventDestinationResponse)
  strict protected
    function Obj: TUpdateConfigurationSetEventDestinationResponse;
  end;
  
implementation

{ TUpdateConfigurationSetEventDestinationResponse }

function TUpdateConfigurationSetEventDestinationResponse.Obj: TUpdateConfigurationSetEventDestinationResponse;
begin
  Result := Self;
end;

end.
