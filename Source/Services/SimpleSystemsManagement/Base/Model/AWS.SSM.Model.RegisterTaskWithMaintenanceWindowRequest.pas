unit AWS.SSM.Model.RegisterTaskWithMaintenanceWindowRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.LoggingInfo, 
  AWS.SSM.Model.Target, 
  AWS.SSM.Model.MaintenanceWindowTaskInvocationParameters, 
  AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression;

type
  TRegisterTaskWithMaintenanceWindowRequest = class;
  
  IRegisterTaskWithMaintenanceWindowRequest = interface
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
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
    function GetTaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters;
    procedure SetTaskInvocationParameters(const Value: TMaintenanceWindowTaskInvocationParameters);
    function GetKeepTaskInvocationParameters: Boolean;
    procedure SetKeepTaskInvocationParameters(const Value: Boolean);
    function GetTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
    procedure SetTaskParameters(const Value: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>);
    function GetKeepTaskParameters: Boolean;
    procedure SetKeepTaskParameters(const Value: Boolean);
    function GetTaskType: TMaintenanceWindowTaskType;
    procedure SetTaskType(const Value: TMaintenanceWindowTaskType);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function Obj: TRegisterTaskWithMaintenanceWindowRequest;
    function IsSetClientToken: Boolean;
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
    function IsSetTaskInvocationParameters: Boolean;
    function IsSetTaskParameters: Boolean;
    function IsSetTaskType: Boolean;
    function IsSetWindowId: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
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
    property TaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters read GetTaskInvocationParameters write SetTaskInvocationParameters;
    property KeepTaskInvocationParameters: Boolean read GetKeepTaskInvocationParameters write SetKeepTaskInvocationParameters;
    property TaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression> read GetTaskParameters write SetTaskParameters;
    property KeepTaskParameters: Boolean read GetKeepTaskParameters write SetKeepTaskParameters;
    property TaskType: TMaintenanceWindowTaskType read GetTaskType write SetTaskType;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
  TRegisterTaskWithMaintenanceWindowRequest = class(TAmazonSimpleSystemsManagementRequest, IRegisterTaskWithMaintenanceWindowRequest)
  strict private
    FClientToken: Nullable<string>;
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
    FTaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters;
    FKeepTaskInvocationParameters: Boolean;
    FTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
    FKeepTaskParameters: Boolean;
    FTaskType: Nullable<TMaintenanceWindowTaskType>;
    FWindowId: Nullable<string>;
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
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
    function GetTaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters;
    procedure SetTaskInvocationParameters(const Value: TMaintenanceWindowTaskInvocationParameters);
    function GetKeepTaskInvocationParameters: Boolean;
    procedure SetKeepTaskInvocationParameters(const Value: Boolean);
    function GetTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
    procedure SetTaskParameters(const Value: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>);
    function GetKeepTaskParameters: Boolean;
    procedure SetKeepTaskParameters(const Value: Boolean);
    function GetTaskType: TMaintenanceWindowTaskType;
    procedure SetTaskType(const Value: TMaintenanceWindowTaskType);
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
  strict protected
    function Obj: TRegisterTaskWithMaintenanceWindowRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetClientToken: Boolean;
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
    function IsSetTaskInvocationParameters: Boolean;
    function IsSetTaskParameters: Boolean;
    function IsSetTaskType: Boolean;
    function IsSetWindowId: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
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
    property TaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters read GetTaskInvocationParameters write SetTaskInvocationParameters;
    property KeepTaskInvocationParameters: Boolean read GetKeepTaskInvocationParameters write SetKeepTaskInvocationParameters;
    property TaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression> read GetTaskParameters write SetTaskParameters;
    property KeepTaskParameters: Boolean read GetKeepTaskParameters write SetKeepTaskParameters;
    property TaskType: TMaintenanceWindowTaskType read GetTaskType write SetTaskType;
    property WindowId: string read GetWindowId write SetWindowId;
  end;
  
implementation

{ TRegisterTaskWithMaintenanceWindowRequest }

constructor TRegisterTaskWithMaintenanceWindowRequest.Create;
begin
  inherited;
  FTargets := TObjectList<TTarget>.Create;
  FTaskParameters := TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>.Create([doOwnsValues]);
end;

destructor TRegisterTaskWithMaintenanceWindowRequest.Destroy;
begin
  TaskParameters := nil;
  TaskInvocationParameters := nil;
  Targets := nil;
  LoggingInfo := nil;
  inherited;
end;

function TRegisterTaskWithMaintenanceWindowRequest.Obj: TRegisterTaskWithMaintenanceWindowRequest;
begin
  Result := Self;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetCutoffBehavior: TMaintenanceWindowTaskCutoffBehavior;
begin
  Result := FCutoffBehavior.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetCutoffBehavior(const Value: TMaintenanceWindowTaskCutoffBehavior);
begin
  FCutoffBehavior := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetCutoffBehavior: Boolean;
begin
  Result := FCutoffBehavior.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetLoggingInfo: TLoggingInfo;
begin
  Result := FLoggingInfo;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetLoggingInfo(const Value: TLoggingInfo);
begin
  if FLoggingInfo <> Value then
  begin
    if not KeepLoggingInfo then
      FLoggingInfo.Free;
    FLoggingInfo := Value;
  end;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetKeepLoggingInfo: Boolean;
begin
  Result := FKeepLoggingInfo;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetKeepLoggingInfo(const Value: Boolean);
begin
  FKeepLoggingInfo := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetLoggingInfo: Boolean;
begin
  Result := FLoggingInfo <> nil;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetServiceRoleArn: string;
begin
  Result := FServiceRoleArn.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetServiceRoleArn(const Value: string);
begin
  FServiceRoleArn := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetServiceRoleArn: Boolean;
begin
  Result := FServiceRoleArn.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetTaskArn: string;
begin
  Result := FTaskArn.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetTaskArn(const Value: string);
begin
  FTaskArn := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetTaskArn: Boolean;
begin
  Result := FTaskArn.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetTaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters;
begin
  Result := FTaskInvocationParameters;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetTaskInvocationParameters(const Value: TMaintenanceWindowTaskInvocationParameters);
begin
  if FTaskInvocationParameters <> Value then
  begin
    if not KeepTaskInvocationParameters then
      FTaskInvocationParameters.Free;
    FTaskInvocationParameters := Value;
  end;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetKeepTaskInvocationParameters: Boolean;
begin
  Result := FKeepTaskInvocationParameters;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetKeepTaskInvocationParameters(const Value: Boolean);
begin
  FKeepTaskInvocationParameters := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetTaskInvocationParameters: Boolean;
begin
  Result := FTaskInvocationParameters <> nil;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
begin
  Result := FTaskParameters;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetTaskParameters(const Value: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>);
begin
  if FTaskParameters <> Value then
  begin
    if not KeepTaskParameters then
      FTaskParameters.Free;
    FTaskParameters := Value;
  end;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetKeepTaskParameters: Boolean;
begin
  Result := FKeepTaskParameters;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetKeepTaskParameters(const Value: Boolean);
begin
  FKeepTaskParameters := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetTaskParameters: Boolean;
begin
  Result := (FTaskParameters <> nil) and (FTaskParameters.Count > 0);
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetTaskType: TMaintenanceWindowTaskType;
begin
  Result := FTaskType.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetTaskType(const Value: TMaintenanceWindowTaskType);
begin
  FTaskType := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetTaskType: Boolean;
begin
  Result := FTaskType.HasValue;
end;

function TRegisterTaskWithMaintenanceWindowRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TRegisterTaskWithMaintenanceWindowRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TRegisterTaskWithMaintenanceWindowRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

end.
