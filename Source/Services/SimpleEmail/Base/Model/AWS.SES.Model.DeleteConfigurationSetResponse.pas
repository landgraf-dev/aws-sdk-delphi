unit AWS.SES.Model.DeleteConfigurationSetResponse;

interface

uses
  AWS.Runtime.Model;

type
  TDeleteConfigurationSetResponse = class;
  
  IDeleteConfigurationSetResponse = interface(IAmazonWebServiceResponse)
    function Obj: TDeleteConfigurationSetResponse;
  end;
  
  TDeleteConfigurationSetResponse = class(TAmazonWebServiceResponse, IDeleteConfigurationSetResponse)
  strict protected
    function Obj: TDeleteConfigurationSetResponse;
  end;
  
implementation

{ TDeleteConfigurationSetResponse }

function TDeleteConfigurationSetResponse.Obj: TDeleteConfigurationSetResponse;
begin
  Result := Self;
end;

end.
