unit AWS.SSM.Model.EffectivePatch;

interface

uses
  AWS.SSM.Model.Patch, 
  AWS.SSM.Model.PatchStatus;

type
  TEffectivePatch = class;
  
  IEffectivePatch = interface
    function GetPatch: TPatch;
    procedure SetPatch(const Value: TPatch);
    function GetKeepPatch: Boolean;
    procedure SetKeepPatch(const Value: Boolean);
    function GetPatchStatus: TPatchStatus;
    procedure SetPatchStatus(const Value: TPatchStatus);
    function GetKeepPatchStatus: Boolean;
    procedure SetKeepPatchStatus(const Value: Boolean);
    function Obj: TEffectivePatch;
    function IsSetPatch: Boolean;
    function IsSetPatchStatus: Boolean;
    property Patch: TPatch read GetPatch write SetPatch;
    property KeepPatch: Boolean read GetKeepPatch write SetKeepPatch;
    property PatchStatus: TPatchStatus read GetPatchStatus write SetPatchStatus;
    property KeepPatchStatus: Boolean read GetKeepPatchStatus write SetKeepPatchStatus;
  end;
  
  TEffectivePatch = class
  strict private
    FPatch: TPatch;
    FKeepPatch: Boolean;
    FPatchStatus: TPatchStatus;
    FKeepPatchStatus: Boolean;
    function GetPatch: TPatch;
    procedure SetPatch(const Value: TPatch);
    function GetKeepPatch: Boolean;
    procedure SetKeepPatch(const Value: Boolean);
    function GetPatchStatus: TPatchStatus;
    procedure SetPatchStatus(const Value: TPatchStatus);
    function GetKeepPatchStatus: Boolean;
    procedure SetKeepPatchStatus(const Value: Boolean);
  strict protected
    function Obj: TEffectivePatch;
  public
    destructor Destroy; override;
    function IsSetPatch: Boolean;
    function IsSetPatchStatus: Boolean;
    property Patch: TPatch read GetPatch write SetPatch;
    property KeepPatch: Boolean read GetKeepPatch write SetKeepPatch;
    property PatchStatus: TPatchStatus read GetPatchStatus write SetPatchStatus;
    property KeepPatchStatus: Boolean read GetKeepPatchStatus write SetKeepPatchStatus;
  end;
  
implementation

{ TEffectivePatch }

destructor TEffectivePatch.Destroy;
begin
  PatchStatus := nil;
  Patch := nil;
  inherited;
end;

function TEffectivePatch.Obj: TEffectivePatch;
begin
  Result := Self;
end;

function TEffectivePatch.GetPatch: TPatch;
begin
  Result := FPatch;
end;

procedure TEffectivePatch.SetPatch(const Value: TPatch);
begin
  if FPatch <> Value then
  begin
    if not KeepPatch then
      FPatch.Free;
    FPatch := Value;
  end;
end;

function TEffectivePatch.GetKeepPatch: Boolean;
begin
  Result := FKeepPatch;
end;

procedure TEffectivePatch.SetKeepPatch(const Value: Boolean);
begin
  FKeepPatch := Value;
end;

function TEffectivePatch.IsSetPatch: Boolean;
begin
  Result := FPatch <> nil;
end;

function TEffectivePatch.GetPatchStatus: TPatchStatus;
begin
  Result := FPatchStatus;
end;

procedure TEffectivePatch.SetPatchStatus(const Value: TPatchStatus);
begin
  if FPatchStatus <> Value then
  begin
    if not KeepPatchStatus then
      FPatchStatus.Free;
    FPatchStatus := Value;
  end;
end;

function TEffectivePatch.GetKeepPatchStatus: Boolean;
begin
  Result := FKeepPatchStatus;
end;

procedure TEffectivePatch.SetKeepPatchStatus(const Value: Boolean);
begin
  FKeepPatchStatus := Value;
end;

function TEffectivePatch.IsSetPatchStatus: Boolean;
begin
  Result := FPatchStatus <> nil;
end;

end.
