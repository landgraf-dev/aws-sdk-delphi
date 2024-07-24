unit AWS.SSM.Model.StartAutomationExecutionRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.Tag, 
  AWS.SSM.Model.TargetLocation, 
  AWS.SSM.Model.Target;

type
  TStartAutomationExecutionRequest = class;
  
  IStartAutomationExecutionRequest = interface
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetMode: TExecutionMode;
    procedure SetMode(const Value: TExecutionMode);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
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
    function Obj: TStartAutomationExecutionRequest;
    function IsSetClientToken: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetMode: Boolean;
    function IsSetParameters: Boolean;
    function IsSetTags: Boolean;
    function IsSetTargetLocations: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargetParameterName: Boolean;
    function IsSetTargets: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Mode: TExecutionMode read GetMode write SetMode;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TargetLocations: TObjectList<TTargetLocation> read GetTargetLocations write SetTargetLocations;
    property KeepTargetLocations: Boolean read GetKeepTargetLocations write SetKeepTargetLocations;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property TargetParameterName: string read GetTargetParameterName write SetTargetParameterName;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
  TStartAutomationExecutionRequest = class(TAmazonSimpleSystemsManagementRequest, IStartAutomationExecutionRequest)
  strict private
    FClientToken: Nullable<string>;
    FDocumentName: Nullable<string>;
    FDocumentVersion: Nullable<string>;
    FMaxConcurrency: Nullable<string>;
    FMaxErrors: Nullable<string>;
    FMode: Nullable<TExecutionMode>;
    FParameters: TObjectDictionary<string, TList<string>>;
    FKeepParameters: Boolean;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
    FTargetLocations: TObjectList<TTargetLocation>;
    FKeepTargetLocations: Boolean;
    FTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
    FKeepTargetMaps: Boolean;
    FTargetParameterName: Nullable<string>;
    FTargets: TObjectList<TTarget>;
    FKeepTargets: Boolean;
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDocumentName: string;
    procedure SetDocumentName(const Value: string);
    function GetDocumentVersion: string;
    procedure SetDocumentVersion(const Value: string);
    function GetMaxConcurrency: string;
    procedure SetMaxConcurrency(const Value: string);
    function GetMaxErrors: string;
    procedure SetMaxErrors(const Value: string);
    function GetMode: TExecutionMode;
    procedure SetMode(const Value: TExecutionMode);
    function GetParameters: TObjectDictionary<string, TList<string>>;
    procedure SetParameters(const Value: TObjectDictionary<string, TList<string>>);
    function GetKeepParameters: Boolean;
    procedure SetKeepParameters(const Value: Boolean);
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
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
    function Obj: TStartAutomationExecutionRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetClientToken: Boolean;
    function IsSetDocumentName: Boolean;
    function IsSetDocumentVersion: Boolean;
    function IsSetMaxConcurrency: Boolean;
    function IsSetMaxErrors: Boolean;
    function IsSetMode: Boolean;
    function IsSetParameters: Boolean;
    function IsSetTags: Boolean;
    function IsSetTargetLocations: Boolean;
    function IsSetTargetMaps: Boolean;
    function IsSetTargetParameterName: Boolean;
    function IsSetTargets: Boolean;
    property ClientToken: string read GetClientToken write SetClientToken;
    property DocumentName: string read GetDocumentName write SetDocumentName;
    property DocumentVersion: string read GetDocumentVersion write SetDocumentVersion;
    property MaxConcurrency: string read GetMaxConcurrency write SetMaxConcurrency;
    property MaxErrors: string read GetMaxErrors write SetMaxErrors;
    property Mode: TExecutionMode read GetMode write SetMode;
    property Parameters: TObjectDictionary<string, TList<string>> read GetParameters write SetParameters;
    property KeepParameters: Boolean read GetKeepParameters write SetKeepParameters;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
    property TargetLocations: TObjectList<TTargetLocation> read GetTargetLocations write SetTargetLocations;
    property KeepTargetLocations: Boolean read GetKeepTargetLocations write SetKeepTargetLocations;
    property TargetMaps: TObjectList<TObjectDictionary<string, TList<string>>> read GetTargetMaps write SetTargetMaps;
    property KeepTargetMaps: Boolean read GetKeepTargetMaps write SetKeepTargetMaps;
    property TargetParameterName: string read GetTargetParameterName write SetTargetParameterName;
    property Targets: TObjectList<TTarget> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
  end;
  
implementation

{ TStartAutomationExecutionRequest }

constructor TStartAutomationExecutionRequest.Create;
begin
  inherited;
  FParameters := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
  FTags := TObjectList<TTag>.Create;
  FTargetLocations := TObjectList<TTargetLocation>.Create;
  FTargetMaps := TObjectList<TObjectDictionary<string, TList<string>>>.Create;
  FTargets := TObjectList<TTarget>.Create;
end;

destructor TStartAutomationExecutionRequest.Destroy;
begin
  Targets := nil;
  TargetMaps := nil;
  TargetLocations := nil;
  Tags := nil;
  Parameters := nil;
  inherited;
end;

function TStartAutomationExecutionRequest.Obj: TStartAutomationExecutionRequest;
begin
  Result := Self;
end;

function TStartAutomationExecutionRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TStartAutomationExecutionRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TStartAutomationExecutionRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TStartAutomationExecutionRequest.GetDocumentName: string;
begin
  Result := FDocumentName.ValueOrDefault;
end;

procedure TStartAutomationExecutionRequest.SetDocumentName(const Value: string);
begin
  FDocumentName := Value;
end;

function TStartAutomationExecutionRequest.IsSetDocumentName: Boolean;
begin
  Result := FDocumentName.HasValue;
end;

function TStartAutomationExecutionRequest.GetDocumentVersion: string;
begin
  Result := FDocumentVersion.ValueOrDefault;
end;

procedure TStartAutomationExecutionRequest.SetDocumentVersion(const Value: string);
begin
  FDocumentVersion := Value;
end;

function TStartAutomationExecutionRequest.IsSetDocumentVersion: Boolean;
begin
  Result := FDocumentVersion.HasValue;
end;

function TStartAutomationExecutionRequest.GetMaxConcurrency: string;
begin
  Result := FMaxConcurrency.ValueOrDefault;
end;

procedure TStartAutomationExecutionRequest.SetMaxConcurrency(const Value: string);
begin
  FMaxConcurrency := Value;
end;

function TStartAutomationExecutionRequest.IsSetMaxConcurrency: Boolean;
begin
  Result := FMaxConcurrency.HasValue;
end;

function TStartAutomationExecutionRequest.GetMaxErrors: string;
begin
  Result := FMaxErrors.ValueOrDefault;
end;

procedure TStartAutomationExecutionRequest.SetMaxErrors(const Value: string);
begin
  FMaxErrors := Value;
end;

function TStartAutomationExecutionRequest.IsSetMaxErrors: Boolean;
begin
  Result := FMaxErrors.HasValue;
end;

function TStartAutomationExecutionRequest.GetMode: TExecutionMode;
begin
  Result := FMode.ValueOrDefault;
end;

procedure TStartAutomationExecutionRequest.SetMode(const Value: TExecutionMode);
begin
  FMode := Value;
end;

function TStartAutomationExecutionRequest.IsSetMode: Boolean;
begin
  Result := FMode.HasValue;
end;

function TStartAutomationExecutionRequest.GetParameters: TObjectDictionary<string, TList<string>>;
begin
  Result := FParameters;
end;

procedure TStartAutomationExecutionRequest.SetParameters(const Value: TObjectDictionary<string, TList<string>>);
begin
  if FParameters <> Value then
  begin
    if not KeepParameters then
      FParameters.Free;
    FParameters := Value;
  end;
end;

function TStartAutomationExecutionRequest.GetKeepParameters: Boolean;
begin
  Result := FKeepParameters;
end;

procedure TStartAutomationExecutionRequest.SetKeepParameters(const Value: Boolean);
begin
  FKeepParameters := Value;
end;

function TStartAutomationExecutionRequest.IsSetParameters: Boolean;
begin
  Result := (FParameters <> nil) and (FParameters.Count > 0);
end;

function TStartAutomationExecutionRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TStartAutomationExecutionRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TStartAutomationExecutionRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TStartAutomationExecutionRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TStartAutomationExecutionRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

function TStartAutomationExecutionRequest.GetTargetLocations: TObjectList<TTargetLocation>;
begin
  Result := FTargetLocations;
end;

procedure TStartAutomationExecutionRequest.SetTargetLocations(const Value: TObjectList<TTargetLocation>);
begin
  if FTargetLocations <> Value then
  begin
    if not KeepTargetLocations then
      FTargetLocations.Free;
    FTargetLocations := Value;
  end;
end;

function TStartAutomationExecutionRequest.GetKeepTargetLocations: Boolean;
begin
  Result := FKeepTargetLocations;
end;

procedure TStartAutomationExecutionRequest.SetKeepTargetLocations(const Value: Boolean);
begin
  FKeepTargetLocations := Value;
end;

function TStartAutomationExecutionRequest.IsSetTargetLocations: Boolean;
begin
  Result := (FTargetLocations <> nil) and (FTargetLocations.Count > 0);
end;

function TStartAutomationExecutionRequest.GetTargetMaps: TObjectList<TObjectDictionary<string, TList<string>>>;
begin
  Result := FTargetMaps;
end;

procedure TStartAutomationExecutionRequest.SetTargetMaps(const Value: TObjectList<TObjectDictionary<string, TList<string>>>);
begin
  if FTargetMaps <> Value then
  begin
    if not KeepTargetMaps then
      FTargetMaps.Free;
    FTargetMaps := Value;
  end;
end;

function TStartAutomationExecutionRequest.GetKeepTargetMaps: Boolean;
begin
  Result := FKeepTargetMaps;
end;

procedure TStartAutomationExecutionRequest.SetKeepTargetMaps(const Value: Boolean);
begin
  FKeepTargetMaps := Value;
end;

function TStartAutomationExecutionRequest.IsSetTargetMaps: Boolean;
begin
  Result := (FTargetMaps <> nil) and (FTargetMaps.Count > 0);
end;

function TStartAutomationExecutionRequest.GetTargetParameterName: string;
begin
  Result := FTargetParameterName.ValueOrDefault;
end;

procedure TStartAutomationExecutionRequest.SetTargetParameterName(const Value: string);
begin
  FTargetParameterName := Value;
end;

function TStartAutomationExecutionRequest.IsSetTargetParameterName: Boolean;
begin
  Result := FTargetParameterName.HasValue;
end;

function TStartAutomationExecutionRequest.GetTargets: TObjectList<TTarget>;
begin
  Result := FTargets;
end;

procedure TStartAutomationExecutionRequest.SetTargets(const Value: TObjectList<TTarget>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TStartAutomationExecutionRequest.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TStartAutomationExecutionRequest.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TStartAutomationExecutionRequest.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

end.
