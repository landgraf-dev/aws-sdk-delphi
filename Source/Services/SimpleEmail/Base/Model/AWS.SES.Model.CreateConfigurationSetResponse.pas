unit AWS.SES.Model.CreateConfigurationSetResponse;

interface

uses
  AWS.Runtime.Model;

type
  TCreateConfigurationSetResponse = class;
  
  ICreateConfigurationSetResponse = interface(IAmazonWebServiceResponse)
    function Obj: TCreateConfigurationSetResponse;
  end;
  
  TCreateConfigurationSetResponse = class(TAmazonWebServiceResponse, ICreateConfigurationSetResponse)
  strict protected
    function Obj: TCreateConfigurationSetResponse;
  end;
  
implementation

{ TCreateConfigurationSetResponse }

function TCreateConfigurationSetResponse.Obj: TCreateConfigurationSetResponse;
begin
  Result := Self;
end;

end.
