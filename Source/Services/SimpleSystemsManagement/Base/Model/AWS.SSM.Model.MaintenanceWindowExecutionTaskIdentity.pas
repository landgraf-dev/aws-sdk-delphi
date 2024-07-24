unit AWS.SSM.Model.MaintenanceWindowExecutionTaskIdentity;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TMaintenanceWindowExecutionTaskIdentity = class;
  
  IMaintenanceWindowExecutionTaskIdentity = interface
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetStatus: TMaintenanceWindowExecutionStatus;
    procedure SetStatus(const Value: TMaintenanceWindowExecutionStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTaskArn: string;
    procedure SetTaskArn(const Value: string);
    function GetTaskExecutionId: string;
    procedure SetTaskExecutionId(const Value: string);
    function GetTaskType: TMaintenanceWindowTaskType;
    procedure SetTaskType(const Value: TMaintenanceWindowTaskType);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TMaintenanceWindowExecutionTaskIdentity;
    function IsSetEndTime: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTaskArn: Boolean;
    function IsSetTaskExecutionId: Boolean;
    function IsSetTaskType: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TaskArn: string read GetTaskArn write SetTaskArn;
    property TaskExecutionId: string read GetTaskExecutionId write SetTaskExecutionId;
    property TaskType: TMaintenanceWindowTaskType read GetTaskType write SetTaskType;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TMaintenanceWindowExecutionTaskIdentity = class
  strict private
    FEndTime: Nullable<TDateTime>;
    FStartTime: Nullable<TDateTime>;
    FStatus: Nullable<TMaintenanceWindowExecutionStatus>;
    FStatusDetails: Nullable<string>;
    FTaskArn: Nullable<string>;
    FTaskExecutionId: Nullable<string>;
    FTaskType: Nullable<TMaintenanceWindowTaskType>;
    FWindowExecutionId: Nullable<string>;
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetStatus: TMaintenanceWindowExecutionStatus;
    procedure SetStatus(const Value: TMaintenanceWindowExecutionStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTaskArn: string;
    procedure SetTaskArn(const Value: string);
    function GetTaskExecutionId: string;
    procedure SetTaskExecutionId(const Value: string);
    function GetTaskType: TMaintenanceWindowTaskType;
    procedure SetTaskType(const Value: TMaintenanceWindowTaskType);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TMaintenanceWindowExecutionTaskIdentity;
  public
    function IsSetEndTime: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTaskArn: Boolean;
    function IsSetTaskExecutionId: Boolean;
    function IsSetTaskType: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TaskArn: string read GetTaskArn write SetTaskArn;
    property TaskExecutionId: string read GetTaskExecutionId write SetTaskExecutionId;
    property TaskType: TMaintenanceWindowTaskType read GetTaskType write SetTaskType;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TMaintenanceWindowExecutionTaskIdentity }

function TMaintenanceWindowExecutionTaskIdentity.Obj: TMaintenanceWindowExecutionTaskIdentity;
begin
  Result := Self;
end;

function TMaintenanceWindowExecutionTaskIdentity.GetEndTime: TDateTime;
begin
  Result := FEndTime.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskIdentity.SetEndTime(const Value: TDateTime);
begin
  FEndTime := Value;
end;

function TMaintenanceWindowExecutionTaskIdentity.IsSetEndTime: Boolean;
begin
  Result := FEndTime.HasValue;
end;

function TMaintenanceWindowExecutionTaskIdentity.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskIdentity.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TMaintenanceWindowExecutionTaskIdentity.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TMaintenanceWindowExecutionTaskIdentity.GetStatus: TMaintenanceWindowExecutionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskIdentity.SetStatus(const Value: TMaintenanceWindowExecutionStatus);
begin
  FStatus := Value;
end;

function TMaintenanceWindowExecutionTaskIdentity.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TMaintenanceWindowExecutionTaskIdentity.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskIdentity.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TMaintenanceWindowExecutionTaskIdentity.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

function TMaintenanceWindowExecutionTaskIdentity.GetTaskArn: string;
begin
  Result := FTaskArn.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskIdentity.SetTaskArn(const Value: string);
begin
  FTaskArn := Value;
end;

function TMaintenanceWindowExecutionTaskIdentity.IsSetTaskArn: Boolean;
begin
  Result := FTaskArn.HasValue;
end;

function TMaintenanceWindowExecutionTaskIdentity.GetTaskExecutionId: string;
begin
  Result := FTaskExecutionId.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskIdentity.SetTaskExecutionId(const Value: string);
begin
  FTaskExecutionId := Value;
end;

function TMaintenanceWindowExecutionTaskIdentity.IsSetTaskExecutionId: Boolean;
begin
  Result := FTaskExecutionId.HasValue;
end;

function TMaintenanceWindowExecutionTaskIdentity.GetTaskType: TMaintenanceWindowTaskType;
begin
  Result := FTaskType.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskIdentity.SetTaskType(const Value: TMaintenanceWindowTaskType);
begin
  FTaskType := Value;
end;

function TMaintenanceWindowExecutionTaskIdentity.IsSetTaskType: Boolean;
begin
  Result := FTaskType.HasValue;
end;

function TMaintenanceWindowExecutionTaskIdentity.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TMaintenanceWindowExecutionTaskIdentity.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TMaintenanceWindowExecutionTaskIdentity.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
