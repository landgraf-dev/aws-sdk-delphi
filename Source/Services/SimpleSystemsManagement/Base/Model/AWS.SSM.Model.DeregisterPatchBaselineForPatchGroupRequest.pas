unit AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeregisterPatchBaselineForPatchGroupRequest = class;
  
  IDeregisterPatchBaselineForPatchGroupRequest = interface
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function Obj: TDeregisterPatchBaselineForPatchGroupRequest;
    function IsSetBaselineId: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
  TDeregisterPatchBaselineForPatchGroupRequest = class(TAmazonSimpleSystemsManagementRequest, IDeregisterPatchBaselineForPatchGroupRequest)
  strict private
    FBaselineId: Nullable<string>;
    FPatchGroup: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
  strict protected
    function Obj: TDeregisterPatchBaselineForPatchGroupRequest;
  public
    function IsSetBaselineId: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
implementation

{ TDeregisterPatchBaselineForPatchGroupRequest }

function TDeregisterPatchBaselineForPatchGroupRequest.Obj: TDeregisterPatchBaselineForPatchGroupRequest;
begin
  Result := Self;
end;

function TDeregisterPatchBaselineForPatchGroupRequest.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TDeregisterPatchBaselineForPatchGroupRequest.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TDeregisterPatchBaselineForPatchGroupRequest.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TDeregisterPatchBaselineForPatchGroupRequest.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TDeregisterPatchBaselineForPatchGroupRequest.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TDeregisterPatchBaselineForPatchGroupRequest.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

end.
