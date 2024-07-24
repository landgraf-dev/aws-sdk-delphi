unit AWS.SSM.Model.RegisterPatchBaselineForPatchGroupRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TRegisterPatchBaselineForPatchGroupRequest = class;
  
  IRegisterPatchBaselineForPatchGroupRequest = interface
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function Obj: TRegisterPatchBaselineForPatchGroupRequest;
    function IsSetBaselineId: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
  TRegisterPatchBaselineForPatchGroupRequest = class(TAmazonSimpleSystemsManagementRequest, IRegisterPatchBaselineForPatchGroupRequest)
  strict private
    FBaselineId: Nullable<string>;
    FPatchGroup: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
  strict protected
    function Obj: TRegisterPatchBaselineForPatchGroupRequest;
  public
    function IsSetBaselineId: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
implementation

{ TRegisterPatchBaselineForPatchGroupRequest }

function TRegisterPatchBaselineForPatchGroupRequest.Obj: TRegisterPatchBaselineForPatchGroupRequest;
begin
  Result := Self;
end;

function TRegisterPatchBaselineForPatchGroupRequest.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TRegisterPatchBaselineForPatchGroupRequest.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TRegisterPatchBaselineForPatchGroupRequest.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TRegisterPatchBaselineForPatchGroupRequest.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TRegisterPatchBaselineForPatchGroupRequest.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TRegisterPatchBaselineForPatchGroupRequest.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

end.
