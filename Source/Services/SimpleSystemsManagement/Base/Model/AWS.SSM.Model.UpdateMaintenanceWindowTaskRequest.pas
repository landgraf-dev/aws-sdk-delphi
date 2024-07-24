unit AWS.SSM.Model.UpdateMaintenanceWindowTaskRequest;

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
  TUpdateMaintenanceWindowTaskRequest = class;
  
  IUpdateMaintenanceWindowTaskRequest = interface
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
    function GetReplace: Boolean;
    procedure SetReplace(const Value: Boolean);
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
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
    function Obj: TUpdateMaintenanceWindowTaskRequest;
    function IsSetCutoffBehavior: Boolean;
    function IsSetDescription: Boolean;
    function IsSetLoggingInfo: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetName: Boolean;
    function IsSetPriority: Boolean;
    function IsSetReplace: Boolean;
    function IsSetServiceRoleArn: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTaskArn: Boolean;
    function IsSetTaskInvocationParameters: Boolean;
    function IsSetTaskParameters: Boolean;
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
    property Replace: Boolean read GetReplace write SetReplace;
    property ServiceRoleArn: string read GetServiceRoleArn write SetServiceRoleArn;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TaskArn: string read GetTaskArn write SetTaskArn;
    property TaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters read GetTaskInvocationParameters write SetTaskInvocationParameters;
    property KeepTaskInvocationParameters: Boolean read GetKeepTaskInvocationParameters write SetKeepTaskInvocationParameters;
    property TaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression> read GetTaskParameters write SetTaskParameters;
    property KeepTaskParameters: Boolean read GetKeepTaskParameters write SetKeepTaskParameters;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
  TUpdateMaintenanceWindowTaskRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateMaintenanceWindowTaskRequest)
  strict private
    FCutoffBehavior: Nullable<TMaintenanceWindowTaskCutoffBehavior>;
    FDescription: Nullable<string>;
    FLoggingInfo: TLoggingInfo;
    FKeepLoggingInfo: Boolean;
    FMaxConcurrency: Nullable<string>;
    FMaxErrors: Nullable<string>;
    FName: Nullable<string>;
    FPriority: Nullable<Integer>;
    FReplace: Nullable<Boolean>;
    FServiceRoleArn: Nullable<string>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    FTaskArn: Nullable<string>;
    FTaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters;
    FKeepTaskInvocationParameters: Boolean;
    FTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
    FKeepTaskParameters: Boolean;
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
    function GetReplace: Boolean;
    procedure SetReplace(const Value: Boolean);
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
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
  strict protected
    function Obj: TUpdateMaintenanceWindowTaskRequest;
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
    function IsSetReplace: Boolean;
    function IsSetServiceRoleArn: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTaskArn: Boolean;
    function IsSetTaskInvocationParameters: Boolean;
    function IsSetTaskParameters: Boolean;
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
    property Replace: Boolean read GetReplace write SetReplace;
    property ServiceRoleArn: string read GetServiceRoleArn write SetServiceRoleArn;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TaskArn: string read GetTaskArn write SetTaskArn;
    property TaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters read GetTaskInvocationParameters write SetTaskInvocationParameters;
    property KeepTaskInvocationParameters: Boolean read GetKeepTaskInvocationParameters write SetKeepTaskInvocationParameters;
    property TaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression> read GetTaskParameters write SetTaskParameters;
    property KeepTaskParameters: Boolean read GetKeepTaskParameters write SetKeepTaskParameters;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
implementation

{ TUpdateMaintenanceWindowTaskRequest }

constructor TUpdateMaintenanceWindowTaskRequest.Create;
begin
  inherited;
  FTargets := TObjectList<TTarget>.Create;
  FTaskParameters := TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>.Create([doOwnsValues]);
end;

destructor TUpdateMaintenanceWindowTaskRequest.Destroy;
begin
  TaskParameters := nil;
  TaskInvocationParameters := nil;
  Targets := nil;
  LoggingInfo := nil;
  inherited;
end;

function TUpdateMaintenanceWindowTaskRequest.Obj: TUpdateMaintenanceWindowTaskRequest;
begin
  Result := Self;
end;

function TUpdateMaintenanceWindowTaskRequest.GetCutoffBehavior: TMaintenanceWindowTaskCutoffBehavior;
begin
  Result := FCutoffBehavior.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetCutoffBehavior(const Value: TMaintenanceWindowTaskCutoffBehavior);
begin
  FCutoffBehavior := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetCutoffBehavior: Boolean;
begin
  Result := FCutoffBehavior.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetLoggingInfo: TLoggingInfo;
begin
  Result := FLoggingInfo;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetLoggingInfo(const Value: TLoggingInfo);
begin
  if FLoggingInfo <> Value then
  begin
    if not KeepLoggingInfo then
      FLoggingInfo.Free;
    FLoggingInfo := Value;
  end;
end;

function TUpdateMaintenanceWindowTaskRequest.GetKeepLoggingInfo: Boolean;
begin
  Result := FKeepLoggingInfo;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetKeepLoggingInfo(const Value: Boolean);
begin
  FKeepLoggingInfo := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetLoggingInfo: Boolean;
begin
  Result := FLoggingInfo <> nil;
end;

function TUpdateMaintenanceWindowTaskRequest.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetReplace: Boolean;
begin
  Result := FReplace.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetReplace(const Value: Boolean);
begin
  FReplace := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetReplace: Boolean;
begin
  Result := FReplace.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetServiceRoleArn: string;
begin
  Result := FServiceRoleArn.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetServiceRoleArn(const Value: string);
begin
  FServiceRoleArn := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetServiceRoleArn: Boolean;
begin
  Result := FServiceRoleArn.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TUpdateMaintenanceWindowTaskRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TUpdateMaintenanceWindowTaskRequest.GetTaskArn: string;
begin
  Result := FTaskArn.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetTaskArn(const Value: string);
begin
  FTaskArn := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetTaskArn: Boolean;
begin
  Result := FTaskArn.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetTaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters;
begin
  Result := FTaskInvocationParameters;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetTaskInvocationParameters(const Value: TMaintenanceWindowTaskInvocationParameters);
begin
  if FTaskInvocationParameters <> Value then
  begin
    if not KeepTaskInvocationParameters then
      FTaskInvocationParameters.Free;
    FTaskInvocationParameters := Value;
  end;
end;

function TUpdateMaintenanceWindowTaskRequest.GetKeepTaskInvocationParameters: Boolean;
begin
  Result := FKeepTaskInvocationParameters;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetKeepTaskInvocationParameters(const Value: Boolean);
begin
  FKeepTaskInvocationParameters := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetTaskInvocationParameters: Boolean;
begin
  Result := FTaskInvocationParameters <> nil;
end;

function TUpdateMaintenanceWindowTaskRequest.GetTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
begin
  Result := FTaskParameters;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetTaskParameters(const Value: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>);
begin
  if FTaskParameters <> Value then
  begin
    if not KeepTaskParameters then
      FTaskParameters.Free;
    FTaskParameters := Value;
  end;
end;

function TUpdateMaintenanceWindowTaskRequest.GetKeepTaskParameters: Boolean;
begin
  Result := FKeepTaskParameters;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetKeepTaskParameters(const Value: Boolean);
begin
  FKeepTaskParameters := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetTaskParameters: Boolean;
begin
  Result := (FTaskParameters <> nil) and (FTaskParameters.Count > 0);
end;

function TUpdateMaintenanceWindowTaskRequest.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TUpdateMaintenanceWindowTaskRequest.GetWindowTaskId: string;
begin
  Result := FWindowTaskId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskRequest.SetWindowTaskId(const Value: string);
begin
  FWindowTaskId := Value;
end;

function TUpdateMaintenanceWindowTaskRequest.IsSetWindowTaskId: Boolean;
begin
  Result := FWindowTaskId.HasValue;
end;

end.
