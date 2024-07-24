unit AWS.SSM.Model.GetPatchBaselineForPatchGroupResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetPatchBaselineForPatchGroupResponse = class;
  
  IGetPatchBaselineForPatchGroupResponse = interface(IAmazonWebServiceResponse)
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function Obj: TGetPatchBaselineForPatchGroupResponse;
    function IsSetBaselineId: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
  TGetPatchBaselineForPatchGroupResponse = class(TAmazonWebServiceResponse, IGetPatchBaselineForPatchGroupResponse)
  strict private
    FBaselineId: Nullable<string>;
    FOperatingSystem: Nullable<TOperatingSystem>;
    FPatchGroup: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
  strict protected
    function Obj: TGetPatchBaselineForPatchGroupResponse;
  public
    function IsSetBaselineId: Boolean;
    function IsSetOperatingSystem: Boolean;
    function IsSetPatchGroup: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
implementation

{ TGetPatchBaselineForPatchGroupResponse }

function TGetPatchBaselineForPatchGroupResponse.Obj: TGetPatchBaselineForPatchGroupResponse;
begin
  Result := Self;
end;

function TGetPatchBaselineForPatchGroupResponse.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TGetPatchBaselineForPatchGroupResponse.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TGetPatchBaselineForPatchGroupResponse.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TGetPatchBaselineForPatchGroupResponse.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TGetPatchBaselineForPatchGroupResponse.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TGetPatchBaselineForPatchGroupResponse.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

function TGetPatchBaselineForPatchGroupResponse.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TGetPatchBaselineForPatchGroupResponse.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TGetPatchBaselineForPatchGroupResponse.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

end.
