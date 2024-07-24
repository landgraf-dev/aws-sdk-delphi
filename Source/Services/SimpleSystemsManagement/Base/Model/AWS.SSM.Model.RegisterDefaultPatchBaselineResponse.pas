unit AWS.SSM.Model.RegisterDefaultPatchBaselineResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TRegisterDefaultPatchBaselineResponse = class;
  
  IRegisterDefaultPatchBaselineResponse = interface(IAmazonWebServiceResponse)
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
    function Obj: TRegisterDefaultPatchBaselineResponse;
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
  TRegisterDefaultPatchBaselineResponse = class(TAmazonWebServiceResponse, IRegisterDefaultPatchBaselineResponse)
  strict private
    FBaselineId: Nullable<string>;
    function GetBaselineId: string;
    procedure SetBaselineId(const Value: string);
  strict protected
    function Obj: TRegisterDefaultPatchBaselineResponse;
  public
    function IsSetBaselineId: Boolean;
    property BaselineId: string read GetBaselineId write SetBaselineId;
  end;
  
implementation

{ TRegisterDefaultPatchBaselineResponse }

function TRegisterDefaultPatchBaselineResponse.Obj: TRegisterDefaultPatchBaselineResponse;
begin
  Result := Self;
end;

function TRegisterDefaultPatchBaselineResponse.GetBaselineId: string;
begin
  Result := FBaselineId.ValueOrDefault;
end;

procedure TRegisterDefaultPatchBaselineResponse.SetBaselineId(const Value: string);
begin
  FBaselineId := Value;
end;

function TRegisterDefaultPatchBaselineResponse.IsSetBaselineId: Boolean;
begin
  Result := FBaselineId.HasValue;
end;

end.
