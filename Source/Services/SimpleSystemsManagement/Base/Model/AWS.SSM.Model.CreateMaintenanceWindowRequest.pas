unit AWS.SSM.Model.CreateMaintenanceWindowRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Model.Tag;

type
  TCreateMaintenanceWindowRequest = class;
  
  ICreateMaintenanceWindowRequest = interface
    function GetAllowUnassociatedTargets: Boolean;
    procedure SetAllowUnassociatedTargets(const Value: Boolean);
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetCutoff: Integer;
    procedure SetCutoff(const Value: Integer);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDuration: Integer;
    procedure SetDuration(const Value: Integer);
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
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreateMaintenanceWindowRequest;
    function IsSetAllowUnassociatedTargets: Boolean;
    function IsSetClientToken: Boolean;
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetName: Boolean;
    function IsSetSchedule: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetScheduleTimezone: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetTags: Boolean;
    property AllowUnassociatedTargets: Boolean read GetAllowUnassociatedTargets write SetAllowUnassociatedTargets;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Cutoff: Integer read GetCutoff write SetCutoff;
    property Description: string read GetDescription write SetDescription;
    property Duration: Integer read GetDuration write SetDuration;
    property EndDate: string read GetEndDate write SetEndDate;
    property Name: string read GetName write SetName;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreateMaintenanceWindowRequest = class(TAmazonSimpleSystemsManagementRequest, ICreateMaintenanceWindowRequest)
  strict private
    FAllowUnassociatedTargets: Nullable<Boolean>;
    FClientToken: Nullable<string>;
    FCutoff: Nullable<Integer>;
    FDescription: Nullable<string>;
    FDuration: Nullable<Integer>;
    FEndDate: Nullable<string>;
    FName: Nullable<string>;
    FSchedule: Nullable<string>;
    FScheduleOffset: Nullable<Integer>;
    FScheduleTimezone: Nullable<string>;
    FStartDate: Nullable<string>;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    function GetAllowUnassociatedTargets: Boolean;
    procedure SetAllowUnassociatedTargets(const Value: Boolean);
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetCutoff: Integer;
    procedure SetCutoff(const Value: Integer);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetDuration: Integer;
    procedure SetDuration(const Value: Integer);
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
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreateMaintenanceWindowRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAllowUnassociatedTargets: Boolean;
    function IsSetClientToken: Boolean;
    function IsSetCutoff: Boolean;
    function IsSetDescription: Boolean;
    function IsSetDuration: Boolean;
    function IsSetEndDate: Boolean;
    function IsSetName: Boolean;
    function IsSetSchedule: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetScheduleTimezone: Boolean;
    function IsSetStartDate: Boolean;
    function IsSetTags: Boolean;
    property AllowUnassociatedTargets: Boolean read GetAllowUnassociatedTargets write SetAllowUnassociatedTargets;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Cutoff: Integer read GetCutoff write SetCutoff;
    property Description: string read GetDescription write SetDescription;
    property Duration: Integer read GetDuration write SetDuration;
    property EndDate: string read GetEndDate write SetEndDate;
    property Name: string read GetName write SetName;
    property Schedule: string read GetSchedule write SetSchedule;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property ScheduleTimezone: string read GetScheduleTimezone write SetScheduleTimezone;
    property StartDate: string read GetStartDate write SetStartDate;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreateMaintenanceWindowRequest }

constructor TCreateMaintenanceWindowRequest.Create;
begin
  inherited;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreateMaintenanceWindowRequest.Destroy;
begin
  Tags := nil;
  inherited;
end;

function TCreateMaintenanceWindowRequest.Obj: TCreateMaintenanceWindowRequest;
begin
  Result := Self;
end;

function TCreateMaintenanceWindowRequest.GetAllowUnassociatedTargets: Boolean;
begin
  Result := FAllowUnassociatedTargets.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetAllowUnassociatedTargets(const Value: Boolean);
begin
  FAllowUnassociatedTargets := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetAllowUnassociatedTargets: Boolean;
begin
  Result := FAllowUnassociatedTargets.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetCutoff: Integer;
begin
  Result := FCutoff.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetCutoff(const Value: Integer);
begin
  FCutoff := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetCutoff: Boolean;
begin
  Result := FCutoff.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetDuration: Integer;
begin
  Result := FDuration.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetDuration(const Value: Integer);
begin
  FDuration := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetDuration: Boolean;
begin
  Result := FDuration.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetEndDate: string;
begin
  Result := FEndDate.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetEndDate(const Value: string);
begin
  FEndDate := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetEndDate: Boolean;
begin
  Result := FEndDate.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetSchedule: string;
begin
  Result := FSchedule.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetSchedule(const Value: string);
begin
  FSchedule := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetSchedule: Boolean;
begin
  Result := FSchedule.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetScheduleTimezone: string;
begin
  Result := FScheduleTimezone.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetScheduleTimezone(const Value: string);
begin
  FScheduleTimezone := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetScheduleTimezone: Boolean;
begin
  Result := FScheduleTimezone.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetStartDate: string;
begin
  Result := FStartDate.ValueOrDefault;
end;

procedure TCreateMaintenanceWindowRequest.SetStartDate(const Value: string);
begin
  FStartDate := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetStartDate: Boolean;
begin
  Result := FStartDate.HasValue;
end;

function TCreateMaintenanceWindowRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreateMaintenanceWindowRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreateMaintenanceWindowRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreateMaintenanceWindowRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreateMaintenanceWindowRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
