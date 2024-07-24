unit AWS.SSM.Model.SendAutomationSignalResponse;

interface

uses
  AWS.Runtime.Model;

type
  TSendAutomationSignalResponse = class;
  
  ISendAutomationSignalResponse = interface(IAmazonWebServiceResponse)
    function Obj: TSendAutomationSignalResponse;
  end;
  
  TSendAutomationSignalResponse = class(TAmazonWebServiceResponse, ISendAutomationSignalResponse)
  strict protected
    function Obj: TSendAutomationSignalResponse;
  end;
  
implementation

{ TSendAutomationSignalResponse }

function TSendAutomationSignalResponse.Obj: TSendAutomationSignalResponse;
begin
  Result := Self;
end;

end.
