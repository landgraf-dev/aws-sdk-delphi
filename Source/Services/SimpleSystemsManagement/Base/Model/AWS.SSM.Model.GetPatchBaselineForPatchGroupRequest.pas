unit AWS.SSM.Model.GetPatchBaselineForPatchGroupRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetPatchBaselineForPatchGroupRequest = class;
  
  IGetPatchBaselineForPatchGroupRequest = interface
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function Obj: TGetPatchBaselineForPatchGroupRequest;
    function IsSetOperatingSystem: Boolean;
    function IsSetPatchGroup: Boolean;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
  TGetPatchBaselineForPatchGroupRequest = class(TAmazonSimpleSystemsManagementRequest, IGetPatchBaselineForPatchGroupRequest)
  strict private
    FOperatingSystem: Nullable<TOperatingSystem>;
    FPatchGroup: Nullable<string>;
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
  strict protected
    function Obj: TGetPatchBaselineForPatchGroupRequest;
  public
    function IsSetOperatingSystem: Boolean;
    function IsSetPatchGroup: Boolean;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
implementation

{ TGetPatchBaselineForPatchGroupRequest }

function TGetPatchBaselineForPatchGroupRequest.Obj: TGetPatchBaselineForPatchGroupRequest;
begin
  Result := Self;
end;

function TGetPatchBaselineForPatchGroupRequest.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TGetPatchBaselineForPatchGroupRequest.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TGetPatchBaselineForPatchGroupRequest.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

function TGetPatchBaselineForPatchGroupRequest.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TGetPatchBaselineForPatchGroupRequest.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TGetPatchBaselineForPatchGroupRequest.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

end.
