unit AWS.SSM.Model.StopAutomationExecutionResponse;

interface

uses
  AWS.Runtime.Model;

type
  TStopAutomationExecutionResponse = class;
  
  IStopAutomationExecutionResponse = interface(IAmazonWebServiceResponse)
    function Obj: TStopAutomationExecutionResponse;
  end;
  
  TStopAutomationExecutionResponse = class(TAmazonWebServiceResponse, IStopAutomationExecutionResponse)
  strict protected
    function Obj: TStopAutomationExecutionResponse;
  end;
  
implementation

{ TStopAutomationExecutionResponse }

function TStopAutomationExecutionResponse.Obj: TStopAutomationExecutionResponse;
begin
  Result := Self;
end;

end.
