unit AWS.LexRuntimeService.Model.IntentConfidence;

interface

uses
  AWS.Nullable;

type
  TIntentConfidence = class;
  
  IIntentConfidence = interface
    function GetScore: Double;
    procedure SetScore(const Value: Double);
    function Obj: TIntentConfidence;
    function IsSetScore: Boolean;
    property Score: Double read GetScore write SetScore;
  end;
  
  TIntentConfidence = class
  strict private
    FScore: Nullable<Double>;
    function GetScore: Double;
    procedure SetScore(const Value: Double);
  strict protected
    function Obj: TIntentConfidence;
  public
    function IsSetScore: Boolean;
    property Score: Double read GetScore write SetScore;
  end;
  
implementation

{ TIntentConfidence }

function TIntentConfidence.Obj: TIntentConfidence;
begin
  Result := Self;
end;

function TIntentConfidence.GetScore: Double;
begin
  Result := FScore.ValueOrDefault;
end;

procedure TIntentConfidence.SetScore(const Value: Double);
begin
  FScore := Value;
end;

function TIntentConfidence.IsSetScore: Boolean;
begin
  Result := FScore.HasValue;
end;

end.
