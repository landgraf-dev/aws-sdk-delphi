unit AWS.LexRuntimeService.Model.SentimentResponse;

interface

uses
  AWS.Nullable;

type
  TSentimentResponse = class;
  
  ISentimentResponse = interface
    function GetSentimentLabel: string;
    procedure SetSentimentLabel(const Value: string);
    function GetSentimentScore: string;
    procedure SetSentimentScore(const Value: string);
    function Obj: TSentimentResponse;
    function IsSetSentimentLabel: Boolean;
    function IsSetSentimentScore: Boolean;
    property SentimentLabel: string read GetSentimentLabel write SetSentimentLabel;
    property SentimentScore: string read GetSentimentScore write SetSentimentScore;
  end;
  
  TSentimentResponse = class
  strict private
    FSentimentLabel: Nullable<string>;
    FSentimentScore: Nullable<string>;
    function GetSentimentLabel: string;
    procedure SetSentimentLabel(const Value: string);
    function GetSentimentScore: string;
    procedure SetSentimentScore(const Value: string);
  strict protected
    function Obj: TSentimentResponse;
  public
    function IsSetSentimentLabel: Boolean;
    function IsSetSentimentScore: Boolean;
    property SentimentLabel: string read GetSentimentLabel write SetSentimentLabel;
    property SentimentScore: string read GetSentimentScore write SetSentimentScore;
  end;
  
implementation

{ TSentimentResponse }

function TSentimentResponse.Obj: TSentimentResponse;
begin
  Result := Self;
end;

function TSentimentResponse.GetSentimentLabel: string;
begin
  Result := FSentimentLabel.ValueOrDefault;
end;

procedure TSentimentResponse.SetSentimentLabel(const Value: string);
begin
  FSentimentLabel := Value;
end;

function TSentimentResponse.IsSetSentimentLabel: Boolean;
begin
  Result := FSentimentLabel.HasValue;
end;

function TSentimentResponse.GetSentimentScore: string;
begin
  Result := FSentimentScore.ValueOrDefault;
end;

procedure TSentimentResponse.SetSentimentScore(const Value: string);
begin
  FSentimentScore := Value;
end;

function TSentimentResponse.IsSetSentimentScore: Boolean;
begin
  Result := FSentimentScore.HasValue;
end;

end.
