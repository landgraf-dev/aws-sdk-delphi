unit AWS.SSM.Model.StopAutomationExecutionRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TStopAutomationExecutionRequest = class;
  
  IStopAutomationExecutionRequest = interface
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function GetType: TStopType;
    procedure SetType(const Value: TStopType);
    function Obj: TStopAutomationExecutionRequest;
    function IsSetAutomationExecutionId: Boolean;
    function IsSetType: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property &Type: TStopType read GetType write SetType;
  end;
  
  TStopAutomationExecutionRequest = class(TAmazonSimpleSystemsManagementRequest, IStopAutomationExecutionRequest)
  strict private
    FAutomationExecutionId: Nullable<string>;
    FType: Nullable<TStopType>;
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function GetType: TStopType;
    procedure SetType(const Value: TStopType);
  strict protected
    function Obj: TStopAutomationExecutionRequest;
  public
    function IsSetAutomationExecutionId: Boolean;
    function IsSetType: Boolean;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property &Type: TStopType read GetType write SetType;
  end;
  
implementation

{ TStopAutomationExecutionRequest }

function TStopAutomationExecutionRequest.Obj: TStopAutomationExecutionRequest;
begin
  Result := Self;
end;

function TStopAutomationExecutionRequest.GetAutomationExecutionId: string;
begin
  Result := FAutomationExecutionId.ValueOrDefault;
end;

procedure TStopAutomationExecutionRequest.SetAutomationExecutionId(const Value: string);
begin
  FAutomationExecutionId := Value;
end;

function TStopAutomationExecutionRequest.IsSetAutomationExecutionId: Boolean;
begin
  Result := FAutomationExecutionId.HasValue;
end;

function TStopAutomationExecutionRequest.GetType: TStopType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TStopAutomationExecutionRequest.SetType(const Value: TStopType);
begin
  FType := Value;
end;

function TStopAutomationExecutionRequest.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

end.
