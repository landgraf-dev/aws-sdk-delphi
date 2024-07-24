unit AWS.SSM.Model.DescribePatchGroupStateRequest;

interface

uses
  AWS.SSM.Model.Request, 
  AWS.Nullable;

type
  TDescribePatchGroupStateRequest = class;
  
  IDescribePatchGroupStateRequest = interface
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
    function Obj: TDescribePatchGroupStateRequest;
    function IsSetPatchGroup: Boolean;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
  TDescribePatchGroupStateRequest = class(TAmazonSimpleSystemsManagementRequest, IDescribePatchGroupStateRequest)
  strict private
    FPatchGroup: Nullable<string>;
    function GetPatchGroup: string;
    procedure SetPatchGroup(const Value: string);
  strict protected
    function Obj: TDescribePatchGroupStateRequest;
  public
    function IsSetPatchGroup: Boolean;
    property PatchGroup: string read GetPatchGroup write SetPatchGroup;
  end;
  
implementation

{ TDescribePatchGroupStateRequest }

function TDescribePatchGroupStateRequest.Obj: TDescribePatchGroupStateRequest;
begin
  Result := Self;
end;

function TDescribePatchGroupStateRequest.GetPatchGroup: string;
begin
  Result := FPatchGroup.ValueOrDefault;
end;

procedure TDescribePatchGroupStateRequest.SetPatchGroup(const Value: string);
begin
  FPatchGroup := Value;
end;

function TDescribePatchGroupStateRequest.IsSetPatchGroup: Boolean;
begin
  Result := FPatchGroup.HasValue;
end;

end.
