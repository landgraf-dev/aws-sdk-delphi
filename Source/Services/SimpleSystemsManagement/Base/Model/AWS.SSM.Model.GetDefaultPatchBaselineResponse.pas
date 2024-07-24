unit AWS.SSM.Model.GetDefaultPatchBaselineResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.SSM.Enums;

type
  TGetDefaultPatchBaselineResponse = class;
  
  IGetDefaultPatchBaselineResponse = interface(IAmazonWebServiceResponse)
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
    function Obj: TGetDefaultPatchBaselineResponse;
    function IsSetBaselineId: Boolean;
    function IsSetOperatingSystem: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
  end;
  
  TGetDefaultPatchBaselineResponse = class(TAmazonWebServiceResponse, IGetDefaultPatchBaselineResponse)
  strict private
    FBaselineId: Nullable<string>;
    FOperatingSystem: Nullable<TOperatingSystem>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function GetOperatingSystem: TOperatingSystem;
    procedure SetOperatingSystem(const Value: TOperatingSystem);
  strict protected
    function Obj: TGetDefaultPatchBaselineResponse;
  public
    function IsSetBaselineId: Boolean;
    function IsSetOperatingSystem: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
    property OperatingSystem: TOperatingSystem read GetOperatingSystem write SetOperatingSystem;
  end;
  
implementation

{ TGetDefaultPatchBaselineResponse }

function TGetDefaultPatchBaselineResponse.Obj: TGetDefaultPatchBaselineResponse;
begin
  Result := Self;
end;

function TGetDefaultPatchBaselineResponse.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TGetDefaultPatchBaselineResponse.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TGetDefaultPatchBaselineResponse.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

function TGetDefaultPatchBaselineResponse.GetOperatingSystem: TOperatingSystem;
begin
  Result := FOperatingSystem.ValueOrDefault;
end;

procedure TGetDefaultPatchBaselineResponse.SetOperatingSystem(const Value: TOperatingSystem);
begin
  FOperatingSystem := Value;
end;

function TGetDefaultPatchBaselineResponse.IsSetOperatingSystem: Boolean;
begin
  Result := FOperatingSystem.HasValue;
end;

end.
