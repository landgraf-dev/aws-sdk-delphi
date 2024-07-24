unit AWS.SSM.Model.RegisterPatchBaselineForPatchGroupResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TRegisterPatchBaselineForPatchGroupResponse = class;
  
  IRegisterPatchBaselineForPatchGroupResponse = interface(IAmazonWebServiceResponse)
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function Obj: TRegisterPatchBaselineForPatchGroupResponse;
    function IsSetBaselineId: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
  TRegisterPatchBaselineForPatchGroupResponse = class(TAmazonWebServiceResponse, IRegisterPatchBaselineForPatchGroupResponse)
  strict private
    FBaselineId: Nullable<string>;
    FPatchGroup: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
  strict protected
    function Obj: TRegisterPatchBaselineForPatchGroupResponse;
  public
    function IsSetBaselineId: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
implementation

{ TRegisterPatchBaselineForPatchGroupResponse }

function TRegisterPatchBaselineForPatchGroupResponse.Obj: TRegisterPatchBaselineForPatchGroupResponse;
begin
  Result := Self;
end;

function TRegisterPatchBaselineForPatchGroupResponse.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TRegisterPatchBaselineForPatchGroupResponse.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TRegisterPatchBaselineForPatchGroupResponse.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TRegisterPatchBaselineForPatchGroupResponse.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TRegisterPatchBaselineForPatchGroupResponse.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TRegisterPatchBaselineForPatchGroupResponse.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

end.
