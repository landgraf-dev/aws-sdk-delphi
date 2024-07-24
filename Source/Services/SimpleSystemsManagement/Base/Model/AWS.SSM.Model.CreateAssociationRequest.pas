unit AWS.SSM.Model.CreateAssociationRequest;

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
  TCreateAssociationRequest = class;
  
  ICreateAssociationRequest = interface
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
    function Obj: TCreateAssociationRequest;
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
  
  TCreateAssociationRequest = class(TAmazonSimpleSystemsManagementRequest, ICreateAssociationRequest)
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
    function Obj: TCreateAssociationRequest;
  public
    constructor Create; overload;
    destructor Destroy; override;
    constructor Create(const AInstanceId: string; const AName: string); overload;
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

{ TCreateAssociationRequest }

constructor TCreateAssociationRequest.Create;
begin
  inherited;
  FCalendarNames := TList<string>.Create;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FTargetLocations := TObjectList<TTargetLocation>.Create;
  FTargetMaps := TObjectList<TObjectDictionary<string, TList<string>>>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TCreateAssociationRequest.Destroy;
begin
  Targets := nil;
  TargetMaps := nil;
  TargetLocations := nil;
  Parameters := nil;
  OutputLocation := nil;
  CalendarNames := nil;
  inherited;
end;

function TCreateAssociationRequest.Obj: TCreateAssociationRequest;
begin
  Result := Self;
end;

constructor TCreateAssociationRequest.Create(const AInstanceId: string; const AName: string);
begin
  Create;
  InstanceId := AInstanceId;
  Name := AName;
end;

function TCreateAssociationRequest.GetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetApplyOnlyAtCronInterval(const Value: Boolean);
begin
  FApplyOnlyAtCronInterval := Value;
end;

function TCreateAssociationRequest.IsSetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.HasValue;
end;

function TCreateAssociationRequest.GetAssociationName: string;
begin
  Result := FAssociationName.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetAssociationName(const Value: string);
begin
  FAssociationName := Value;
end;

function TCreateAssociationRequest.IsSetAssociationName: Boolean;
begin
  Result := FAssociationName.HasValue;
end;

function TCreateAssociationRequest.GetAutomationTargetParameterName: string;
begin
  Result := FAutomationTargetParameterName.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetAutomationTargetParameterName(const Value: string);
begin
  FAutomationTargetParameterName := Value;
end;

function TCreateAssociationRequest.IsSetAutomationTargetParameterName: Boolean;
begin
  Result := FAutomationTargetParameterName.HasValue;
end;

function TCreateAssociationRequest.GetCalendarNames: TList<string>;
begin
  Result := FCalendarNames;
end;

procedure TCreateAssociationRequest.SetCalendarNames(const Value: TList<string>);
begin
  if FCalendarNames <> Value then
  begin
    if not KeepCalendarNames then
      FCalendarNames.Free;
    FCalendarNames := Value;
  end;
end;

function TCreateAssociationRequest.GetKeepCalendarNames: Boolean;
begin
  Result := FKeepCalendarNames;
end;

procedure TCreateAssociationRequest.SetKeepCalendarNames(const Value: Boolean);
begin
  FKeepCalendarNames := Value;
end;

function TCreateAssociationRequest.IsSetCalendarNames: Boolean;
begin
  Result := (FCalendarNames <> nil) and (FCalendarNames.Count > 0);
end;

function TCreateAssociationRequest.GetComplianceSeverity: TAssociationComplianceSeverity;
begin
  Result := FComplianceSeverity.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
begin
  FComplianceSeverity := Value;
end;

function TCreateAssociationRequest.IsSetComplianceSeverity: Boolean;
begin
  Result := FComplianceSeverity.HasValue;
end;

function TCreateAssociationRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TCreateAssociationRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TCreateAssociationRequest.GetInstanceId: string;
begin
  Result := FInstanceId.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetInstanceId(const Value: string);
begin
  FInstanceId := Value;
end;

function TCreateAssociationRequest.IsSetInstanceId: Boolean;
begin
  Result := FInstanceId.HasValue;
end;

function TCreateAssociationRequest.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TCreateAssociationRequest.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TCreateAssociationRequest.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TCreateAssociationRequest.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TCreateAssociationRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreateAssociationRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreateAssociationRequest.GetOutputLocation: TInstanceAssociationOutputLocation;
begin
  Result := FOutputLocation;
end;

procedure TCreateAssociationRequest.SetOutputLocation(const Value: TInstanceAssociationOutputLocation);
begin
  if FOutputLocation <> Value then
  begin
    if not KeepOutputLocation then
      FOutputLocation.Free;
    FOutputLocation := Value;
  end;
end;

function TCreateAssociationRequest.GetKeepOutputLocation: Boolean;
begin
  Result := FKeepOutputLocation;
end;

procedure TCreateAssociationRequest.SetKeepOutputLocation(const Value: Boolean);
begin
  FKeepOutputLocation := Value;
end;

function TCreateAssociationRequest.IsSetOutputLocation: Boolean;
begin
  Result := FOutputLocation <> nil;
end;

function TCreateAssociationRequest.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TCreateAssociationRequest.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TCreateAssociationRequest.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TCreateAssociationRequest.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TCreateAssociationRequest.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TCreateAssociationRequest.GetScheduleExpression: string;
begin
  Result := FScheduleExpression.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetScheduleExpression(const Value: string);
begin
  FScheduleExpression := Value;
end;

function TCreateAssociationRequest.IsSetScheduleExpression: Boolean;
begin
  Result := FScheduleExpression.HasValue;
end;

function TCreateAssociationRequest.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TCreateAssociationRequest.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TCreateAssociationRequest.GetSyncCompliance: TAssociationSyncCompliance;
begin
  Result := FSyncCompliance.ValueOrDefault;
end;

procedure TCreateAssociationRequest.SetSyncCompliance(const Value: TAssociationSyncCompliance);
begin
  FSyncCompliance := Value;
end;

function TCreateAssociationRequest.IsSetSyncCompliance: Boolean;
begin
  Result := FSyncCompliance.HasValue;
end;

function TCreateAssociationRequest.GetTargetLocations: TObjectList<TTargetLocation>;
begin
  Result := FTargetLocations;
end;

procedure TCreateAssociationRequest.SetTargetLocations(const Value: TObjectList<TTargetLocation>);
begin
  if FTargetLocations <> Value then
  begin
    if not KeepTargetLocations then
      FTargetLocations.Free;
    FTargetLocations := Value;
  end;
end;

function TCreateAssociationRequest.GetKeepTargetLocations: Boolean;
begin
  Result := FKeepTargetLocations;
end;

procedure TCreateAssociationRequest.SetKeepTargetLocations(const Value: Boolean);
begin
  FKeepTargetLocations := Value;
end;

function TCreateAssociationRequest.IsSetTargetLocations: Boolean;
begin
  Result := (FTargetLocations <> nil) and (FTargetLocations.Count > 0);
end;

function TCreateAssociationRequest.GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
begin
  Result := FTargetMaps;
end;

procedure TCreateAssociationRequest.SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
begin
  if FTargetMaps <> Value then
  begin
    if not KeepTargetMaps then
      FTargetMaps.Free;
    FTargetMaps := Value;
  end;
end;

function TCreateAssociationRequest.GetKeepTargetMaps: Boolean;
begin
  Result := FKeepTargetMaps;
end;

procedure TCreateAssociationRequest.SetKeepTargetMaps(const Value: Boolean);
begin
  FKeepTargetMaps := Value;
end;

function TCreateAssociationRequest.IsSetTargetMaps: Boolean;
begin
  Result := (FTargetMaps <> nil) and (FTargetMaps.Count > 0);
end;

function TCreateAssociationRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TCreateAssociationRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TCreateAssociationRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TCreateAssociationRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TCreateAssociationRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
