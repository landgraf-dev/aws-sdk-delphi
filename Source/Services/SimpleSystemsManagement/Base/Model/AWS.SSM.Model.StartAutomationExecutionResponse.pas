unit AWS.SSM.Model.StartAutomationExecutionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TStartAutomationExecutionResponse = class;
  
  IStartAutomationExecutionResponse = interface(IAmazonWebServiceResponse)
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function Obj: TStartAutomationExecutionResponse;
    function IsSetAutomationExecutionId: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
  end;
  
  TStartAutomationExecutionResponse = class(TAmazonWebServiceResponse, IStartAutomationExecutionResponse)
  strict private
    FAutomationExecutionId: Nullable<string>;
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
  strict protected
    function Obj: TStartAutomationExecutionResponse;
  public
    function IsSetAutomationExecutionId: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
  end;
  
implementation

{ TStartAutomationExecutionResponse }

function TStartAutomationExecutionResponse.Obj: TStartAutomationExecutionResponse;
begin
  Result := Self;
end;

function TStartAutomationExecutionResponse.GetAutomationExecutionId: string;
begin
  Result := FAutomationExecutionId.ValueOrDefault;
end;

procedure TStartAutomationExecutionResponse.SetAutomationExecutionId(const Value: string);
begin
  FAutomationExecutionId := Value;
end;

function TStartAutomationExecutionResponse.IsSetAutomationExecutionId: Boolean;
begin
  Result := FAutomationExecutionId.HasValue;
end;

end.
