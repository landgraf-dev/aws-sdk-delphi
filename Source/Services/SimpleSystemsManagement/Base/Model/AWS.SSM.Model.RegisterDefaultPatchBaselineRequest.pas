unit AWS.SSM.Model.RegisterDefaultPatchBaselineRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TRegisterDefaultPatchBaselineRequest = class;
  
  IRegisterDefaultPatchBaselineRequest = interface
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function Obj: TRegisterDefaultPatchBaselineRequest;
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
  TRegisterDefaultPatchBaselineRequest = class(TAmazonSimpleSystemsManagementRequest, IRegisterDefaultPatchBaselineRequest)
  strict private
    FBaselineId: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
  strict protected
    function Obj: TRegisterDefaultPatchBaselineRequest;
  public
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
implementation

{ TRegisterDefaultPatchBaselineRequest }

function TRegisterDefaultPatchBaselineRequest.Obj: TRegisterDefaultPatchBaselineRequest;
begin
  Result := Self;
end;

function TRegisterDefaultPatchBaselineRequest.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TRegisterDefaultPatchBaselineRequest.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TRegisterDefaultPatchBaselineRequest.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

end.
