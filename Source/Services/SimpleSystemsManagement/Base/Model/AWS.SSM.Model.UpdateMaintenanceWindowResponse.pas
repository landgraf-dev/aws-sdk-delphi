unit AWS.SSM.Model.UpdateMaintenanceWindowResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TUpdateMaintenanceWindowResponse = class;
  
  IUpdateMaintenanceWindowResponse = interface(IAmazonWebServiceResponse)
    function GetAllowUnassociatedTargets: Boolean;
    procedure SetAllowUnassociatedTargets(const Value: Boolean);
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
    function Obj: TUpdateMaintenanceWindowResponse;
    function IsSetAllowUnassociatedTargets: Boolean;
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetName: Boolean;
    function IsSetSchedule: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetScheduleTimezone: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetWindowId: Boolean;
    property AllowUnassociatedTargets: Boolean read GetAllowUnassociatedTargets write SetAllowUnassociatedTargets;
    property Cutoff: Integer read GetCutoff write SetCutoff;
    property Description: string read GetDescription write SetDescription;
    property Duration: Integer read GetDuration write SetDuration;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property EndDate: string read GetEndDate write SetEndDate;
    property Name: string read GetName write SetName;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TUpdateMaintenanceWindowResponse = class(TAmazonWebServiceResponse, IUpdateMaintenanceWindowResponse)
  strict private
    FAllowUnassociatedTargets: Nullable<Boolean>;
    FCutoff: Nullable<Integer>;
    FDescription: Nullable<string>;
    FDuration: Nullable<Integer>;
    FEnabled: Nullable<Boolean>;
    FEndDate: Nullable<string>;
    FName: Nullable<string>;
    FSchedule: Nullable<string>;
    FScheduleOffset: Nullable<Integer>;
    FScheduleTimezone: Nullable<string>;
    FStartDate: Nullable<string>;
    FWindowId: Nullable<string>;
    function GetAllowUnassociatedTargets: Boolean;
    procedure SetAllowUnassociatedTargets(const Value: Boolean);
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
    function Obj: TUpdateMaintenanceWindowResponse;
  public
    function IsSetAllowUnassociatedTargets: Boolean;
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetName: Boolean;
    function IsSetSchedule: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetScheduleTimezone: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetWindowId: Boolean;
    property AllowUnassociatedTargets: Boolean read GetAllowUnassociatedTargets write SetAllowUnassociatedTargets;
    property Cutoff: Integer read GetCutoff write SetCutoff;
    property Description: string read GetDescription write SetDescription;
    property Duration: Integer read GetDuration write SetDuration;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property EndDate: string read GetEndDate write SetEndDate;
    property Name: string read GetName write SetName;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TUpdateMaintenanceWindowResponse }

function TUpdateMaintenanceWindowResponse.Obj: TUpdateMaintenanceWindowResponse;
begin
  Result := Self;
end;

function TUpdateMaintenanceWindowResponse.GetAllowUnassociatedTargets: Boolean;
begin
  Result := FAllowUnassociatedTargets.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetAllowUnassociatedTargets(const Value: Boolean);
begin
  FAllowUnassociatedTargets := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetAllowUnassociatedTargets: Boolean;
begin
  Result := FAllowUnassociatedTargets.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetCutoff: Integer;
begin
  Result := FCutoff.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetCutoff(const Value: Integer);
begin
  FCutoff := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetCutoff: Boolean;
begin
  Result := FCutoff.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetDuration: Integer;
begin
  Result := FDuration.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetDuration(const Value: Integer);
begin
  FDuration := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetDuration: Boolean;
begin
  Result := FDuration.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetEndDate: string;
begin
  Result := FEndDate.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetEndDate(const Value: string);
begin
  FEndDate := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetEndDate: Boolean;
begin
  Result := FEndDate.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetSchedule: string;
begin
  Result := FSchedule.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetSchedule(const Value: string);
begin
  FSchedule := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetSchedule: Boolean;
begin
  Result := FSchedule.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetScheduleTimezone: string;
begin
  Result := FScheduleTimezone.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetScheduleTimezone(const Value: string);
begin
  FScheduleTimezone := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetScheduleTimezone: Boolean;
begin
  Result := FScheduleTimezone.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetStartDate: string;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetStartDate(const Value: string);
begin
  FStartDate := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

function TUpdateMaintenanceWindowResponse.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowResponse.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TUpdateMaintenanceWindowResponse.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
