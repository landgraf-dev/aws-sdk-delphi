unit AWS.SSM.Model.CreatePatchBaselineResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TCreatePatchBaselineResponse = class;
  
  ICreatePatchBaselineResponse = interface(IAmazonWebServiceResponse)
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function Obj: TCreatePatchBaselineResponse;
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
  TCreatePatchBaselineResponse = class(TAmazonWebServiceResponse, ICreatePatchBaselineResponse)
  strict private
    FBaselineId: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
  strict protected
    function Obj: TCreatePatchBaselineResponse;
  public
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
implementation

{ TCreatePatchBaselineResponse }

function TCreatePatchBaselineResponse.Obj: TCreatePatchBaselineResponse;
begin
  Result := Self;
end;

function TCreatePatchBaselineResponse.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TCreatePatchBaselineResponse.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TCreatePatchBaselineResponse.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

end.
