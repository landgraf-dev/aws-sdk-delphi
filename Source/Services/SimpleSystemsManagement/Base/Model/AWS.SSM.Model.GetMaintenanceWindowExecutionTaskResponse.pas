unit AWS.SSM.Model.GetMaintenanceWindowExecutionTaskResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression;

type
  TGetMaintenanceWindowExecutionTaskResponse = class;
  
  IGetMaintenanceWindowExecutionTaskResponse = interface(IAmazonWebServiceResponse)
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetServiceRole: string;
    procedure SetServiceRole(const Value: string);
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
    function GetTaskParameters: TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>>;
    procedure SetTaskParameters(const Value: TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>>);
    function GetKeepTaskParameters: Boolean;
    procedure SetKeepTaskParameters(const Value: Boolean);
    function GetType: TMaintenanceWindowTaskType;
    procedure SetType(const Value: TMaintenanceWindowTaskType);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
    function Obj: TGetMaintenanceWindowExecutionTaskResponse;
    function IsSetEndTime: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetPriority: Boolean;
    function IsSetServiceRole: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTaskArn: Boolean;
    function IsSetTaskExecutionId: Boolean;
    function IsSetTaskParameters: Boolean;
    function IsSetType: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Priority: Integer read GetPriority write SetPriority;
    property ServiceRole: string read GetServiceRole write SetServiceRole;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TaskArn: string read GetTaskArn write SetTaskArn;
    property TaskExecutionId: string read GetTaskExecutionId write SetTaskExecutionId;
    property TaskParameters: TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>> read GetTaskParameters write SetTaskParameters;
    property KeepTaskParameters: Boolean read GetKeepTaskParameters write SetKeepTaskParameters;
    property &Type: TMaintenanceWindowTaskType read GetType write SetType;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
  TGetMaintenanceWindowExecutionTaskResponse = class(TAmazonWebServiceResponse, IGetMaintenanceWindowExecutionTaskResponse)
  strict private
    FEndTime: Nullable<TDateTime>;
    FMaxConcurrency: Nullable<string>;
    FMaxErrors: Nullable<string>;
    FPriority: Nullable<Integer>;
    FServiceRole: Nullable<string>;
    FStartTime: Nullable<TDateTime>;
    FStatus: Nullable<TMaintenanceWindowExecutionStatus>;
    FStatusDetails: Nullable<string>;
    FTaskArn: Nullable<string>;
    FTaskExecutionId: Nullable<string>;
    FTaskParameters: TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>>;
    FKeepTaskParameters: Boolean;
    FType: Nullable<TMaintenanceWindowTaskType>;
    FWindowExecutionId: Nullable<string>;
    function GetEndTime: TDateTime;
    procedure SetEndTime(const Value: TDateTime);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetServiceRole: string;
    procedure SetServiceRole(const Value: string);
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
    function GetTaskParameters: TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>>;
    procedure SetTaskParameters(const Value: TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>>);
    function GetKeepTaskParameters: Boolean;
    procedure SetKeepTaskParameters(const Value: Boolean);
    function GetType: TMaintenanceWindowTaskType;
    procedure SetType(const Value: TMaintenanceWindowTaskType);
    function GetWindowExecutionId: string;
    procedure SetWindowExecutionId(const Value: string);
  strict protected
    function Obj: TGetMaintenanceWindowExecutionTaskResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetEndTime: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetPriority: Boolean;
    function IsSetServiceRole: Boolean;
    function IsSetStartTime: Boolean;
    function IsSetStatus: Boolean;
    function IsSetStatusDetails: Boolean;
    function IsSetTaskArn: Boolean;
    function IsSetTaskExecutionId: Boolean;
    function IsSetTaskParameters: Boolean;
    function IsSetType: Boolean;
    function IsSetWindowExecutionId: Boolean;
    property EndTime: TDateTime read GetEndTime write SetEndTime;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Priority: Integer read GetPriority write SetPriority;
    property ServiceRole: string read GetServiceRole write SetServiceRole;
    property StartTime: TDateTime read GetStartTime write SetStartTime;
    property Status: TMaintenanceWindowExecutionStatus read GetStatus write SetStatus;
    property StatusDetails: string read GetStatusDetails write SetStatusDetails;
    property TaskArn: string read GetTaskArn write SetTaskArn;
    property TaskExecutionId: string read GetTaskExecutionId write SetTaskExecutionId;
    property TaskParameters: TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>> read GetTaskParameters write SetTaskParameters;
    property KeepTaskParameters: Boolean read GetKeepTaskParameters write SetKeepTaskParameters;
    property &Type: TMaintenanceWindowTaskType read GetType write SetType;
    property WindowExecutionId: string read GetWindowExecutionId write SetWindowExecutionId;
  end;
  
implementation

{ TGetMaintenanceWindowExecutionTaskResponse }

constructor TGetMaintenanceWindowExecutionTaskResponse.Create;
begin
  inherited;
  FTaskParameters := TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>>.Create;
end;

destructor TGetMaintenanceWindowExecutionTaskResponse.Destroy;
begin
  TaskParameters := nil;
  inherited;
end;

function TGetMaintenanceWindowExecutionTaskResponse.Obj: TGetMaintenanceWindowExecutionTaskResponse;
begin
  Result := Self;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetEndTime: TDateTime;
begin
  Result := FEndTime.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetEndTime(const Value: TDateTime);
begin
  FEndTime := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetEndTime: Boolean;
begin
  Result := FEndTime.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetServiceRole: string;
begin
  Result := FServiceRole.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetServiceRole(const Value: string);
begin
  FServiceRole := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetServiceRole: Boolean;
begin
  Result := FServiceRole.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetStartTime: TDateTime;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetStartTime(const Value: TDateTime);
begin
  FStartTime := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetStatus: TMaintenanceWindowExecutionStatus;
begin
  Result := FStatus.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetStatus(const Value: TMaintenanceWindowExecutionStatus);
begin
  FStatus := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetStatus: Boolean;
begin
  Result := FStatus.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetStatusDetails: string;
begin
  Result := FStatusDetails.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetStatusDetails(const Value: string);
begin
  FStatusDetails := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetStatusDetails: Boolean;
begin
  Result := FStatusDetails.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetTaskArn: string;
begin
  Result := FTaskArn.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetTaskArn(const Value: string);
begin
  FTaskArn := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetTaskArn: Boolean;
begin
  Result := FTaskArn.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetTaskExecutionId: string;
begin
  Result := FTaskExecutionId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetTaskExecutionId(const Value: string);
begin
  FTaskExecutionId := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetTaskExecutionId: Boolean;
begin
  Result := FTaskExecutionId.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetTaskParameters: TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>>;
begin
  Result := FTaskParameters;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetTaskParameters(const Value: TObjectList<TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>>);
begin
  if FTaskParameters <> Value then
  begin
    if not KeepTaskParameters then
      FTaskParameters.Free;
    FTaskParameters := Value;
  end;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetKeepTaskParameters: Boolean;
begin
  Result := FKeepTaskParameters;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetKeepTaskParameters(const Value: Boolean);
begin
  FKeepTaskParameters := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetTaskParameters: Boolean;
begin
  Result := (FTaskParameters <> nil) and (FTaskParameters.Count > 0);
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetType: TMaintenanceWindowTaskType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetType(const Value: TMaintenanceWindowTaskType);
begin
  FType := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TGetMaintenanceWindowExecutionTaskResponse.GetWindowExecutionId: string;
begin
  Result := FWindowExecutionId.ValueOrDefault;
end;

procedure TGetMaintenanceWindowExecutionTaskResponse.SetWindowExecutionId(const Value: string);
begin
  FWindowExecutionId := Value;
end;

function TGetMaintenanceWindowExecutionTaskResponse.IsSetWindowExecutionId: Boolean;
begin
  Result := FWindowExecutionId.HasValue;
end;

end.
