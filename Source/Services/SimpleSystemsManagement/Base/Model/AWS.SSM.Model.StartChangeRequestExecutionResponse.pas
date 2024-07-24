unit AWS.SSM.Model.StartChangeRequestExecutionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartChangeRequestExecutionResponse = class;
  
  IStartChangeRequestExecutionResponse = interface(IAmazonWebServiceResponse)
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function Obj: TStartChangeRequestExecutionResponse;
    function IsSetAutomationExecutionId: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
  end;
  
  TStartChangeRequestExecutionResponse = class(TAmazonWebServiceResponse, IStartChangeRequestExecutionResponse)
  strict private
    FAutomationExecutionId: Nullable<string>;
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
  strict protected
    function Obj: TStartChangeRequestExecutionResponse;
  public
    function IsSetAutomationExecutionId: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
  end;
  
implementation

{ TStartChangeRequestExecutionResponse }

function TStartChangeRequestExecutionResponse.Obj: TStartChangeRequestExecutionResponse;
begin
  Result := Self;
end;

function TStartChangeRequestExecutionResponse.GetAutomationExecutionId: string;
begin
  Result := FAutomationExecutionId.ValueOrDefault;
end;

procedure TStartChangeRequestExecutionResponse.SetAutomationExecutionId(const Value: string);
begin
  FAutomationExecutionId := Value;
end;

function TStartChangeRequestExecutionResponse.IsSetAutomationExecutionId: Boolean;
begin
  Result := FAutomationExecutionId.HasValue;
end;

end.
