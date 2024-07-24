unit AWS.SSM.Model.MaintenanceWindowExecution;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TMaintenanceWindowExecution = class;
  
  IMaintenanceWindowExecution = interface
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetStatus: TMaintenanceWindowExecutionStatus;
    procedure SetStatus(const Value: TMaintenanceWindowExecutionStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TMaintenanceWindowExecution;
    function IsSetEndTime: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetWindowExecutionId: Boolean;
    function IsSetWindowId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TMaintenanceWindowExecution = class
  strict private
    FEndTime: Nullable<TDateTime>;
    FStartTime: Nullable<TDateTime>;
    FStatus: Nullable<TMaintenanceWindowExecutionStatus>;
    FStatusDetails: Nullable<string>;
    FWindowExecutionId: Nullable<string>;
    FWindowId: Nullable<string>;
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetStatus: TMaintenanceWindowExecutionStatus;
    procedure SetStatus(const Value: TMaintenanceWindowExecutionStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TMaintenanceWindowExecution;
  public
    function IsSetEndTime: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetWindowExecutionId: Boolean;
    function IsSetWindowId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TMaintenanceWindowExecution }

function TMaintenanceWindowExecution.Obj: TMaintenanceWindowExecution;
begin
  Result := Self;
end;

function TMaintenanceWindowExecution.GetEndTime: TDateTime;
begin
  Result := FEndTime.ValueOrDefault;
end;

procedure TMaintenanceWindowExecution.SetEndTime(const Value: TDateTime);
begin
  FEndTime := Value;
end;

function TMaintenanceWindowExecution.IsSetEndTime: Boolean;
begin
  Result := FEndTime.HasValue;
end;

function TMaintenanceWindowExecution.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TMaintenanceWindowExecution.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TMaintenanceWindowExecution.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TMaintenanceWindowExecution.GetStatus: TMaintenanceWindowExecutionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TMaintenanceWindowExecution.SetStatus(const Value: TMaintenanceWindowExecutionStatus);
begin
  FStatus := Value;
end;

function TMaintenanceWindowExecution.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TMaintenanceWindowExecution.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TMaintenanceWindowExecution.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TMaintenanceWindowExecution.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

function TMaintenanceWindowExecution.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TMaintenanceWindowExecution.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TMaintenanceWindowExecution.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

function TMaintenanceWindowExecution.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TMaintenanceWindowExecution.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TMaintenanceWindowExecution.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
