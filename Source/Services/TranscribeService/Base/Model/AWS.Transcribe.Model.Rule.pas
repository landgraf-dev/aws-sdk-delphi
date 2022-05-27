unit AWS.Transcribe.Model.Rule;

interface

uses
  AWS.Transcribe.Model.InterruptionFilter, 
  AWS.Transcribe.Model.NonTalkTimeFilter, 
  AWS.Transcribe.Model.SentimentFilter, 
  AWS.Transcribe.Model.TranscriptFilter;

type
  TRule = class;
  
  IRule = interface
    function GetInterruptionFilter: TInterruptionFilter;
    procedure SetInterruptionFilter(const Value: TInterruptionFilter);
    function GetKeepInterruptionFilter: Boolean;
    procedure SetKeepInterruptionFilter(const Value: Boolean);
    function GetNonTalkTimeFilter: TNonTalkTimeFilter;
    procedure SetNonTalkTimeFilter(const Value: TNonTalkTimeFilter);
    function GetKeepNonTalkTimeFilter: Boolean;
    procedure SetKeepNonTalkTimeFilter(const Value: Boolean);
    function GetSentimentFilter: TSentimentFilter;
    procedure SetSentimentFilter(const Value: TSentimentFilter);
    function GetKeepSentimentFilter: Boolean;
    procedure SetKeepSentimentFilter(const Value: Boolean);
    function GetTranscriptFilter: TTranscriptFilter;
    procedure SetTranscriptFilter(const Value: TTranscriptFilter);
    function GetKeepTranscriptFilter: Boolean;
    procedure SetKeepTranscriptFilter(const Value: Boolean);
    function Obj: TRule;
    function IsSetInterruptionFilter: Boolean;
    function IsSetNonTalkTimeFilter: Boolean;
    function IsSetSentimentFilter: Boolean;
    function IsSetTranscriptFilter: Boolean;
    property InterruptionFilter: TInterruptionFilter read GetInterruptionFilter write SetInterruptionFilter;
    property KeepInterruptionFilter: Boolean read GetKeepInterruptionFilter write SetKeepInterruptionFilter;
    property NonTalkTimeFilter: TNonTalkTimeFilter read GetNonTalkTimeFilter write SetNonTalkTimeFilter;
    property KeepNonTalkTimeFilter: Boolean read GetKeepNonTalkTimeFilter write SetKeepNonTalkTimeFilter;
    property SentimentFilter: TSentimentFilter read GetSentimentFilter write SetSentimentFilter;
    property KeepSentimentFilter: Boolean read GetKeepSentimentFilter write SetKeepSentimentFilter;
    property TranscriptFilter: TTranscriptFilter read GetTranscriptFilter write SetTranscriptFilter;
    property KeepTranscriptFilter: Boolean read GetKeepTranscriptFilter write SetKeepTranscriptFilter;
  end;
  
  TRule = class
  strict private
    FInterruptionFilter: TInterruptionFilter;
    FKeepInterruptionFilter: Boolean;
    FNonTalkTimeFilter: TNonTalkTimeFilter;
    FKeepNonTalkTimeFilter: Boolean;
    FSentimentFilter: TSentimentFilter;
    FKeepSentimentFilter: Boolean;
    FTranscriptFilter: TTranscriptFilter;
    FKeepTranscriptFilter: Boolean;
    function GetInterruptionFilter: TInterruptionFilter;
    procedure SetInterruptionFilter(const Value: TInterruptionFilter);
    function GetKeepInterruptionFilter: Boolean;
    procedure SetKeepInterruptionFilter(const Value: Boolean);
    function GetNonTalkTimeFilter: TNonTalkTimeFilter;
    procedure SetNonTalkTimeFilter(const Value: TNonTalkTimeFilter);
    function GetKeepNonTalkTimeFilter: Boolean;
    procedure SetKeepNonTalkTimeFilter(const Value: Boolean);
    function GetSentimentFilter: TSentimentFilter;
    procedure SetSentimentFilter(const Value: TSentimentFilter);
    function GetKeepSentimentFilter: Boolean;
    procedure SetKeepSentimentFilter(const Value: Boolean);
    function GetTranscriptFilter: TTranscriptFilter;
    procedure SetTranscriptFilter(const Value: TTranscriptFilter);
    function GetKeepTranscriptFilter: Boolean;
    procedure SetKeepTranscriptFilter(const Value: Boolean);
  strict protected
    function Obj: TRule;
  public
    destructor Destroy; override;
    function IsSetInterruptionFilter: Boolean;
    function IsSetNonTalkTimeFilter: Boolean;
    function IsSetSentimentFilter: Boolean;
    function IsSetTranscriptFilter: Boolean;
    property InterruptionFilter: TInterruptionFilter read GetInterruptionFilter write SetInterruptionFilter;
    property KeepInterruptionFilter: Boolean read GetKeepInterruptionFilter write SetKeepInterruptionFilter;
    property NonTalkTimeFilter: TNonTalkTimeFilter read GetNonTalkTimeFilter write SetNonTalkTimeFilter;
    property KeepNonTalkTimeFilter: Boolean read GetKeepNonTalkTimeFilter write SetKeepNonTalkTimeFilter;
    property SentimentFilter: TSentimentFilter read GetSentimentFilter write SetSentimentFilter;
    property KeepSentimentFilter: Boolean read GetKeepSentimentFilter write SetKeepSentimentFilter;
    property TranscriptFilter: TTranscriptFilter read GetTranscriptFilter write SetTranscriptFilter;
    property KeepTranscriptFilter: Boolean read GetKeepTranscriptFilter write SetKeepTranscriptFilter;
  end;
  
implementation

{ TRule }

destructor TRule.Destroy;
begin
  TranscriptFilter := nil;
  SentimentFilter := nil;
  NonTalkTimeFilter := nil;
  InterruptionFilter := nil;
  inherited;
end;

function TRule.Obj: TRule;
begin
  Result := Self;
end;

function TRule.GetInterruptionFilter: TInterruptionFilter;
begin
  Result := FInterruptionFilter;
end;

procedure TRule.SetInterruptionFilter(const Value: TInterruptionFilter);
begin
  if FInterruptionFilter <> Value then
  begin
    if not KeepInterruptionFilter then
      FInterruptionFilter.Free;
    FInterruptionFilter := Value;
  end;
end;

function TRule.GetKeepInterruptionFilter: Boolean;
begin
  Result := FKeepInterruptionFilter;
end;

procedure TRule.SetKeepInterruptionFilter(const Value: Boolean);
begin
  FKeepInterruptionFilter := Value;
end;

function TRule.IsSetInterruptionFilter: Boolean;
begin
  Result := FInterruptionFilter <> nil;
end;

function TRule.GetNonTalkTimeFilter: TNonTalkTimeFilter;
begin
  Result := FNonTalkTimeFilter;
end;

procedure TRule.SetNonTalkTimeFilter(const Value: TNonTalkTimeFilter);
begin
  if FNonTalkTimeFilter <> Value then
  begin
    if not KeepNonTalkTimeFilter then
      FNonTalkTimeFilter.Free;
    FNonTalkTimeFilter := Value;
  end;
end;

function TRule.GetKeepNonTalkTimeFilter: Boolean;
begin
  Result := FKeepNonTalkTimeFilter;
end;

procedure TRule.SetKeepNonTalkTimeFilter(const Value: Boolean);
begin
  FKeepNonTalkTimeFilter := Value;
end;

function TRule.IsSetNonTalkTimeFilter: Boolean;
begin
  Result := FNonTalkTimeFilter <> nil;
end;

function TRule.GetSentimentFilter: TSentimentFilter;
begin
  Result := FSentimentFilter;
end;

procedure TRule.SetSentimentFilter(const Value: TSentimentFilter);
begin
  if FSentimentFilter <> Value then
  begin
    if not KeepSentimentFilter then
      FSentimentFilter.Free;
    FSentimentFilter := Value;
  end;
end;

function TRule.GetKeepSentimentFilter: Boolean;
begin
  Result := FKeepSentimentFilter;
end;

procedure TRule.SetKeepSentimentFilter(const Value: Boolean);
begin
  FKeepSentimentFilter := Value;
end;

function TRule.IsSetSentimentFilter: Boolean;
begin
  Result := FSentimentFilter <> nil;
end;

function TRule.GetTranscriptFilter: TTranscriptFilter;
begin
  Result := FTranscriptFilter;
end;

procedure TRule.SetTranscriptFilter(const Value: TTranscriptFilter);
begin
  if FTranscriptFilter <> Value then
  begin
    if not KeepTranscriptFilter then
      FTranscriptFilter.Free;
    FTranscriptFilter := Value;
  end;
end;

function TRule.GetKeepTranscriptFilter: Boolean;
begin
  Result := FKeepTranscriptFilter;
end;

procedure TRule.SetKeepTranscriptFilter(const Value: Boolean);
begin
  FKeepTranscriptFilter := Value;
end;

function TRule.IsSetTranscriptFilter: Boolean;
begin
  Result := FTranscriptFilter <> nil;
end;

end.
