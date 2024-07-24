unit AWS.SSM.Model.UpdateMaintenanceWindowRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TUpdateMaintenanceWindowRequest = class;
  
  IUpdateMaintenanceWindowRequest = interface
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
    function GetReplace: Boolean;
    procedure SetReplace(const Value: Boolean);
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
    function Obj: TUpdateMaintenanceWindowRequest;
    function IsSetAllowUnassociatedTargets: Boolean;
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetName: Boolean;
    function IsSetReplace: Boolean;
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
    property Replace: Boolean read GetReplace write SetReplace;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TUpdateMaintenanceWindowRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateMaintenanceWindowRequest)
  strict private
    FAllowUnassociatedTargets: Nullable<Boolean>;
    FCutoff: Nullable<Integer>;
    FDescription: Nullable<string>;
    FDuration: Nullable<Integer>;
    FEnabled: Nullable<Boolean>;
    FEndDate: Nullable<string>;
    FName: Nullable<string>;
    FReplace: Nullable<Boolean>;
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
    function GetReplace: Boolean;
    procedure SetReplace(const Value: Boolean);
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
    function Obj: TUpdateMaintenanceWindowRequest;
  public
    function IsSetAllowUnassociatedTargets: Boolean;
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetName: Boolean;
    function IsSetReplace: Boolean;
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
    property Replace: Boolean read GetReplace write SetReplace;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TUpdateMaintenanceWindowRequest }

function TUpdateMaintenanceWindowRequest.Obj: TUpdateMaintenanceWindowRequest;
begin
  Result := Self;
end;

function TUpdateMaintenanceWindowRequest.GetAllowUnassociatedTargets: Boolean;
begin
  Result := FAllowUnassociatedTargets.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetAllowUnassociatedTargets(const Value: Boolean);
begin
  FAllowUnassociatedTargets := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetAllowUnassociatedTargets: Boolean;
begin
  Result := FAllowUnassociatedTargets.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetCutoff: Integer;
begin
  Result := FCutoff.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetCutoff(const Value: Integer);
begin
  FCutoff := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetCutoff: Boolean;
begin
  Result := FCutoff.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetDuration: Integer;
begin
  Result := FDuration.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetDuration(const Value: Integer);
begin
  FDuration := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetDuration: Boolean;
begin
  Result := FDuration.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetEndDate: string;
begin
  Result := FEndDate.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetEndDate(const Value: string);
begin
  FEndDate := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetEndDate: Boolean;
begin
  Result := FEndDate.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetReplace: Boolean;
begin
  Result := FReplace.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetReplace(const Value: Boolean);
begin
  FReplace := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetReplace: Boolean;
begin
  Result := FReplace.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetSchedule: string;
begin
  Result := FSchedule.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetSchedule(const Value: string);
begin
  FSchedule := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetSchedule: Boolean;
begin
  Result := FSchedule.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetScheduleTimezone: string;
begin
  Result := FScheduleTimezone.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetScheduleTimezone(const Value: string);
begin
  FScheduleTimezone := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetScheduleTimezone: Boolean;
begin
  Result := FScheduleTimezone.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetStartDate: string;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetStartDate(const Value: string);
begin
  FStartDate := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

function TUpdateMaintenanceWindowRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TUpdateMaintenanceWindowRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
