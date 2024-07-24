unit AWS.SSM.Model.AutomationExecutionMetadata;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.ResolvedTargets, 
  AWS.SSM.Model.Runbook, 
  AWS.SSM.Model.Target;

type
  TAutomationExecutionMetadata = class;
  
  IAutomationExecutionMetadata = interface
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAutomationExecutionId: string;
    procedure SetAutomationExecutionId(const Value: string);
    function GetAutomationExecutionStatus: TAutomationExecutionStatus;
    procedure SetAutomationExecutionStatus(const Value: TAutomationExecutionStatus);
    function GetAutomationSubtype: TAutomationSubtype;
    procedure SetAutomationSubtype(const Value: TAutomationSubtype);
    function GetAutomationType: TAutomationType;
    procedure SetAutomationType(const Value: TAutomationType);
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
    function GetLogFile: string;
    procedure SetLogFile(const Value: string);
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
    function GetParentAutomationExecutionId: string;
    procedure SetParentAutomationExecutionId(const Value: string);
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
    function GetTarget: string;
    procedure SetTarget(const Value: string);
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
    function Obj: TAutomationExecutionMetadata;
    function IsSetAssociationId: Boolean;
    function IsSetAutomationExecutionId: Boolean;
    function IsSetAutomationExecutionStatus: Boolean;
    function IsSetAutomationSubtype: Boolean;
    function IsSetAutomationType: Boolean;
    function IsSetChangeRequestName: Boolean;
    function IsSetCurrentAction: Boolean;
    function IsSetCurrentStepName: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetExecutedBy: Boolean;
    function IsSetExecutionEndTime: Boolean;
    function IsSetExecutionStartTime: Boolean;
    function IsSetFailureMessage: Boolean;
    function IsSetLogFile: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetMode: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetOutputs: Boolean;
    function IsSetParentAutomationExecutionId: Boolean;
    function IsSetResolvedTargets: Boolean;
    function IsSetRunbooks: Boolean;
    function IsSetScheduledTime: Boolean;
    function IsSetTarget: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargetParameterName: Boolean;
    function IsSetTargets: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property AutomationExecutionStatus: TAutomationExecutionStatus read GetAutomationExecutionStatus write SetAutomationExecutionStatus;
    property AutomationSubtype: TAutomationSubtype read GetAutomationSubtype write SetAutomationSubtype;
    property AutomationType: TAutomationType read GetAutomationType write SetAutomationType;
    property ChangeRequestName: string read GetChangeRequestName write SetChangeRequestName;
    property CurrentAction: string read GetCurrentAction write SetCurrentAction;
    property CurrentStepName: string read GetCurrentStepName write SetCurrentStepName;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ExecutedBy: string read GetExecutedBy write SetExecutedBy;
    property ExecutionEndTime: TDateTime read GetExecutionEndTime write SetExecutionEndTime;
    property ExecutionStartTime: TDateTime read GetExecutionStartTime write SetExecutionStartTime;
    property FailureMessage: string read GetFailureMessage write SetFailureMessage;
    property LogFile: string read GetLogFile write SetLogFile;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Mode: TExecutionMode read GetMode write SetMode;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property Outputs: TObjectDictionary<string, TList<string>> read GetOutputs write SetOutputs;
    property KeepOutputs: Boolean read GetKeepOutputs write SetKeepOutputs;
    property ParentAutomationExecutionId: string read GetParentAutomationExecutionId write SetParentAutomationExecutionId;
    property ResolvedTargets: TResolvedTargets read GetResolvedTargets write SetResolvedTargets;
    property KeepResolvedTargets: Boolean read GetKeepResolvedTargets write SetKeepResolvedTargets;
    property Runbooks: TObjectList<TRunbook> read GetRunbooks write SetRunbooks;
    property KeepRunbooks: Boolean read GetKeepRunbooks write SetKeepRunbooks;
    property ScheduledTime: TDateTime read GetScheduledTime write SetScheduledTime;
    property Target: string read GetTarget write SetTarget;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property TargetParameterName: string read GetTargetParameterName write SetTargetParameterName;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
  TAutomationExecutionMetadata = class
  strict private
    FAssociationId: Nullable<string>;
    FAutomationExecutionId: Nullable<string>;
    FAutomationExecutionStatus: Nullable<TAutomationExecutionStatus>;
    FAutomationSubtype: Nullable<TAutomationSubtype>;
    FAutomationType: Nullable<TAutomationType>;
    FChangeRequestName: Nullable<string>;
    FCurrentAction: Nullable<string>;
    FCurrentStepName: Nullable<string>;
    FDocumentName: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FExecutedBy: Nullable<string>;
    FExecutionEndTime: Nullable<TDateTime>;
    FExecutionStartTime: Nullable<TDateTime>;
    FFailureMessage: Nullable<string>;
    FLogFile: Nullable<string>;
    FMaxConcurrency: Nullable<string>;
    FMaxErrors: Nullable<string>;
    FMode: Nullable<TExecutionMode>;
    FOpsItemId: Nullable<string>;
    FOutputs: TObjectDictionary<string, TList<string>>;
    FKeepOutputs: Boolean;
    FParentAutomationExecutionId: Nullable<string>;
    FResolvedTargets: TResolvedTargets;
    FKeepResolvedTargets: Boolean;
    FRunbooks: TObjectList<TRunbook>;
    FKeepRunbooks: Boolean;
    FScheduledTime: Nullable<TDateTime>;
    FTarget: Nullable<string>;
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
    function GetAutomationType: TAutomationType;
    procedure SetAutomationType(const Value: TAutomationType);
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
    function GetLogFile: string;
    procedure SetLogFile(const Value: string);
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
    function GetParentAutomationExecutionId: string;
    procedure SetParentAutomationExecutionId(const Value: string);
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
    function GetTarget: string;
    procedure SetTarget(const Value: string);
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
    function Obj: TAutomationExecutionMetadata;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAssociationId: Boolean;
    function IsSetAutomationExecutionId: Boolean;
    function IsSetAutomationExecutionStatus: Boolean;
    function IsSetAutomationSubtype: Boolean;
    function IsSetAutomationType: Boolean;
    function IsSetChangeRequestName: Boolean;
    function IsSetCurrentAction: Boolean;
    function IsSetCurrentStepName: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetExecutedBy: Boolean;
    function IsSetExecutionEndTime: Boolean;
    function IsSetExecutionStartTime: Boolean;
    function IsSetFailureMessage: Boolean;
    function IsSetLogFile: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetMode: Boolean;
    function IsSetOpsItemId: Boolean;
    function IsSetOutputs: Boolean;
    function IsSetParentAutomationExecutionId: Boolean;
    function IsSetResolvedTargets: Boolean;
    function IsSetRunbooks: Boolean;
    function IsSetScheduledTime: Boolean;
    function IsSetTarget: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargetParameterName: Boolean;
    function IsSetTargets: Boolean;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AutomationExecutionId: string read GetAutomationExecutionId write SetAutomationExecutionId;
    property AutomationExecutionStatus: TAutomationExecutionStatus read GetAutomationExecutionStatus write SetAutomationExecutionStatus;
    property AutomationSubtype: TAutomationSubtype read GetAutomationSubtype write SetAutomationSubtype;
    property AutomationType: TAutomationType read GetAutomationType write SetAutomationType;
    property ChangeRequestName: string read GetChangeRequestName write SetChangeRequestName;
    property CurrentAction: string read GetCurrentAction write SetCurrentAction;
    property CurrentStepName: string read GetCurrentStepName write SetCurrentStepName;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property ExecutedBy: string read GetExecutedBy write SetExecutedBy;
    property ExecutionEndTime: TDateTime read GetExecutionEndTime write SetExecutionEndTime;
    property ExecutionStartTime: TDateTime read GetExecutionStartTime write SetExecutionStartTime;
    property FailureMessage: string read GetFailureMessage write SetFailureMessage;
    property LogFile: string read GetLogFile write SetLogFile;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Mode: TExecutionMode read GetMode write SetMode;
    property OpsItemId: string read GetOpsItemId write SetOpsItemId;
    property Outputs: TObjectDictionary<string, TList<string>> read GetOutputs write SetOutputs;
    property KeepOutputs: Boolean read GetKeepOutputs write SetKeepOutputs;
    property ParentAutomationExecutionId: string read GetParentAutomationExecutionId write SetParentAutomationExecutionId;
    property ResolvedTargets: TResolvedTargets read GetResolvedTargets write SetResolvedTargets;
    property KeepResolvedTargets: Boolean read GetKeepResolvedTargets write SetKeepResolvedTargets;
    property Runbooks: TObjectList<TRunbook> read GetRunbooks write SetRunbooks;
    property KeepRunbooks: Boolean read GetKeepRunbooks write SetKeepRunbooks;
    property ScheduledTime: TDateTime read GetScheduledTime write SetScheduledTime;
    property Target: string read GetTarget write SetTarget;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property TargetParameterName: string read GetTargetParameterName write SetTargetParameterName;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
implementation

{ TAutomationExecutionMetadata }

constructor TAutomationExecutionMetadata.Create;
begin
  inherited;
  FOutputs := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FRunbooks := TObjectList<TRunbook>.Create;
  FTargetMaps := TObjectList<TObjectDictionary<string, TList<string>>>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TAutomationExecutionMetadata.Destroy;
begin
  Targets := nil;
  TargetMaps := nil;
  Runbooks := nil;
  ResolvedTargets := nil;
  Outputs := nil;
  inherited;
end;

function TAutomationExecutionMetadata.Obj: TAutomationExecutionMetadata;
begin
  Result := Self;
end;

function TAutomationExecutionMetadata.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TAutomationExecutionMetadata.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TAutomationExecutionMetadata.GetAutomationExecutionId: string;
begin
  Result := FAutomationExecutionId.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetAutomationExecutionId(const Value: string);
begin
  FAutomationExecutionId := Value;
end;

function TAutomationExecutionMetadata.IsSetAutomationExecutionId: Boolean;
begin
  Result := FAutomationExecutionId.HasValue;
end;

function TAutomationExecutionMetadata.GetAutomationExecutionStatus: TAutomationExecutionStatus;
begin
  Result := FAutomationExecutionStatus.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetAutomationExecutionStatus(const Value: TAutomationExecutionStatus);
begin
  FAutomationExecutionStatus := Value;
end;

function TAutomationExecutionMetadata.IsSetAutomationExecutionStatus: Boolean;
begin
  Result := FAutomationExecutionStatus.HasValue;
end;

function TAutomationExecutionMetadata.GetAutomationSubtype: TAutomationSubtype;
begin
  Result := FAutomationSubtype.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetAutomationSubtype(const Value: TAutomationSubtype);
begin
  FAutomationSubtype := Value;
end;

function TAutomationExecutionMetadata.IsSetAutomationSubtype: Boolean;
begin
  Result := FAutomationSubtype.HasValue;
end;

function TAutomationExecutionMetadata.GetAutomationType: TAutomationType;
begin
  Result := FAutomationType.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetAutomationType(const Value: TAutomationType);
begin
  FAutomationType := Value;
end;

function TAutomationExecutionMetadata.IsSetAutomationType: Boolean;
begin
  Result := FAutomationType.HasValue;
end;

function TAutomationExecutionMetadata.GetChangeRequestName: string;
begin
  Result := FChangeRequestName.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetChangeRequestName(const Value: string);
begin
  FChangeRequestName := Value;
end;

function TAutomationExecutionMetadata.IsSetChangeRequestName: Boolean;
begin
  Result := FChangeRequestName.HasValue;
end;

function TAutomationExecutionMetadata.GetCurrentAction: string;
begin
  Result := FCurrentAction.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetCurrentAction(const Value: string);
begin
  FCurrentAction := Value;
end;

function TAutomationExecutionMetadata.IsSetCurrentAction: Boolean;
begin
  Result := FCurrentAction.HasValue;
end;

function TAutomationExecutionMetadata.GetCurrentStepName: string;
begin
  Result := FCurrentStepName.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetCurrentStepName(const Value: string);
begin
  FCurrentStepName := Value;
end;

function TAutomationExecutionMetadata.IsSetCurrentStepName: Boolean;
begin
  Result := FCurrentStepName.HasValue;
end;

function TAutomationExecutionMetadata.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TAutomationExecutionMetadata.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TAutomationExecutionMetadata.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TAutomationExecutionMetadata.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TAutomationExecutionMetadata.GetExecutedBy: string;
begin
  Result := FExecutedBy.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetExecutedBy(const Value: string);
begin
  FExecutedBy := Value;
end;

function TAutomationExecutionMetadata.IsSetExecutedBy: Boolean;
begin
  Result := FExecutedBy.HasValue;
end;

function TAutomationExecutionMetadata.GetExecutionEndTime: TDateTime;
begin
  Result := FExecutionEndTime.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetExecutionEndTime(const Value: TDateTime);
begin
  FExecutionEndTime := Value;
end;

function TAutomationExecutionMetadata.IsSetExecutionEndTime: Boolean;
begin
  Result := FExecutionEndTime.HasValue;
end;

function TAutomationExecutionMetadata.GetExecutionStartTime: TDateTime;
begin
  Result := FExecutionStartTime.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetExecutionStartTime(const Value: TDateTime);
begin
  FExecutionStartTime := Value;
end;

function TAutomationExecutionMetadata.IsSetExecutionStartTime: Boolean;
begin
  Result := FExecutionStartTime.HasValue;
end;

function TAutomationExecutionMetadata.GetFailureMessage: string;
begin
  Result := FFailureMessage.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetFailureMessage(const Value: string);
begin
  FFailureMessage := Value;
end;

function TAutomationExecutionMetadata.IsSetFailureMessage: Boolean;
begin
  Result := FFailureMessage.HasValue;
end;

function TAutomationExecutionMetadata.GetLogFile: string;
begin
  Result := FLogFile.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetLogFile(const Value: string);
begin
  FLogFile := Value;
end;

function TAutomationExecutionMetadata.IsSetLogFile: Boolean;
begin
  Result := FLogFile.HasValue;
end;

function TAutomationExecutionMetadata.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TAutomationExecutionMetadata.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TAutomationExecutionMetadata.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TAutomationExecutionMetadata.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TAutomationExecutionMetadata.GetMode: TExecutionMode;
begin
  Result := FMode.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetMode(const Value: TExecutionMode);
begin
  FMode := Value;
end;

function TAutomationExecutionMetadata.IsSetMode: Boolean;
begin
  Result := FMode.HasValue;
end;

function TAutomationExecutionMetadata.GetOpsItemId: string;
begin
  Result := FOpsItemId.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetOpsItemId(const Value: string);
begin
  FOpsItemId := Value;
end;

function TAutomationExecutionMetadata.IsSetOpsItemId: Boolean;
begin
  Result := FOpsItemId.HasValue;
end;

function TAutomationExecutionMetadata.GetOutputs: TObjectDictionary<string, TList<string>>;
begin
  Result := FOutputs;
end;

procedure TAutomationExecutionMetadata.SetOutputs(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FOutputs <> Value then
  begin
    if not KeepOutputs then
      FOutputs.Free;
    FOutputs := Value;
  end;
end;

function TAutomationExecutionMetadata.GetKeepOutputs: Boolean;
begin
  Result := FKeepOutputs;
end;

procedure TAutomationExecutionMetadata.SetKeepOutputs(const Value: Boolean);
begin
  FKeepOutputs := Value;
end;

function TAutomationExecutionMetadata.IsSetOutputs: Boolean;
begin
  Result := (FOutputs <> nil) and (FOutputs.Count > 0);
end;

function TAutomationExecutionMetadata.GetParentAutomationExecutionId: string;
begin
  Result := FParentAutomationExecutionId.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetParentAutomationExecutionId(const Value: string);
begin
  FParentAutomationExecutionId := Value;
end;

function TAutomationExecutionMetadata.IsSetParentAutomationExecutionId: Boolean;
begin
  Result := FParentAutomationExecutionId.HasValue;
end;

function TAutomationExecutionMetadata.GetResolvedTargets: TResolvedTargets;
begin
  Result := FResolvedTargets;
end;

procedure TAutomationExecutionMetadata.SetResolvedTargets(const Value: TResolvedTargets);
begin
  if FResolvedTargets <> Value then
  begin
    if not KeepResolvedTargets then
      FResolvedTargets.Free;
    FResolvedTargets := Value;
  end;
end;

function TAutomationExecutionMetadata.GetKeepResolvedTargets: Boolean;
begin
  Result := FKeepResolvedTargets;
end;

procedure TAutomationExecutionMetadata.SetKeepResolvedTargets(const Value: Boolean);
begin
  FKeepResolvedTargets := Value;
end;

function TAutomationExecutionMetadata.IsSetResolvedTargets: Boolean;
begin
  Result := FResolvedTargets <> nil;
end;

function TAutomationExecutionMetadata.GetRunbooks: TObjectList<TRunbook>;
begin
  Result := FRunbooks;
end;

procedure TAutomationExecutionMetadata.SetRunbooks(const Value: TObjectList<TRunbook>);
begin
  if FRunbooks <> Value then
  begin
    if not KeepRunbooks then
      FRunbooks.Free;
    FRunbooks := Value;
  end;
end;

function TAutomationExecutionMetadata.GetKeepRunbooks: Boolean;
begin
  Result := FKeepRunbooks;
end;

procedure TAutomationExecutionMetadata.SetKeepRunbooks(const Value: Boolean);
begin
  FKeepRunbooks := Value;
end;

function TAutomationExecutionMetadata.IsSetRunbooks: Boolean;
begin
  Result := (FRunbooks <> nil) and (FRunbooks.Count > 0);
end;

function TAutomationExecutionMetadata.GetScheduledTime: TDateTime;
begin
  Result := FScheduledTime.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetScheduledTime(const Value: TDateTime);
begin
  FScheduledTime := Value;
end;

function TAutomationExecutionMetadata.IsSetScheduledTime: Boolean;
begin
  Result := FScheduledTime.HasValue;
end;

function TAutomationExecutionMetadata.GetTarget: string;
begin
  Result := FTarget.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetTarget(const Value: string);
begin
  FTarget := Value;
end;

function TAutomationExecutionMetadata.IsSetTarget: Boolean;
begin
  Result := FTarget.HasValue;
end;

function TAutomationExecutionMetadata.GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
begin
  Result := FTargetMaps;
end;

procedure TAutomationExecutionMetadata.SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
begin
  if FTargetMaps <> Value then
  begin
    if not KeepTargetMaps then
      FTargetMaps.Free;
    FTargetMaps := Value;
  end;
end;

function TAutomationExecutionMetadata.GetKeepTargetMaps: Boolean;
begin
  Result := FKeepTargetMaps;
end;

procedure TAutomationExecutionMetadata.SetKeepTargetMaps(const Value: Boolean);
begin
  FKeepTargetMaps := Value;
end;

function TAutomationExecutionMetadata.IsSetTargetMaps: Boolean;
begin
  Result := (FTargetMaps <> nil) and (FTargetMaps.Count > 0);
end;

function TAutomationExecutionMetadata.GetTargetParameterName: string;
begin
  Result := FTargetParameterName.ValueOrDefault;
end;

procedure TAutomationExecutionMetadata.SetTargetParameterName(const Value: string);
begin
  FTargetParameterName := Value;
end;

function TAutomationExecutionMetadata.IsSetTargetParameterName: Boolean;
begin
  Result := FTargetParameterName.HasValue;
end;

function TAutomationExecutionMetadata.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TAutomationExecutionMetadata.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TAutomationExecutionMetadata.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TAutomationExecutionMetadata.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TAutomationExecutionMetadata.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
