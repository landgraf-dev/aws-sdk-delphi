unit AWS.SSM.Model.PatchRule;

interface

uses
  AWS.Nullable, 
  AWS.SSM.Enums, 
  AWS.SSM.Model.PatchFilterGroup;

type
  TPatchRule = class;
  
  IPatchRule = interface
    function GetApproveAfterDays: Integer;
    procedure SetApproveAfterDays(const Value: Integer);
    function GetApproveUntilDate: string;
    procedure SetApproveUntilDate(const Value: string);
    function GetComplianceLevel: TPatchComplianceLevel;
    procedure SetComplianceLevel(const Value: TPatchComplianceLevel);
    function GetEnableNonSecurity: Boolean;
    procedure SetEnableNonSecurity(const Value: Boolean);
    function GetPatchFilterGroup: TPatchFilterGroup;
    procedure SetPatchFilterGroup(const Value: TPatchFilterGroup);
    function GetKeepPatchFilterGroup: Boolean;
    procedure SetKeepPatchFilterGroup(const Value: Boolean);
    function Obj: TPatchRule;
    function IsSetApproveAfterDays: Boolean;
    function IsSetApproveUntilDate: Boolean;
    function IsSetComplianceLevel: Boolean;
    function IsSetEnableNonSecurity: Boolean;
    function IsSetPatchFilterGroup: Boolean;
    property ApproveAfterDays: Integer read GetApproveAfterDays write SetApproveAfterDays;
    property ApproveUntilDate: string read GetApproveUntilDate write SetApproveUntilDate;
    property ComplianceLevel: TPatchComplianceLevel read GetComplianceLevel write SetComplianceLevel;
    property EnableNonSecurity: Boolean read GetEnableNonSecurity write SetEnableNonSecurity;
    property PatchFilterGroup: TPatchFilterGroup read GetPatchFilterGroup write SetPatchFilterGroup;
    property KeepPatchFilterGroup: Boolean read GetKeepPatchFilterGroup write SetKeepPatchFilterGroup;
  end;
  
  TPatchRule = class
  strict private
    FApproveAfterDays: Nullable<Integer>;
    FApproveUntilDate: Nullable<string>;
    FComplianceLevel: Nullable<TPatchComplianceLevel>;
    FEnableNonSecurity: Nullable<Boolean>;
    FPatchFilterGroup: TPatchFilterGroup;
    FKeepPatchFilterGroup: Boolean;
    function GetApproveAfterDays: Integer;
    procedure SetApproveAfterDays(const Value: Integer);
    function GetApproveUntilDate: string;
    procedure SetApproveUntilDate(const Value: string);
    function GetComplianceLevel: TPatchComplianceLevel;
    procedure SetComplianceLevel(const Value: TPatchComplianceLevel);
    function GetEnableNonSecurity: Boolean;
    procedure SetEnableNonSecurity(const Value: Boolean);
    function GetPatchFilterGroup: TPatchFilterGroup;
    procedure SetPatchFilterGroup(const Value: TPatchFilterGroup);
    function GetKeepPatchFilterGroup: Boolean;
    procedure SetKeepPatchFilterGroup(const Value: Boolean);
  strict protected
    function Obj: TPatchRule;
  public
    destructor Destroy; override;
    function IsSetApproveAfterDays: Boolean;
    function IsSetApproveUntilDate: Boolean;
    function IsSetComplianceLevel: Boolean;
    function IsSetEnableNonSecurity: Boolean;
    function IsSetPatchFilterGroup: Boolean;
    property ApproveAfterDays: Integer read GetApproveAfterDays write SetApproveAfterDays;
    property ApproveUntilDate: string read GetApproveUntilDate write SetApproveUntilDate;
    property ComplianceLevel: TPatchComplianceLevel read GetComplianceLevel write SetComplianceLevel;
    property EnableNonSecurity: Boolean read GetEnableNonSecurity write SetEnableNonSecurity;
    property PatchFilterGroup: TPatchFilterGroup read GetPatchFilterGroup write SetPatchFilterGroup;
    property KeepPatchFilterGroup: Boolean read GetKeepPatchFilterGroup write SetKeepPatchFilterGroup;
  end;
  
implementation

{ TPatchRule }

destructor TPatchRule.Destroy;
begin
  PatchFilterGroup := nil;
  inherited;
end;

function TPatchRule.Obj: TPatchRule;
begin
  Result := Self;
end;

function TPatchRule.GetApproveAfterDays: Integer;
begin
  Result := FApproveAfterDays.ValueOrDefault;
end;

procedure TPatchRule.SetApproveAfterDays(const Value: Integer);
begin
  FApproveAfterDays := Value;
end;

function TPatchRule.IsSetApproveAfterDays: Boolean;
begin
  Result := FApproveAfterDays.HasValue;
end;

function TPatchRule.GetApproveUntilDate: string;
begin
  Result := FApproveUntilDate.ValueOrDefault;
end;

procedure TPatchRule.SetApproveUntilDate(const Value: string);
begin
  FApproveUntilDate := Value;
end;

function TPatchRule.IsSetApproveUntilDate: Boolean;
begin
  Result := FApproveUntilDate.HasValue;
end;

function TPatchRule.GetComplianceLevel: TPatchComplianceLevel;
begin
  Result := FComplianceLevel.ValueOrDefault;
end;

procedure TPatchRule.SetComplianceLevel(const Value: TPatchComplianceLevel);
begin
  FComplianceLevel := Value;
end;

function TPatchRule.IsSetComplianceLevel: Boolean;
begin
  Result := FComplianceLevel.HasValue;
end;

function TPatchRule.GetEnableNonSecurity: Boolean;
begin
  Result := FEnableNonSecurity.ValueOrDefault;
end;

procedure TPatchRule.SetEnableNonSecurity(const Value: Boolean);
begin
  FEnableNonSecurity := Value;
end;

function TPatchRule.IsSetEnableNonSecurity: Boolean;
begin
  Result := FEnableNonSecurity.HasValue;
end;

function TPatchRule.GetPatchFilterGroup: TPatchFilterGroup;
begin
  Result := FPatchFilterGroup;
end;

procedure TPatchRule.SetPatchFilterGroup(const Value: TPatchFilterGroup);
begin
  if FPatchFilterGroup <> Value then
  begin
    if not KeepPatchFilterGroup then
      FPatchFilterGroup.Free;
    FPatchFilterGroup := Value;
  end;
end;

function TPatchRule.GetKeepPatchFilterGroup: Boolean;
begin
  Result := FKeepPatchFilterGroup;
end;

procedure TPatchRule.SetKeepPatchFilterGroup(const Value: Boolean);
begin
  FKeepPatchFilterGroup := Value;
end;

function TPatchRule.IsSetPatchFilterGroup: Boolean;
begin
  Result := FPatchFilterGroup <> nil;
end;

end.
