unit AWS.SSM.Model.UpdateMaintenanceWindowTaskResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.LoggingInfo, 
  AWS.SSM.Model.Target, 
  AWS.SSM.Model.MaintenanceWindowTaskInvocationParameters, 
  AWS.SSM.Model.MaintenanceWindowTaskParameterValueExpression;

type
  TUpdateMaintenanceWindowTaskResponse = class;
  
  IUpdateMaintenanceWindowTaskResponse = interface(IAmazonWebServiceResponse)
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
    function GetWindowId: string;
    procedure SetWindowId(const Value: string);
    function GetWindowTaskId: string;
    procedure SetWindowTaskId(const Value: string);
    function Obj: TUpdateMaintenanceWindowTaskResponse;
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
    property TaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters read GetTaskInvocationParameters write SetTaskInvocationParameters;
    property KeepTaskInvocationParameters: Boolean read GetKeepTaskInvocationParameters write SetKeepTaskInvocationParameters;
    property TaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression> read GetTaskParameters write SetTaskParameters;
    property KeepTaskParameters: Boolean read GetKeepTaskParameters write SetKeepTaskParameters;
    property WindowId: string read GetWindowId write SetWindowId;
    property WindowTaskId: string read GetWindowTaskId write SetWindowTaskId;
  end;
  
  TUpdateMaintenanceWindowTaskResponse = class(TAmazonWebServiceResponse, IUpdateMaintenanceWindowTaskResponse)
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
    function Obj: TUpdateMaintenanceWindowTaskResponse;
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

{ TUpdateMaintenanceWindowTaskResponse }

constructor TUpdateMaintenanceWindowTaskResponse.Create;
begin
  inherited;
  FTargets := TObjectList<TTarget>.Create;
  FTaskParameters := TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>.Create([doOwnsValues]);
end;

destructor TUpdateMaintenanceWindowTaskResponse.Destroy;
begin
  TaskParameters := nil;
  TaskInvocationParameters := nil;
  Targets := nil;
  LoggingInfo := nil;
  inherited;
end;

function TUpdateMaintenanceWindowTaskResponse.Obj: TUpdateMaintenanceWindowTaskResponse;
begin
  Result := Self;
end;

function TUpdateMaintenanceWindowTaskResponse.GetCutoffBehavior: TMaintenanceWindowTaskCutoffBehavior;
begin
  Result := FCutoffBehavior.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetCutoffBehavior(const Value: TMaintenanceWindowTaskCutoffBehavior);
begin
  FCutoffBehavior := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetCutoffBehavior: Boolean;
begin
  Result := FCutoffBehavior.HasValue;
end;

function TUpdateMaintenanceWindowTaskResponse.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdateMaintenanceWindowTaskResponse.GetLoggingInfo: TLoggingInfo;
begin
  Result := FLoggingInfo;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetLoggingInfo(const Value: TLoggingInfo);
begin
  if FLoggingInfo <> Value then
  begin
    if not KeepLoggingInfo then
      FLoggingInfo.Free;
    FLoggingInfo := Value;
  end;
end;

function TUpdateMaintenanceWindowTaskResponse.GetKeepLoggingInfo: Boolean;
begin
  Result := FKeepLoggingInfo;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetKeepLoggingInfo(const Value: Boolean);
begin
  FKeepLoggingInfo := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetLoggingInfo: Boolean;
begin
  Result := FLoggingInfo <> nil;
end;

function TUpdateMaintenanceWindowTaskResponse.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TUpdateMaintenanceWindowTaskResponse.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TUpdateMaintenanceWindowTaskResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateMaintenanceWindowTaskResponse.GetPriority: Integer;
begin
  Result := FPriority.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetPriority(const Value: Integer);
begin
  FPriority := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetPriority: Boolean;
begin
  Result := FPriority.HasValue;
end;

function TUpdateMaintenanceWindowTaskResponse.GetServiceRoleArn: string;
begin
  Result := FServiceRoleArn.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetServiceRoleArn(const Value: string);
begin
  FServiceRoleArn := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetServiceRoleArn: Boolean;
begin
  Result := FServiceRoleArn.HasValue;
end;

function TUpdateMaintenanceWindowTaskResponse.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TUpdateMaintenanceWindowTaskResponse.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TUpdateMaintenanceWindowTaskResponse.GetTaskArn: string;
begin
  Result := FTaskArn.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetTaskArn(const Value: string);
begin
  FTaskArn := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetTaskArn: Boolean;
begin
  Result := FTaskArn.HasValue;
end;

function TUpdateMaintenanceWindowTaskResponse.GetTaskInvocationParameters: TMaintenanceWindowTaskInvocationParameters;
begin
  Result := FTaskInvocationParameters;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetTaskInvocationParameters(const Value: TMaintenanceWindowTaskInvocationParameters);
begin
  if FTaskInvocationParameters <> Value then
  begin
    if not KeepTaskInvocationParameters then
      FTaskInvocationParameters.Free;
    FTaskInvocationParameters := Value;
  end;
end;

function TUpdateMaintenanceWindowTaskResponse.GetKeepTaskInvocationParameters: Boolean;
begin
  Result := FKeepTaskInvocationParameters;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetKeepTaskInvocationParameters(const Value: Boolean);
begin
  FKeepTaskInvocationParameters := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetTaskInvocationParameters: Boolean;
begin
  Result := FTaskInvocationParameters <> nil;
end;

function TUpdateMaintenanceWindowTaskResponse.GetTaskParameters: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>;
begin
  Result := FTaskParameters;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetTaskParameters(const Value: TObjectDictionary<string, TMaintenanceWindowTaskParameterValueExpression>);
begin
  if FTaskParameters <> Value then
  begin
    if not KeepTaskParameters then
      FTaskParameters.Free;
    FTaskParameters := Value;
  end;
end;

function TUpdateMaintenanceWindowTaskResponse.GetKeepTaskParameters: Boolean;
begin
  Result := FKeepTaskParameters;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetKeepTaskParameters(const Value: Boolean);
begin
  FKeepTaskParameters := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetTaskParameters: Boolean;
begin
  Result := (FTaskParameters <> nil) and (FTaskParameters.Count > 0);
end;

function TUpdateMaintenanceWindowTaskResponse.GetWindowId: string;
begin
  Result := FWindowId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetWindowId(const Value: string);
begin
  FWindowId := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetWindowId: Boolean;
begin
  Result := FWindowId.HasValue;
end;

function TUpdateMaintenanceWindowTaskResponse.GetWindowTaskId: string;
begin
  Result := FWindowTaskId.ValueOrDefault;
end;

procedure TUpdateMaintenanceWindowTaskResponse.SetWindowTaskId(const Value: string);
begin
  FWindowTaskId := Value;
end;

function TUpdateMaintenanceWindowTaskResponse.IsSetWindowTaskId: Boolean;
begin
  Result := FWindowTaskId.HasValue;
end;

end.
