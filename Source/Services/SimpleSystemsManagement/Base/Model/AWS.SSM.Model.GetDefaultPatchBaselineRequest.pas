unit AWS.SSM.Model.GetDefaultPatchBaselineRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetDefaultPatchBaselineRequest = class;
  
  IGetDefaultPatchBaselineRequest = interface
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function Obj: TGetDefaultPatchBaselineRequest;
    function IsSetOperatingSystem: Boolean;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
  end;
  
  TGetDefaultPatchBaselineRequest = class(TAmazonSimpleSystemsManagementRequest, IGetDefaultPatchBaselineRequest)
  strict private
    FOperatingSystem: Nullable<TOperatingSystem>;
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
  strict protected
    function Obj: TGetDefaultPatchBaselineRequest;
  public
    function IsSetOperatingSystem: Boolean;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
  end;
  
implementation

{ TGetDefaultPatchBaselineRequest }

function TGetDefaultPatchBaselineRequest.Obj: TGetDefaultPatchBaselineRequest;
begin
  Result := Self;
end;

function TGetDefaultPatchBaselineRequest.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TGetDefaultPatchBaselineRequest.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TGetDefaultPatchBaselineRequest.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

end.
