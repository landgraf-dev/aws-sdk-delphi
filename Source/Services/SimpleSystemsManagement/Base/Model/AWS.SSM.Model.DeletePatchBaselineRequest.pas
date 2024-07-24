unit AWS.SSM.Model.DeletePatchBaselineRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDeletePatchBaselineRequest = class;
  
  IDeletePatchBaselineRequest = interface
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function Obj: TDeletePatchBaselineRequest;
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
  TDeletePatchBaselineRequest = class(TAmazonSimpleSystemsManagementRequest, IDeletePatchBaselineRequest)
  strict private
    FBaselineId: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
  strict protected
    function Obj: TDeletePatchBaselineRequest;
  public
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
implementation

{ TDeletePatchBaselineRequest }

function TDeletePatchBaselineRequest.Obj: TDeletePatchBaselineRequest;
begin
  Result := Self;
end;

function TDeletePatchBaselineRequest.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TDeletePatchBaselineRequest.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TDeletePatchBaselineRequest.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

end.
