unit AWS.SSM.Model.GetPatchBaselineRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TGetPatchBaselineRequest = class;
  
  IGetPatchBaselineRequest = interface
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function Obj: TGetPatchBaselineRequest;
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
  TGetPatchBaselineRequest = class(TAmazonSimpleSystemsManagementRequest, IGetPatchBaselineRequest)
  strict private
    FBaselineId: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
  strict protected
    function Obj: TGetPatchBaselineRequest;
  public
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
implementation

{ TGetPatchBaselineRequest }

function TGetPatchBaselineRequest.Obj: TGetPatchBaselineRequest;
begin
  Result := Self;
end;

function TGetPatchBaselineRequest.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TGetPatchBaselineRequest.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TGetPatchBaselineRequest.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

end.
