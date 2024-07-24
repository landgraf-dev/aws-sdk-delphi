unit AWS.SSM.Model.GetPatchBaselineResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.PatchRuleGroup, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.PatchFilterGroup, 
  AWS.SSM.Model.PatchSource;

type
  TGetPatchBaselineResponse = class;
  
  IGetPatchBaselineResponse = interface(IAmazonWebServiceResponse)
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
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetGlobalFilters: TPatchFilterGroup;
    procedure SetGlobalFilters(const Value: TPatchFilterGroup);
    function GetKeepGlobalFilters: Boolean;
    procedure SetKeepGlobalFilters(const Value: Boolean);
    function GetModifiedDate: TDateTime;
    procedure SetModifiedDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetPatchGroups: TList<string>;
    procedure SetPatchGroups(const Value: TList<string>);
    function GetKeepPatchGroups: Boolean;
    procedure SetKeepPatchGroups(const Value: Boolean);
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
    function Obj: TGetPatchBaselineResponse;
    function IsSetApprovalRules: Boolean;
    function IsSetApprovedPatches: Boolean;
    function IsSetApprovedPatchesComplianceLevel: Boolean;
    function IsSetApprovedPatchesEnableNonSecurity: Boolean;
    function IsSetBaselineId: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDescription: Boolean;
    function IsSetGlobalFilters: Boolean;
    function IsSetModifiedDate: Boolean;
    function IsSetName: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetPatchGroups: Boolean;
    function IsSetRejectedPatches: Boolean;
    function IsSetRejectedPatchesAction: Boolean;
    function IsSetSources: Boolean;
    property ApprovalRules: TPatchRuleGroup read GetApprovalRules write SetApprovalRules;
    property KeepApprovalRules: Boolean read GetKeepApprovalRules write SetKeepApprovalRules;
    property ApprovedPatches: TList<string> read GetApprovedPatches write SetApprovedPatches;
    property KeepApprovedPatches: Boolean read GetKeepApprovedPatches write SetKeepApprovedPatches;
    property ApprovedPatchesComplianceLevel: TPatchComplianceLevel read GetApprovedPatchesComplianceLevel write SetApprovedPatchesComplianceLevel;
    property ApprovedPatchesEnableNonSecurity: Boolean read GetApprovedPatchesEnableNonSecurity write SetApprovedPatchesEnableNonSecurity;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property Description: string read GetDescription write SetDescription;
    property GlobalFilters: TPatchFilterGroup read GetGlobalFilters write SetGlobalFilters;
    property KeepGlobalFilters: Boolean read GetKeepGlobalFilters write SetKeepGlobalFilters;
    property ModifiedDate: TDateTime read GetModifiedDate write SetModifiedDate;
    property Name: string read GetName write SetName;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property PatchGroups: TList<string> read GetPatchGroups write SetPatchGroups;
    property KeepPatchGroups: Boolean read GetKeepPatchGroups write SetKeepPatchGroups;
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
  end;
  
  TGetPatchBaselineResponse = class(TAmazonWebServiceResponse, IGetPatchBaselineResponse)
  strict private
    FApprovalRules: TPatchRuleGroup;
    FKeepApprovalRules: Boolean;
    FApprovedPatches: TList<string>;
    FKeepApprovedPatches: Boolean;
    FApprovedPatchesComplianceLevel: Nullable<TPatchComplianceLevel>;
    FApprovedPatchesEnableNonSecurity: Nullable<Boolean>;
    FBaselineId: Nullable<string>;
    FCreatedDate: Nullable<TDateTime>;
    FDescription: Nullable<string>;
    FGlobalFilters: TPatchFilterGroup;
    FKeepGlobalFilters: Boolean;
    FModifiedDate: Nullable<TDateTime>;
    FName: Nullable<string>;
    FOperatingSystem: Nullable<TOperatingSystem>;
    FPatchGroups: TList<string>;
    FKeepPatchGroups: Boolean;
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
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetCreatedDate: TDateTime;
    procedure SetCreatedDate(const Value: TDateTime);
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetGlobalFilters: TPatchFilterGroup;
    procedure SetGlobalFilters(const Value: TPatchFilterGroup);
    function GetKeepGlobalFilters: Boolean;
    procedure SetKeepGlobalFilters(const Value: Boolean);
    function GetModifiedDate: TDateTime;
    procedure SetModifiedDate(const Value: TDateTime);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetPatchGroups: TList<string>;
    procedure SetPatchGroups(const Value: TList<string>);
    function GetKeepPatchGroups: Boolean;
    procedure SetKeepPatchGroups(const Value: Boolean);
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
    function Obj: TGetPatchBaselineResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetApprovalRules: Boolean;
    function IsSetApprovedPatches: Boolean;
    function IsSetApprovedPatchesComplianceLevel: Boolean;
    function IsSetApprovedPatchesEnableNonSecurity: Boolean;
    function IsSetBaselineId: Boolean;
    function IsSetCreatedDate: Boolean;
    function IsSetDescription: Boolean;
    function IsSetGlobalFilters: Boolean;
    function IsSetModifiedDate: Boolean;
    function IsSetName: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetPatchGroups: Boolean;
    function IsSetRejectedPatches: Boolean;
    function IsSetRejectedPatchesAction: Boolean;
    function IsSetSources: Boolean;
    property ApprovalRules: TPatchRuleGroup read GetApprovalRules write SetApprovalRules;
    property KeepApprovalRules: Boolean read GetKeepApprovalRules write SetKeepApprovalRules;
    property ApprovedPatches: TList<string> read GetApprovedPatches write SetApprovedPatches;
    property KeepApprovedPatches: Boolean read GetKeepApprovedPatches write SetKeepApprovedPatches;
    property ApprovedPatchesComplianceLevel: TPatchComplianceLevel read GetApprovedPatchesComplianceLevel write SetApprovedPatchesComplianceLevel;
    property ApprovedPatchesEnableNonSecurity: Boolean read GetApprovedPatchesEnableNonSecurity write SetApprovedPatchesEnableNonSecurity;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property CreatedDate: TDateTime read GetCreatedDate write SetCreatedDate;
    property Description: string read GetDescription write SetDescription;
    property GlobalFilters: TPatchFilterGroup read GetGlobalFilters write SetGlobalFilters;
    property KeepGlobalFilters: Boolean read GetKeepGlobalFilters write SetKeepGlobalFilters;
    property ModifiedDate: TDateTime read GetModifiedDate write SetModifiedDate;
    property Name: string read GetName write SetName;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property PatchGroups: TList<string> read GetPatchGroups write SetPatchGroups;
    property KeepPatchGroups: Boolean read GetKeepPatchGroups write SetKeepPatchGroups;
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
  end;
  
implementation

{ TGetPatchBaselineResponse }

constructor TGetPatchBaselineResponse.Create;
begin
  inherited;
  FApprovedPatches := TList<string>.Create;
  FPatchGroups := TList<string>.Create;
  FRejectedPatches := TList<string>.Create;
  FSources := TObjectList<TPatchSource>.Create;
end;

destructor TGetPatchBaselineResponse.Destroy;
begin
  Sources := nil;
  RejectedPatches := nil;
  PatchGroups := nil;
  GlobalFilters := nil;
  ApprovedPatches := nil;
  ApprovalRules := nil;
  inherited;
end;

function TGetPatchBaselineResponse.Obj: TGetPatchBaselineResponse;
begin
  Result := Self;
end;

function TGetPatchBaselineResponse.GetApprovalRules: TPatchRuleGroup;
begin
  Result := FApprovalRules;
end;

procedure TGetPatchBaselineResponse.SetApprovalRules(const Value: TPatchRuleGroup);
begin
  if FApprovalRules <> Value then
  begin
    if not KeepApprovalRules then
      FApprovalRules.Free;
    FApprovalRules := Value;
  end;
end;

function TGetPatchBaselineResponse.GetKeepApprovalRules: Boolean;
begin
  Result := FKeepApprovalRules;
end;

procedure TGetPatchBaselineResponse.SetKeepApprovalRules(const Value: Boolean);
begin
  FKeepApprovalRules := Value;
end;

function TGetPatchBaselineResponse.IsSetApprovalRules: Boolean;
begin
  Result := FApprovalRules <> nil;
end;

function TGetPatchBaselineResponse.GetApprovedPatches: TList<string>;
begin
  Result := FApprovedPatches;
end;

procedure TGetPatchBaselineResponse.SetApprovedPatches(const Value: TList<string>);
begin
  if FApprovedPatches <> Value then
  begin
    if not KeepApprovedPatches then
      FApprovedPatches.Free;
    FApprovedPatches := Value;
  end;
end;

function TGetPatchBaselineResponse.GetKeepApprovedPatches: Boolean;
begin
  Result := FKeepApprovedPatches;
end;

procedure TGetPatchBaselineResponse.SetKeepApprovedPatches(const Value: Boolean);
begin
  FKeepApprovedPatches := Value;
end;

function TGetPatchBaselineResponse.IsSetApprovedPatches: Boolean;
begin
  Result := (FApprovedPatches <> nil) and (FApprovedPatches.Count > 0);
end;

function TGetPatchBaselineResponse.GetApprovedPatchesComplianceLevel: TPatchComplianceLevel;
begin
  Result := FApprovedPatchesComplianceLevel.ValueOrDefault;
end;

procedure TGetPatchBaselineResponse.SetApprovedPatchesComplianceLevel(const Value: TPatchComplianceLevel);
begin
  FApprovedPatchesComplianceLevel := Value;
end;

function TGetPatchBaselineResponse.IsSetApprovedPatchesComplianceLevel: Boolean;
begin
  Result := FApprovedPatchesComplianceLevel.HasValue;
end;

function TGetPatchBaselineResponse.GetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.ValueOrDefault;
end;

procedure TGetPatchBaselineResponse.SetApprovedPatchesEnableNonSecurity(const Value: Boolean);
begin
  FApprovedPatchesEnableNonSecurity := Value;
end;

function TGetPatchBaselineResponse.IsSetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.HasValue;
end;

function TGetPatchBaselineResponse.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TGetPatchBaselineResponse.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TGetPatchBaselineResponse.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TGetPatchBaselineResponse.GetCreatedDate: TDateTime;
begin
  Result := FCreatedDate.ValueOrDefault;
end;

procedure TGetPatchBaselineResponse.SetCreatedDate(const Value: TDateTime);
begin
  FCreatedDate := Value;
end;

function TGetPatchBaselineResponse.IsSetCreatedDate: Boolean;
begin
  Result := FCreatedDate.HasValue;
end;

function TGetPatchBaselineResponse.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TGetPatchBaselineResponse.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TGetPatchBaselineResponse.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TGetPatchBaselineResponse.GetGlobalFilters: TPatchFilterGroup;
begin
  Result := FGlobalFilters;
end;

procedure TGetPatchBaselineResponse.SetGlobalFilters(const Value: TPatchFilterGroup);
begin
  if FGlobalFilters <> Value then
  begin
    if not KeepGlobalFilters then
      FGlobalFilters.Free;
    FGlobalFilters := Value;
  end;
end;

function TGetPatchBaselineResponse.GetKeepGlobalFilters: Boolean;
begin
  Result := FKeepGlobalFilters;
end;

procedure TGetPatchBaselineResponse.SetKeepGlobalFilters(const Value: Boolean);
begin
  FKeepGlobalFilters := Value;
end;

function TGetPatchBaselineResponse.IsSetGlobalFilters: Boolean;
begin
  Result := FGlobalFilters <> nil;
end;

function TGetPatchBaselineResponse.GetModifiedDate: TDateTime;
begin
  Result := FModifiedDate.ValueOrDefault;
end;

procedure TGetPatchBaselineResponse.SetModifiedDate(const Value: TDateTime);
begin
  FModifiedDate := Value;
end;

function TGetPatchBaselineResponse.IsSetModifiedDate: Boolean;
begin
  Result := FModifiedDate.HasValue;
end;

function TGetPatchBaselineResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TGetPatchBaselineResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TGetPatchBaselineResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TGetPatchBaselineResponse.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TGetPatchBaselineResponse.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TGetPatchBaselineResponse.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

function TGetPatchBaselineResponse.GetPatchGroups: TList<string>;
begin
  Result := FPatchGroups;
end;

procedure TGetPatchBaselineResponse.SetPatchGroups(const Value: TList<string>);
begin
  if FPatchGroups <> Value then
  begin
    if not KeepPatchGroups then
      FPatchGroups.Free;
    FPatchGroups := Value;
  end;
end;

function TGetPatchBaselineResponse.GetKeepPatchGroups: Boolean;
begin
  Result := FKeepPatchGroups;
end;

procedure TGetPatchBaselineResponse.SetKeepPatchGroups(const Value: Boolean);
begin
  FKeepPatchGroups := Value;
end;

function TGetPatchBaselineResponse.IsSetPatchGroups: Boolean;
begin
  Result := (FPatchGroups <> nil) and (FPatchGroups.Count > 0);
end;

function TGetPatchBaselineResponse.GetRejectedPatches: TList<string>;
begin
  Result := FRejectedPatches;
end;

procedure TGetPatchBaselineResponse.SetRejectedPatches(const Value: TList<string>);
begin
  if FRejectedPatches <> Value then
  begin
    if not KeepRejectedPatches then
      FRejectedPatches.Free;
    FRejectedPatches := Value;
  end;
end;

function TGetPatchBaselineResponse.GetKeepRejectedPatches: Boolean;
begin
  Result := FKeepRejectedPatches;
end;

procedure TGetPatchBaselineResponse.SetKeepRejectedPatches(const Value: Boolean);
begin
  FKeepRejectedPatches := Value;
end;

function TGetPatchBaselineResponse.IsSetRejectedPatches: Boolean;
begin
  Result := (FRejectedPatches <> nil) and (FRejectedPatches.Count > 0);
end;

function TGetPatchBaselineResponse.GetRejectedPatchesAction: TPatchAction;
begin
  Result := FRejectedPatchesAction.ValueOrDefault;
end;

procedure TGetPatchBaselineResponse.SetRejectedPatchesAction(const Value: TPatchAction);
begin
  FRejectedPatchesAction := Value;
end;

function TGetPatchBaselineResponse.IsSetRejectedPatchesAction: Boolean;
begin
  Result := FRejectedPatchesAction.HasValue;
end;

function TGetPatchBaselineResponse.GetSources: TObjectList<TPatchSource>;
begin
  Result := FSources;
end;

procedure TGetPatchBaselineResponse.SetSources(const Value: TObjectList<TPatchSource>);
begin
  if FSources <> Value then
  begin
    if not KeepSources then
      FSources.Free;
    FSources := Value;
  end;
end;

function TGetPatchBaselineResponse.GetKeepSources: Boolean;
begin
  Result := FKeepSources;
end;

procedure TGetPatchBaselineResponse.SetKeepSources(const Value: Boolean);
begin
  FKeepSources := Value;
end;

function TGetPatchBaselineResponse.IsSetSources: Boolean;
begin
  Result := (FSources <> nil) and (FSources.Count > 0);
end;

end.
