unit AWS.SSM.Model.PatchFilterGroup;

interface

uses
  System.Generics.Collections, 
  AWS.SSM.Model.PatchFilter;

type
  TPatchFilterGroup = class;
  
  IPatchFilterGroup = interface
    function GetPatchFilters: TObjectList<TPatchFilter>;
    procedure SetPatchFilters(const Value: TObjectList<TPatchFilter>);
    function GetKeepPatchFilters: Boolean;
    procedure SetKeepPatchFilters(const Value: Boolean);
    function Obj: TPatchFilterGroup;
    function IsSetPatchFilters: Boolean;
    property PatchFilters: TObjectList<TPatchFilter> read GetPatchFilters write SetPatchFilters;
    property KeepPatchFilters: Boolean read GetKeepPatchFilters write SetKeepPatchFilters;
  end;
  
  TPatchFilterGroup = class
  strict private
    FPatchFilters: TObjectList<TPatchFilter>;
    FKeepPatchFilters: Boolean;
    function GetPatchFilters: TObjectList<TPatchFilter>;
    procedure SetPatchFilters(const Value: TObjectList<TPatchFilter>);
    function GetKeepPatchFilters: Boolean;
    procedure SetKeepPatchFilters(const Value: Boolean);
  strict protected
    function Obj: TPatchFilterGroup;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetPatchFilters: Boolean;
    property PatchFilters: TObjectList<TPatchFilter> read GetPatchFilters write SetPatchFilters;
    property KeepPatchFilters: Boolean read GetKeepPatchFilters write SetKeepPatchFilters;
  end;
  
implementation

{ TPatchFilterGroup }

constructor TPatchFilterGroup.Create;
begin
  inherited;
  FPatchFilters := TObjectList<TPatchFilter>.Create;
end;

destructor TPatchFilterGroup.Destroy;
begin
  PatchFilters := nil;
  inherited;
end;

function TPatchFilterGroup.Obj: TPatchFilterGroup;
begin
  Result := Self;
end;

function TPatchFilterGroup.GetPatchFilters: TObjectList<TPatchFilter>;
begin
  Result := FPatchFilters;
end;

procedure TPatchFilterGroup.SetPatchFilters(const Value: TObjectList<TPatchFilter>);
begin
  if FPatchFilters <> Value then
  begin
    if not KeepPatchFilters then
      FPatchFilters.Free;
    FPatchFilters := Value;
  end;
end;

function TPatchFilterGroup.GetKeepPatchFilters: Boolean;
begin
  Result := FKeepPatchFilters;
end;

procedure TPatchFilterGroup.SetKeepPatchFilters(const Value: Boolean);
begin
  FKeepPatchFilters := Value;
end;

function TPatchFilterGroup.IsSetPatchFilters: Boolean;
begin
  Result := (FPatchFilters <> nil) and (FPatchFilters.Count > 0);
end;

end.
