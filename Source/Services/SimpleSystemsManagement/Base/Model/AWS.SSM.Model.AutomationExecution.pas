unit AWS.SSM.Model.AutomationExecution;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.ProgressCounters, 
  AWS.SSM.Model.ResolvedTargets, 
  AWS.SSM.Model.Runbook, 
  AWS.SSM.Model.StepExecution, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Model.Target;

type
  TAutomationExecution = class;
  
  IAutomationExecution = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function GetAutomationExecutionStatus: TAutomationExecutionStatus;
    procedure SetAutomationExecutionStatus(const Value: TAutomationExecutionStatus);
    function GetAutomationSubtype: TAutomationSubtype;
    procedure SetAutomationSubtype(const Value: TAutomationSubtype);
    function GetChangeRequestName: string;
    procedure SetChangeRequestName(const Value: string);
    function GetCurrentAction: string;
    procedure SetCurrentAction(const Value: string);
    function GetCurrentStepName: string;
    procedure SetCurrentStepName(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetExecutedBy: string;
    procedure SetExecutedBy(const Value: string);
    function GetExecutionEndTime: TDateTime;
    procedure SetExecutionEndTime(const Value: TDateTime);
    function GetExecutionStartTime: TDateTime;
    procedure SetExecutionStartTime(const Value: TDateTime);
    function GetFailureMessage: string;
    procedure SetFailureMessage(const Value: string);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetMode: TExecutionMode;
    procedure SetMode(const Value: TExecutionMode);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetOutputs: TObjectDictionary<string, TList<string>>;
    procedure SetOutputs(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepOutputs: Boolean;
    procedure SetKeepOutputs(const Value: Boolean);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetParentAutomationExecutionId: string;
    procedure SetParentAutomationExecutionId(const Value: string);
    function GetProgressCounters: TProgressCounters;
    procedure SetProgressCounters(const Value: TProgressCounters);
    function GetKeepProgressCounters: Boolean;
    procedure SetKeepProgressCounters(const Value: Boolean);
    function GetResolvedTargets: TResolvedTargets;
    procedure SetResolvedTargets(const Value: TResolvedTargets);
    function GetKeepResolvedTargets: Boolean;
    procedure SetKeepResolvedTargets(const Value: Boolean);
    function GetRunbooks: TObjectList<TRunbook>;
    procedure SetRunbooks(const Value: TObjectList<TRunbook>);
    function GetKeepRunbooks: Boolean;
    procedure SetKeepRunbooks(const Value: Boolean);
    function GetScheduledTime: TDateTime;
    procedure SetScheduledTime(const Value: TDateTime);
    function GetStepExecutions: TObjectList<TStepExecution>;
    procedure SetStepExecutions(const Value: TObjectList<TStepExecution>);
    function GetKeepStepExecutions: Boolean;
    procedure SetKeepStepExecutions(const Value: Boolean);
    function GetStepExecutionsTruncated: Boolean;
    procedure SetStepExecutionsTruncated(const Value: Boolean);
    function GetTarget: string;
    procedure SetTarget(const Value: string);
    function GetTargetLocations: TObjectList<TTargetLocation>;
    procedure SetTargetLocations(const Value: TObjectList<TTargetLocation>);
    function GetKeepTargetLocations: Boolean;
    procedure SetKeepTargetLocations(const Value: Boolean);
    function GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    procedure SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
    function GetKeepTargetMaps: Boolean;
    procedure SetKeepTargetMaps(const Value: Boolean);
    function GetTargetParameterName: string;
    procedure SetTargetParameterName(const Value: string);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function Obj: TAutomationExecution;
    function IsSetAssociationId: Boolean;
    function IsSetAutomationExecutionId: Boolean;
    function IsSetAutomationExecutionStatus: Boolean;
    function IsSetAutomationSubtype: Boolean;
    function IsSetChangeRequestName: Boolean;
    function IsSetCurrentAction: Boolean;
    function IsSetCurrentStepName: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetExecutedBy: Boolean;
    function IsSetExecutionEndTime: Boolean;
    function IsSetExecutionStartTime: Boolean;
    function IsSetFailureMessage: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetMode: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetOutputs: Boolean;
    function IsSetParameters: Boolean;
    function IsSetParentAutomationExecutionId: Boolean;
    function IsSetProgressCounters: Boolean;
    function IsSetResolvedTargets: Boolean;
    function IsSetRunbooks: Boolean;
    function IsSetScheduledTime: Boolean;
    function IsSetStepExecutions: Boolean;
    function IsSetStepExecutionsTruncated: Boolean;
    function IsSetTarget: Boolean;
    function IsSetTargetLocations: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargetParameterName: Boolean;
    function IsSetTargets: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property AutomationExecutionStatus: TAutomationExecutionStatus read GetAutomationExecutionStatus write SetAutomationExecutionStatus;
    property AutomationSubtype: TAutomationSubtype read GetAutomationSubtype write SetAutomationSubtype;
    property ChangeRequestName: string read GetChangeRequestName write SetChangeRequestName;
    property CurrentAction: string read GetCurrentAction write SetCurrentAction;
    property CurrentStepName: string read GetCurrentStepName write SetCurrentStepName;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ExecutedBy: string read GetExecutedBy write SetExecutedBy;
    property ExecutionEndTime: TDateTime read GetExecutionEndTime write SetExecutionEndTime;
    property ExecutionStartTime: TDateTime read GetExecutionStartTime write SetExecutionStartTime;
    property FailureMessage: string read GetFailureMessage write SetFailureMessage;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Mode: TExecutionMode read GetMode write SetMode;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property Outputs: TObjectDictionary<string, TList<string>> read GetOutputs write SetOutputs;
    property KeepOutputs: Boolean read GetKeepOutputs write SetKeepOutputs;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property ParentAutomationExecutionId: string read GetParentAutomationExecutionId write SetParentAutomationExecutionId;
    property ProgressCounters: TProgressCounters read GetProgressCounters write SetProgressCounters;
    property KeepProgressCounters: Boolean read GetKeepProgressCounters write SetKeepProgressCounters;
    property ResolvedTargets: TResolvedTargets read GetResolvedTargets write SetResolvedTargets;
    property KeepResolvedTargets: Boolean read GetKeepResolvedTargets write SetKeepResolvedTargets;
    property Runbooks: TObjectList<TRunbook> read GetRunbooks write SetRunbooks;
    property KeepRunbooks: Boolean read GetKeepRunbooks write SetKeepRunbooks;
    property ScheduledTime: TDateTime read GetScheduledTime write SetScheduledTime;
    property StepExecutions: TObjectList<TStepExecution> read GetStepExecutions write SetStepExecutions;
    property KeepStepExecutions: Boolean read GetKeepStepExecutions write SetKeepStepExecutions;
    property StepExecutionsTruncated: Boolean read GetStepExecutionsTruncated write SetStepExecutionsTruncated;
    property Target: string read GetTarget write SetTarget;
    property TargetLocations: TObjectList<TTargetLocation> read GetTargetLocations write SetTargetLocations;
    property KeepTargetLocations: Boolean read GetKeepTargetLocations write SetKeepTargetLocations;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property TargetParameterName: string read GetTargetParameterName write SetTargetParameterName;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
  TAutomationExecution = class
  strict private
    FAssociationId: Nullable<string>;
    FAutomationExecutionId: Nullable<string>;
    FAutomationExecutionStatus: Nullable<TAutomationExecutionStatus>;
    FAutomationSubtype: Nullable<TAutomationSubtype>;
    FChangeRequestName: Nullable<string>;
    FCurrentAction: Nullable<string>;
    FCurrentStepName: Nullable<string>;
    FDocumentName: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FExecutedBy: Nullable<string>;
    FExecutionEndTime: Nullable<TDateTime>;
    FExecutionStartTime: Nullable<TDateTime>;
    FFailureMessage: Nullable<string>;
    FMaxConcurrency: Nullable<string>;
    FMaxErrors: Nullable<string>;
    FMode: Nullable<TExecutionMode>;
    FOpsItemId: Nullable<string>;
    FOutputs: TObjectDictionary<string, TList<string>>;
    FKeepOutputs: Boolean;
    FParameters: TObjectDictionary<string, TList<string>>;
    FKeepParameters: Boolean;
    FParentAutomationExecutionId: Nullable<string>;
    FProgressCounters: TProgressCounters;
    FKeepProgressCounters: Boolean;
    FResolvedTargets: TResolvedTargets;
    FKeepResolvedTargets: Boolean;
    FRunbooks: TObjectList<TRunbook>;
    FKeepRunbooks: Boolean;
    FScheduledTime: Nullable<TDateTime>;
    FStepExecutions: TObjectList<TStepExecution>;
    FKeepStepExecutions: Boolean;
    FStepExecutionsTruncated: Nullable<Boolean>;
    FTarget: Nullable<string>;
    FTargetLocations: TObjectList<TTargetLocation>;
    FKeepTargetLocations: Boolean;
    FTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    FKeepTargetMaps: Boolean;
    FTargetParameterName: Nullable<string>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function GetAutomationExecutionStatus: TAutomationExecutionStatus;
    procedure SetAutomationExecutionStatus(const Value: TAutomationExecutionStatus);
    function GetAutomationSubtype: TAutomationSubtype;
    procedure SetAutomationSubtype(const Value: TAutomationSubtype);
    function GetChangeRequestName: string;
    procedure SetChangeRequestName(const Value: string);
    function GetCurrentAction: string;
    procedure SetCurrentAction(const Value: string);
    function GetCurrentStepName: string;
    procedure SetCurrentStepName(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetExecutedBy: string;
    procedure SetExecutedBy(const Value: string);
    function GetExecutionEndTime: TDateTime;
    procedure SetExecutionEndTime(const Value: TDateTime);
    function GetExecutionStartTime: TDateTime;
    procedure SetExecutionStartTime(const Value: TDateTime);
    function GetFailureMessage: string;
    procedure SetFailureMessage(const Value: string);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetMode: TExecutionMode;
    procedure SetMode(const Value: TExecutionMode);
    function GetOpsItemId: string;
    procedure SetOpsItemId(const Value: string);
    function GetOutputs: TObjectDictionary<string, TList<string>>;
    procedure SetOutputs(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepOutputs: Boolean;
    procedure SetKeepOutputs(const Value: Boolean);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetParentAutomationExecutionId: string;
    procedure SetParentAutomationExecutionId(const Value: string);
    function GetProgressCounters: TProgressCounters;
    procedure SetProgressCounters(const Value: TProgressCounters);
    function GetKeepProgressCounters: Boolean;
    procedure SetKeepProgressCounters(const Value: Boolean);
    function GetResolvedTargets: TResolvedTargets;
    procedure SetResolvedTargets(const Value: TResolvedTargets);
    function GetKeepResolvedTargets: Boolean;
    procedure SetKeepResolvedTargets(const Value: Boolean);
    function GetRunbooks: TObjectList<TRunbook>;
    procedure SetRunbooks(const Value: TObjectList<TRunbook>);
    function GetKeepRunbooks: Boolean;
    procedure SetKeepRunbooks(const Value: Boolean);
    function GetScheduledTime: TDateTime;
    procedure SetScheduledTime(const Value: TDateTime);
    function GetStepExecutions: TObjectList<TStepExecution>;
    procedure SetStepExecutions(const Value: TObjectList<TStepExecution>);
    function GetKeepStepExecutions: Boolean;
    procedure SetKeepStepExecutions(const Value: Boolean);
    function GetStepExecutionsTruncated: Boolean;
    procedure SetStepExecutionsTruncated(const Value: Boolean);
    function GetTarget: string;
    procedure SetTarget(const Value: string);
    function GetTargetLocations: TObjectList<TTargetLocation>;
    procedure SetTargetLocations(const Value: TObjectList<TTargetLocation>);
    function GetKeepTargetLocations: Boolean;
    procedure SetKeepTargetLocations(const Value: Boolean);
    function GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    procedure SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
    function GetKeepTargetMaps: Boolean;
    procedure SetKeepTargetMaps(const Value: Boolean);
    function GetTargetParameterName: string;
    procedure SetTargetParameterName(const Value: string);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
  strict protected
    function Obj: TAutomationExecution;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationId: Boolean;
    function IsSetAutomationExecutionId: Boolean;
    function IsSetAutomationExecutionStatus: Boolean;
    function IsSetAutomationSubtype: Boolean;
    function IsSetChangeRequestName: Boolean;
    function IsSetCurrentAction: Boolean;
    function IsSetCurrentStepName: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetExecutedBy: Boolean;
    function IsSetExecutionEndTime: Boolean;
    function IsSetExecutionStartTime: Boolean;
    function IsSetFailureMessage: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetMode: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetOutputs: Boolean;
    function IsSetParameters: Boolean;
    function IsSetParentAutomationExecutionId: Boolean;
    function IsSetProgressCounters: Boolean;
    function IsSetResolvedTargets: Boolean;
    function IsSetRunbooks: Boolean;
    function IsSetScheduledTime: Boolean;
    function IsSetStepExecutions: Boolean;
    function IsSetStepExecutionsTruncated: Boolean;
    function IsSetTarget: Boolean;
    function IsSetTargetLocations: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargetParameterName: Boolean;
    function IsSetTargets: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property AutomationExecutionStatus: TAutomationExecutionStatus read GetAutomationExecutionStatus write SetAutomationExecutionStatus;
    property AutomationSubtype: TAutomationSubtype read GetAutomationSubtype write SetAutomationSubtype;
    property ChangeRequestName: string read GetChangeRequestName write SetChangeRequestName;
    property CurrentAction: string read GetCurrentAction write SetCurrentAction;
    property CurrentStepName: string read GetCurrentStepName write SetCurrentStepName;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ExecutedBy: string read GetExecutedBy write SetExecutedBy;
    property ExecutionEndTime: TDateTime read GetExecutionEndTime write SetExecutionEndTime;
    property ExecutionStartTime: TDateTime read GetExecutionStartTime write SetExecutionStartTime;
    property FailureMessage: string read GetFailureMessage write SetFailureMessage;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Mode: TExecutionMode read GetMode write SetMode;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property Outputs: TObjectDictionary<string, TList<string>> read GetOutputs write SetOutputs;
    property KeepOutputs: Boolean read GetKeepOutputs write SetKeepOutputs;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property ParentAutomationExecutionId: string read GetParentAutomationExecutionId write SetParentAutomationExecutionId;
    property ProgressCounters: TProgressCounters read GetProgressCounters write SetProgressCounters;
    property KeepProgressCounters: Boolean read GetKeepProgressCounters write SetKeepProgressCounters;
    property ResolvedTargets: TResolvedTargets read GetResolvedTargets write SetResolvedTargets;
    property KeepResolvedTargets: Boolean read GetKeepResolvedTargets write SetKeepResolvedTargets;
    property Runbooks: TObjectList<TRunbook> read GetRunbooks write SetRunbooks;
    property KeepRunbooks: Boolean read GetKeepRunbooks write SetKeepRunbooks;
    property ScheduledTime: TDateTime read GetScheduledTime write SetScheduledTime;
    property StepExecutions: TObjectList<TStepExecution> read GetStepExecutions write SetStepExecutions;
    property KeepStepExecutions: Boolean read GetKeepStepExecutions write SetKeepStepExecutions;
    property StepExecutionsTruncated: Boolean read GetStepExecutionsTruncated write SetStepExecutionsTruncated;
    property Target: string read GetTarget write SetTarget;
    property TargetLocations: TObjectList<TTargetLocation> read GetTargetLocations write SetTargetLocations;
    property KeepTargetLocations: Boolean read GetKeepTargetLocations write SetKeepTargetLocations;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property TargetParameterName: string read GetTargetParameterName write SetTargetParameterName;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
implementation

{ TAutomationExecution }

constructor TAutomationExecution.Create;
begin
  inherited;
  FOutputs := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FRunbooks := TObjectList<TRunbook>.Create;
  FStepExecutions := TObjectList<TStepExecution>.Create;
  FTargetLocations := TObjectList<TTargetLocation>.Create;
  FTargetMaps := TObjectList<TObjectDictionary<string, TList<string>>>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TAutomationExecution.Destroy;
begin
  Targets := nil;
  TargetMaps := nil;
  TargetLocations := nil;
  StepExecutions := nil;
  Runbooks := nil;
  ResolvedTargets := nil;
  ProgressCounters := nil;
  Parameters := nil;
  Outputs := nil;
  inherited;
end;

function TAutomationExecution.Obj: TAutomationExecution;
begin
  Result := Self;
end;

function TAutomationExecution.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TAutomationExecution.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TAutomationExecution.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TAutomationExecution.GetAutomationExecutionId: string;
begin
  Result := FAutomationExecutionId.ValueOrDefault;
end;

procedure TAutomationExecution.SetAutomationExecutionId(const Value: string);
begin
  FAutomationExecutionId := Value;
end;

function TAutomationExecution.IsSetAutomationExecutionId: Boolean;
begin
  Result := FAutomationExecutionId.HasValue;
end;

function TAutomationExecution.GetAutomationExecutionStatus: TAutomationExecutionStatus;
begin
  Result := FAutomationExecutionStatus.ValueOrDefault;
end;

procedure TAutomationExecution.SetAutomationExecutionStatus(const Value: TAutomationExecutionStatus);
begin
  FAutomationExecutionStatus := Value;
end;

function TAutomationExecution.IsSetAutomationExecutionStatus: Boolean;
begin
  Result := FAutomationExecutionStatus.HasValue;
end;

function TAutomationExecution.GetAutomationSubtype: TAutomationSubtype;
begin
  Result := FAutomationSubtype.ValueOrDefault;
end;

procedure TAutomationExecution.SetAutomationSubtype(const Value: TAutomationSubtype);
begin
  FAutomationSubtype := Value;
end;

function TAutomationExecution.IsSetAutomationSubtype: Boolean;
begin
  Result := FAutomationSubtype.HasValue;
end;

function TAutomationExecution.GetChangeRequestName: string;
begin
  Result := FChangeRequestName.ValueOrDefault;
end;

procedure TAutomationExecution.SetChangeRequestName(const Value: string);
begin
  FChangeRequestName := Value;
end;

function TAutomationExecution.IsSetChangeRequestName: Boolean;
begin
  Result := FChangeRequestName.HasValue;
end;

function TAutomationExecution.GetCurrentAction: string;
begin
  Result := FCurrentAction.ValueOrDefault;
end;

procedure TAutomationExecution.SetCurrentAction(const Value: string);
begin
  FCurrentAction := Value;
end;

function TAutomationExecution.IsSetCurrentAction: Boolean;
begin
  Result := FCurrentAction.HasValue;
end;

function TAutomationExecution.GetCurrentStepName: string;
begin
  Result := FCurrentStepName.ValueOrDefault;
end;

procedure TAutomationExecution.SetCurrentStepName(const Value: string);
begin
  FCurrentStepName := Value;
end;

function TAutomationExecution.IsSetCurrentStepName: Boolean;
begin
  Result := FCurrentStepName.HasValue;
end;

function TAutomationExecution.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TAutomationExecution.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TAutomationExecution.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TAutomationExecution.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TAutomationExecution.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TAutomationExecution.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TAutomationExecution.GetExecutedBy: string;
begin
  Result := FExecutedBy.ValueOrDefault;
end;

procedure TAutomationExecution.SetExecutedBy(const Value: string);
begin
  FExecutedBy := Value;
end;

function TAutomationExecution.IsSetExecutedBy: Boolean;
begin
  Result := FExecutedBy.HasValue;
end;

function TAutomationExecution.GetExecutionEndTime: TDateTime;
begin
  Result := FExecutionEndTime.ValueOrDefault;
end;

procedure TAutomationExecution.SetExecutionEndTime(const Value: TDateTime);
begin
  FExecutionEndTime := Value;
end;

function TAutomationExecution.IsSetExecutionEndTime: Boolean;
begin
  Result := FExecutionEndTime.HasValue;
end;

function TAutomationExecution.GetExecutionStartTime: TDateTime;
begin
  Result := FExecutionStartTime.ValueOrDefault;
end;

procedure TAutomationExecution.SetExecutionStartTime(const Value: TDateTime);
begin
  FExecutionStartTime := Value;
end;

function TAutomationExecution.IsSetExecutionStartTime: Boolean;
begin
  Result := FExecutionStartTime.HasValue;
end;

function TAutomationExecution.GetFailureMessage: string;
begin
  Result := FFailureMessage.ValueOrDefault;
end;

procedure TAutomationExecution.SetFailureMessage(const Value: string);
begin
  FFailureMessage := Value;
end;

function TAutomationExecution.IsSetFailureMessage: Boolean;
begin
  Result := FFailureMessage.HasValue;
end;

function TAutomationExecution.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TAutomationExecution.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TAutomationExecution.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TAutomationExecution.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TAutomationExecution.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TAutomationExecution.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TAutomationExecution.GetMode: TExecutionMode;
begin
  Result := FMode.ValueOrDefault;
end;

procedure TAutomationExecution.SetMode(const Value: TExecutionMode);
begin
  FMode := Value;
end;

function TAutomationExecution.IsSetMode: Boolean;
begin
  Result := FMode.HasValue;
end;

function TAutomationExecution.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TAutomationExecution.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TAutomationExecution.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

function TAutomationExecution.GetOutputs: TObjectDictionary<string, TList<string>>;
begin
  Result := FOutputs;
end;

procedure TAutomationExecution.SetOutputs(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FOutputs <> Value then
  begin
    if not KeepOutputs then
      FOutputs.Free;
    FOutputs := Value;
  end;
end;

function TAutomationExecution.GetKeepOutputs: Boolean;
begin
  Result := FKeepOutputs;
end;

procedure TAutomationExecution.SetKeepOutputs(const Value: Boolean);
begin
  FKeepOutputs := Value;
end;

function TAutomationExecution.IsSetOutputs: Boolean;
begin
  Result := (FOutputs <> nil) and (FOutputs.Count > 0);
end;

function TAutomationExecution.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TAutomationExecution.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TAutomationExecution.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TAutomationExecution.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TAutomationExecution.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TAutomationExecution.GetParentAutomationExecutionId: string;
begin
  Result := FParentAutomationExecutionId.ValueOrDefault;
end;

procedure TAutomationExecution.SetParentAutomationExecutionId(const Value: string);
begin
  FParentAutomationExecutionId := Value;
end;

function TAutomationExecution.IsSetParentAutomationExecutionId: Boolean;
begin
  Result := FParentAutomationExecutionId.HasValue;
end;

function TAutomationExecution.GetProgressCounters: TProgressCounters;
begin
  Result := FProgressCounters;
end;

procedure TAutomationExecution.SetProgressCounters(const Value: TProgressCounters);
begin
  if FProgressCounters <> Value then
  begin
    if not KeepProgressCounters then
      FProgressCounters.Free;
    FProgressCounters := Value;
  end;
end;

function TAutomationExecution.GetKeepProgressCounters: Boolean;
begin
  Result := FKeepProgressCounters;
end;

procedure TAutomationExecution.SetKeepProgressCounters(const Value: Boolean);
begin
  FKeepProgressCounters := Value;
end;

function TAutomationExecution.IsSetProgressCounters: Boolean;
begin
  Result := FProgressCounters <> nil;
end;

function TAutomationExecution.GetResolvedTargets: TResolvedTargets;
begin
  Result := FResolvedTargets;
end;

procedure TAutomationExecution.SetResolvedTargets(const Value: TResolvedTargets);
begin
  if FResolvedTargets <> Value then
  begin
    if not KeepResolvedTargets then
      FResolvedTargets.Free;
    FResolvedTargets := Value;
  end;
end;

function TAutomationExecution.GetKeepResolvedTargets: Boolean;
begin
  Result := FKeepResolvedTargets;
end;

procedure TAutomationExecution.SetKeepResolvedTargets(const Value: Boolean);
begin
  FKeepResolvedTargets := Value;
end;

function TAutomationExecution.IsSetResolvedTargets: Boolean;
begin
  Result := FResolvedTargets <> nil;
end;

function TAutomationExecution.GetRunbooks: TObjectList<TRunbook>;
begin
  Result := FRunbooks;
end;

procedure TAutomationExecution.SetRunbooks(const Value: TObjectList<TRunbook>);
begin
  if FRunbooks <> Value then
  begin
    if not KeepRunbooks then
      FRunbooks.Free;
    FRunbooks := Value;
  end;
end;

function TAutomationExecution.GetKeepRunbooks: Boolean;
begin
  Result := FKeepRunbooks;
end;

procedure TAutomationExecution.SetKeepRunbooks(const Value: Boolean);
begin
  FKeepRunbooks := Value;
end;

function TAutomationExecution.IsSetRunbooks: Boolean;
begin
  Result := (FRunbooks <> nil) and (FRunbooks.Count > 0);
end;

function TAutomationExecution.GetScheduledTime: TDateTime;
begin
  Result := FScheduledTime.ValueOrDefault;
end;

procedure TAutomationExecution.SetScheduledTime(const Value: TDateTime);
begin
  FScheduledTime := Value;
end;

function TAutomationExecution.IsSetScheduledTime: Boolean;
begin
  Result := FScheduledTime.HasValue;
end;

function TAutomationExecution.GetStepExecutions: TObjectList<TStepExecution>;
begin
  Result := FStepExecutions;
end;

procedure TAutomationExecution.SetStepExecutions(const Value: TObjectList<TStepExecution>);
begin
  if FStepExecutions <> Value then
  begin
    if not KeepStepExecutions then
      FStepExecutions.Free;
    FStepExecutions := Value;
  end;
end;

function TAutomationExecution.GetKeepStepExecutions: Boolean;
begin
  Result := FKeepStepExecutions;
end;

procedure TAutomationExecution.SetKeepStepExecutions(const Value: Boolean);
begin
  FKeepStepExecutions := Value;
end;

function TAutomationExecution.IsSetStepExecutions: Boolean;
begin
  Result := (FStepExecutions <> nil) and (FStepExecutions.Count > 0);
end;

function TAutomationExecution.GetStepExecutionsTruncated: Boolean;
begin
  Result := FStepExecutionsTruncated.ValueOrDefault;
end;

procedure TAutomationExecution.SetStepExecutionsTruncated(const Value: Boolean);
begin
  FStepExecutionsTruncated := Value;
end;

function TAutomationExecution.IsSetStepExecutionsTruncated: Boolean;
begin
  Result := FStepExecutionsTruncated.HasValue;
end;

function TAutomationExecution.GetTarget: string;
begin
  Result := FTarget.ValueOrDefault;
end;

procedure TAutomationExecution.SetTarget(const Value: string);
begin
  FTarget := Value;
end;

function TAutomationExecution.IsSetTarget: Boolean;
begin
  Result := FTarget.HasValue;
end;

function TAutomationExecution.GetTargetLocations: TObjectList<TTargetLocation>;
begin
  Result := FTargetLocations;
end;

procedure TAutomationExecution.SetTargetLocations(const Value: TObjectList<TTargetLocation>);
begin
  if FTargetLocations <> Value then
  begin
    if not KeepTargetLocations then
      FTargetLocations.Free;
    FTargetLocations := Value;
  end;
end;

function TAutomationExecution.GetKeepTargetLocations: Boolean;
begin
  Result := FKeepTargetLocations;
end;

procedure TAutomationExecution.SetKeepTargetLocations(const Value: Boolean);
begin
  FKeepTargetLocations := Value;
end;

function TAutomationExecution.IsSetTargetLocations: Boolean;
begin
  Result := (FTargetLocations <> nil) and (FTargetLocations.Count > 0);
end;

function TAutomationExecution.GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
begin
  Result := FTargetMaps;
end;

procedure TAutomationExecution.SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
begin
  if FTargetMaps <> Value then
  begin
    if not KeepTargetMaps then
      FTargetMaps.Free;
    FTargetMaps := Value;
  end;
end;

function TAutomationExecution.GetKeepTargetMaps: Boolean;
begin
  Result := FKeepTargetMaps;
end;

procedure TAutomationExecution.SetKeepTargetMaps(const Value: Boolean);
begin
  FKeepTargetMaps := Value;
end;

function TAutomationExecution.IsSetTargetMaps: Boolean;
begin
  Result := (FTargetMaps <> nil) and (FTargetMaps.Count > 0);
end;

function TAutomationExecution.GetTargetParameterName: string;
begin
  Result := FTargetParameterName.ValueOrDefault;
end;

procedure TAutomationExecution.SetTargetParameterName(const Value: string);
begin
  FTargetParameterName := Value;
end;

function TAutomationExecution.IsSetTargetParameterName: Boolean;
begin
  Result := FTargetParameterName.HasValue;
end;

function TAutomationExecution.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TAutomationExecution.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TAutomationExecution.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TAutomationExecution.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TAutomationExecution.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
