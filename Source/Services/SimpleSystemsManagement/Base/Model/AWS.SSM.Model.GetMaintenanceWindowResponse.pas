unit AWS.SSM.Model.GetMaintenanceWindowResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TGetMaintenanceWindowResponse = class;
  
  IGetMaintenanceWindowResponse = interface(IAmazonWebServiceResponse)
    function GetAllowUnassociatedTargets: Boolean;
    procedure SetAllowUnassociatedTargets(const Value: Boolean);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
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
    function GetModifiedDate: TDateTime;
    procedure SetModifiedDate(const Value: TDateTime);
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
    function Obj: TGetMaintenanceWindowResponse;
    function IsSetAllowUnassociatedTargets: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetModifiedDate: Boolean;
    function IsSetName: Boolean;
    function IsSetNextExecutionTime: Boolean;
    function IsSetSchedule: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetScheduleTimezone: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetWindowId: Boolean;
    property AllowUnassociatedTargets: Boolean read GetAllowUnassociatedTargets write SetAllowUnassociatedTargets;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property Cutoff: Integer read GetCutoff write SetCutoff;
    property Description: string read GetDescription write SetDescription;
    property Duration: Integer read GetDuration write SetDuration;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property EndDate: string read GetEndDate write SetEndDate;
    property ModifiedDate: TDateTime read GetModifiedDate write SetModifiedDate;
    property Name: string read GetName write SetName;
    property NextExecutionTime: string read GetNextExecutionTime write SetNextExecutionTime;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TGetMaintenanceWindowResponse = class(TAmazonWebServiceResponse, IGetMaintenanceWindowResponse)
  strict private
    FAllowUnassociatedTargets: Nullable<Boolean>;
    FCreatedDate: Nullable<TDateTime>;
    FCutoff: Nullable<Integer>;
    FDescription: Nullable<string>;
    FDuration: Nullable<Integer>;
    FEnabled: Nullable<Boolean>;
    FEndDate: Nullable<string>;
    FModifiedDate: Nullable<TDateTime>;
    FName: Nullable<string>;
    FNextExecutionTime: Nullable<string>;
    FSchedule: Nullable<string>;
    FScheduleOffset: Nullable<Integer>;
    FScheduleTimezone: Nullable<string>;
    FStartDate: Nullable<string>;
    FWindowId: Nullable<string>;
    function GetAllowUnassociatedTargets: Boolean;
    procedure SetAllowUnassociatedTargets(const Value: Boolean);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
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
    function GetModifiedDate: TDateTime;
    procedure SetModifiedDate(const Value: TDateTime);
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
    function Obj: TGetMaintenanceWindowResponse;
  public
    function IsSetAllowUnassociatedTargets: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEnabled: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetModifiedDate: Boolean;
    function IsSetName: Boolean;
    function IsSetNextExecutionTime: Boolean;
    function IsSetSchedule: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetScheduleTimezone: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetWindowId: Boolean;
    property AllowUnassociatedTargets: Boolean read GetAllowUnassociatedTargets write SetAllowUnassociatedTargets;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property Cutoff: Integer read GetCutoff write SetCutoff;
    property Description: string read GetDescription write SetDescription;
    property Duration: Integer read GetDuration write SetDuration;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property EndDate: string read GetEndDate write SetEndDate;
    property ModifiedDate: TDateTime read GetModifiedDate write SetModifiedDate;
    property Name: string read GetName write SetName;
    property NextExecutionTime: string read GetNextExecutionTime write SetNextExecutionTime;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TGetMaintenanceWindowResponse }

function TGetMaintenanceWindowResponse.Obj: TGetMaintenanceWindowResponse;
begin
  Result := Self;
end;

function TGetMaintenanceWindowResponse.GetAllowUnassociatedTargets: Boolean;
begin
  Result := FAllowUnassociatedTargets.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetAllowUnassociatedTargets(const Value: Boolean);
begin
  FAllowUnassociatedTargets := Value;
end;

function TGetMaintenanceWindowResponse.IsSetAllowUnassociatedTargets: Boolean;
begin
  Result := FAllowUnassociatedTargets.HasValue;
end;

function TGetMaintenanceWindowResponse.GetCreatedDate: TDateTime;
begin
  Result := FCreatedDate.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetCreatedDate(const Value: TDateTime);
begin
  FCreatedDate := Value;
end;

function TGetMaintenanceWindowResponse.IsSetCreatedDate: Boolean;
begin
  Result := FCreatedDate.HasValue;
end;

function TGetMaintenanceWindowResponse.GetCutoff: Integer;
begin
  Result := FCutoff.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetCutoff(const Value: Integer);
begin
  FCutoff := Value;
end;

function TGetMaintenanceWindowResponse.IsSetCutoff: Boolean;
begin
  Result := FCutoff.HasValue;
end;

function TGetMaintenanceWindowResponse.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TGetMaintenanceWindowResponse.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TGetMaintenanceWindowResponse.GetDuration: Integer;
begin
  Result := FDuration.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetDuration(const Value: Integer);
begin
  FDuration := Value;
end;

function TGetMaintenanceWindowResponse.IsSetDuration: Boolean;
begin
  Result := FDuration.HasValue;
end;

function TGetMaintenanceWindowResponse.GetEnabled: Boolean;
begin
  Result := FEnabled.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

function TGetMaintenanceWindowResponse.IsSetEnabled: Boolean;
begin
  Result := FEnabled.HasValue;
end;

function TGetMaintenanceWindowResponse.GetEndDate: string;
begin
  Result := FEndDate.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetEndDate(const Value: string);
begin
  FEndDate := Value;
end;

function TGetMaintenanceWindowResponse.IsSetEndDate: Boolean;
begin
  Result := FEndDate.HasValue;
end;

function TGetMaintenanceWindowResponse.GetModifiedDate: TDateTime;
begin
  Result := FModifiedDate.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetModifiedDate(const Value: TDateTime);
begin
  FModifiedDate := Value;
end;

function TGetMaintenanceWindowResponse.IsSetModifiedDate: Boolean;
begin
  Result := FModifiedDate.HasValue;
end;

function TGetMaintenanceWindowResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetMaintenanceWindowResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetMaintenanceWindowResponse.GetNextExecutionTime: string;
begin
  Result := FNextExecutionTime.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetNextExecutionTime(const Value: string);
begin
  FNextExecutionTime := Value;
end;

function TGetMaintenanceWindowResponse.IsSetNextExecutionTime: Boolean;
begin
  Result := FNextExecutionTime.HasValue;
end;

function TGetMaintenanceWindowResponse.GetSchedule: string;
begin
  Result := FSchedule.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetSchedule(const Value: string);
begin
  FSchedule := Value;
end;

function TGetMaintenanceWindowResponse.IsSetSchedule: Boolean;
begin
  Result := FSchedule.HasValue;
end;

function TGetMaintenanceWindowResponse.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TGetMaintenanceWindowResponse.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TGetMaintenanceWindowResponse.GetScheduleTimezone: string;
begin
  Result := FScheduleTimezone.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetScheduleTimezone(const Value: string);
begin
  FScheduleTimezone := Value;
end;

function TGetMaintenanceWindowResponse.IsSetScheduleTimezone: Boolean;
begin
  Result := FScheduleTimezone.HasValue;
end;

function TGetMaintenanceWindowResponse.GetStartDate: string;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetStartDate(const Value: string);
begin
  FStartDate := Value;
end;

function TGetMaintenanceWindowResponse.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

function TGetMaintenanceWindowResponse.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowResponse.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TGetMaintenanceWindowResponse.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
