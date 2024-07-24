unit AWS.SSM.Model.GetAutomationExecutionResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.SSM.Model.AutomationExecution;

type
  TGetAutomationExecutionResponse = class;
  
  IGetAutomationExecutionResponse = interface(IAmazonWebServiceResponse)
    function GetAutomationExecution: TAutomationExecution;
    procedure SetAutomationExecution(const Value: TAutomationExecution);
    function GetKeepAutomationExecution: Boolean;
    procedure SetKeepAutomationExecution(const Value: Boolean);
    function Obj: TGetAutomationExecutionResponse;
    function IsSetAutomationExecution: Boolean;
    property AutomationExecution: TAutomationExecution read GetAutomationExecution write SetAutomationExecution;
    property KeepAutomationExecution: Boolean read GetKeepAutomationExecution write SetKeepAutomationExecution;
  end;
  
  TGetAutomationExecutionResponse = class(TAmazonWebServiceResponse, IGetAutomationExecutionResponse)
  strict private
    FAutomationExecution: TAutomationExecution;
    FKeepAutomationExecution: Boolean;
    function GetAutomationExecution: TAutomationExecution;
    procedure SetAutomationExecution(const Value: TAutomationExecution);
    function GetKeepAutomationExecution: Boolean;
    procedure SetKeepAutomationExecution(const Value: Boolean);
  strict protected
    function Obj: TGetAutomationExecutionResponse;
  public
    destructor Destroy; override;
    function IsSetAutomationExecution: Boolean;
    property AutomationExecution: TAutomationExecution read GetAutomationExecution write SetAutomationExecution;
    property KeepAutomationExecution: Boolean read GetKeepAutomationExecution write SetKeepAutomationExecution;
  end;
  
implementation

{ TGetAutomationExecutionResponse }

destructor TGetAutomationExecutionResponse.Destroy;
begin
  AutomationExecution := nil;
  inherited;
end;

function TGetAutomationExecutionResponse.Obj: TGetAutomationExecutionResponse;
begin
  Result := Self;
end;

function TGetAutomationExecutionResponse.GetAutomationExecution: TAutomationExecution;
begin
  Result := FAutomationExecution;
end;

procedure TGetAutomationExecutionResponse.SetAutomationExecution(const Value: TAutomationExecution);
begin
  if FAutomationExecution <> Value then
  begin
    if not KeepAutomationExecution then
      FAutomationExecution.Free;
    FAutomationExecution := Value;
  end;
end;

function TGetAutomationExecutionResponse.GetKeepAutomationExecution: Boolean;
begin
  Result := FKeepAutomationExecution;
end;

procedure TGetAutomationExecutionResponse.SetKeepAutomationExecution(const Value: Boolean);
begin
  FKeepAutomationExecution := Value;
end;

function TGetAutomationExecutionResponse.IsSetAutomationExecution: Boolean;
begin
  Result := FAutomationExecution <> nil;
end;

end.
