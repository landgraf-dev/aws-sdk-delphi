unit AWS.SSM.Model.UpdateAssociationRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.InstanceAssociationOutputLocation, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Model.Target;

type
  TUpdateAssociationRequest = class;
  
  IUpdateAssociationRequest = interface
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
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
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
    function Obj: TUpdateAssociationRequest;
    function IsSetApplyOnlyAtCronInterval: Boolean;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetAutomationTargetParameterName: Boolean;
    function IsSetCalendarNames: Boolean;
    function IsSetComplianceSeverity: Boolean;
    function IsSetDocumentVersion: Boolean;
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
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property AutomationTargetParameterName: string read GetAutomationTargetParameterName write SetAutomationTargetParameterName;
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
    property ComplianceSeverity: TAssociationComplianceSeverity read GetComplianceSeverity write SetComplianceSeverity;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
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
  
  TUpdateAssociationRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdateAssociationRequest)
  strict private
    FApplyOnlyAtCronInterval: Nullable<Boolean>;
    FAssociationId: Nullable<string>;
    FAssociationName: Nullable<string>;
    FAssociationVersion: Nullable<string>;
    FAutomationTargetParameterName: Nullable<string>;
    FCalendarNames: TList<string>;
    FKeepCalendarNames: Boolean;
    FComplianceSeverity: Nullable<TAssociationComplianceSeverity>;
    FDocumentVersion: Nullable<string>;
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
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
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
    function Obj: TUpdateAssociationRequest;
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
    function IsSetDocumentVersion: Boolean;
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
    property AssociationId: string read GetAssociationId write SetAssociationId;
    property AssociationName: string read GetAssociationName write SetAssociationName;
    property AssociationVersion: string read GetAssociationVersion write SetAssociationVersion;
    property AutomationTargetParameterName: string read GetAutomationTargetParameterName write SetAutomationTargetParameterName;
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
    property ComplianceSeverity: TAssociationComplianceSeverity read GetComplianceSeverity write SetComplianceSeverity;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
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

{ TUpdateAssociationRequest }

constructor TUpdateAssociationRequest.Create;
begin
  inherited;
  FCalendarNames := TList<string>.Create;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FTargetLocations := TObjectList<TTargetLocation>.Create;
  FTargetMaps := TObjectList<TObjectDictionary<string, TList<string>>>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TUpdateAssociationRequest.Destroy;
begin
  Targets := nil;
  TargetMaps := nil;
  TargetLocations := nil;
  Parameters := nil;
  OutputLocation := nil;
  CalendarNames := nil;
  inherited;
end;

function TUpdateAssociationRequest.Obj: TUpdateAssociationRequest;
begin
  Result := Self;
end;

function TUpdateAssociationRequest.GetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetApplyOnlyAtCronInterval(const Value: Boolean);
begin
  FApplyOnlyAtCronInterval := Value;
end;

function TUpdateAssociationRequest.IsSetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.HasValue;
end;

function TUpdateAssociationRequest.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TUpdateAssociationRequest.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TUpdateAssociationRequest.GetAssociationName: string;
begin
  Result := FAssociationName.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetAssociationName(const Value: string);
begin
  FAssociationName := Value;
end;

function TUpdateAssociationRequest.IsSetAssociationName: Boolean;
begin
  Result := FAssociationName.HasValue;
end;

function TUpdateAssociationRequest.GetAssociationVersion: string;
begin
  Result := FAssociationVersion.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetAssociationVersion(const Value: string);
begin
  FAssociationVersion := Value;
end;

function TUpdateAssociationRequest.IsSetAssociationVersion: Boolean;
begin
  Result := FAssociationVersion.HasValue;
end;

function TUpdateAssociationRequest.GetAutomationTargetParameterName: string;
begin
  Result := FAutomationTargetParameterName.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetAutomationTargetParameterName(const Value: string);
begin
  FAutomationTargetParameterName := Value;
end;

function TUpdateAssociationRequest.IsSetAutomationTargetParameterName: Boolean;
begin
  Result := FAutomationTargetParameterName.HasValue;
end;

function TUpdateAssociationRequest.GetCalendarNames: TList<string>;
begin
  Result := FCalendarNames;
end;

procedure TUpdateAssociationRequest.SetCalendarNames(const Value: TList<string>);
begin
  if FCalendarNames <> Value then
  begin
    if not KeepCalendarNames then
      FCalendarNames.Free;
    FCalendarNames := Value;
  end;
end;

function TUpdateAssociationRequest.GetKeepCalendarNames: Boolean;
begin
  Result := FKeepCalendarNames;
end;

procedure TUpdateAssociationRequest.SetKeepCalendarNames(const Value: Boolean);
begin
  FKeepCalendarNames := Value;
end;

function TUpdateAssociationRequest.IsSetCalendarNames: Boolean;
begin
  Result := (FCalendarNames <> nil) and (FCalendarNames.Count > 0);
end;

function TUpdateAssociationRequest.GetComplianceSeverity: TAssociationComplianceSeverity;
begin
  Result := FComplianceSeverity.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
begin
  FComplianceSeverity := Value;
end;

function TUpdateAssociationRequest.IsSetComplianceSeverity: Boolean;
begin
  Result := FComplianceSeverity.HasValue;
end;

function TUpdateAssociationRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TUpdateAssociationRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TUpdateAssociationRequest.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TUpdateAssociationRequest.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TUpdateAssociationRequest.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TUpdateAssociationRequest.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TUpdateAssociationRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdateAssociationRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdateAssociationRequest.GetOutputLocation: TInstanceAssociationOutputLocation;
begin
  Result := FOutputLocation;
end;

procedure TUpdateAssociationRequest.SetOutputLocation(const Value: TInstanceAssociationOutputLocation);
begin
  if FOutputLocation <> Value then
  begin
    if not KeepOutputLocation then
      FOutputLocation.Free;
    FOutputLocation := Value;
  end;
end;

function TUpdateAssociationRequest.GetKeepOutputLocation: Boolean;
begin
  Result := FKeepOutputLocation;
end;

procedure TUpdateAssociationRequest.SetKeepOutputLocation(const Value: Boolean);
begin
  FKeepOutputLocation := Value;
end;

function TUpdateAssociationRequest.IsSetOutputLocation: Boolean;
begin
  Result := FOutputLocation <> nil;
end;

function TUpdateAssociationRequest.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TUpdateAssociationRequest.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TUpdateAssociationRequest.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TUpdateAssociationRequest.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TUpdateAssociationRequest.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TUpdateAssociationRequest.GetScheduleExpression: string;
begin
  Result := FScheduleExpression.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetScheduleExpression(const Value: string);
begin
  FScheduleExpression := Value;
end;

function TUpdateAssociationRequest.IsSetScheduleExpression: Boolean;
begin
  Result := FScheduleExpression.HasValue;
end;

function TUpdateAssociationRequest.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TUpdateAssociationRequest.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TUpdateAssociationRequest.GetSyncCompliance: TAssociationSyncCompliance;
begin
  Result := FSyncCompliance.ValueOrDefault;
end;

procedure TUpdateAssociationRequest.SetSyncCompliance(const Value: TAssociationSyncCompliance);
begin
  FSyncCompliance := Value;
end;

function TUpdateAssociationRequest.IsSetSyncCompliance: Boolean;
begin
  Result := FSyncCompliance.HasValue;
end;

function TUpdateAssociationRequest.GetTargetLocations: TObjectList<TTargetLocation>;
begin
  Result := FTargetLocations;
end;

procedure TUpdateAssociationRequest.SetTargetLocations(const Value: TObjectList<TTargetLocation>);
begin
  if FTargetLocations <> Value then
  begin
    if not KeepTargetLocations then
      FTargetLocations.Free;
    FTargetLocations := Value;
  end;
end;

function TUpdateAssociationRequest.GetKeepTargetLocations: Boolean;
begin
  Result := FKeepTargetLocations;
end;

procedure TUpdateAssociationRequest.SetKeepTargetLocations(const Value: Boolean);
begin
  FKeepTargetLocations := Value;
end;

function TUpdateAssociationRequest.IsSetTargetLocations: Boolean;
begin
  Result := (FTargetLocations <> nil) and (FTargetLocations.Count > 0);
end;

function TUpdateAssociationRequest.GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
begin
  Result := FTargetMaps;
end;

procedure TUpdateAssociationRequest.SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
begin
  if FTargetMaps <> Value then
  begin
    if not KeepTargetMaps then
      FTargetMaps.Free;
    FTargetMaps := Value;
  end;
end;

function TUpdateAssociationRequest.GetKeepTargetMaps: Boolean;
begin
  Result := FKeepTargetMaps;
end;

procedure TUpdateAssociationRequest.SetKeepTargetMaps(const Value: Boolean);
begin
  FKeepTargetMaps := Value;
end;

function TUpdateAssociationRequest.IsSetTargetMaps: Boolean;
begin
  Result := (FTargetMaps <> nil) and (FTargetMaps.Count > 0);
end;

function TUpdateAssociationRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TUpdateAssociationRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TUpdateAssociationRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TUpdateAssociationRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TUpdateAssociationRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
