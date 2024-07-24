unit AWS.SSM.Model.AssociationDescription;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.InstanceAssociationOutputLocation, 
  AWS.SSM.Model.AssociationOverview, 
  AWS.SSM.Model.AssociationStatus, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Model.Target;

type
  TAssociationDescription = class;
  
  IAssociationDescription = interface
    function GetApplyOnlyAtCronInterval: Boolean;
    procedure SetApplyOnlyAtCronInterval(const Value: Boolean);
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationName: string;
    procedure SetAssociationName(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetAutomationTargetParameterName: string;
    procedure SetAutomationTargetParameterName(const Value: string);
    function GetCalendarNames: TList<string>;
    procedure SetCalendarNames(const Value: TList<string>);
    function GetKeepCalendarNames: Boolean;
    procedure SetKeepCalendarNames(const Value: Boolean);
    function GetComplianceSeverity: TAssociationComplianceSeverity;
    procedure SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetLastExecutionDate: TDateTime;
    procedure SetLastExecutionDate(const Value: TDateTime);
    function GetLastSuccessfulExecutionDate: TDateTime;
    procedure SetLastSuccessfulExecutionDate(const Value: TDateTime);
    function GetLastUpdateAssociationDate: TDateTime;
    procedure SetLastUpdateAssociationDate(const Value: TDateTime);
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
    function GetOverview: TAssociationOverview;
    procedure SetOverview(const Value: TAssociationOverview);
    function GetKeepOverview: Boolean;
    procedure SetKeepOverview(const Value: Boolean);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetScheduleExpression: string;
    procedure SetScheduleExpression(const Value: string);
    function GetScheduleOffset: Integer;
    procedure SetScheduleOffset(const Value: Integer);
    function GetStatus: TAssociationStatus;
    procedure SetStatus(const Value: TAssociationStatus);
    function GetKeepStatus: Boolean;
    procedure SetKeepStatus(const Value: Boolean);
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
    function Obj: TAssociationDescription;
    function IsSetApplyOnlyAtCronInterval: Boolean;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetAutomationTargetParameterName: Boolean;
    function IsSetCalendarNames: Boolean;
    function IsSetComplianceSeverity: Boolean;
    function IsSetDate: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetLastExecutionDate: Boolean;
    function IsSetLastSuccessfulExecutionDate: Boolean;
    function IsSetLastUpdateAssociationDate: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetName: Boolean;
    function IsSetOutputLocation: Boolean;
    function IsSetOverview: Boolean;
    function IsSetParameters: Boolean;
    function IsSetScheduleExpression: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetStatus: Boolean;
    function IsSetSyncCompliance: Boolean;
    function IsSetTargetLocations: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargets: Boolean;
    property ApplyOnlyAtCronInterval: Boolean read GetApplyOnlyAtCronInterval write SetApplyOnlyAtCronInterval;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property AutomationTargetParameterName: string read GetAutomationTargetParameterName write SetAutomationTargetParameterName;
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
    property ComplianceSeverity: TAssociationComplianceSeverity read GetComplianceSeverity write SetComplianceSeverity;
    property Date: TDateTime read GetDate write SetDate;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property LastExecutionDate: TDateTime read GetLastExecutionDate write SetLastExecutionDate;
    property LastSuccessfulExecutionDate: TDateTime read GetLastSuccessfulExecutionDate write SetLastSuccessfulExecutionDate;
    property LastUpdateAssociationDate: TDateTime read GetLastUpdateAssociationDate write SetLastUpdateAssociationDate;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Name: string read GetName write SetName;
    property OutputLocation: TInstanceAssociationOutputLocation read GetOutputLocation write SetOutputLocation;
    property KeepOutputLocation: Boolean read GetKeepOutputLocation write SetKeepOutputLocation;
    property Overview: TAssociationOverview read GetOverview write SetOverview;
    property KeepOverview: Boolean read GetKeepOverview write SetKeepOverview;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property ScheduleExpression: string read GetScheduleExpression write SetScheduleExpression;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property Status: TAssociationStatus read GetStatus write SetStatus;
    property KeepStatus: Boolean read GetKeepStatus write SetKeepStatus;
    property SyncCompliance: TAssociationSyncCompliance read GetSyncCompliance write SetSyncCompliance;
    property TargetLocations: TObjectList<TTargetLocation> read GetTargetLocations write SetTargetLocations;
    property KeepTargetLocations: Boolean read GetKeepTargetLocations write SetKeepTargetLocations;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
  TAssociationDescription = class
  strict private
    FApplyOnlyAtCronInterval: Nullable<Boolean>;
    FAssociationId: Nullable<string>;
    FAssociationName: Nullable<string>;
    FAssociationVersion: Nullable<string>;
    FAutomationTargetParameterName: Nullable<string>;
    FCalendarNames: TList<string>;
    FKeepCalendarNames: Boolean;
    FComplianceSeverity: Nullable<TAssociationComplianceSeverity>;
    FDate: Nullable<TDateTime>;
    FDocumentVersion: Nullable<string>;
    FInstanceId: Nullable<string>;
    FLastExecutionDate: Nullable<TDateTime>;
    FLastSuccessfulExecutionDate: Nullable<TDateTime>;
    FLastUpdateAssociationDate: Nullable<TDateTime>;
    FMaxConcurrency: Nullable<string>;
    FMaxErrors: Nullable<string>;
    FName: Nullable<string>;
    FOutputLocation: TInstanceAssociationOutputLocation;
    FKeepOutputLocation: Boolean;
    FOverview: TAssociationOverview;
    FKeepOverview: Boolean;
    FParameters: TObjectDictionary<string, TList<string>>;
    FKeepParameters: Boolean;
    FScheduleExpression: Nullable<string>;
    FScheduleOffset: Nullable<Integer>;
    FStatus: TAssociationStatus;
    FKeepStatus: Boolean;
    FSyncCompliance: Nullable<TAssociationSyncCompliance>;
    FTargetLocations: TObjectList<TTargetLocation>;
    FKeepTargetLocations: Boolean;
    FTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    FKeepTargetMaps: Boolean;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    function GetApplyOnlyAtCronInterval: Boolean;
    procedure SetApplyOnlyAtCronInterval(const Value: Boolean);
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationName: string;
    procedure SetAssociationName(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetAutomationTargetParameterName: string;
    procedure SetAutomationTargetParameterName(const Value: string);
    function GetCalendarNames: TList<string>;
    procedure SetCalendarNames(const Value: TList<string>);
    function GetKeepCalendarNames: Boolean;
    procedure SetKeepCalendarNames(const Value: Boolean);
    function GetComplianceSeverity: TAssociationComplianceSeverity;
    procedure SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetInstanceId: string;
    procedure SetInstanceId(const Value: string);
    function GetLastExecutionDate: TDateTime;
    procedure SetLastExecutionDate(const Value: TDateTime);
    function GetLastSuccessfulExecutionDate: TDateTime;
    procedure SetLastSuccessfulExecutionDate(const Value: TDateTime);
    function GetLastUpdateAssociationDate: TDateTime;
    procedure SetLastUpdateAssociationDate(const Value: TDateTime);
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
    function GetOverview: TAssociationOverview;
    procedure SetOverview(const Value: TAssociationOverview);
    function GetKeepOverview: Boolean;
    procedure SetKeepOverview(const Value: Boolean);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetScheduleExpression: string;
    procedure SetScheduleExpression(const Value: string);
    function GetScheduleOffset: Integer;
    procedure SetScheduleOffset(const Value: Integer);
    function GetStatus: TAssociationStatus;
    procedure SetStatus(const Value: TAssociationStatus);
    function GetKeepStatus: Boolean;
    procedure SetKeepStatus(const Value: Boolean);
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
    function Obj: TAssociationDescription;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetApplyOnlyAtCronInterval: Boolean;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetAutomationTargetParameterName: Boolean;
    function IsSetCalendarNames: Boolean;
    function IsSetComplianceSeverity: Boolean;
    function IsSetDate: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetInstanceId: Boolean;
    function IsSetLastExecutionDate: Boolean;
    function IsSetLastSuccessfulExecutionDate: Boolean;
    function IsSetLastUpdateAssociationDate: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetName: Boolean;
    function IsSetOutputLocation: Boolean;
    function IsSetOverview: Boolean;
    function IsSetParameters: Boolean;
    function IsSetScheduleExpression: Boolean;
    function IsSetScheduleOffset: Boolean;
    function IsSetStatus: Boolean;
    function IsSetSyncCompliance: Boolean;
    function IsSetTargetLocations: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargets: Boolean;
    property ApplyOnlyAtCronInterval: Boolean read GetApplyOnlyAtCronInterval write SetApplyOnlyAtCronInterval;
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property AutomationTargetParameterName: string read GetAutomationTargetParameterName write SetAutomationTargetParameterName;
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
    property ComplianceSeverity: TAssociationComplianceSeverity read GetComplianceSeverity write SetComplianceSeverity;
    property Date: TDateTime read GetDate write SetDate;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property InstanceId: string read GetInstanceId write SetInstanceId;
    property LastExecutionDate: TDateTime read GetLastExecutionDate write SetLastExecutionDate;
    property LastSuccessfulExecutionDate: TDateTime read GetLastSuccessfulExecutionDate write SetLastSuccessfulExecutionDate;
    property LastUpdateAssociationDate: TDateTime read GetLastUpdateAssociationDate write SetLastUpdateAssociationDate;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Name: string read GetName write SetName;
    property OutputLocation: TInstanceAssociationOutputLocation read GetOutputLocation write SetOutputLocation;
    property KeepOutputLocation: Boolean read GetKeepOutputLocation write SetKeepOutputLocation;
    property Overview: TAssociationOverview read GetOverview write SetOverview;
    property KeepOverview: Boolean read GetKeepOverview write SetKeepOverview;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property ScheduleExpression: string read GetScheduleExpression write SetScheduleExpression;
    property ScheduleOffset: Integer read GetScheduleOffset write SetScheduleOffset;
    property Status: TAssociationStatus read GetStatus write SetStatus;
    property KeepStatus: Boolean read GetKeepStatus write SetKeepStatus;
    property SyncCompliance: TAssociationSyncCompliance read GetSyncCompliance write SetSyncCompliance;
    property TargetLocations: TObjectList<TTargetLocation> read GetTargetLocations write SetTargetLocations;
    property KeepTargetLocations: Boolean read GetKeepTargetLocations write SetKeepTargetLocations;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
implementation

{ TAssociationDescription }

constructor TAssociationDescription.Create;
begin
  inherited;
  FCalendarNames := TList<string>.Create;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FTargetLocations := TObjectList<TTargetLocation>.Create;
  FTargetMaps := TObjectList<TObjectDictionary<string, TList<string>>>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TAssociationDescription.Destroy;
begin
  Targets := nil;
  TargetMaps := nil;
  TargetLocations := nil;
  Status := nil;
  Parameters := nil;
  Overview := nil;
  OutputLocation := nil;
  CalendarNames := nil;
  inherited;
end;

function TAssociationDescription.Obj: TAssociationDescription;
begin
  Result := Self;
end;

function TAssociationDescription.GetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.ValueOrDefault;
end;

procedure TAssociationDescription.SetApplyOnlyAtCronInterval(const Value: Boolean);
begin
  FApplyOnlyAtCronInterval := Value;
end;

function TAssociationDescription.IsSetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.HasValue;
end;

function TAssociationDescription.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TAssociationDescription.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TAssociationDescription.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TAssociationDescription.GetAssociationName: string;
begin
  Result := FAssociationName.ValueOrDefault;
end;

procedure TAssociationDescription.SetAssociationName(const Value: string);
begin
  FAssociationName := Value;
end;

function TAssociationDescription.IsSetAssociationName: Boolean;
begin
  Result := FAssociationName.HasValue;
end;

function TAssociationDescription.GetAssociationVersion: string;
begin
  Result := FAssociationVersion.ValueOrDefault;
end;

procedure TAssociationDescription.SetAssociationVersion(const Value: string);
begin
  FAssociationVersion := Value;
end;

function TAssociationDescription.IsSetAssociationVersion: Boolean;
begin
  Result := FAssociationVersion.HasValue;
end;

function TAssociationDescription.GetAutomationTargetParameterName: string;
begin
  Result := FAutomationTargetParameterName.ValueOrDefault;
end;

procedure TAssociationDescription.SetAutomationTargetParameterName(const Value: string);
begin
  FAutomationTargetParameterName := Value;
end;

function TAssociationDescription.IsSetAutomationTargetParameterName: Boolean;
begin
  Result := FAutomationTargetParameterName.HasValue;
end;

function TAssociationDescription.GetCalendarNames: TList<string>;
begin
  Result := FCalendarNames;
end;

procedure TAssociationDescription.SetCalendarNames(const Value: TList<string>);
begin
  if FCalendarNames <> Value then
  begin
    if not KeepCalendarNames then
      FCalendarNames.Free;
    FCalendarNames := Value;
  end;
end;

function TAssociationDescription.GetKeepCalendarNames: Boolean;
begin
  Result := FKeepCalendarNames;
end;

procedure TAssociationDescription.SetKeepCalendarNames(const Value: Boolean);
begin
  FKeepCalendarNames := Value;
end;

function TAssociationDescription.IsSetCalendarNames: Boolean;
begin
  Result := (FCalendarNames <> nil) and (FCalendarNames.Count > 0);
end;

function TAssociationDescription.GetComplianceSeverity: TAssociationComplianceSeverity;
begin
  Result := FComplianceSeverity.ValueOrDefault;
end;

procedure TAssociationDescription.SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
begin
  FComplianceSeverity := Value;
end;

function TAssociationDescription.IsSetComplianceSeverity: Boolean;
begin
  Result := FComplianceSeverity.HasValue;
end;

function TAssociationDescription.GetDate: TDateTime;
begin
  Result := FDate.ValueOrDefault;
end;

procedure TAssociationDescription.SetDate(const Value: TDateTime);
begin
  FDate := Value;
end;

function TAssociationDescription.IsSetDate: Boolean;
begin
  Result := FDate.HasValue;
end;

function TAssociationDescription.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TAssociationDescription.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TAssociationDescription.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TAssociationDescription.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TAssociationDescription.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TAssociationDescription.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TAssociationDescription.GetLastExecutionDate: TDateTime;
begin
  Result := FLastExecutionDate.ValueOrDefault;
end;

procedure TAssociationDescription.SetLastExecutionDate(const Value: TDateTime);
begin
  FLastExecutionDate := Value;
end;

function TAssociationDescription.IsSetLastExecutionDate: Boolean;
begin
  Result := FLastExecutionDate.HasValue;
end;

function TAssociationDescription.GetLastSuccessfulExecutionDate: TDateTime;
begin
  Result := FLastSuccessfulExecutionDate.ValueOrDefault;
end;

procedure TAssociationDescription.SetLastSuccessfulExecutionDate(const Value: TDateTime);
begin
  FLastSuccessfulExecutionDate := Value;
end;

function TAssociationDescription.IsSetLastSuccessfulExecutionDate: Boolean;
begin
  Result := FLastSuccessfulExecutionDate.HasValue;
end;

function TAssociationDescription.GetLastUpdateAssociationDate: TDateTime;
begin
  Result := FLastUpdateAssociationDate.ValueOrDefault;
end;

procedure TAssociationDescription.SetLastUpdateAssociationDate(const Value: TDateTime);
begin
  FLastUpdateAssociationDate := Value;
end;

function TAssociationDescription.IsSetLastUpdateAssociationDate: Boolean;
begin
  Result := FLastUpdateAssociationDate.HasValue;
end;

function TAssociationDescription.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TAssociationDescription.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TAssociationDescription.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TAssociationDescription.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TAssociationDescription.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TAssociationDescription.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TAssociationDescription.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TAssociationDescription.SetName(const Value: string);
begin
  FName := Value;
end;

function TAssociationDescription.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TAssociationDescription.GetOutputLocation: TInstanceAssociationOutputLocation;
begin
  Result := FOutputLocation;
end;

procedure TAssociationDescription.SetOutputLocation(const Value: TInstanceAssociationOutputLocation);
begin
  if FOutputLocation <> Value then
  begin
    if not KeepOutputLocation then
      FOutputLocation.Free;
    FOutputLocation := Value;
  end;
end;

function TAssociationDescription.GetKeepOutputLocation: Boolean;
begin
  Result := FKeepOutputLocation;
end;

procedure TAssociationDescription.SetKeepOutputLocation(const Value: Boolean);
begin
  FKeepOutputLocation := Value;
end;

function TAssociationDescription.IsSetOutputLocation: Boolean;
begin
  Result := FOutputLocation <> nil;
end;

function TAssociationDescription.GetOverview: TAssociationOverview;
begin
  Result := FOverview;
end;

procedure TAssociationDescription.SetOverview(const Value: TAssociationOverview);
begin
  if FOverview <> Value then
  begin
    if not KeepOverview then
      FOverview.Free;
    FOverview := Value;
  end;
end;

function TAssociationDescription.GetKeepOverview: Boolean;
begin
  Result := FKeepOverview;
end;

procedure TAssociationDescription.SetKeepOverview(const Value: Boolean);
begin
  FKeepOverview := Value;
end;

function TAssociationDescription.IsSetOverview: Boolean;
begin
  Result := FOverview <> nil;
end;

function TAssociationDescription.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TAssociationDescription.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TAssociationDescription.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TAssociationDescription.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TAssociationDescription.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TAssociationDescription.GetScheduleExpression: string;
begin
  Result := FScheduleExpression.ValueOrDefault;
end;

procedure TAssociationDescription.SetScheduleExpression(const Value: string);
begin
  FScheduleExpression := Value;
end;

function TAssociationDescription.IsSetScheduleExpression: Boolean;
begin
  Result := FScheduleExpression.HasValue;
end;

function TAssociationDescription.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TAssociationDescription.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TAssociationDescription.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TAssociationDescription.GetStatus: TAssociationStatus;
begin
  Result := FStatus;
end;

procedure TAssociationDescription.SetStatus(const Value: TAssociationStatus);
begin
  if FStatus <> Value then
  begin
    if not KeepStatus then
      FStatus.Free;
    FStatus := Value;
  end;
end;

function TAssociationDescription.GetKeepStatus: Boolean;
begin
  Result := FKeepStatus;
end;

procedure TAssociationDescription.SetKeepStatus(const Value: Boolean);
begin
  FKeepStatus := Value;
end;

function TAssociationDescription.IsSetStatus: Boolean;
begin
  Result := FStatus <> nil;
end;

function TAssociationDescription.GetSyncCompliance: TAssociationSyncCompliance;
begin
  Result := FSyncCompliance.ValueOrDefault;
end;

procedure TAssociationDescription.SetSyncCompliance(const Value: TAssociationSyncCompliance);
begin
  FSyncCompliance := Value;
end;

function TAssociationDescription.IsSetSyncCompliance: Boolean;
begin
  Result := FSyncCompliance.HasValue;
end;

function TAssociationDescription.GetTargetLocations: TObjectList<TTargetLocation>;
begin
  Result := FTargetLocations;
end;

procedure TAssociationDescription.SetTargetLocations(const Value: TObjectList<TTargetLocation>);
begin
  if FTargetLocations <> Value then
  begin
    if not KeepTargetLocations then
      FTargetLocations.Free;
    FTargetLocations := Value;
  end;
end;

function TAssociationDescription.GetKeepTargetLocations: Boolean;
begin
  Result := FKeepTargetLocations;
end;

procedure TAssociationDescription.SetKeepTargetLocations(const Value: Boolean);
begin
  FKeepTargetLocations := Value;
end;

function TAssociationDescription.IsSetTargetLocations: Boolean;
begin
  Result := (FTargetLocations <> nil) and (FTargetLocations.Count > 0);
end;

function TAssociationDescription.GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
begin
  Result := FTargetMaps;
end;

procedure TAssociationDescription.SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
begin
  if FTargetMaps <> Value then
  begin
    if not KeepTargetMaps then
      FTargetMaps.Free;
    FTargetMaps := Value;
  end;
end;

function TAssociationDescription.GetKeepTargetMaps: Boolean;
begin
  Result := FKeepTargetMaps;
end;

procedure TAssociationDescription.SetKeepTargetMaps(const Value: Boolean);
begin
  FKeepTargetMaps := Value;
end;

function TAssociationDescription.IsSetTargetMaps: Boolean;
begin
  Result := (FTargetMaps <> nil) and (FTargetMaps.Count > 0);
end;

function TAssociationDescription.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TAssociationDescription.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TAssociationDescription.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TAssociationDescription.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TAssociationDescription.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
