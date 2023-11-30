unit AWS.LexRuntimeV2.Model.SentimentResponse;

interface

uses
  AWS.Nullable, 
  AWS.LexRuntimeV2.Enums, 
  AWS.LexRuntimeV2.Model.SentimentScore;

type
  TSentimentResponse = class;
  
  ISentimentResponse = interface
    function GetSentiment: TSentimentType;
    procedure SetSentiment(const Value: TSentimentType);
    function GetSentimentScore: TSentimentScore;
    procedure SetSentimentScore(const Value: TSentimentScore);
    function GetKeepSentimentScore: Boolean;
    procedure SetKeepSentimentScore(const Value: Boolean);
    function Obj: TSentimentResponse;
    function IsSetSentiment: Boolean;
    function IsSetSentimentScore: Boolean;
    property Sentiment: TSentimentType read GetSentiment write SetSentiment;
    property SentimentScore: TSentimentScore read GetSentimentScore write SetSentimentScore;
    property KeepSentimentScore: Boolean read GetKeepSentimentScore write SetKeepSentimentScore;
  end;
  
  TSentimentResponse = class
  strict private
    FSentiment: Nullable<TSentimentType>;
    FSentimentScore: TSentimentScore;
    FKeepSentimentScore: Boolean;
    function GetSentiment: TSentimentType;
    procedure SetSentiment(const Value: TSentimentType);
    function GetSentimentScore: TSentimentScore;
    procedure SetSentimentScore(const Value: TSentimentScore);
    function GetKeepSentimentScore: Boolean;
    procedure SetKeepSentimentScore(const Value: Boolean);
  strict protected
    function Obj: TSentimentResponse;
  public
    destructor Destroy; override;
    function IsSetSentiment: Boolean;
    function IsSetSentimentScore: Boolean;
    property Sentiment: TSentimentType read GetSentiment write SetSentiment;
    property SentimentScore: TSentimentScore read GetSentimentScore write SetSentimentScore;
    property KeepSentimentScore: Boolean read GetKeepSentimentScore write SetKeepSentimentScore;
  end;
  
implementation

{ TSentimentResponse }

destructor TSentimentResponse.Destroy;
begin
  SentimentScore := nil;
  inherited;
end;

function TSentimentResponse.Obj: TSentimentResponse;
begin
  Result := Self;
end;

function TSentimentResponse.GetSentiment: TSentimentType;
begin
  Result := FSentiment.ValueOrDefault;
end;

procedure TSentimentResponse.SetSentiment(const Value: TSentimentType);
begin
  FSentiment := Value;
end;

function TSentimentResponse.IsSetSentiment: Boolean;
begin
  Result := FSentiment.HasValue;
end;

function TSentimentResponse.GetSentimentScore: TSentimentScore;
begin
  Result := FSentimentScore;
end;

procedure TSentimentResponse.SetSentimentScore(const Value: TSentimentScore);
begin
  if FSentimentScore <> Value then
  begin
    if not KeepSentimentScore then
      FSentimentScore.Free;
    FSentimentScore := Value;
  end;
end;

function TSentimentResponse.GetKeepSentimentScore: Boolean;
begin
  Result := FKeepSentimentScore;
end;

procedure TSentimentResponse.SetKeepSentimentScore(const Value: Boolean);
begin
  FKeepSentimentScore := Value;
end;

function TSentimentResponse.IsSetSentimentScore: Boolean;
begin
  Result := FSentimentScore <> nil;
end;

end.
