unit AWS.SSM.Model.CreateAssociationBatchRequestEntry;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.InstanceAssociationOutputLocation, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Model.Target;

type
  TCreateAssociationBatchRequestEntry = class;
  
  ICreateAssociationBatchRequestEntry = interface
    function GetApplyOnlyAtCronInterval: Boolean;
    procedure SetApplyOnlyAtCronInterval(const Value: Boolean);
    function GetAssociationName: string;
    procedure SetAssociationName(const Value: string);
    function GetAutomationTargetParameterName: string;
    procedure SetAutomationTargetParameterName(const Value: string);
    function GetCalendarNames: TList<string>;
    procedure SetCalendarNames(const Value: TList<string>);
    function GetKeepCalendarNames: Boolean;
    procedure SetKeepCalendarNames(const Value: Boolean);
    function GetComplianceSeverity: TAssociationComplianceSeverity;
    procedure SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOutputLocation: TInstanceAssociationOutputLocation;
    procedure SetOutputLocation(const Value: TInstanceAssociationOutputLocation);
    function GetKeepOutputLocation: Boolean;
    procedure SetKeepOutputLocation(const Value: Boolean);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetScheduleExpression: string;
    procedure SetScheduleExpression(const Value: string);
    function GetScheduleOffset: Integer;
    procedure SetScheduleOffset(const Value: Integer);
    function GetSyncCompliance: TAssociationSyncCompliance;
    procedure SetSyncCompliance(const Value: TAssociationSyncCompliance);
    function GetTargetLocations: TObjectList<TTargetLocation>;
    procedure SetTargetLocations(const Value: TObjectList<TTargetLocation>);
    function GetKeepTargetLocations: Boolean;
    procedure SetKeepTargetLocations(const Value: Boolean);
    function GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    procedure SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
    function GetKeepTargetMaps: Boolean;
    procedure SetKeepTargetMaps(const Value: Boolean);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function Obj: TCreateAssociationBatchRequestEntry;
    function IsSetApplyOnlyAtCronInterval: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAutomationTargetParameterName: Boolean;
    function IsSetCalendarNames: Boolean;
    function IsSetComplianceSeverity: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetName: Boolean;
    function IsSetOutputLocation: Boolean;
    function IsSetParameters: Boolean;
    function IsSetScheduleExpression: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetSyncCompliance: Boolean;
    function IsSetTargetLocations: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargets: Boolean;
    property ApplyOnlyAtCronInterval: Boolean read GetApplyOnlyAtCronInterval write SetApplyOnlyAtCronInterval;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AutomationTargetParameterName: string read GetAutomationTargetParameterName write SetAutomationTargetParameterName;
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
    property ComplianceSeverity: TAssociationComplianceSeverity read GetComplianceSeverity write SetComplianceSeverity;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Name: string read GetName write SetName;
    property OutputLocation: TInstanceAssociationOutputLocation read GetOutputLocation write SetOutputLocation;
    property KeepOutputLocation: Boolean read GetKeepOutputLocation write SetKeepOutputLocation;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property ScheduleExpression: string read GetScheduleExpression write SetScheduleExpression;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property SyncCompliance: TAssociationSyncCompliance read GetSyncCompliance write SetSyncCompliance;
    property TargetLocations: TObjectList<TTargetLocation> read GetTargetLocations write SetTargetLocations;
    property KeepTargetLocations: Boolean read GetKeepTargetLocations write SetKeepTargetLocations;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
  TCreateAssociationBatchRequestEntry = class
  strict private
    FApplyOnlyAtCronInterval: Nullable<Boolean>;
    FAssociationName: Nullable<string>;
    FAutomationTargetParameterName: Nullable<string>;
    FCalendarNames: TList<string>;
    FKeepCalendarNames: Boolean;
    FComplianceSeverity: Nullable<TAssociationComplianceSeverity>;
    FDocumentVersion: Nullable<string>;
    FInstanceId: Nullable<string>;
    FMaxConcurrency: Nullable<string>;
    FMaxErrors: Nullable<string>;
    FName: Nullable<string>;
    FOutputLocation: TInstanceAssociationOutputLocation;
    FKeepOutputLocation: Boolean;
    FParameters: TObjectDictionary<string, TList<string>>;
    FKeepParameters: Boolean;
    FScheduleExpression: Nullable<string>;
    FScheduleOffset: Nullable<Integer>;
    FSyncCompliance: Nullable<TAssociationSyncCompliance>;
    FTargetLocations: TObjectList<TTargetLocation>;
    FKeepTargetLocations: Boolean;
    FTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    FKeepTargetMaps: Boolean;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    function GetApplyOnlyAtCronInterval: Boolean;
    procedure SetApplyOnlyAtCronInterval(const Value: Boolean);
    function GetAssociationName: string;
    procedure SetAssociationName(const Value: string);
    function GetAutomationTargetParameterName: string;
    procedure SetAutomationTargetParameterName(const Value: string);
    function GetCalendarNames: TList<string>;
    procedure SetCalendarNames(const Value: TList<string>);
    function GetKeepCalendarNames: Boolean;
    procedure SetKeepCalendarNames(const Value: Boolean);
    function GetComplianceSeverity: TAssociationComplianceSeverity;
    procedure SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOutputLocation: TInstanceAssociationOutputLocation;
    procedure SetOutputLocation(const Value: TInstanceAssociationOutputLocation);
    function GetKeepOutputLocation: Boolean;
    procedure SetKeepOutputLocation(const Value: Boolean);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetScheduleExpression: string;
    procedure SetScheduleExpression(const Value: string);
    function GetScheduleOffset: Integer;
    procedure SetScheduleOffset(const Value: Integer);
    function GetSyncCompliance: TAssociationSyncCompliance;
    procedure SetSyncCompliance(const Value: TAssociationSyncCompliance);
    function GetTargetLocations: TObjectList<TTargetLocation>;
    procedure SetTargetLocations(const Value: TObjectList<TTargetLocation>);
    function GetKeepTargetLocations: Boolean;
    procedure SetKeepTargetLocations(const Value: Boolean);
    function GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    procedure SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
    function GetKeepTargetMaps: Boolean;
    procedure SetKeepTargetMaps(const Value: Boolean);
    function GetTargets: TObjectList<TTarget>;
    procedure SetTargets(const Value: TObjectList<TTarget>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
  strict protected
    function Obj: TCreateAssociationBatchRequestEntry;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetApplyOnlyAtCronInterval: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAutomationTargetParameterName: Boolean;
    function IsSetCalendarNames: Boolean;
    function IsSetComplianceSeverity: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetName: Boolean;
    function IsSetOutputLocation: Boolean;
    function IsSetParameters: Boolean;
    function IsSetScheduleExpression: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetSyncCompliance: Boolean;
    function IsSetTargetLocations: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargets: Boolean;
    property ApplyOnlyAtCronInterval: Boolean read GetApplyOnlyAtCronInterval write SetApplyOnlyAtCronInterval;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AutomationTargetParameterName: string read GetAutomationTargetParameterName write SetAutomationTargetParameterName;
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
    property ComplianceSeverity: TAssociationComplianceSeverity read GetComplianceSeverity write SetComplianceSeverity;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Name: string read GetName write SetName;
    property OutputLocation: TInstanceAssociationOutputLocation read GetOutputLocation write SetOutputLocation;
    property KeepOutputLocation: Boolean read GetKeepOutputLocation write SetKeepOutputLocation;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property ScheduleExpression: string read GetScheduleExpression write SetScheduleExpression;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property SyncCompliance: TAssociationSyncCompliance read GetSyncCompliance write SetSyncCompliance;
    property TargetLocations: TObjectList<TTargetLocation> read GetTargetLocations write SetTargetLocations;
    property KeepTargetLocations: Boolean read GetKeepTargetLocations write SetKeepTargetLocations;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
implementation

{ TCreateAssociationBatchRequestEntry }

constructor TCreateAssociationBatchRequestEntry.Create;
begin
  inherited;
  FCalendarNames := TList<string>.Create;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FTargetLocations := TObjectList<TTargetLocation>.Create;
  FTargetMaps := TObjectList<TObjectDictionary<string, TList<string>>>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TCreateAssociationBatchRequestEntry.Destroy;
begin
  Targets := nil;
  TargetMaps := nil;
  TargetLocations := nil;
  Parameters := nil;
  OutputLocation := nil;
  CalendarNames := nil;
  inherited;
end;

function TCreateAssociationBatchRequestEntry.Obj: TCreateAssociationBatchRequestEntry;
begin
  Result := Self;
end;

function TCreateAssociationBatchRequestEntry.GetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetApplyOnlyAtCronInterval(const Value: Boolean);
begin
  FApplyOnlyAtCronInterval := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetAssociationName: string;
begin
  Result := FAssociationName.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetAssociationName(const Value: string);
begin
  FAssociationName := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetAssociationName: Boolean;
begin
  Result := FAssociationName.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetAutomationTargetParameterName: string;
begin
  Result := FAutomationTargetParameterName.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetAutomationTargetParameterName(const Value: string);
begin
  FAutomationTargetParameterName := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetAutomationTargetParameterName: Boolean;
begin
  Result := FAutomationTargetParameterName.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetCalendarNames: TList<string>;
begin
  Result := FCalendarNames;
end;

procedure TCreateAssociationBatchRequestEntry.SetCalendarNames(const Value: TList<string>);
begin
  if FCalendarNames <> Value then
  begin
    if not KeepCalendarNames then
      FCalendarNames.Free;
    FCalendarNames := Value;
  end;
end;

function TCreateAssociationBatchRequestEntry.GetKeepCalendarNames: Boolean;
begin
  Result := FKeepCalendarNames;
end;

procedure TCreateAssociationBatchRequestEntry.SetKeepCalendarNames(const Value: Boolean);
begin
  FKeepCalendarNames := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetCalendarNames: Boolean;
begin
  Result := (FCalendarNames <> nil) and (FCalendarNames.Count > 0);
end;

function TCreateAssociationBatchRequestEntry.GetComplianceSeverity: TAssociationComplianceSeverity;
begin
  Result := FComplianceSeverity.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
begin
  FComplianceSeverity := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetComplianceSeverity: Boolean;
begin
  Result := FComplianceSeverity.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetOutputLocation: TInstanceAssociationOutputLocation;
begin
  Result := FOutputLocation;
end;

procedure TCreateAssociationBatchRequestEntry.SetOutputLocation(const Value: TInstanceAssociationOutputLocation);
begin
  if FOutputLocation <> Value then
  begin
    if not KeepOutputLocation then
      FOutputLocation.Free;
    FOutputLocation := Value;
  end;
end;

function TCreateAssociationBatchRequestEntry.GetKeepOutputLocation: Boolean;
begin
  Result := FKeepOutputLocation;
end;

procedure TCreateAssociationBatchRequestEntry.SetKeepOutputLocation(const Value: Boolean);
begin
  FKeepOutputLocation := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetOutputLocation: Boolean;
begin
  Result := FOutputLocation <> nil;
end;

function TCreateAssociationBatchRequestEntry.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TCreateAssociationBatchRequestEntry.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TCreateAssociationBatchRequestEntry.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TCreateAssociationBatchRequestEntry.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TCreateAssociationBatchRequestEntry.GetScheduleExpression: string;
begin
  Result := FScheduleExpression.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetScheduleExpression(const Value: string);
begin
  FScheduleExpression := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetScheduleExpression: Boolean;
begin
  Result := FScheduleExpression.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetSyncCompliance: TAssociationSyncCompliance;
begin
  Result := FSyncCompliance.ValueOrDefault;
end;

procedure TCreateAssociationBatchRequestEntry.SetSyncCompliance(const Value: TAssociationSyncCompliance);
begin
  FSyncCompliance := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetSyncCompliance: Boolean;
begin
  Result := FSyncCompliance.HasValue;
end;

function TCreateAssociationBatchRequestEntry.GetTargetLocations: TObjectList<TTargetLocation>;
begin
  Result := FTargetLocations;
end;

procedure TCreateAssociationBatchRequestEntry.SetTargetLocations(const Value: TObjectList<TTargetLocation>);
begin
  if FTargetLocations <> Value then
  begin
    if not KeepTargetLocations then
      FTargetLocations.Free;
    FTargetLocations := Value;
  end;
end;

function TCreateAssociationBatchRequestEntry.GetKeepTargetLocations: Boolean;
begin
  Result := FKeepTargetLocations;
end;

procedure TCreateAssociationBatchRequestEntry.SetKeepTargetLocations(const Value: Boolean);
begin
  FKeepTargetLocations := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetTargetLocations: Boolean;
begin
  Result := (FTargetLocations <> nil) and (FTargetLocations.Count > 0);
end;

function TCreateAssociationBatchRequestEntry.GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
begin
  Result := FTargetMaps;
end;

procedure TCreateAssociationBatchRequestEntry.SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
begin
  if FTargetMaps <> Value then
  begin
    if not KeepTargetMaps then
      FTargetMaps.Free;
    FTargetMaps := Value;
  end;
end;

function TCreateAssociationBatchRequestEntry.GetKeepTargetMaps: Boolean;
begin
  Result := FKeepTargetMaps;
end;

procedure TCreateAssociationBatchRequestEntry.SetKeepTargetMaps(const Value: Boolean);
begin
  FKeepTargetMaps := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetTargetMaps: Boolean;
begin
  Result := (FTargetMaps <> nil) and (FTargetMaps.Count > 0);
end;

function TCreateAssociationBatchRequestEntry.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TCreateAssociationBatchRequestEntry.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TCreateAssociationBatchRequestEntry.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TCreateAssociationBatchRequestEntry.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TCreateAssociationBatchRequestEntry.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
