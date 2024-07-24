unit AWS.SSM.Model.AssociationVersionInfo;

interface

uses
  System.Generics.Collections, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.InstanceAssociationOutputLocation, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Model.Target;

type
  TAssociationVersionInfo = class;
  
  IAssociationVersionInfo = interface
    function GetApplyOnlyAtCronInterval: Boolean;
    procedure SetApplyOnlyAtCronInterval(const Value: Boolean);
    function GetAssociationId: string;
    procedure SetAssociationId(const Value: string);
    function GetAssociationName: string;
    procedure SetAssociationName(const Value: string);
    function GetAssociationVersion: string;
    procedure SetAssociationVersion(const Value: string);
    function GetCalendarNames: TList<string>;
    procedure SetCalendarNames(const Value: TList<string>);
    function GetKeepCalendarNames: Boolean;
    procedure SetKeepCalendarNames(const Value: Boolean);
    function GetComplianceSeverity: TAssociationComplianceSeverity;
    procedure SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
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
    function Obj: TAssociationVersionInfo;
    function IsSetApplyOnlyAtCronInterval: Boolean;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetCalendarNames: Boolean;
    function IsSetComplianceSeverity: Boolean;
    function IsSetCreatedDate: Boolean;
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
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
    property ComplianceSeverity: TAssociationComplianceSeverity read GetComplianceSeverity write SetComplianceSeverity;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
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
  
  TAssociationVersionInfo = class
  strict private
    FApplyOnlyAtCronInterval: Nullable<Boolean>;
    FAssociationId: Nullable<string>;
    FAssociationName: Nullable<string>;
    FAssociationVersion: Nullable<string>;
    FCalendarNames: TList<string>;
    FKeepCalendarNames: Boolean;
    FComplianceSeverity: Nullable<TAssociationComplianceSeverity>;
    FCreatedDate: Nullable<TDateTime>;
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
    function GetCalendarNames: TList<string>;
    procedure SetCalendarNames(const Value: TList<string>);
    function GetKeepCalendarNames: Boolean;
    procedure SetKeepCalendarNames(const Value: Boolean);
    function GetComplianceSeverity: TAssociationComplianceSeverity;
    procedure SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
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
    function Obj: TAssociationVersionInfo;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetApplyOnlyAtCronInterval: Boolean;
    function IsSetAssociationId: Boolean;
    function IsSetAssociationName: Boolean;
    function IsSetAssociationVersion: Boolean;
    function IsSetCalendarNames: Boolean;
    function IsSetComplianceSeverity: Boolean;
    function IsSetCreatedDate: Boolean;
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
    property CalendarNames: TList<string> read GetCalendarNames write SetCalendarNames;
    property KeepCalendarNames: Boolean read GetKeepCalendarNames write SetKeepCalendarNames;
    property ComplianceSeverity: TAssociationComplianceSeverity read GetComplianceSeverity write SetComplianceSeverity;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
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

{ TAssociationVersionInfo }

constructor TAssociationVersionInfo.Create;
begin
  inherited;
  FCalendarNames := TList<string>.Create;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FTargetLocations := TObjectList<TTargetLocation>.Create;
  FTargetMaps := TObjectList<TObjectDictionary<string, TList<string>>>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TAssociationVersionInfo.Destroy;
begin
  Targets := nil;
  TargetMaps := nil;
  TargetLocations := nil;
  Parameters := nil;
  OutputLocation := nil;
  CalendarNames := nil;
  inherited;
end;

function TAssociationVersionInfo.Obj: TAssociationVersionInfo;
begin
  Result := Self;
end;

function TAssociationVersionInfo.GetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetApplyOnlyAtCronInterval(const Value: Boolean);
begin
  FApplyOnlyAtCronInterval := Value;
end;

function TAssociationVersionInfo.IsSetApplyOnlyAtCronInterval: Boolean;
begin
  Result := FApplyOnlyAtCronInterval.HasValue;
end;

function TAssociationVersionInfo.GetAssociationId: string;
begin
  Result := FAssociationId.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetAssociationId(const Value: string);
begin
  FAssociationId := Value;
end;

function TAssociationVersionInfo.IsSetAssociationId: Boolean;
begin
  Result := FAssociationId.HasValue;
end;

function TAssociationVersionInfo.GetAssociationName: string;
begin
  Result := FAssociationName.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetAssociationName(const Value: string);
begin
  FAssociationName := Value;
end;

function TAssociationVersionInfo.IsSetAssociationName: Boolean;
begin
  Result := FAssociationName.HasValue;
end;

function TAssociationVersionInfo.GetAssociationVersion: string;
begin
  Result := FAssociationVersion.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetAssociationVersion(const Value: string);
begin
  FAssociationVersion := Value;
end;

function TAssociationVersionInfo.IsSetAssociationVersion: Boolean;
begin
  Result := FAssociationVersion.HasValue;
end;

function TAssociationVersionInfo.GetCalendarNames: TList<string>;
begin
  Result := FCalendarNames;
end;

procedure TAssociationVersionInfo.SetCalendarNames(const Value: TList<string>);
begin
  if FCalendarNames <> Value then
  begin
    if not KeepCalendarNames then
      FCalendarNames.Free;
    FCalendarNames := Value;
  end;
end;

function TAssociationVersionInfo.GetKeepCalendarNames: Boolean;
begin
  Result := FKeepCalendarNames;
end;

procedure TAssociationVersionInfo.SetKeepCalendarNames(const Value: Boolean);
begin
  FKeepCalendarNames := Value;
end;

function TAssociationVersionInfo.IsSetCalendarNames: Boolean;
begin
  Result := (FCalendarNames <> nil) and (FCalendarNames.Count > 0);
end;

function TAssociationVersionInfo.GetComplianceSeverity: TAssociationComplianceSeverity;
begin
  Result := FComplianceSeverity.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetComplianceSeverity(const Value: TAssociationComplianceSeverity);
begin
  FComplianceSeverity := Value;
end;

function TAssociationVersionInfo.IsSetComplianceSeverity: Boolean;
begin
  Result := FComplianceSeverity.HasValue;
end;

function TAssociationVersionInfo.GetCreatedDate: TDateTime;
begin
  Result := FCreatedDate.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetCreatedDate(const Value: TDateTime);
begin
  FCreatedDate := Value;
end;

function TAssociationVersionInfo.IsSetCreatedDate: Boolean;
begin
  Result := FCreatedDate.HasValue;
end;

function TAssociationVersionInfo.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TAssociationVersionInfo.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TAssociationVersionInfo.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TAssociationVersionInfo.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TAssociationVersionInfo.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TAssociationVersionInfo.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TAssociationVersionInfo.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetName(const Value: string);
begin
  FName := Value;
end;

function TAssociationVersionInfo.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TAssociationVersionInfo.GetOutputLocation: TInstanceAssociationOutputLocation;
begin
  Result := FOutputLocation;
end;

procedure TAssociationVersionInfo.SetOutputLocation(const Value: TInstanceAssociationOutputLocation);
begin
  if FOutputLocation <> Value then
  begin
    if not KeepOutputLocation then
      FOutputLocation.Free;
    FOutputLocation := Value;
  end;
end;

function TAssociationVersionInfo.GetKeepOutputLocation: Boolean;
begin
  Result := FKeepOutputLocation;
end;

procedure TAssociationVersionInfo.SetKeepOutputLocation(const Value: Boolean);
begin
  FKeepOutputLocation := Value;
end;

function TAssociationVersionInfo.IsSetOutputLocation: Boolean;
begin
  Result := FOutputLocation <> nil;
end;

function TAssociationVersionInfo.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TAssociationVersionInfo.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TAssociationVersionInfo.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TAssociationVersionInfo.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TAssociationVersionInfo.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TAssociationVersionInfo.GetScheduleExpression: string;
begin
  Result := FScheduleExpression.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetScheduleExpression(const Value: string);
begin
  FScheduleExpression := Value;
end;

function TAssociationVersionInfo.IsSetScheduleExpression: Boolean;
begin
  Result := FScheduleExpression.HasValue;
end;

function TAssociationVersionInfo.GetScheduleOffset: Integer;
begin
  Result := FScheduleOffset.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetScheduleOffset(const Value: Integer);
begin
  FScheduleOffset := Value;
end;

function TAssociationVersionInfo.IsSetScheduleOffset: Boolean;
begin
  Result := FScheduleOffset.HasValue;
end;

function TAssociationVersionInfo.GetSyncCompliance: TAssociationSyncCompliance;
begin
  Result := FSyncCompliance.ValueOrDefault;
end;

procedure TAssociationVersionInfo.SetSyncCompliance(const Value: TAssociationSyncCompliance);
begin
  FSyncCompliance := Value;
end;

function TAssociationVersionInfo.IsSetSyncCompliance: Boolean;
begin
  Result := FSyncCompliance.HasValue;
end;

function TAssociationVersionInfo.GetTargetLocations: TObjectList<TTargetLocation>;
begin
  Result := FTargetLocations;
end;

procedure TAssociationVersionInfo.SetTargetLocations(const Value: TObjectList<TTargetLocation>);
begin
  if FTargetLocations <> Value then
  begin
    if not KeepTargetLocations then
      FTargetLocations.Free;
    FTargetLocations := Value;
  end;
end;

function TAssociationVersionInfo.GetKeepTargetLocations: Boolean;
begin
  Result := FKeepTargetLocations;
end;

procedure TAssociationVersionInfo.SetKeepTargetLocations(const Value: Boolean);
begin
  FKeepTargetLocations := Value;
end;

function TAssociationVersionInfo.IsSetTargetLocations: Boolean;
begin
  Result := (FTargetLocations <> nil) and (FTargetLocations.Count > 0);
end;

function TAssociationVersionInfo.GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
begin
  Result := FTargetMaps;
end;

procedure TAssociationVersionInfo.SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
begin
  if FTargetMaps <> Value then
  begin
    if not KeepTargetMaps then
      FTargetMaps.Free;
    FTargetMaps := Value;
  end;
end;

function TAssociationVersionInfo.GetKeepTargetMaps: Boolean;
begin
  Result := FKeepTargetMaps;
end;

procedure TAssociationVersionInfo.SetKeepTargetMaps(const Value: Boolean);
begin
  FKeepTargetMaps := Value;
end;

function TAssociationVersionInfo.IsSetTargetMaps: Boolean;
begin
  Result := (FTargetMaps <> nil) and (FTargetMaps.Count > 0);
end;

function TAssociationVersionInfo.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TAssociationVersionInfo.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TAssociationVersionInfo.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TAssociationVersionInfo.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TAssociationVersionInfo.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
