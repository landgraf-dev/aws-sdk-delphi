unit AWS.SSM.Model.PatchRuleGroup;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.PatchRule;

type
  TPatchRuleGroup = class;
  
  IPatchRuleGroup = interface
    function GetPatchRules: TObjectList<TPatchRule>;
    procedure SetPatchRules(const Value: TObjectList<TPatchRule>);
    function GetKeepPatchRules: Boolean;
    procedure SetKeepPatchRules(const Value: Boolean);
    function Obj: TPatchRuleGroup;
    function IsSetPatchRules: Boolean;
    property PatchRules: TObjectList<TPatchRule> read GetPatchRules write SetPatchRules;
    property KeepPatchRules: Boolean read GetKeepPatchRules write SetKeepPatchRules;
  end;
  
  TPatchRuleGroup = class
  strict private
    FPatchRules: TObjectList<TPatchRule>;
    FKeepPatchRules: Boolean;
    function GetPatchRules: TObjectList<TPatchRule>;
    procedure SetPatchRules(const Value: TObjectList<TPatchRule>);
    function GetKeepPatchRules: Boolean;
    procedure SetKeepPatchRules(const Value: Boolean);
  strict protected
    function Obj: TPatchRuleGroup;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPatchRules: Boolean;
    property PatchRules: TObjectList<TPatchRule> read GetPatchRules write SetPatchRules;
    property KeepPatchRules: Boolean read GetKeepPatchRules write SetKeepPatchRules;
  end;
  
implementation

{ TPatchRuleGroup }

constructor TPatchRuleGroup.Create;
begin
  inherited;
  FPatchRules := TObjectList<TPatchRule>.Create;
end;

destructor TPatchRuleGroup.Destroy;
begin
  PatchRules := nil;
  inherited;
end;

function TPatchRuleGroup.Obj: TPatchRuleGroup;
begin
  Result := Self;
end;

function TPatchRuleGroup.GetPatchRules: TObjectList<TPatchRule>;
begin
  Result := FPatchRules;
end;

procedure TPatchRuleGroup.SetPatchRules(const Value: TObjectList<TPatchRule>);
begin
  if FPatchRules <> Value then
  begin
    if not KeepPatchRules then
      FPatchRules.Free;
    FPatchRules := Value;
  end;
end;

function TPatchRuleGroup.GetKeepPatchRules: Boolean;
begin
  Result := FKeepPatchRules;
end;

procedure TPatchRuleGroup.SetKeepPatchRules(const Value: Boolean);
begin
  FKeepPatchRules := Value;
end;

function TPatchRuleGroup.IsSetPatchRules: Boolean;
begin
  Result := (FPatchRules <> nil) and (FPatchRules.Count > 0);
end;

end.
