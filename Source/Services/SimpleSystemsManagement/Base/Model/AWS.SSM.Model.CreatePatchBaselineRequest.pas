unit AWS.SSM.Model.CreatePatchBaselineRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.PatchRuleGroup, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.PatchFilterGroup, 
  AWS.SSM.Model.PatchSource, 
  AWS.SSM.Model.Tag;

type
  TCreatePatchBaselineRequest = class;
  
  ICreatePatchBaselineRequest = interface
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
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetGlobalFilters: TPatchFilterGroup;
    procedure SetGlobalFilters(const Value: TPatchFilterGroup);
    function GetKeepGlobalFilters: Boolean;
    procedure SetKeepGlobalFilters(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
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
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
    function Obj: TCreatePatchBaselineRequest;
    function IsSetApprovalRules: Boolean;
    function IsSetApprovedPatches: Boolean;
    function IsSetApprovedPatchesComplianceLevel: Boolean;
    function IsSetApprovedPatchesEnableNonSecurity: Boolean;
    function IsSetClientToken: Boolean;
    function IsSetDescription: Boolean;
    function IsSetGlobalFilters: Boolean;
    function IsSetName: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetRejectedPatches: Boolean;
    function IsSetRejectedPatchesAction: Boolean;
    function IsSetSources: Boolean;
    function IsSetTags: Boolean;
    property ApprovalRules: TPatchRuleGroup read GetApprovalRules write SetApprovalRules;
    property KeepApprovalRules: Boolean read GetKeepApprovalRules write SetKeepApprovalRules;
    property ApprovedPatches: TList<string> read GetApprovedPatches write SetApprovedPatches;
    property KeepApprovedPatches: Boolean read GetKeepApprovedPatches write SetKeepApprovedPatches;
    property ApprovedPatchesComplianceLevel: TPatchComplianceLevel read GetApprovedPatchesComplianceLevel write SetApprovedPatchesComplianceLevel;
    property ApprovedPatchesEnableNonSecurity: Boolean read GetApprovedPatchesEnableNonSecurity write SetApprovedPatchesEnableNonSecurity;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Description: string read GetDescription write SetDescription;
    property GlobalFilters: TPatchFilterGroup read GetGlobalFilters write SetGlobalFilters;
    property KeepGlobalFilters: Boolean read GetKeepGlobalFilters write SetKeepGlobalFilters;
    property Name: string read GetName write SetName;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
  TCreatePatchBaselineRequest = class(TAmazonSimpleSystemsManagementRequest, ICreatePatchBaselineRequest)
  strict private
    FApprovalRules: TPatchRuleGroup;
    FKeepApprovalRules: Boolean;
    FApprovedPatches: TList<string>;
    FKeepApprovedPatches: Boolean;
    FApprovedPatchesComplianceLevel: Nullable<TPatchComplianceLevel>;
    FApprovedPatchesEnableNonSecurity: Nullable<Boolean>;
    FClientToken: Nullable<string>;
    FDescription: Nullable<string>;
    FGlobalFilters: TPatchFilterGroup;
    FKeepGlobalFilters: Boolean;
    FName: Nullable<string>;
    FOperatingSystem: Nullable<TOperatingSystem>;
    FRejectedPatches: TList<string>;
    FKeepRejectedPatches: Boolean;
    FRejectedPatchesAction: Nullable<TPatchAction>;
    FSources: TObjectList<TPatchSource>;
    FKeepSources: Boolean;
    FTags: TObjectList<TTag>;
    FKeepTags: Boolean;
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
    function GetClientToken: string;
    procedure SetClientToken(const Value: string);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetGlobalFilters: TPatchFilterGroup;
    procedure SetGlobalFilters(const Value: TPatchFilterGroup);
    function GetKeepGlobalFilters: Boolean;
    procedure SetKeepGlobalFilters(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
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
    function GetTags: TObjectList<TTag>;
    procedure SetTags(const Value: TObjectList<TTag>);
    function GetKeepTags: Boolean;
    procedure SetKeepTags(const Value: Boolean);
  strict protected
    function Obj: TCreatePatchBaselineRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetApprovalRules: Boolean;
    function IsSetApprovedPatches: Boolean;
    function IsSetApprovedPatchesComplianceLevel: Boolean;
    function IsSetApprovedPatchesEnableNonSecurity: Boolean;
    function IsSetClientToken: Boolean;
    function IsSetDescription: Boolean;
    function IsSetGlobalFilters: Boolean;
    function IsSetName: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetRejectedPatches: Boolean;
    function IsSetRejectedPatchesAction: Boolean;
    function IsSetSources: Boolean;
    function IsSetTags: Boolean;
    property ApprovalRules: TPatchRuleGroup read GetApprovalRules write SetApprovalRules;
    property KeepApprovalRules: Boolean read GetKeepApprovalRules write SetKeepApprovalRules;
    property ApprovedPatches: TList<string> read GetApprovedPatches write SetApprovedPatches;
    property KeepApprovedPatches: Boolean read GetKeepApprovedPatches write SetKeepApprovedPatches;
    property ApprovedPatchesComplianceLevel: TPatchComplianceLevel read GetApprovedPatchesComplianceLevel write SetApprovedPatchesComplianceLevel;
    property ApprovedPatchesEnableNonSecurity: Boolean read GetApprovedPatchesEnableNonSecurity write SetApprovedPatchesEnableNonSecurity;
    property ClientToken: string read GetClientToken write SetClientToken;
    property Description: string read GetDescription write SetDescription;
    property GlobalFilters: TPatchFilterGroup read GetGlobalFilters write SetGlobalFilters;
    property KeepGlobalFilters: Boolean read GetKeepGlobalFilters write SetKeepGlobalFilters;
    property Name: string read GetName write SetName;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
    property Tags: TObjectList<TTag> read GetTags write SetTags;
    property KeepTags: Boolean read GetKeepTags write SetKeepTags;
  end;
  
implementation

{ TCreatePatchBaselineRequest }

constructor TCreatePatchBaselineRequest.Create;
begin
  inherited;
  FApprovedPatches := TList<string>.Create;
  FRejectedPatches := TList<string>.Create;
  FSources := TObjectList<TPatchSource>.Create;
  FTags := TObjectList<TTag>.Create;
end;

destructor TCreatePatchBaselineRequest.Destroy;
begin
  Tags := nil;
  Sources := nil;
  RejectedPatches := nil;
  GlobalFilters := nil;
  ApprovedPatches := nil;
  ApprovalRules := nil;
  inherited;
end;

function TCreatePatchBaselineRequest.Obj: TCreatePatchBaselineRequest;
begin
  Result := Self;
end;

function TCreatePatchBaselineRequest.GetApprovalRules: TPatchRuleGroup;
begin
  Result := FApprovalRules;
end;

procedure TCreatePatchBaselineRequest.SetApprovalRules(const Value: TPatchRuleGroup);
begin
  if FApprovalRules <> Value then
  begin
    if not KeepApprovalRules then
      FApprovalRules.Free;
    FApprovalRules := Value;
  end;
end;

function TCreatePatchBaselineRequest.GetKeepApprovalRules: Boolean;
begin
  Result := FKeepApprovalRules;
end;

procedure TCreatePatchBaselineRequest.SetKeepApprovalRules(const Value: Boolean);
begin
  FKeepApprovalRules := Value;
end;

function TCreatePatchBaselineRequest.IsSetApprovalRules: Boolean;
begin
  Result := FApprovalRules <> nil;
end;

function TCreatePatchBaselineRequest.GetApprovedPatches: TList<string>;
begin
  Result := FApprovedPatches;
end;

procedure TCreatePatchBaselineRequest.SetApprovedPatches(const Value: TList<string>);
begin
  if FApprovedPatches <> Value then
  begin
    if not KeepApprovedPatches then
      FApprovedPatches.Free;
    FApprovedPatches := Value;
  end;
end;

function TCreatePatchBaselineRequest.GetKeepApprovedPatches: Boolean;
begin
  Result := FKeepApprovedPatches;
end;

procedure TCreatePatchBaselineRequest.SetKeepApprovedPatches(const Value: Boolean);
begin
  FKeepApprovedPatches := Value;
end;

function TCreatePatchBaselineRequest.IsSetApprovedPatches: Boolean;
begin
  Result := (FApprovedPatches <> nil) and (FApprovedPatches.Count > 0);
end;

function TCreatePatchBaselineRequest.GetApprovedPatchesComplianceLevel: TPatchComplianceLevel;
begin
  Result := FApprovedPatchesComplianceLevel.ValueOrDefault;
end;

procedure TCreatePatchBaselineRequest.SetApprovedPatchesComplianceLevel(const Value: TPatchComplianceLevel);
begin
  FApprovedPatchesComplianceLevel := Value;
end;

function TCreatePatchBaselineRequest.IsSetApprovedPatchesComplianceLevel: Boolean;
begin
  Result := FApprovedPatchesComplianceLevel.HasValue;
end;

function TCreatePatchBaselineRequest.GetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.ValueOrDefault;
end;

procedure TCreatePatchBaselineRequest.SetApprovedPatchesEnableNonSecurity(const Value: Boolean);
begin
  FApprovedPatchesEnableNonSecurity := Value;
end;

function TCreatePatchBaselineRequest.IsSetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.HasValue;
end;

function TCreatePatchBaselineRequest.GetClientToken: string;
begin
  Result := FClientToken.ValueOrDefault;
end;

procedure TCreatePatchBaselineRequest.SetClientToken(const Value: string);
begin
  FClientToken := Value;
end;

function TCreatePatchBaselineRequest.IsSetClientToken: Boolean;
begin
  Result := FClientToken.HasValue;
end;

function TCreatePatchBaselineRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TCreatePatchBaselineRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TCreatePatchBaselineRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TCreatePatchBaselineRequest.GetGlobalFilters: TPatchFilterGroup;
begin
  Result := FGlobalFilters;
end;

procedure TCreatePatchBaselineRequest.SetGlobalFilters(const Value: TPatchFilterGroup);
begin
  if FGlobalFilters <> Value then
  begin
    if not KeepGlobalFilters then
      FGlobalFilters.Free;
    FGlobalFilters := Value;
  end;
end;

function TCreatePatchBaselineRequest.GetKeepGlobalFilters: Boolean;
begin
  Result := FKeepGlobalFilters;
end;

procedure TCreatePatchBaselineRequest.SetKeepGlobalFilters(const Value: Boolean);
begin
  FKeepGlobalFilters := Value;
end;

function TCreatePatchBaselineRequest.IsSetGlobalFilters: Boolean;
begin
  Result := FGlobalFilters <> nil;
end;

function TCreatePatchBaselineRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TCreatePatchBaselineRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TCreatePatchBaselineRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TCreatePatchBaselineRequest.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TCreatePatchBaselineRequest.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TCreatePatchBaselineRequest.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

function TCreatePatchBaselineRequest.GetRejectedPatches: TList<string>;
begin
  Result := FRejectedPatches;
end;

procedure TCreatePatchBaselineRequest.SetRejectedPatches(const Value: TList<string>);
begin
  if FRejectedPatches <> Value then
  begin
    if not KeepRejectedPatches then
      FRejectedPatches.Free;
    FRejectedPatches := Value;
  end;
end;

function TCreatePatchBaselineRequest.GetKeepRejectedPatches: Boolean;
begin
  Result := FKeepRejectedPatches;
end;

procedure TCreatePatchBaselineRequest.SetKeepRejectedPatches(const Value: Boolean);
begin
  FKeepRejectedPatches := Value;
end;

function TCreatePatchBaselineRequest.IsSetRejectedPatches: Boolean;
begin
  Result := (FRejectedPatches <> nil) and (FRejectedPatches.Count > 0);
end;

function TCreatePatchBaselineRequest.GetRejectedPatchesAction: TPatchAction;
begin
  Result := FRejectedPatchesAction.ValueOrDefault;
end;

procedure TCreatePatchBaselineRequest.SetRejectedPatchesAction(const Value: TPatchAction);
begin
  FRejectedPatchesAction := Value;
end;

function TCreatePatchBaselineRequest.IsSetRejectedPatchesAction: Boolean;
begin
  Result := FRejectedPatchesAction.HasValue;
end;

function TCreatePatchBaselineRequest.GetSources: TObjectList<TPatchSource>;
begin
  Result := FSources;
end;

procedure TCreatePatchBaselineRequest.SetSources(const Value: TObjectList<TPatchSource>);
begin
  if FSources <> Value then
  begin
    if not KeepSources then
      FSources.Free;
    FSources := Value;
  end;
end;

function TCreatePatchBaselineRequest.GetKeepSources: Boolean;
begin
  Result := FKeepSources;
end;

procedure TCreatePatchBaselineRequest.SetKeepSources(const Value: Boolean);
begin
  FKeepSources := Value;
end;

function TCreatePatchBaselineRequest.IsSetSources: Boolean;
begin
  Result := (FSources <> nil) and (FSources.Count > 0);
end;

function TCreatePatchBaselineRequest.GetTags: TObjectList<TTag>;
begin
  Result := FTags;
end;

procedure TCreatePatchBaselineRequest.SetTags(const Value: TObjectList<TTag>);
begin
  if FTags <> Value then
  begin
    if not KeepTags then
      FTags.Free;
    FTags := Value;
  end;
end;

function TCreatePatchBaselineRequest.GetKeepTags: Boolean;
begin
  Result := FKeepTags;
end;

procedure TCreatePatchBaselineRequest.SetKeepTags(const Value: Boolean);
begin
  FKeepTags := Value;
end;

function TCreatePatchBaselineRequest.IsSetTags: Boolean;
begin
  Result := (FTags <> nil) and (FTags.Count > 0);
end;

end.
