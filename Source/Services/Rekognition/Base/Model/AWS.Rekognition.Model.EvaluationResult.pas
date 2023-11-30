unit AWS.Rekognition.Model.EvaluationResult;

interface

uses
  AWS.Nullable, 
  AWS.Rekognition.Model.Summary;

type
  TEvaluationResult = class;
  
  IEvaluationResult = interface
    function GetF1Score: Double;
    procedure SetF1Score(const Value: Double);
    function GetSummary: TSummary;
    procedure SetSummary(const Value: TSummary);
    function GetKeepSummary: Boolean;
    procedure SetKeepSummary(const Value: Boolean);
    function Obj: TEvaluationResult;
    function IsSetF1Score: Boolean;
    function IsSetSummary: Boolean;
    property F1Score: Double read GetF1Score write SetF1Score;
    property Summary: TSummary read GetSummary write SetSummary;
    property KeepSummary: Boolean read GetKeepSummary write SetKeepSummary;
  end;
  
  TEvaluationResult = class
  strict private
    FF1Score: Nullable<Double>;
    FSummary: TSummary;
    FKeepSummary: Boolean;
    function GetF1Score: Double;
    procedure SetF1Score(const Value: Double);
    function GetSummary: TSummary;
    procedure SetSummary(const Value: TSummary);
    function GetKeepSummary: Boolean;
    procedure SetKeepSummary(const Value: Boolean);
  strict protected
    function Obj: TEvaluationResult;
  public
    destructor Destroy; override;
    function IsSetF1Score: Boolean;
    function IsSetSummary: Boolean;
    property F1Score: Double read GetF1Score write SetF1Score;
    property Summary: TSummary read GetSummary write SetSummary;
    property KeepSummary: Boolean read GetKeepSummary write SetKeepSummary;
  end;
  
implementation

{ TEvaluationResult }

destructor TEvaluationResult.Destroy;
begin
  Summary := nil;
  inherited;
end;

function TEvaluationResult.Obj: TEvaluationResult;
begin
  Result := Self;
end;

function TEvaluationResult.GetF1Score: Double;
begin
  Result := FF1Score.ValueOrDefault;
end;

procedure TEvaluationResult.SetF1Score(const Value: Double);
begin
  FF1Score := Value;
end;

function TEvaluationResult.IsSetF1Score: Boolean;
begin
  Result := FF1Score.HasValue;
end;

function TEvaluationResult.GetSummary: TSummary;
begin
  Result := FSummary;
end;

procedure TEvaluationResult.SetSummary(const Value: TSummary);
begin
  if FSummary <> Value then
  begin
    if not KeepSummary then
      FSummary.Free;
    FSummary := Value;
  end;
end;

function TEvaluationResult.GetKeepSummary: Boolean;
begin
  Result := FKeepSummary;
end;

procedure TEvaluationResult.SetKeepSummary(const Value: Boolean);
begin
  FKeepSummary := Value;
end;

function TEvaluationResult.IsSetSummary: Boolean;
begin
  Result := FSummary <> nil;
end;

end.
