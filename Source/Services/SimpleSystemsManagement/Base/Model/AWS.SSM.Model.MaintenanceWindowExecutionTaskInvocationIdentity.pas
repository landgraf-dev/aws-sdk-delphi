unit AWS.SSM.Model.MaintenanceWindowExecutionTaskInvocationIdentity;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TMaintenanceWindowExecutionTaskInvocationIdentity = class;
  
  IMaintenanceWindowExecutionTaskInvocationIdentity = interface
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetInvocationId: string;
    procedure SetInvocationId(const Value: string);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetParameters: string;
    procedure SetParameters(const Value: string);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetStatus: TMaintenanceWindowExecutionStatus;
    procedure SetStatus(const Value: TMaintenanceWindowExecutionStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTaskExecutionId: string;
    procedure SetTaskExecutionId(const Value: string);
    function GetTaskType: TMaintenanceWindowTaskType;
    procedure SetTaskType(const Value: TMaintenanceWindowTaskType);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
    function Obj: TMaintenanceWindowExecutionTaskInvocationIdentity;
    function IsSetEndTime: Boolean;
    function IsSetExecutionId: Boolean;
    function IsSetInvocationId: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetParameters: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTaskExecutionId: Boolean;
    function IsSetTaskType: Boolean;
    function IsSetWindowExecutionId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property InvocationId: string read GetInvocationId write SetInvocationId;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property Parameters: string read GetParameters write SetParameters;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TaskExecutionId: string read GetTaskExecutionId write SetTaskExecutionId;
    property TaskType: TMaintenanceWindowTaskType read GetTaskType write SetTaskType;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
  TMaintenanceWindowExecutionTaskInvocationIdentity = class
  strict private
    FEndTime: Nullable<TDateTime>;
    FExecutionId: Nullable<string>;
    FInvocationId: Nullable<string>;
    FOwnerInformation: Nullable<string>;
    FParameters: Nullable<string>;
    FStartTime: Nullable<TDateTime>;
    FStatus: Nullable<TMaintenanceWindowExecutionStatus>;
    FStatusDetails: Nullable<string>;
    FTaskExecutionId: Nullable<string>;
    FTaskType: Nullable<TMaintenanceWindowTaskType>;
    FWindowExecutionId: Nullable<string>;
    FWindowTargetId: Nullable<string>;
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetExecutionId: string;
    procedure SetExecutionId(const Value: string);
    function GetInvocationId: string;
    procedure SetInvocationId(const Value: string);
    function GetOwnerInformation: string;
    procedure SetOwnerInformation(const Value: string);
    function GetParameters: string;
    procedure SetParameters(const Value: string);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetStatus: TMaintenanceWindowExecutionStatus;
    procedure SetStatus(const Value: TMaintenanceWindowExecutionStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTaskExecutionId: string;
    procedure SetTaskExecutionId(const Value: string);
    function GetTaskType: TMaintenanceWindowTaskType;
    procedure SetTaskType(const Value: TMaintenanceWindowTaskType);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function GetWindowTargetId: string;
    procedure SetWindowTargetId(const Value: string);
  strict protected
    function Obj: TMaintenanceWindowExecutionTaskInvocationIdentity;
  public
    function IsSetEndTime: Boolean;
    function IsSetExecutionId: Boolean;
    function IsSetInvocationId: Boolean;
    function IsSetOwnerInformation: Boolean;
    function IsSetParameters: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTaskExecutionId: Boolean;
    function IsSetTaskType: Boolean;
    function IsSetWindowExecutionId: Boolean;
    function IsSetWindowTargetId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property ExecutionId: string read GetExecutionId write SetExecutionId;
    property InvocationId: string read GetInvocationId write SetInvocationId;
    property OwnerInformation: string read GetOwnerInformation write SetOwnerInformation;
    property Parameters: string read GetParameters write SetParameters;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TaskExecutionId: string read GetTaskExecutionId write SetTaskExecutionId;
    property TaskType: TMaintenanceWindowTaskType read GetTaskType write SetTaskType;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
    property WindowTargetId: string read GetWindowTargetId write SetWindowTargetId;
  end;
  
implementation

{ TMaintenanceWindowExecutionTaskInvocationIdentity }

function TMaintenanceWindowExecutionTaskInvocationIdentity.Obj: TMaintenanceWindowExecutionTaskInvocationIdentity;
begin
  Result := Self;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetEndTime: TDateTime;
begin
  Result := FEndTime.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetEndTime(const Value: TDateTime);
begin
  FEndTime := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetEndTime: Boolean;
begin
  Result := FEndTime.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetExecutionId: string;
begin
  Result := FExecutionId.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetExecutionId(const Value: string);
begin
  FExecutionId := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetExecutionId: Boolean;
begin
  Result := FExecutionId.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetInvocationId: string;
begin
  Result := FInvocationId.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetInvocationId(const Value: string);
begin
  FInvocationId := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetInvocationId: Boolean;
begin
  Result := FInvocationId.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetOwnerInformation: string;
begin
  Result := FOwnerInformation.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetOwnerInformation(const Value: string);
begin
  FOwnerInformation := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetOwnerInformation: Boolean;
begin
  Result := FOwnerInformation.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetParameters: string;
begin
  Result := FParameters.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetParameters(const Value: string);
begin
  FParameters := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetParameters: Boolean;
begin
  Result := FParameters.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetStatus: TMaintenanceWindowExecutionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetStatus(const Value: TMaintenanceWindowExecutionStatus);
begin
  FStatus := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetTaskExecutionId: string;
begin
  Result := FTaskExecutionId.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetTaskExecutionId(const Value: string);
begin
  FTaskExecutionId := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetTaskExecutionId: Boolean;
begin
  Result := FTaskExecutionId.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetTaskType: TMaintenanceWindowTaskType;
begin
  Result := FTaskType.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetTaskType(const Value: TMaintenanceWindowTaskType);
begin
  FTaskType := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetTaskType: Boolean;
begin
  Result := FTaskType.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.GetWindowTargetId: string;
begin
  Result := FWindowTargetId.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskInvocationIdentity.SetWindowTargetId(const Value: string);
begin
  FWindowTargetId := Value;
end;

function TMaintenanceWindowExecutionTaskInvocationIdentity.IsSetWindowTargetId: Boolean;
begin
  Result := FWindowTargetId.HasValue;
end;

end.
