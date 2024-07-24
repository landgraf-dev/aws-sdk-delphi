unit AWS.SSM.Model.GetMaintenanceWindowExecutionTaskInvocationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetMaintenanceWindowExecutionTaskInvocationResponse = class;
  
  IGetMaintenanceWindowExecutionTaskInvocationResponse = interface(IAmazonWebServiceResponse)
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
    function Obj: TGetMaintenanceWindowExecutionTaskInvocationResponse;
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
  
  TGetMaintenanceWindowExecutionTaskInvocationResponse = class(TAmazonWebServiceResponse, IGetMaintenanceWindowExecutionTaskInvocationResponse)
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
    function Obj: TGetMaintenanceWindowExecutionTaskInvocationResponse;
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

{ TGetMaintenanceWindowExecutionTaskInvocationResponse }

function TGetMaintenanceWindowExecutionTaskInvocationResponse.Obj: TGetMaintenanceWindowExecutionTaskInvocationResponse;
begin
  Result := Self;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetEndTime: TDateTime;
begin
  Result := FEndTime.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetEndTime(const Value: TDateTime);
begin
  FEndTime := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetEndTime: Boolean;
begin
  Result := FEndTime.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetExecutionId: string;
begin
  Result := FExecutionId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetExecutionId(const Value: string);
begin
  FExecutionId := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetExecutionId: Boolean;
begin
  Result := FExecutionId.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetInvocationId: string;
begin
  Result := FInvocationId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetInvocationId(const Value: string);
begin
  FInvocationId := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetInvocationId: Boolean;
begin
  Result := FInvocationId.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetOwnerInformation: string;
begin
  Result := FOwnerInformation.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetOwnerInformation(const Value: string);
begin
  FOwnerInformation := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetOwnerInformation: Boolean;
begin
  Result := FOwnerInformation.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetParameters: string;
begin
  Result := FParameters.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetParameters(const Value: string);
begin
  FParameters := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetParameters: Boolean;
begin
  Result := FParameters.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetStatus: TMaintenanceWindowExecutionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetStatus(const Value: TMaintenanceWindowExecutionStatus);
begin
  FStatus := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetTaskExecutionId: string;
begin
  Result := FTaskExecutionId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetTaskExecutionId(const Value: string);
begin
  FTaskExecutionId := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetTaskExecutionId: Boolean;
begin
  Result := FTaskExecutionId.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetTaskType: TMaintenanceWindowTaskType;
begin
  Result := FTaskType.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetTaskType(const Value: TMaintenanceWindowTaskType);
begin
  FTaskType := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetTaskType: Boolean;
begin
  Result := FTaskType.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.GetWindowTargetId: string;
begin
  Result := FWindowTargetId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskInvocationResponse.SetWindowTargetId(const Value: string);
begin
  FWindowTargetId := Value;
end;

function TGetMaintenanceWindowExecutionTaskInvocationResponse.IsSetWindowTargetId: Boolean;
begin
  Result := FWindowTargetId.HasValue;
end;

end.
