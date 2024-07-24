unit AWS.SSM.Model.DeletePatchBaselineResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TDeletePatchBaselineResponse = class;
  
  IDeletePatchBaselineResponse = interface(IAmazonWebServiceResponse)
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function Obj: TDeletePatchBaselineResponse;
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
  TDeletePatchBaselineResponse = class(TAmazonWebServiceResponse, IDeletePatchBaselineResponse)
  strict private
    FBaselineId: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
  strict protected
    function Obj: TDeletePatchBaselineResponse;
  public
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
implementation

{ TDeletePatchBaselineResponse }

function TDeletePatchBaselineResponse.Obj: TDeletePatchBaselineResponse;
begin
  Result := Self;
end;

function TDeletePatchBaselineResponse.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TDeletePatchBaselineResponse.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TDeletePatchBaselineResponse.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

end.
