unit AWS.SSM.Model.UpdatePatchBaselineResponse;

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
  TUpdatePatchBaselineResponse = class;
  
  IUpdatePatchBaselineResponse = interface(IAmazonWebServiceResponse)
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
    function Obj: TUpdatePatchBaselineResponse;
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
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
  end;
  
  TUpdatePatchBaselineResponse = class(TAmazonWebServiceResponse, IUpdatePatchBaselineResponse)
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
    function Obj: TUpdatePatchBaselineResponse;
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
    property RejectedPatches: TList<string> read GetRejectedPatches write SetRejectedPatches;
    property KeepRejectedPatches: Boolean read GetKeepRejectedPatches write SetKeepRejectedPatches;
    property RejectedPatchesAction: TPatchAction read GetRejectedPatchesAction write SetRejectedPatchesAction;
    property Sources: TObjectList<TPatchSource> read GetSources write SetSources;
    property KeepSources: Boolean read GetKeepSources write SetKeepSources;
  end;
  
implementation

{ TUpdatePatchBaselineResponse }

constructor TUpdatePatchBaselineResponse.Create;
begin
  inherited;
  FApprovedPatches := TList<string>.Create;
  FRejectedPatches := TList<string>.Create;
  FSources := TObjectList<TPatchSource>.Create;
end;

destructor TUpdatePatchBaselineResponse.Destroy;
begin
  Sources := nil;
  RejectedPatches := nil;
  GlobalFilters := nil;
  ApprovedPatches := nil;
  ApprovalRules := nil;
  inherited;
end;

function TUpdatePatchBaselineResponse.Obj: TUpdatePatchBaselineResponse;
begin
  Result := Self;
end;

function TUpdatePatchBaselineResponse.GetApprovalRules: TPatchRuleGroup;
begin
  Result := FApprovalRules;
end;

procedure TUpdatePatchBaselineResponse.SetApprovalRules(const Value: TPatchRuleGroup);
begin
  if FApprovalRules <> Value then
  begin
    if not KeepApprovalRules then
      FApprovalRules.Free;
    FApprovalRules := Value;
  end;
end;

function TUpdatePatchBaselineResponse.GetKeepApprovalRules: Boolean;
begin
  Result := FKeepApprovalRules;
end;

procedure TUpdatePatchBaselineResponse.SetKeepApprovalRules(const Value: Boolean);
begin
  FKeepApprovalRules := Value;
end;

function TUpdatePatchBaselineResponse.IsSetApprovalRules: Boolean;
begin
  Result := FApprovalRules <> nil;
end;

function TUpdatePatchBaselineResponse.GetApprovedPatches: TList<string>;
begin
  Result := FApprovedPatches;
end;

procedure TUpdatePatchBaselineResponse.SetApprovedPatches(const Value: TList<string>);
begin
  if FApprovedPatches <> Value then
  begin
    if not KeepApprovedPatches then
      FApprovedPatches.Free;
    FApprovedPatches := Value;
  end;
end;

function TUpdatePatchBaselineResponse.GetKeepApprovedPatches: Boolean;
begin
  Result := FKeepApprovedPatches;
end;

procedure TUpdatePatchBaselineResponse.SetKeepApprovedPatches(const Value: Boolean);
begin
  FKeepApprovedPatches := Value;
end;

function TUpdatePatchBaselineResponse.IsSetApprovedPatches: Boolean;
begin
  Result := (FApprovedPatches <> nil) and (FApprovedPatches.Count > 0);
end;

function TUpdatePatchBaselineResponse.GetApprovedPatchesComplianceLevel: TPatchComplianceLevel;
begin
  Result := FApprovedPatchesComplianceLevel.ValueOrDefault;
end;

procedure TUpdatePatchBaselineResponse.SetApprovedPatchesComplianceLevel(const Value: TPatchComplianceLevel);
begin
  FApprovedPatchesComplianceLevel := Value;
end;

function TUpdatePatchBaselineResponse.IsSetApprovedPatchesComplianceLevel: Boolean;
begin
  Result := FApprovedPatchesComplianceLevel.HasValue;
end;

function TUpdatePatchBaselineResponse.GetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.ValueOrDefault;
end;

procedure TUpdatePatchBaselineResponse.SetApprovedPatchesEnableNonSecurity(const Value: Boolean);
begin
  FApprovedPatchesEnableNonSecurity := Value;
end;

function TUpdatePatchBaselineResponse.IsSetApprovedPatchesEnableNonSecurity: Boolean;
begin
  Result := FApprovedPatchesEnableNonSecurity.HasValue;
end;

function TUpdatePatchBaselineResponse.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TUpdatePatchBaselineResponse.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TUpdatePatchBaselineResponse.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TUpdatePatchBaselineResponse.GetCreatedDate: TDateTime;
begin
  Result := FCreatedDate.ValueOrDefault;
end;

procedure TUpdatePatchBaselineResponse.SetCreatedDate(const Value: TDateTime);
begin
  FCreatedDate := Value;
end;

function TUpdatePatchBaselineResponse.IsSetCreatedDate: Boolean;
begin
  Result := FCreatedDate.HasValue;
end;

function TUpdatePatchBaselineResponse.GetDescription: string;
begin
  Result := FDescription.ValueOrDefault;
end;

procedure TUpdatePatchBaselineResponse.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

function TUpdatePatchBaselineResponse.IsSetDescription: Boolean;
begin
  Result := FDescription.HasValue;
end;

function TUpdatePatchBaselineResponse.GetGlobalFilters: TPatchFilterGroup;
begin
  Result := FGlobalFilters;
end;

procedure TUpdatePatchBaselineResponse.SetGlobalFilters(const Value: TPatchFilterGroup);
begin
  if FGlobalFilters <> Value then
  begin
    if not KeepGlobalFilters then
      FGlobalFilters.Free;
    FGlobalFilters := Value;
  end;
end;

function TUpdatePatchBaselineResponse.GetKeepGlobalFilters: Boolean;
begin
  Result := FKeepGlobalFilters;
end;

procedure TUpdatePatchBaselineResponse.SetKeepGlobalFilters(const Value: Boolean);
begin
  FKeepGlobalFilters := Value;
end;

function TUpdatePatchBaselineResponse.IsSetGlobalFilters: Boolean;
begin
  Result := FGlobalFilters <> nil;
end;

function TUpdatePatchBaselineResponse.GetModifiedDate: TDateTime;
begin
  Result := FModifiedDate.ValueOrDefault;
end;

procedure TUpdatePatchBaselineResponse.SetModifiedDate(const Value: TDateTime);
begin
  FModifiedDate := Value;
end;

function TUpdatePatchBaselineResponse.IsSetModifiedDate: Boolean;
begin
  Result := FModifiedDate.HasValue;
end;

function TUpdatePatchBaselineResponse.GetName: string;
begin
  Result := FName.ValueOrDefault;
end;

procedure TUpdatePatchBaselineResponse.SetName(const Value: string);
begin
  FName := Value;
end;

function TUpdatePatchBaselineResponse.IsSetName: Boolean;
begin
  Result := FName.HasValue;
end;

function TUpdatePatchBaselineResponse.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TUpdatePatchBaselineResponse.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TUpdatePatchBaselineResponse.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

function TUpdatePatchBaselineResponse.GetRejectedPatches: TList<string>;
begin
  Result := FRejectedPatches;
end;

procedure TUpdatePatchBaselineResponse.SetRejectedPatches(const Value: TList<string>);
begin
  if FRejectedPatches <> Value then
  begin
    if not KeepRejectedPatches then
      FRejectedPatches.Free;
    FRejectedPatches := Value;
  end;
end;

function TUpdatePatchBaselineResponse.GetKeepRejectedPatches: Boolean;
begin
  Result := FKeepRejectedPatches;
end;

procedure TUpdatePatchBaselineResponse.SetKeepRejectedPatches(const Value: Boolean);
begin
  FKeepRejectedPatches := Value;
end;

function TUpdatePatchBaselineResponse.IsSetRejectedPatches: Boolean;
begin
  Result := (FRejectedPatches <> nil) and (FRejectedPatches.Count > 0);
end;

function TUpdatePatchBaselineResponse.GetRejectedPatchesAction: TPatchAction;
begin
  Result := FRejectedPatchesAction.ValueOrDefault;
end;

procedure TUpdatePatchBaselineResponse.SetRejectedPatchesAction(const Value: TPatchAction);
begin
  FRejectedPatchesAction := Value;
end;

function TUpdatePatchBaselineResponse.IsSetRejectedPatchesAction: Boolean;
begin
  Result := FRejectedPatchesAction.HasValue;
end;

function TUpdatePatchBaselineResponse.GetSources: TObjectList<TPatchSource>;
begin
  Result := FSources;
end;

procedure TUpdatePatchBaselineResponse.SetSources(const Value: TObjectList<TPatchSource>);
begin
  if FSources <> Value then
  begin
    if not KeepSources then
      FSources.Free;
    FSources := Value;
  end;
end;

function TUpdatePatchBaselineResponse.GetKeepSources: Boolean;
begin
  Result := FKeepSources;
end;

procedure TUpdatePatchBaselineResponse.SetKeepSources(const Value: Boolean);
begin
  FKeepSources := Value;
end;

function TUpdatePatchBaselineResponse.IsSetSources: Boolean;
begin
  Result := (FSources <> nil) and (FSources.Count > 0);
end;

end.
