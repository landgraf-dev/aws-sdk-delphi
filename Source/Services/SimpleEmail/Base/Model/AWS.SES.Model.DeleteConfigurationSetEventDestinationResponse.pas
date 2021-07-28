unit AWS.SES.Model.DeleteConfigurationSetEventDestinationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteConfigurationSetEventDestinationResponse = class;
  
  IDeleteConfigurationSetEventDestinationResponse = interface
    function Obj: TDeleteConfigurationSetEventDestinationResponse;
  end;
  
  TDeleteConfigurationSetEventDestinationResponse = class(TAmazonWebServiceResponse, IDeleteConfigurationSetEventDestinationResponse)
  strict protected
    function Obj: TDeleteConfigurationSetEventDestinationResponse;
  end;
  
implementation

{ TDeleteConfigurationSetEventDestinationResponse }

function TDeleteConfigurationSetEventDestinationResponse.Obj: TDeleteConfigurationSetEventDestinationResponse;
begin
  Result := Self;
end;

end.
