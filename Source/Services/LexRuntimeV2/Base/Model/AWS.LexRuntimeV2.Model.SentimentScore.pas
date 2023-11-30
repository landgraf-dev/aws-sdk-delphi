unit AWS.LexRuntimeV2.Model.SentimentScore;

interface

uses
  AWS.Nullable;

type
  TSentimentScore = class;
  
  ISentimentScore = interface
    function GetMixed: Double;
    procedure SetMixed(const Value: Double);
    function GetNegative: Double;
    procedure SetNegative(const Value: Double);
    function GetNeutral: Double;
    procedure SetNeutral(const Value: Double);
    function GetPositive: Double;
    procedure SetPositive(const Value: Double);
    function Obj: TSentimentScore;
    function IsSetMixed: Boolean;
    function IsSetNegative: Boolean;
    function IsSetNeutral: Boolean;
    function IsSetPositive: Boolean;
    property Mixed: Double read GetMixed write SetMixed;
    property Negative: Double read GetNegative write SetNegative;
    property Neutral: Double read GetNeutral write SetNeutral;
    property Positive: Double read GetPositive write SetPositive;
  end;
  
  TSentimentScore = class
  strict private
    FMixed: Nullable<Double>;
    FNegative: Nullable<Double>;
    FNeutral: Nullable<Double>;
    FPositive: Nullable<Double>;
    function GetMixed: Double;
    procedure SetMixed(const Value: Double);
    function GetNegative: Double;
    procedure SetNegative(const Value: Double);
    function GetNeutral: Double;
    procedure SetNeutral(const Value: Double);
    function GetPositive: Double;
    procedure SetPositive(const Value: Double);
  strict protected
    function Obj: TSentimentScore;
  public
    function IsSetMixed: Boolean;
    function IsSetNegative: Boolean;
    function IsSetNeutral: Boolean;
    function IsSetPositive: Boolean;
    property Mixed: Double read GetMixed write SetMixed;
    property Negative: Double read GetNegative write SetNegative;
    property Neutral: Double read GetNeutral write SetNeutral;
    property Positive: Double read GetPositive write SetPositive;
  end;
  
implementation

{ TSentimentScore }

function TSentimentScore.Obj: TSentimentScore;
begin
  Result := Self;
end;

function TSentimentScore.GetMixed: Double;
begin
  Result := FMixed.ValueOrDefault;
end;

procedure TSentimentScore.SetMixed(const Value: Double);
begin
  FMixed := Value;
end;

function TSentimentScore.IsSetMixed: Boolean;
begin
  Result := FMixed.HasValue;
end;

function TSentimentScore.GetNegative: Double;
begin
  Result := FNegative.ValueOrDefault;
end;

procedure TSentimentScore.SetNegative(const Value: Double);
begin
  FNegative := Value;
end;

function TSentimentScore.IsSetNegative: Boolean;
begin
  Result := FNegative.HasValue;
end;

function TSentimentScore.GetNeutral: Double;
begin
  Result := FNeutral.ValueOrDefault;
end;

procedure TSentimentScore.SetNeutral(const Value: Double);
begin
  FNeutral := Value;
end;

function TSentimentScore.IsSetNeutral: Boolean;
begin
  Result := FNeutral.HasValue;
end;

function TSentimentScore.GetPositive: Double;
begin
  Result := FPositive.ValueOrDefault;
end;

procedure TSentimentScore.SetPositive(const Value: Double);
begin
  FPositive := Value;
end;

function TSentimentScore.IsSetPositive: Boolean;
begin
  Result := FPositive.HasValue;
end;

end.
