unit AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetMaintenanceWindowExecutionTaskInvocationRequest = class;
  
  IGetMaintenanceWindowExecutionTaskInvocationRequest = interface
    function GetInvocationId: string;
    procedure SetInvocationId(const Value: string);
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TGetMaintenanceWindowExecutionTaskInvocationRequest;
    function IsSetInvocationId: Boolean;
    function IsSetTaskId: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property InvocationId: string read GetInvocationId write SetInvocationId;
    property TaskId: string read GetTaskId write SetTaskId;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TGetMaintenanceWindowExecutionTaskInvocationRequest = class(TAmazonSimpleSystemsManagementRequest, IGetMaintenanceWindowExecutionTaskInvocationRequest)
  strict private
    FInvocationId: Nullable<string>;
    FTaskId: Nullable<string>;
    FWindowExecutionId: Nullable<string>;
    function GetInvocationId: string;
    procedure SetInvocationId(const Value: string);
    function GetTaskId: string;
    procedure SetTaskId(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TGetMaintenanceWindowExecutionTaskInvocationRequest;
  public
    function IsSetInvocationId: Boolean;
    function IsSetTaskId: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property InvocationId: string read GetInvocationId write SetInvocationId;
    property TaskId: string read GetTaskId write SetTaskId;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TGetMaintenanceWindowExecutionTaskInvocationRequest }

function TGetMaintenanceWindowExecutionTaskInvocationRequest.Obj: TGetMaintenanceWindowExecutionTaskInvocationRequest;
begin
  Result := Self;
end;

function TGetMaintenanceWindowExecutionTaskInvocationRequest.GetInvocationId: string;
begin
  Result := FInvocationId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationRequest.SetInvocationId(const Value: string);
begin
  FInvocationId := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationRequest.IsSetInvocationId: Boolean;
begin
  Result := FInvocationId.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationRequest.GetTaskId: string;
begin
  Result := FTaskId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationRequest.SetTaskId(const Value: string);
begin
  FTaskId := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationRequest.IsSetTaskId: Boolean;
begin
  Result := FTaskId.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationRequest.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationRequest.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationRequest.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
