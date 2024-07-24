unit AWS.SSM.Model.MaintenanceWindowTask;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.LoggingInfo, 
  AWS.SSM.Model.Target, 
  AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression;

type
  TMaintenanceWindowTask = class;
  
  IMaintenanceWindowTask = interface
    function GetCutoffBehavior: TMaintenanceWindowTaskCutoffBehavior;
    procedure SetCutoffBehavior(const Value: TMaintenanceWindowTaskCutoffBehavior);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetLoggingInfo: TLoggingInfo;
    procedure SetLoggingInfo(const Value: TLoggingInfo);
    function GetKeepLoggingInfo: Boolean;
    procedure SetKeepLoggingInfo(const Value: Boolean);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetServiceRoleArn: string;
    procedure SetServiceRoleArn(const Value: string);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTaskArn: string;
    procedure SetTaskArn(const Value: string);
    function GetTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
    procedure SetTaskParameters(const Value: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>);
    function GetKeepTaskParameters: Boolean;
    procedure SetKeepTaskParameters(const Value: Boolean);
    function GetType: TMaintenanceWindowTaskType;
    procedure SetType(const Value: TMaintenanceWindowTaskType);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
    function Obj: TMaintenanceWindowTask;
    function IsSetCutoffBehavior: Boolean;
    function IsSetDescription: Boolean;
    function IsSetLoggingInfo: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetName: Boolean;
    function IsSetPriority: Boolean;
    function IsSetServiceRoleArn: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTaskArn: Boolean;
    function IsSetTaskParameters: Boolean;
    function IsSetType: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTaskId: Boolean;
    property CutoffBehavior: TMaintenanceWindowTaskCutoffBehavior read GetCutoffBehavior write SetCutoffBehavior;
    property Description: string read GetDescription write SetDescription;
    property LoggingInfo: TLoggingInfo read GetLoggingInfo write SetLoggingInfo;
    property KeepLoggingInfo: Boolean read GetKeepLoggingInfo write SetKeepLoggingInfo;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Name: string read GetName write SetName;
    property Priority: Integer read GetPriority write SetPriority;
    property ServiceRoleArn: string read GetServiceRoleArn write SetServiceRoleArn;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TaskArn: string read GetTaskArn write SetTaskArn;
    property TaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression> read GetTaskParameters write SetTaskParameters;
    property KeepTaskParameters: Boolean read GetKeepTaskParameters write SetKeepTaskParameters;
    property &Type: TMaintenanceWindowTaskType read GetType write SetType;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
  TMaintenanceWindowTask = class
  strict private
    FCutoffBehavior: Nullable<TMaintenanceWindowTaskCutoffBehavior>;
    FDescription: Nullable<string>;
    FLoggingInfo: TLoggingInfo;
    FKeepLoggingInfo: Boolean;
    FMaxConcurrency: Nullable<string>;
    FMaxErrors: Nullable<string>;
    FName: Nullable<string>;
    FPriority: Nullable<Integer>;
    FServiceRoleArn: Nullable<string>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    FTaskArn: Nullable<string>;
    FTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
    FKeepTaskParameters: Boolean;
    FType: Nullable<TMaintenanceWindowTaskType>;
    FWindowId: Nullable<string>;
    FWindowTaskId: Nullable<string>;
    function GetCutoffBehavior: TMaintenanceWindowTaskCutoffBehavior;
    procedure SetCutoffBehavior(const Value: TMaintenanceWindowTaskCutoffBehavior);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetLoggingInfo: TLoggingInfo;
    procedure SetLoggingInfo(const Value: TLoggingInfo);
    function GetKeepLoggingInfo: Boolean;
    procedure SetKeepLoggingInfo(const Value: Boolean);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetPriority: Integer;
    procedure SetPriority(const Value: Integer);
    function GetServiceRoleArn: string;
    procedure SetServiceRoleArn(const Value: string);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTaskArn: string;
    procedure SetTaskArn(const Value: string);
    function GetTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
    procedure SetTaskParameters(const Value: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>);
    function GetKeepTaskParameters: Boolean;
    procedure SetKeepTaskParameters(const Value: Boolean);
    function GetType: TMaintenanceWindowTaskType;
    procedure SetType(const Value: TMaintenanceWindowTaskType);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
  strict protected
    function Obj: TMaintenanceWindowTask;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetCutoffBehavior: Boolean;
    function IsSetDescription: Boolean;
    function IsSetLoggingInfo: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetName: Boolean;
    function IsSetPriority: Boolean;
    function IsSetServiceRoleArn: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTaskArn: Boolean;
    function IsSetTaskParameters: Boolean;
    function IsSetType: Boolean;
    function IsSetWindowId: Boolean;
    function IsSetWindowTaskId: Boolean;
    property CutoffBehavior: TMaintenanceWindowTaskCutoffBehavior read GetCutoffBehavior write SetCutoffBehavior;
    property Description: string read GetDescription write SetDescription;
    property LoggingInfo: TLoggingInfo read GetLoggingInfo write SetLoggingInfo;
    property KeepLoggingInfo: Boolean read GetKeepLoggingInfo write SetKeepLoggingInfo;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Name: string read GetName write SetName;
    property Priority: Integer read GetPriority write SetPriority;
    property ServiceRoleArn: string read GetServiceRoleArn write SetServiceRoleArn;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TaskArn: string read GetTaskArn write SetTaskArn;
    property TaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression> read GetTaskParameters write SetTaskParameters;
    property KeepTaskParameters: Boolean read GetKeepTaskParameters write SetKeepTaskParameters;
    property &Type: TMaintenanceWindowTaskType read GetType write SetType;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
implementation

{ TMaintenanceWindowTask }

constructor TMaintenanceWindowTask.Create;
begin
  inherited;
  FTargets := TObjectList<TTarget>.Create;
  FTaskParameters := TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>.Create([doOwnsValues]);
end;

destructor TMaintenanceWindowTask.Destroy;
begin
  TaskParameters := nil;
  Targets := nil;
  LoggingInfo := nil;
  inherited;
end;

function TMaintenanceWindowTask.Obj: TMaintenanceWindowTask;
begin
  Result := Self;
end;

function TMaintenanceWindowTask.GetCutoffBehavior: TMaintenanceWindowTaskCutoffBehavior;
begin
  Result := FCutoffBehavior.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetCutoffBehavior(const Value: TMaintenanceWindowTaskCutoffBehavior);
begin
  FCutoffBehavior := Value;
end;

function TMaintenanceWindowTask.IsSetCutoffBehavior: Boolean;
begin
  Result := FCutoffBehavior.HasValue;
end;

function TMaintenanceWindowTask.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TMaintenanceWindowTask.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TMaintenanceWindowTask.GetLoggingInfo: TLoggingInfo;
begin
  Result := FLoggingInfo;
end;

procedure TMaintenanceWindowTask.SetLoggingInfo(const Value: TLoggingInfo);
begin
  if FLoggingInfo <> Value then
  begin
    if not KeepLoggingInfo then
      FLoggingInfo.Free;
    FLoggingInfo := Value;
  end;
end;

function TMaintenanceWindowTask.GetKeepLoggingInfo: Boolean;
begin
  Result := FKeepLoggingInfo;
end;

procedure TMaintenanceWindowTask.SetKeepLoggingInfo(const Value: Boolean);
begin
  FKeepLoggingInfo := Value;
end;

function TMaintenanceWindowTask.IsSetLoggingInfo: Boolean;
begin
  Result := FLoggingInfo <> nil;
end;

function TMaintenanceWindowTask.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TMaintenanceWindowTask.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TMaintenanceWindowTask.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TMaintenanceWindowTask.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TMaintenanceWindowTask.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetName(const Value: string);
begin
  FName := Value;
end;

function TMaintenanceWindowTask.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TMaintenanceWindowTask.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TMaintenanceWindowTask.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TMaintenanceWindowTask.GetServiceRoleArn: string;
begin
  Result := FServiceRoleArn.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetServiceRoleArn(const Value: string);
begin
  FServiceRoleArn := Value;
end;

function TMaintenanceWindowTask.IsSetServiceRoleArn: Boolean;
begin
  Result := FServiceRoleArn.HasValue;
end;

function TMaintenanceWindowTask.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TMaintenanceWindowTask.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TMaintenanceWindowTask.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TMaintenanceWindowTask.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TMaintenanceWindowTask.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TMaintenanceWindowTask.GetTaskArn: string;
begin
  Result := FTaskArn.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetTaskArn(const Value: string);
begin
  FTaskArn := Value;
end;

function TMaintenanceWindowTask.IsSetTaskArn: Boolean;
begin
  Result := FTaskArn.HasValue;
end;

function TMaintenanceWindowTask.GetTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
begin
  Result := FTaskParameters;
end;

procedure TMaintenanceWindowTask.SetTaskParameters(const Value: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>);
begin
  if FTaskParameters <> Value then
  begin
    if not KeepTaskParameters then
      FTaskParameters.Free;
    FTaskParameters := Value;
  end;
end;

function TMaintenanceWindowTask.GetKeepTaskParameters: Boolean;
begin
  Result := FKeepTaskParameters;
end;

procedure TMaintenanceWindowTask.SetKeepTaskParameters(const Value: Boolean);
begin
  FKeepTaskParameters := Value;
end;

function TMaintenanceWindowTask.IsSetTaskParameters: Boolean;
begin
  Result := (FTaskParameters <> nil) and (FTaskParameters.Count > 0);
end;

function TMaintenanceWindowTask.GetType: TMaintenanceWindowTaskType;
begin
  Result := FType.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetType(const Value: TMaintenanceWindowTaskType);
begin
  FType := Value;
end;

function TMaintenanceWindowTask.IsSetType: Boolean;
begin
  Result := FType.HasValue;
end;

function TMaintenanceWindowTask.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TMaintenanceWindowTask.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TMaintenanceWindowTask.GetWindowTaskId: string;
begin
  Result := FWindowTaskId.ValueOrDefault;
end;

procedure TMaintenanceWindowTask.SetWindowTaskId(const Value: string);
begin
  FWindowTaskId := Value;
end;

function TMaintenanceWindowTask.IsSetWindowTaskId: Boolean;
begin
  Result := FWindowTaskId.HasValue;
end;

end.
