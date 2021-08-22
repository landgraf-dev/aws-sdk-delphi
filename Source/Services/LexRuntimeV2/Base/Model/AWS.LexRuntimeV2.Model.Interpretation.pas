unit AWS.LexRuntimeV2.Model.Interpretation;

interface

uses
  AWS.LexRuntimeV2.Model.Intent, 
  AWS.LexRuntimeV2.Model.ConfidenceScore, 
  AWS.LexRuntimeV2.Model.SentimentResponse;

type
  TInterpretation = class;
  
  IInterpretation = interface
    function GetIntent: TIntent;
    procedure SetIntent(const Value: TIntent);
    function GetKeepIntent: Boolean;
    procedure SetKeepIntent(const Value: Boolean);
    function GetNluConfidence: TConfidenceScore;
    procedure SetNluConfidence(const Value: TConfidenceScore);
    function GetKeepNluConfidence: Boolean;
    procedure SetKeepNluConfidence(const Value: Boolean);
    function GetSentimentResponse: TSentimentResponse;
    procedure SetSentimentResponse(const Value: TSentimentResponse);
    function GetKeepSentimentResponse: Boolean;
    procedure SetKeepSentimentResponse(const Value: Boolean);
    function Obj: TInterpretation;
    function IsSetIntent: Boolean;
    function IsSetNluConfidence: Boolean;
    function IsSetSentimentResponse: Boolean;
    property Intent: TIntent read GetIntent write SetIntent;
    property KeepIntent: Boolean read GetKeepIntent write SetKeepIntent;
    property NluConfidence: TConfidenceScore read GetNluConfidence write SetNluConfidence;
    property KeepNluConfidence: Boolean read GetKeepNluConfidence write SetKeepNluConfidence;
    property SentimentResponse: TSentimentResponse read GetSentimentResponse write SetSentimentResponse;
    property KeepSentimentResponse: Boolean read GetKeepSentimentResponse write SetKeepSentimentResponse;
  end;
  
  TInterpretation = class
  strict private
    FIntent: TIntent;
    FKeepIntent: Boolean;
    FNluConfidence: TConfidenceScore;
    FKeepNluConfidence: Boolean;
    FSentimentResponse: TSentimentResponse;
    FKeepSentimentResponse: Boolean;
    function GetIntent: TIntent;
    procedure SetIntent(const Value: TIntent);
    function GetKeepIntent: Boolean;
    procedure SetKeepIntent(const Value: Boolean);
    function GetNluConfidence: TConfidenceScore;
    procedure SetNluConfidence(const Value: TConfidenceScore);
    function GetKeepNluConfidence: Boolean;
    procedure SetKeepNluConfidence(const Value: Boolean);
    function GetSentimentResponse: TSentimentResponse;
    procedure SetSentimentResponse(const Value: TSentimentResponse);
    function GetKeepSentimentResponse: Boolean;
    procedure SetKeepSentimentResponse(const Value: Boolean);
  strict protected
    function Obj: TInterpretation;
  public
    destructor Destroy; override;
    function IsSetIntent: Boolean;
    function IsSetNluConfidence: Boolean;
    function IsSetSentimentResponse: Boolean;
    property Intent: TIntent read GetIntent write SetIntent;
    property KeepIntent: Boolean read GetKeepIntent write SetKeepIntent;
    property NluConfidence: TConfidenceScore read GetNluConfidence write SetNluConfidence;
    property KeepNluConfidence: Boolean read GetKeepNluConfidence write SetKeepNluConfidence;
    property SentimentResponse: TSentimentResponse read GetSentimentResponse write SetSentimentResponse;
    property KeepSentimentResponse: Boolean read GetKeepSentimentResponse write SetKeepSentimentResponse;
  end;
  
implementation

{ TInterpretation }

destructor TInterpretation.Destroy;
begin
  SentimentResponse := nil;
  NluConfidence := nil;
  Intent := nil;
  inherited;
end;

function TInterpretation.Obj: TInterpretation;
begin
  Result := Self;
end;

function TInterpretation.GetIntent: TIntent;
begin
  Result := FIntent;
end;

procedure TInterpretation.SetIntent(const Value: TIntent);
begin
  if FIntent <> Value then
  begin
    if not KeepIntent then
      FIntent.Free;
    FIntent := Value;
  end;
end;

function TInterpretation.GetKeepIntent: Boolean;
begin
  Result := FKeepIntent;
end;

procedure TInterpretation.SetKeepIntent(const Value: Boolean);
begin
  FKeepIntent := Value;
end;

function TInterpretation.IsSetIntent: Boolean;
begin
  Result := FIntent <> nil;
end;

function TInterpretation.GetNluConfidence: TConfidenceScore;
begin
  Result := FNluConfidence;
end;

procedure TInterpretation.SetNluConfidence(const Value: TConfidenceScore);
begin
  if FNluConfidence <> Value then
  begin
    if not KeepNluConfidence then
      FNluConfidence.Free;
    FNluConfidence := Value;
  end;
end;

function TInterpretation.GetKeepNluConfidence: Boolean;
begin
  Result := FKeepNluConfidence;
end;

procedure TInterpretation.SetKeepNluConfidence(const Value: Boolean);
begin
  FKeepNluConfidence := Value;
end;

function TInterpretation.IsSetNluConfidence: Boolean;
begin
  Result := FNluConfidence <> nil;
end;

function TInterpretation.GetSentimentResponse: TSentimentResponse;
begin
  Result := FSentimentResponse;
end;

procedure TInterpretation.SetSentimentResponse(const Value: TSentimentResponse);
begin
  if FSentimentResponse <> Value then
  begin
    if not KeepSentimentResponse then
      FSentimentResponse.Free;
    FSentimentResponse := Value;
  end;
end;

function TInterpretation.GetKeepSentimentResponse: Boolean;
begin
  Result := FKeepSentimentResponse;
end;

procedure TInterpretation.SetKeepSentimentResponse(const Value: Boolean);
begin
  FKeepSentimentResponse := Value;
end;

function TInterpretation.IsSetSentimentResponse: Boolean;
begin
  Result := FSentimentResponse <> nil;
end;

end.
