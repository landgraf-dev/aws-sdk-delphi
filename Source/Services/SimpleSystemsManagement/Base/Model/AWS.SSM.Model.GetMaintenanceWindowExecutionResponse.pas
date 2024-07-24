unit AWS.SSM.Model.GetMaintenanceWindowExecutionResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetMaintenanceWindowExecutionResponse = class;
  
  IGetMaintenanceWindowExecutionResponse = interface(IAmazonWebServiceResponse)
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetStatus: TMaintenanceWindowExecutionStatus;
    procedure SetStatus(const Value: TMaintenanceWindowExecutionStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTaskIds: TList<string>;
    procedure SetTaskIds(const Value: TList<string>);
    function GetKeepTaskIds: Boolean;
    procedure SetKeepTaskIds(const Value: Boolean);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TGetMaintenanceWindowExecutionResponse;
    function IsSetEndTime: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTaskIds: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TaskIds: TList<string> read GetTaskIds write SetTaskIds;
    property KeepTaskIds: Boolean read GetKeepTaskIds write SetKeepTaskIds;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TGetMaintenanceWindowExecutionResponse = class(TAmazonWebServiceResponse, IGetMaintenanceWindowExecutionResponse)
  strict private
    FEndTime: Nullable<TDateTime>;
    FStartTime: Nullable<TDateTime>;
    FStatus: Nullable<TMaintenanceWindowExecutionStatus>;
    FStatusDetails: Nullable<string>;
    FTaskIds: TList<string>;
    FKeepTaskIds: Boolean;
    FWindowExecutionId: Nullable<string>;
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetStartTime: TDateTime;
    procedure SetStartTime(const Value: TDateTime);
    function GetStatus: TMaintenanceWindowExecutionStatus;
    procedure SetStatus(const Value: TMaintenanceWindowExecutionStatus);
    function GetStatusDetails: string;
    procedure SetStatusDetails(const Value: string);
    function GetTaskIds: TList<string>;
    procedure SetTaskIds(const Value: TList<string>);
    function GetKeepTaskIds: Boolean;
    procedure SetKeepTaskIds(const Value: Boolean);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TGetMaintenanceWindowExecutionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEndTime: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTaskIds: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TaskIds: TList<string> read GetTaskIds write SetTaskIds;
    property KeepTaskIds: Boolean read GetKeepTaskIds write SetKeepTaskIds;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TGetMaintenanceWindowExecutionResponse }

constructor TGetMaintenanceWindowExecutionResponse.Create;
begin
  inherited;
  FTaskIds := TList<string>.Create;
end;

destructor TGetMaintenanceWindowExecutionResponse.Destroy;
begin
  TaskIds := nil;
  inherited;
end;

function TGetMaintenanceWindowExecutionResponse.Obj: TGetMaintenanceWindowExecutionResponse;
begin
  Result := Self;
end;

function TGetMaintenanceWindowExecutionResponse.GetEndTime: TDateTime;
begin
  Result := FEndTime.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionResponse.SetEndTime(const Value: TDateTime);
begin
  FEndTime := Value;
end;

function TGetMaintenanceWindowExecutionResponse.IsSetEndTime: Boolean;
begin
  Result := FEndTime.HasValue;
end;

function TGetMaintenanceWindowExecutionResponse.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionResponse.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TGetMaintenanceWindowExecutionResponse.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TGetMaintenanceWindowExecutionResponse.GetStatus: TMaintenanceWindowExecutionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionResponse.SetStatus(const Value: TMaintenanceWindowExecutionStatus);
begin
  FStatus := Value;
end;

function TGetMaintenanceWindowExecutionResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TGetMaintenanceWindowExecutionResponse.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionResponse.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TGetMaintenanceWindowExecutionResponse.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

function TGetMaintenanceWindowExecutionResponse.GetTaskIds: TList<string>;
begin
  Result := FTaskIds;
end;

procedure TGetMaintenanceWindowExecutionResponse.SetTaskIds(const Value: TList<string>);
begin
  if FTaskIds <> Value then
  begin
    if not KeepTaskIds then
      FTaskIds.Free;
    FTaskIds := Value;
  end;
end;

function TGetMaintenanceWindowExecutionResponse.GetKeepTaskIds: Boolean;
begin
  Result := FKeepTaskIds;
end;

procedure TGetMaintenanceWindowExecutionResponse.SetKeepTaskIds(const Value: Boolean);
begin
  FKeepTaskIds := Value;
end;

function TGetMaintenanceWindowExecutionResponse.IsSetTaskIds: Boolean;
begin
  Result := (FTaskIds <> nil) and (FTaskIds.Count > 0);
end;

function TGetMaintenanceWindowExecutionResponse.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionResponse.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TGetMaintenanceWindowExecutionResponse.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
