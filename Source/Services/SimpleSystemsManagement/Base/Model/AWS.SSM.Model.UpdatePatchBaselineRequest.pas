unit AWS.SSM.Model.UpdatePatchBaselineRequest;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.Request, 
  AWS.SSM.Model.PatchRuleGroup, 
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.PatchFilterGroup, 
  AWS.SSM.Model.PatchSource;

type
  TUpdatePatchBaselineRequest = class;
  
  IUpdatePatchBaselineRequest = interface
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
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetGlobalFilters: TPatchFilterGroup;
    procedure SetGlobalFilters(const Value: TPatchFilterGroup);
    function GetKeepGlobalFilters: Boolean;
    procedure SetKeepGlobalFilters(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetRejectedPatches: TList<string>;
    procedure SetRejectedPatches(const Value: TList<string>);
    function GetKeepRejectedPatches: Boolean;
    procedure SetKeepRejectedPatches(const Value: Boolean);
    function GetRejectedPatchesAction: TPatchAction;
    procedure SetRejectedPatchesAction(const Value: TPatchAction);
    function GetReplace: Boolean;
    procedure SetReplace(const Value: Boolean);
    function GetSources: TObjectList<TPatchSource>;
    procedure SetSources(const Value: TObjectList<TPatchSource>);
    function GetKeepSources: Boolean;
    procedure SetKeepSources(const Value: Boolean);
    function Obj: TUpdatePatchBaselineRequest;
    function IsSetApprovalRules: Boolean;
    function IsSetApprovedPatches: Boolean;
    function IsSetApprovedPatchesComplianceLevel: Boolean;
    function IsSetApprovedPatchesEnableNonSecurity: Boolean;
    function IsSetBaselineId: Boolean;
    function IsSetDescription: Boolean;
    function IsSetGlobalFilters: Boolean;
    function IsSetName: Boolean;
    function IsSetRejectedPatches: Boolean;
    function IsSetRejectedPatchesAction: Boolean;
    function IsSetReplace: Boolean;
    function IsSetSources: Boolean;
    property ApprovalRules: TPatchRuleGroup read GetApprovalRules write SetApprovalRules;
    property KeepApprovalRules: Boolean read GetKeepApprovalRules write SetKeepApprovalRules;
    property ApprovedPatches: TList<string> read GetApprovedPatches write SetApprovedPatches;
    property KeepApprovedPatches: Boolean read GetKeepApprovedPatches write SetKeepApprovedPatches;
    property ApprovedPatchesComplianceLevel: TPatchComplianceLevel read GetApprovedPatchesComplianceLevel write SetApprovedPatchesComplianceLevel;
    property ApprovedPatchesEnableNonSecurity: Boolean read GetApprovedPatchesEnableNonSecurity write SetApprovedPatchesEnableNonSecurity;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property Description: string read GetDescription write SetDescription;
    property GlobalFilters: TPatchFilterGroup read GetGlobalFilters write SetGlobalFilters;
    property KeepGlobalFilters: Boolean read GetKeepGlobalFilters write SetKeepGlobalFilters;
    property Name: string read GetName write SetName;
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Replace: Boolean read GetReplace write SetReplace;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
  end;
  
  TUpdatePatchBaselineRequest = class(TAmazonSimpleSystemsManagementRequest, IUpdatePatchBaselineRequest)
  strict private
    FApprovalRules: TPatchRuleGroup;
    FKeepApprovalRules: Boolean;
    FApprovedPatches: TList<string>;
    FKeepApprovedPatches: Boolean;
    FApprovedPatchesComplianceLevel: Nullable<TPatchComplianceLevel>;
    FApprovedPatchesEnableNonSecurity: Nullable<Boolean>;
    FBaselineId: Nullable<string>;
    FDescription: Nullable<string>;
    FGlobalFilters: TPatchFilterGroup;
    FKeepGlobalFilters: Boolean;
    FName: Nullable<string>;
    FRejectedPatches: TList<string>;
    FKeepRejectedPatches: Boolean;
    FRejectedPatchesAction: Nullable<TPatchAction>;
    FReplace: Nullable<Boolean>;
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
    function GetDescription: string;
    procedure SetDescription(const Value: string);
    function GetGlobalFilters: TPatchFilterGroup;
    procedure SetGlobalFilters(const Value: TPatchFilterGroup);
    function GetKeepGlobalFilters: Boolean;
    procedure SetKeepGlobalFilters(const Value: Boolean);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetRejectedPatches: TList<string>;
    procedure SetRejectedPatches(const Value: TList<string>);
    function GetKeepRejectedPatches: Boolean;
    procedure SetKeepRejectedPatches(const Value: Boolean);
    function GetRejectedPatchesAction: TPatchAction;
    procedure SetRejectedPatchesAction(const Value: TPatchAction);
    function GetReplace: Boolean;
    procedure SetReplace(const Value: Boolean);
    function GetSources: TObjectList<TPatchSource>;
    procedure SetSources(const Value: TObjectList<TPatchSource>);
    function GetKeepSources: Boolean;
    procedure SetKeepSources(const Value: Boolean);
  strict protected
    function Obj: TUpdatePatchBaselineRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetApprovalRules: Boolean;
    function IsSetApprovedPatches: Boolean;
    function IsSetApprovedPatchesComplianceLevel: Boolean;
    function IsSetApprovedPatchesEnableNonSecurity: Boolean;
    function IsSetBaselineId: Boolean;
    function IsSetDescription: Boolean;
    function IsSetGlobalFilters: Boolean;
    function IsSetName: Boolean;
    function IsSetRejectedPatches: Boolean;
    function IsSetRejectedPatchesAction: Boolean;
    function IsSetReplace: Boolean;
    function IsSetSources: Boolean;
    property ApprovalRules: TPatchRuleGroup read GetApprovalRules write SetApprovalRules;
    property KeepApprovalRules: Boolean read GetKeepApprovalRules write SetKeepApprovalRules;
    property ApprovedPatches: TList<string> read GetApprovedPatches write SetApprovedPatches;
    property KeepApprovedPatches: Boolean read GetKeepApprovedPatches write SetKeepApprovedPatches;
    property ApprovedPatchesComplianceLevel: TPatchComplianceLevel read GetApprovedPatchesComplianceLevel write SetApprovedPatchesComplianceLevel;
    property ApprovedPatchesEnableNonSecurity: Boolean read GetApprovedPatchesEnableNonSecurity write SetApprovedPatchesEnableNonSecurity;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property Description: string read GetDescription write SetDescription;
    property GlobalFilters: TPatchFilterGroup read GetGlobalFilters write SetGlobalFilters;
    property KeepGlobalFilters: Boolean read GetKeepGlobalFilters write SetKeepGlobalFilters;
    property Name: string read GetName write SetName;
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Replace: Boolean read GetReplace write SetReplace;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
  end;
  
implementation

{ TUpdatePatchBaselineRequest }

constructor TUpdatePatchBaselineRequest.Create;
begin
  inherited;
  FApprovedPatches := TList<string>.Create;
  FRejectedPatches := TList<string>.Create;
  FSources := TObjectList<TPatchSource>.Create;
end;

destructor TUpdatePatchBaselineRequest.Destroy;
begin
  Sources := nil;
  RejectedPatches := nil;
  GlobalFilters := nil;
  ApprovedPatches := nil;
  ApprovalRules := nil;
  inherited;
end;

function TUpdatePatchBaselineRequest.Obj: TUpdatePatchBaselineRequest;
begin
  Result := Self;
end;

function TUpdatePatchBaselineRequest.GetApprovalRules: TPatchRuleGroup;
begin
  Result := FApprovalRules;
end;

procedure TUpdatePatchBaselineRequest.SetApprovalRules(const Value: TPatchRuleGroup);
begin
  if FApprovalRules <> Value then
  begin
    if not KeepApprovalRules then
      FApprovalRules.Free;
    FApprovalRules := Value;
  end;
end;

function TUpdatePatchBaselineRequest.GetKeepApprovalRules: Boolean;
begin
  Result := FKeepApprovalRules;
end;

procedure TUpdatePatchBaselineRequest.SetKeepApprovalRules(const Value: Boolean);
begin
  FKeepApprovalRules := Value;
end;

function TUpdatePatchBaselineRequest.IsSetApprovalRules: Boolean;
begin
  Result := FApprovalRules <> nil;
end;

function TUpdatePatchBaselineRequest.GetApprovedPatches: TList<string>;
begin
  Result := FApprovedPatches;
end;

procedure TUpdatePatchBaselineRequest.SetApprovedPatches(const Value: TList<string>);
begin
  if FApprovedPatches <> Value then
  begin
    if not KeepApprovedPatches then
      FApprovedPatches.Free;
    FApprovedPatches := Value;
  end;
end;

function TUpdatePatchBaselineRequest.GetKeepApprovedPatches: Boolean;
begin
  Result := FKeepApprovedPatches;
end;

procedure TUpdatePatchBaselineRequest.SetKeepApprovedPatches(const Value: Boolean);
begin
  FKeepApprovedPatches := Value;
end;

function TUpdatePatchBaselineRequest.IsSetApprovedPatches: Boolean;
begin
  Result := (FApprovedPatches <> nil) and (FApprovedPatches.Count > 0);
end;

function TUpdatePatchBaselineRequest.GetApprovedPatchesComplianceLevel: TPatchComplianceLevel;
begin
  Result := FApprovedPatchesComplianceLevel.ValueOrDefault;
end;

procedure TUpdatePatchBaselineRequest.SetApprovedPatchesComplianceLevel(const Value: TPatchComplianceLevel);
begin
  FApprovedPatchesComplianceLevel := Value;
end;

function TUpdatePatchBaselineRequest.IsSetApprovedPatchesComplianceLevel: Boolean;
begin
  Result := FApprovedPatchesComplianceLevel.HasValue;
end;

function TUpdatePatchBaselineRequest.GetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.ValueOrDefault;
end;

procedure TUpdatePatchBaselineRequest.SetApprovedPatchesEnableNonSecurity(const Value: Boolean);
begin
  FApprovedPatchesEnableNonSecurity := Value;
end;

function TUpdatePatchBaselineRequest.IsSetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.HasValue;
end;

function TUpdatePatchBaselineRequest.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TUpdatePatchBaselineRequest.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TUpdatePatchBaselineRequest.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TUpdatePatchBaselineRequest.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdatePatchBaselineRequest.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdatePatchBaselineRequest.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdatePatchBaselineRequest.GetGlobalFilters: TPatchFilterGroup;
begin
  Result := FGlobalFilters;
end;

procedure TUpdatePatchBaselineRequest.SetGlobalFilters(const Value: TPatchFilterGroup);
begin
  if FGlobalFilters <> Value then
  begin
    if not KeepGlobalFilters then
      FGlobalFilters.Free;
    FGlobalFilters := Value;
  end;
end;

function TUpdatePatchBaselineRequest.GetKeepGlobalFilters: Boolean;
begin
  Result := FKeepGlobalFilters;
end;

procedure TUpdatePatchBaselineRequest.SetKeepGlobalFilters(const Value: Boolean);
begin
  FKeepGlobalFilters := Value;
end;

function TUpdatePatchBaselineRequest.IsSetGlobalFilters: Boolean;
begin
  Result := FGlobalFilters <> nil;
end;

function TUpdatePatchBaselineRequest.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdatePatchBaselineRequest.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdatePatchBaselineRequest.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdatePatchBaselineRequest.GetRejectedPatches: TList<string>;
begin
  Result := FRejectedPatches;
end;

procedure TUpdatePatchBaselineRequest.SetRejectedPatches(const Value: TList<string>);
begin
  if FRejectedPatches <> Value then
  begin
    if not KeepRejectedPatches then
      FRejectedPatches.Free;
    FRejectedPatches := Value;
  end;
end;

function TUpdatePatchBaselineRequest.GetKeepRejectedPatches: Boolean;
begin
  Result := FKeepRejectedPatches;
end;

procedure TUpdatePatchBaselineRequest.SetKeepRejectedPatches(const Value: Boolean);
begin
  FKeepRejectedPatches := Value;
end;

function TUpdatePatchBaselineRequest.IsSetRejectedPatches: Boolean;
begin
  Result := (FRejectedPatches <> nil) and (FRejectedPatches.Count > 0);
end;

function TUpdatePatchBaselineRequest.GetRejectedPatchesAction: TPatchAction;
begin
  Result := FRejectedPatchesAction.ValueOrDefault;
end;

procedure TUpdatePatchBaselineRequest.SetRejectedPatchesAction(const Value: TPatchAction);
begin
  FRejectedPatchesAction := Value;
end;

function TUpdatePatchBaselineRequest.IsSetRejectedPatchesAction: Boolean;
begin
  Result := FRejectedPatchesAction.HasValue;
end;

function TUpdatePatchBaselineRequest.GetReplace: Boolean;
begin
  Result := FReplace.ValueOrDefault;
end;

procedure TUpdatePatchBaselineRequest.SetReplace(const Value: Boolean);
begin
  FReplace := Value;
end;

function TUpdatePatchBaselineRequest.IsSetReplace: Boolean;
begin
  Result := FReplace.HasValue;
end;

function TUpdatePatchBaselineRequest.GetSources: TObjectList<TPatchSource>;
begin
  Result := FSources;
end;

procedure TUpdatePatchBaselineRequest.SetSources(const Value: TObjectList<TPatchSource>);
begin
  if FSources <> Value then
  begin
    if not KeepSources then
      FSources.Free;
    FSources := Value;
  end;
end;

function TUpdatePatchBaselineRequest.GetKeepSources: Boolean;
begin
  Result := FKeepSources;
end;

procedure TUpdatePatchBaselineRequest.SetKeepSources(const Value: Boolean);
begin
  FKeepSources := Value;
end;

function TUpdatePatchBaselineRequest.IsSetSources: Boolean;
begin
  Result := (FSources <> nil) and (FSources.Count > 0);
end;

end.
