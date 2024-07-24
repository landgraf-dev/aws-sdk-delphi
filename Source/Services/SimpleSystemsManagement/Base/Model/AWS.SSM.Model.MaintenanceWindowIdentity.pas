unit AWS.SSM.Model.MaintenanceWindowIdentity;

interface

uses
  AWS.Nullable;

type
  TMaintenanceWindowIdentity = class;
  
  IMaintenanceWindowIdentity = interface
    function GetCutoff: Integer;
    procedure SetCutoff(const Value: Integer);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDuration: Integer;
    procedure SetDuration(const Value: Integer);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetEndDate: string;
    procedure SetEndDate(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextExecutionTime: string;
    procedure SetNextExecutionTime(const Value: string);
    function GetSchedule: string;
    procedure SetSchedule(const Value: string);
    function GetScheduleOffset: Integer;
    procedure SetScheduleOffset(const Value: Integer);
    function GetScheduleTimezone: string;
    procedure SetScheduleTimezone(const Value: string);
    function GetStartDate: string;
    procedure SetStartDate(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TMaintenanceWindowIdentity;
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetName: Boolean;
    function IsSetNextExecutionTime: Boolean;
    function IsSetSchedule: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetScheduleTimezone: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetWindowId: Boolean;
    property Cutoff: Integer read GetCutoff write SetCutoff;
    property Description: string read GetDescription write SetDescription;
    property Duration: Integer read GetDuration write SetDuration;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property EndDate: string read GetEndDate write SetEndDate;
    property Name: string read GetName write SetName;
    property NextExecutionTime: string read GetNextExecutionTime write SetNextExecutionTime;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TMaintenanceWindowIdentity = class
  strict private
    FCutoff: Nullable<Integer>;
    FDescription: Nullable<string>;
    FDuration: Nullable<Integer>;
    FEnabled: Nullable<Boolean>;
    FEndDate: Nullable<string>;
    FName: Nullable<string>;
    FNextExecutionTime: Nullable<string>;
    FSchedule: Nullable<string>;
    FScheduleOffset: Nullable<Integer>;
    FScheduleTimezone: Nullable<string>;
    FStartDate: Nullable<string>;
    FWindowId: Nullable<string>;
    function GetCutoff: Integer;
    procedure SetCutoff(const Value: Integer);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDuration: Integer;
    procedure SetDuration(const Value: Integer);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetEndDate: string;
    procedure SetEndDate(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetNextExecutionTime: string;
    procedure SetNextExecutionTime(const Value: string);
    function GetSchedule: string;
    procedure SetSchedule(const Value: string);
    function GetScheduleOffset: Integer;
    procedure SetScheduleOffset(const Value: Integer);
    function GetScheduleTimezone: string;
    procedure SetScheduleTimezone(const Value: string);
    function GetStartDate: string;
    procedure SetStartDate(const Value: string);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TMaintenanceWindowIdentity;
  public
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetName: Boolean;
    function IsSetNextExecutionTime: Boolean;
    function IsSetSchedule: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetScheduleTimezone: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetWindowId: Boolean;
    property Cutoff: Integer read GetCutoff write SetCutoff;
    property Description: string read GetDescription write SetDescription;
    property Duration: Integer read GetDuration write SetDuration;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property EndDate: string read GetEndDate write SetEndDate;
    property Name: string read GetName write SetName;
    property NextExecutionTime: string read GetNextExecutionTime write SetNextExecutionTime;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TMaintenanceWindowIdentity }

function TMaintenanceWindowIdentity.Obj: TMaintenanceWindowIdentity;
begin
  Result := Self;
end;

function TMaintenanceWindowIdentity.GetCutoff: Integer;
begin
  Result := FCutoff.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetCutoff(const Value: Integer);
begin
  FCutoff := Value;
end;

function TMaintenanceWindowIdentity.IsSetCutoff: Boolean;
begin
  Result := FCutoff.HasValue;
end;

function TMaintenanceWindowIdentity.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TMaintenanceWindowIdentity.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TMaintenanceWindowIdentity.GetDuration: Integer;
begin
  Result := FDuration.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetDuration(const Value: Integer);
begin
  FDuration := Value;
end;

function TMaintenanceWindowIdentity.IsSetDuration: Boolean;
begin
  Result := FDuration.HasValue;
end;

function TMaintenanceWindowIdentity.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TMaintenanceWindowIdentity.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

function TMaintenanceWindowIdentity.GetEndDate: string;
begin
  Result := FEndDate.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetEndDate(const Value: string);
begin
  FEndDate := Value;
end;

function TMaintenanceWindowIdentity.IsSetEndDate: Boolean;
begin
  Result := FEndDate.HasValue;
end;

function TMaintenanceWindowIdentity.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetName(const Value: string);
begin
  FName := Value;
end;

function TMaintenanceWindowIdentity.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TMaintenanceWindowIdentity.GetNextExecutionTime: string;
begin
  Result := FNextExecutionTime.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetNextExecutionTime(const Value: string);
begin
  FNextExecutionTime := Value;
end;

function TMaintenanceWindowIdentity.IsSetNextExecutionTime: Boolean;
begin
  Result := FNextExecutionTime.HasValue;
end;

function TMaintenanceWindowIdentity.GetSchedule: string;
begin
  Result := FSchedule.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetSchedule(const Value: string);
begin
  FSchedule := Value;
end;

function TMaintenanceWindowIdentity.IsSetSchedule: Boolean;
begin
  Result := FSchedule.HasValue;
end;

function TMaintenanceWindowIdentity.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TMaintenanceWindowIdentity.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TMaintenanceWindowIdentity.GetScheduleTimezone: string;
begin
  Result := FScheduleTimezone.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetScheduleTimezone(const Value: string);
begin
  FScheduleTimezone := Value;
end;

function TMaintenanceWindowIdentity.IsSetScheduleTimezone: Boolean;
begin
  Result := FScheduleTimezone.HasValue;
end;

function TMaintenanceWindowIdentity.GetStartDate: string;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetStartDate(const Value: string);
begin
  FStartDate := Value;
end;

function TMaintenanceWindowIdentity.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

function TMaintenanceWindowIdentity.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TMaintenanceWindowIdentity.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TMaintenanceWindowIdentity.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
