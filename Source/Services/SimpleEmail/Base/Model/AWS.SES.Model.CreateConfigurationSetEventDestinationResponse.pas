unit AWS.SES.Model.CreateConfigurationSetEventDestinationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateConfigurationSetEventDestinationResponse = class;
  
  ICreateConfigurationSetEventDestinationResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateConfigurationSetEventDestinationResponse;
  end;
  
  TCreateConfigurationSetEventDestinationResponse = class(TAmazonWebServiceResponse, ICreateConfigurationSetEventDestinationResponse)
  strict protected
    function Obj: TCreateConfigurationSetEventDestinationResponse;
  end;
  
implementation

{ TCreateConfigurationSetEventDestinationResponse }

function TCreateConfigurationSetEventDestinationResponse.Obj: TCreateConfigurationSetEventDestinationResponse;
begin
  Result := Self;
end;

end.
