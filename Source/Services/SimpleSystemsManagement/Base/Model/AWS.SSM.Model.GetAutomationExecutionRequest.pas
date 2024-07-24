unit AWS.SSM.Model.GetAutomationExecutionRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetAutomationExecutionRequest = class;
  
  IGetAutomationExecutionRequest = interface
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function Obj: TGetAutomationExecutionRequest;
    function IsSetAutomationExecutionId: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
  end;
  
  TGetAutomationExecutionRequest = class(TAmazonSimpleSystemsManagementRequest, IGetAutomationExecutionRequest)
  strict private
    FAutomationExecutionId: Nullable<string>;
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
  strict protected
    function Obj: TGetAutomationExecutionRequest;
  public
    function IsSetAutomationExecutionId: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
  end;
  
implementation

{ TGetAutomationExecutionRequest }

function TGetAutomationExecutionRequest.Obj: TGetAutomationExecutionRequest;
begin
  Result := Self;
end;

function TGetAutomationExecutionRequest.GetAutomationExecutionId: string;
begin
  Result := FAutomationExecutionId.ValueOrDefault;
end;

procedure TGetAutomationExecutionRequest.SetAutomationExecutionId(const Value: string);
begin
  FAutomationExecutionId := Value;
end;

function TGetAutomationExecutionRequest.IsSetAutomationExecutionId: Boolean;
begin
  Result := FAutomationExecutionId.HasValue;
end;

end.
