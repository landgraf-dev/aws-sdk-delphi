unit AWS.SSM.Model.BaselineOverride;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.PatchRuleGroup, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.PatchFilterGroup, 
  AWS.SSM.Model.PatchSource;

type
  TBaselineOverride = class;
  
  IBaselineOverride = interface
    function GetApprovalRules: TPatchRuleGroup;
    procedure SetApprovalRules(const Value: TPatchRuleGroup);
    function GetKeepApprovalRules: Boolean;
    procedure SetKeepApprovalRules(const Value: Boolean);
    function GetApprovedPatches: TList<string>;
    procedure SetApprovedPatches(const Value: TList<string>);
    function GetKeepApprovedPatches: Boolean;
    procedure SetKeepApprovedPatches(const Value: Boolean);
    function GetApprovedPatchesComplianceLevel: TPatchComplianceLevel;
    procedure SetApprovedPatchesComplianceLevel(const Value: TPatchComplianceLevel);
    function GetApprovedPatchesEnableNonSecurity: Boolean;
    procedure SetApprovedPatchesEnableNonSecurity(const Value: Boolean);
    function GetGlobalFilters: TPatchFilterGroup;
    procedure SetGlobalFilters(const Value: TPatchFilterGroup);
    function GetKeepGlobalFilters: Boolean;
    procedure SetKeepGlobalFilters(const Value: Boolean);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetRejectedPatches: TList<string>;
    procedure SetRejectedPatches(const Value: TList<string>);
    function GetKeepRejectedPatches: Boolean;
    procedure SetKeepRejectedPatches(const Value: Boolean);
    function GetRejectedPatchesAction: TPatchAction;
    procedure SetRejectedPatchesAction(const Value: TPatchAction);
    function GetSources: TObjectList<TPatchSource>;
    procedure SetSources(const Value: TObjectList<TPatchSource>);
    function GetKeepSources: Boolean;
    procedure SetKeepSources(const Value: Boolean);
    function Obj: TBaselineOverride;
    function IsSetApprovalRules: Boolean;
    function IsSetApprovedPatches: Boolean;
    function IsSetApprovedPatchesComplianceLevel: Boolean;
    function IsSetApprovedPatchesEnableNonSecurity: Boolean;
    function IsSetGlobalFilters: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetRejectedPatches: Boolean;
    function IsSetRejectedPatchesAction: Boolean;
    function IsSetSources: Boolean;
    property ApprovalRules: TPatchRuleGroup read GetApprovalRules write SetApprovalRules;
    property KeepApprovalRules: Boolean read GetKeepApprovalRules write SetKeepApprovalRules;
    property ApprovedPatches: TList<string> read GetApprovedPatches write SetApprovedPatches;
    property KeepApprovedPatches: Boolean read GetKeepApprovedPatches write SetKeepApprovedPatches;
    property ApprovedPatchesComplianceLevel: TPatchComplianceLevel read GetApprovedPatchesComplianceLevel write SetApprovedPatchesComplianceLevel;
    property ApprovedPatchesEnableNonSecurity: Boolean read GetApprovedPatchesEnableNonSecurity write SetApprovedPatchesEnableNonSecurity;
    property GlobalFilters: TPatchFilterGroup read GetGlobalFilters write SetGlobalFilters;
    property KeepGlobalFilters: Boolean read GetKeepGlobalFilters write SetKeepGlobalFilters;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
  end;
  
  TBaselineOverride = class
  strict private
    FApprovalRules: TPatchRuleGroup;
    FKeepApprovalRules: Boolean;
    FApprovedPatches: TList<string>;
    FKeepApprovedPatches: Boolean;
    FApprovedPatchesComplianceLevel: Nullable<TPatchComplianceLevel>;
    FApprovedPatchesEnableNonSecurity: Nullable<Boolean>;
    FGlobalFilters: TPatchFilterGroup;
    FKeepGlobalFilters: Boolean;
    FOperatingSystem: Nullable<TOperatingSystem>;
    FRejectedPatches: TList<string>;
    FKeepRejectedPatches: Boolean;
    FRejectedPatchesAction: Nullable<TPatchAction>;
    FSources: TObjectList<TPatchSource>;
    FKeepSources: Boolean;
    function GetApprovalRules: TPatchRuleGroup;
    procedure SetApprovalRules(const Value: TPatchRuleGroup);
    function GetKeepApprovalRules: Boolean;
    procedure SetKeepApprovalRules(const Value: Boolean);
    function GetApprovedPatches: TList<string>;
    procedure SetApprovedPatches(const Value: TList<string>);
    function GetKeepApprovedPatches: Boolean;
    procedure SetKeepApprovedPatches(const Value: Boolean);
    function GetApprovedPatchesComplianceLevel: TPatchComplianceLevel;
    procedure SetApprovedPatchesComplianceLevel(const Value: TPatchComplianceLevel);
    function GetApprovedPatchesEnableNonSecurity: Boolean;
    procedure SetApprovedPatchesEnableNonSecurity(const Value: Boolean);
    function GetGlobalFilters: TPatchFilterGroup;
    procedure SetGlobalFilters(const Value: TPatchFilterGroup);
    function GetKeepGlobalFilters: Boolean;
    procedure SetKeepGlobalFilters(const Value: Boolean);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetRejectedPatches: TList<string>;
    procedure SetRejectedPatches(const Value: TList<string>);
    function GetKeepRejectedPatches: Boolean;
    procedure SetKeepRejectedPatches(const Value: Boolean);
    function GetRejectedPatchesAction: TPatchAction;
    procedure SetRejectedPatchesAction(const Value: TPatchAction);
    function GetSources: TObjectList<TPatchSource>;
    procedure SetSources(const Value: TObjectList<TPatchSource>);
    function GetKeepSources: Boolean;
    procedure SetKeepSources(const Value: Boolean);
  strict protected
    function Obj: TBaselineOverride;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetApprovalRules: Boolean;
    function IsSetApprovedPatches: Boolean;
    function IsSetApprovedPatchesComplianceLevel: Boolean;
    function IsSetApprovedPatchesEnableNonSecurity: Boolean;
    function IsSetGlobalFilters: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetRejectedPatches: Boolean;
    function IsSetRejectedPatchesAction: Boolean;
    function IsSetSources: Boolean;
    property ApprovalRules: TPatchRuleGroup read GetApprovalRules write SetApprovalRules;
    property KeepApprovalRules: Boolean read GetKeepApprovalRules write SetKeepApprovalRules;
    property ApprovedPatches: TList<string> read GetApprovedPatches write SetApprovedPatches;
    property KeepApprovedPatches: Boolean read GetKeepApprovedPatches write SetKeepApprovedPatches;
    property ApprovedPatchesComplianceLevel: TPatchComplianceLevel read GetApprovedPatchesComplianceLevel write SetApprovedPatchesComplianceLevel;
    property ApprovedPatchesEnableNonSecurity: Boolean read GetApprovedPatchesEnableNonSecurity write SetApprovedPatchesEnableNonSecurity;
    property GlobalFilters: TPatchFilterGroup read GetGlobalFilters write SetGlobalFilters;
    property KeepGlobalFilters: Boolean read GetKeepGlobalFilters write SetKeepGlobalFilters;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
  end;
  
implementation

{ TBaselineOverride }

constructor TBaselineOverride.Create;
begin
  inherited;
  FApprovedPatches := TList<string>.Create;
  FRejectedPatches := TList<string>.Create;
  FSources := TObjectList<TPatchSource>.Create;
end;

destructor TBaselineOverride.Destroy;
begin
  Sources := nil;
  RejectedPatches := nil;
  GlobalFilters := nil;
  ApprovedPatches := nil;
  ApprovalRules := nil;
  inherited;
end;

function TBaselineOverride.Obj: TBaselineOverride;
begin
  Result := Self;
end;

function TBaselineOverride.GetApprovalRules: TPatchRuleGroup;
begin
  Result := FApprovalRules;
end;

procedure TBaselineOverride.SetApprovalRules(const Value: TPatchRuleGroup);
begin
  if FApprovalRules <> Value then
  begin
    if not KeepApprovalRules then
      FApprovalRules.Free;
    FApprovalRules := Value;
  end;
end;

function TBaselineOverride.GetKeepApprovalRules: Boolean;
begin
  Result := FKeepApprovalRules;
end;

procedure TBaselineOverride.SetKeepApprovalRules(const Value: Boolean);
begin
  FKeepApprovalRules := Value;
end;

function TBaselineOverride.IsSetApprovalRules: Boolean;
begin
  Result := FApprovalRules <> nil;
end;

function TBaselineOverride.GetApprovedPatches: TList<string>;
begin
  Result := FApprovedPatches;
end;

procedure TBaselineOverride.SetApprovedPatches(const Value: TList<string>);
begin
  if FApprovedPatches <> Value then
  begin
    if not KeepApprovedPatches then
      FApprovedPatches.Free;
    FApprovedPatches := Value;
  end;
end;

function TBaselineOverride.GetKeepApprovedPatches: Boolean;
begin
  Result := FKeepApprovedPatches;
end;

procedure TBaselineOverride.SetKeepApprovedPatches(const Value: Boolean);
begin
  FKeepApprovedPatches := Value;
end;

function TBaselineOverride.IsSetApprovedPatches: Boolean;
begin
  Result := (FApprovedPatches <> nil) and (FApprovedPatches.Count > 0);
end;

function TBaselineOverride.GetApprovedPatchesComplianceLevel: TPatchComplianceLevel;
begin
  Result := FApprovedPatchesComplianceLevel.ValueOrDefault;
end;

procedure TBaselineOverride.SetApprovedPatchesComplianceLevel(const Value: TPatchComplianceLevel);
begin
  FApprovedPatchesComplianceLevel := Value;
end;

function TBaselineOverride.IsSetApprovedPatchesComplianceLevel: Boolean;
begin
  Result := FApprovedPatchesComplianceLevel.HasValue;
end;

function TBaselineOverride.GetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.ValueOrDefault;
end;

procedure TBaselineOverride.SetApprovedPatchesEnableNonSecurity(const Value: Boolean);
begin
  FApprovedPatchesEnableNonSecurity := Value;
end;

function TBaselineOverride.IsSetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.HasValue;
end;

function TBaselineOverride.GetGlobalFilters: TPatchFilterGroup;
begin
  Result := FGlobalFilters;
end;

procedure TBaselineOverride.SetGlobalFilters(const Value: TPatchFilterGroup);
begin
  if FGlobalFilters <> Value then
  begin
    if not KeepGlobalFilters then
      FGlobalFilters.Free;
    FGlobalFilters := Value;
  end;
end;

function TBaselineOverride.GetKeepGlobalFilters: Boolean;
begin
  Result := FKeepGlobalFilters;
end;

procedure TBaselineOverride.SetKeepGlobalFilters(const Value: Boolean);
begin
  FKeepGlobalFilters := Value;
end;

function TBaselineOverride.IsSetGlobalFilters: Boolean;
begin
  Result := FGlobalFilters <> nil;
end;

function TBaselineOverride.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TBaselineOverride.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TBaselineOverride.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

function TBaselineOverride.GetRejectedPatches: TList<string>;
begin
  Result := FRejectedPatches;
end;

procedure TBaselineOverride.SetRejectedPatches(const Value: TList<string>);
begin
  if FRejectedPatches <> Value then
  begin
    if not KeepRejectedPatches then
      FRejectedPatches.Free;
    FRejectedPatches := Value;
  end;
end;

function TBaselineOverride.GetKeepRejectedPatches: Boolean;
begin
  Result := FKeepRejectedPatches;
end;

procedure TBaselineOverride.SetKeepRejectedPatches(const Value: Boolean);
begin
  FKeepRejectedPatches := Value;
end;

function TBaselineOverride.IsSetRejectedPatches: Boolean;
begin
  Result := (FRejectedPatches <> nil) and (FRejectedPatches.Count > 0);
end;

function TBaselineOverride.GetRejectedPatchesAction: TPatchAction;
begin
  Result := FRejectedPatchesAction.ValueOrDefault;
end;

procedure TBaselineOverride.SetRejectedPatchesAction(const Value: TPatchAction);
begin
  FRejectedPatchesAction := Value;
end;

function TBaselineOverride.IsSetRejectedPatchesAction: Boolean;
begin
  Result := FRejectedPatchesAction.HasValue;
end;

function TBaselineOverride.GetSources: TObjectList<TPatchSource>;
begin
  Result := FSources;
end;

procedure TBaselineOverride.SetSources(const Value: TObjectList<TPatchSource>);
begin
  if FSources <> Value then
  begin
    if not KeepSources then
      FSources.Free;
    FSources := Value;
  end;
end;

function TBaselineOverride.GetKeepSources: Boolean;
begin
  Result := FKeepSources;
end;

procedure TBaselineOverride.SetKeepSources(const Value: Boolean);
begin
  FKeepSources := Value;
end;

function TBaselineOverride.IsSetSources: Boolean;
begin
  Result := (FSources <> nil) and (FSources.Count > 0);
end;

end.
