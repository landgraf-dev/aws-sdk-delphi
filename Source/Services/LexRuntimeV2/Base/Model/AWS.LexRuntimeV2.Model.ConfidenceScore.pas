unit AWS.LexRuntimeV2.Model.ConfidenceScore;

interface

uses
  Bcl.Types.Nullable;

type
  TConfidenceScore = class;
  
  IConfidenceScore = interface
    function GetScore: Double;
    procedure SetScore(const Value: Double);
    function Obj: TConfidenceScore;
    function IsSetScore: Boolean;
    property Score: Double read GetScore write SetScore;
  end;
  
  TConfidenceScore = class
  strict private
    FScore: Nullable<Double>;
    function GetScore: Double;
    procedure SetScore(const Value: Double);
  strict protected
    function Obj: TConfidenceScore;
  public
    function IsSetScore: Boolean;
    property Score: Double read GetScore write SetScore;
  end;
  
implementation

{ TConfidenceScore }

function TConfidenceScore.Obj: TConfidenceScore;
begin
  Result := Self;
end;

function TConfidenceScore.GetScore: Double;
begin
  Result := FScore.ValueOrDefault;
end;

procedure TConfidenceScore.SetScore(const Value: Double);
begin
  FScore := Value;
end;

function TConfidenceScore.IsSetScore: Boolean;
begin
  Result := FScore.HasValue;
end;

end.
