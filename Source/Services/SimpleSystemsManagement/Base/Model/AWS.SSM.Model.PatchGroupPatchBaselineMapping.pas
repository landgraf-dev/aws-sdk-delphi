unit AWS.SSM.Model.PatchGroupPatchBaselineMapping;

interface

uses
  AWS.SSM.Model.PatchBaselineIdentity, 
  AWS.Nullable;

type
  TPatchGroupPatchBaselineMapping = class;
  
  IPatchGroupPatchBaselineMapping = interface
    function GetBaselineIdentity: TPatchBaselineIdentity;
    procedure SetBaselineIdentity(const Value: TPatchBaselineIdentity);
    function GetKeepBaselineIdentity: Boolean;
    procedure SetKeepBaselineIdentity(const Value: Boolean);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function Obj: TPatchGroupPatchBaselineMapping;
    function IsSetBaselineIdentity: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineIdentity: TPatchBaselineIdentity read GetBaselineIdentity write SetBaselineIdentity;
    property KeepBaselineIdentity: Boolean read GetKeepBaselineIdentity write SetKeepBaselineIdentity;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
  TPatchGroupPatchBaselineMapping = class
  strict private
    FBaselineIdentity: TPatchBaselineIdentity;
    FKeepBaselineIdentity: Boolean;
    FPatchGroup: Nullable<string>;
    function GetBaselineIdentity: TPatchBaselineIdentity;
    procedure SetBaselineIdentity(const Value: TPatchBaselineIdentity);
    function GetKeepBaselineIdentity: Boolean;
    procedure SetKeepBaselineIdentity(const Value: Boolean);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
  strict protected
    function Obj: TPatchGroupPatchBaselineMapping;
  public
    destructor Destroy; override;
    function IsSetBaselineIdentity: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineIdentity: TPatchBaselineIdentity read GetBaselineIdentity write SetBaselineIdentity;
    property KeepBaselineIdentity: Boolean read GetKeepBaselineIdentity write SetKeepBaselineIdentity;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
implementation

{ TPatchGroupPatchBaselineMapping }

destructor TPatchGroupPatchBaselineMapping.Destroy;
begin
  BaselineIdentity := nil;
  inherited;
end;

function TPatchGroupPatchBaselineMapping.Obj: TPatchGroupPatchBaselineMapping;
begin
  Result := Self;
end;

function TPatchGroupPatchBaselineMapping.GetBaselineIdentity: TPatchBaselineIdentity;
begin
  Result := FBaselineIdentity;
end;

procedure TPatchGroupPatchBaselineMapping.SetBaselineIdentity(const Value: TPatchBaselineIdentity);
begin
  if FBaselineIdentity <> Value then
  begin
    if not KeepBaselineIdentity then
      FBaselineIdentity.Free;
    FBaselineIdentity := Value;
  end;
end;

function TPatchGroupPatchBaselineMapping.GetKeepBaselineIdentity: Boolean;
begin
  Result := FKeepBaselineIdentity;
end;

procedure TPatchGroupPatchBaselineMapping.SetKeepBaselineIdentity(const Value: Boolean);
begin
  FKeepBaselineIdentity := Value;
end;

function TPatchGroupPatchBaselineMapping.IsSetBaselineIdentity: Boolean;
begin
  Result := FBaselineIdentity <> nil;
end;

function TPatchGroupPatchBaselineMapping.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TPatchGroupPatchBaselineMapping.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TPatchGroupPatchBaselineMapping.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

end.
