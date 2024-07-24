unit AWS.SSM.Model.DeregisterPatchBaselineForPatchGroupResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDeregisterPatchBaselineForPatchGroupResponse = class;
  
  IDeregisterPatchBaselineForPatchGroupResponse = interface(IAmazonWebServiceResponse)
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function Obj: TDeregisterPatchBaselineForPatchGroupResponse;
    function IsSetBaselineId: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
  TDeregisterPatchBaselineForPatchGroupResponse = class(TAmazonWebServiceResponse, IDeregisterPatchBaselineForPatchGroupResponse)
  strict private
    FBaselineId: Nullable<string>;
    FPatchGroup: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
  strict protected
    function Obj: TDeregisterPatchBaselineForPatchGroupResponse;
  public
    function IsSetBaselineId: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
implementation

{ TDeregisterPatchBaselineForPatchGroupResponse }

function TDeregisterPatchBaselineForPatchGroupResponse.Obj: TDeregisterPatchBaselineForPatchGroupResponse;
begin
  Result := Self;
end;

function TDeregisterPatchBaselineForPatchGroupResponse.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TDeregisterPatchBaselineForPatchGroupResponse.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TDeregisterPatchBaselineForPatchGroupResponse.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TDeregisterPatchBaselineForPatchGroupResponse.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TDeregisterPatchBaselineForPatchGroupResponse.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TDeregisterPatchBaselineForPatchGroupResponse.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

end.
