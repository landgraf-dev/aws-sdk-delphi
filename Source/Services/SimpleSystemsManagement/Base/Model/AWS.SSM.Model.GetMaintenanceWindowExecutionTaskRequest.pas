unit AWS.SSM.Model.GetMaintenanceWindowExecutionTaskRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetMaintenanceWindowExecutionTaskRequest = class;
  
  IGetMaintenanceWindowExecutionTaskRequest = interface
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TGetMaintenanceWindowExecutionTaskRequest;
    function IsSetTaskId: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property TaskId: string read GetTaskId write SetTaskId;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TGetMaintenanceWindowExecutionTaskRequest = class(TAmazonSimpleSystemsManagementRequest, IGetMaintenanceWindowExecutionTaskRequest)
  strict private
    FTaskId: Nullable<string>;
    FWindowExecutionId: Nullable<string>;
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TGetMaintenanceWindowExecutionTaskRequest;
  public
    function IsSetTaskId: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property TaskId: string read GetTaskId write SetTaskId;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TGetMaintenanceWindowExecutionTaskRequest }

function TGetMaintenanceWindowExecutionTaskRequest.Obj: TGetMaintenanceWindowExecutionTaskRequest;
begin
  Result := Self;
end;

function TGetMaintenanceWindowExecutionTaskRequest.GetTaskId: string;
begin
  Result := FTaskId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskRequest.SetTaskId(const Value: string);
begin
  FTaskId := Value;
end;

function TGetMaintenanceWindowExecutionTaskRequest.IsSetTaskId: Boolean;
begin
  Result := FTaskId.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskRequest.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskRequest.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TGetMaintenanceWindowExecutionTaskRequest.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
