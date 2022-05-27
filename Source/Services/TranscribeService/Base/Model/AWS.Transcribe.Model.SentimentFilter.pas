unit AWS.Transcribe.Model.SentimentFilter;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Transcribe.Model.AbsoluteTimeRange, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.RelativeTimeRange;

type
  TSentimentFilter = class;
  
  ISentimentFilter = interface
    function GetAbsoluteTimeRange: TAbsoluteTimeRange;
    procedure SetAbsoluteTimeRange(const Value: TAbsoluteTimeRange);
    function GetKeepAbsoluteTimeRange: Boolean;
    procedure SetKeepAbsoluteTimeRange(const Value: Boolean);
    function GetNegate: Boolean;
    procedure SetNegate(const Value: Boolean);
    function GetParticipantRole: TParticipantRole;
    procedure SetParticipantRole(const Value: TParticipantRole);
    function GetRelativeTimeRange: TRelativeTimeRange;
    procedure SetRelativeTimeRange(const Value: TRelativeTimeRange);
    function GetKeepRelativeTimeRange: Boolean;
    procedure SetKeepRelativeTimeRange(const Value: Boolean);
    function GetSentiments: TList<string>;
    procedure SetSentiments(const Value: TList<string>);
    function GetKeepSentiments: Boolean;
    procedure SetKeepSentiments(const Value: Boolean);
    function Obj: TSentimentFilter;
    function IsSetAbsoluteTimeRange: Boolean;
    function IsSetNegate: Boolean;
    function IsSetParticipantRole: Boolean;
    function IsSetRelativeTimeRange: Boolean;
    function IsSetSentiments: Boolean;
    property AbsoluteTimeRange: TAbsoluteTimeRange read GetAbsoluteTimeRange write SetAbsoluteTimeRange;
    property KeepAbsoluteTimeRange: Boolean read GetKeepAbsoluteTimeRange write SetKeepAbsoluteTimeRange;
    property Negate: Boolean read GetNegate write SetNegate;
    property ParticipantRole: TParticipantRole read GetParticipantRole write SetParticipantRole;
    property RelativeTimeRange: TRelativeTimeRange read GetRelativeTimeRange write SetRelativeTimeRange;
    property KeepRelativeTimeRange: Boolean read GetKeepRelativeTimeRange write SetKeepRelativeTimeRange;
    property Sentiments: TList<string> read GetSentiments write SetSentiments;
    property KeepSentiments: Boolean read GetKeepSentiments write SetKeepSentiments;
  end;
  
  TSentimentFilter = class
  strict private
    FAbsoluteTimeRange: TAbsoluteTimeRange;
    FKeepAbsoluteTimeRange: Boolean;
    FNegate: Nullable<Boolean>;
    FParticipantRole: Nullable<TParticipantRole>;
    FRelativeTimeRange: TRelativeTimeRange;
    FKeepRelativeTimeRange: Boolean;
    FSentiments: TList<string>;
    FKeepSentiments: Boolean;
    function GetAbsoluteTimeRange: TAbsoluteTimeRange;
    procedure SetAbsoluteTimeRange(const Value: TAbsoluteTimeRange);
    function GetKeepAbsoluteTimeRange: Boolean;
    procedure SetKeepAbsoluteTimeRange(const Value: Boolean);
    function GetNegate: Boolean;
    procedure SetNegate(const Value: Boolean);
    function GetParticipantRole: TParticipantRole;
    procedure SetParticipantRole(const Value: TParticipantRole);
    function GetRelativeTimeRange: TRelativeTimeRange;
    procedure SetRelativeTimeRange(const Value: TRelativeTimeRange);
    function GetKeepRelativeTimeRange: Boolean;
    procedure SetKeepRelativeTimeRange(const Value: Boolean);
    function GetSentiments: TList<string>;
    procedure SetSentiments(const Value: TList<string>);
    function GetKeepSentiments: Boolean;
    procedure SetKeepSentiments(const Value: Boolean);
  strict protected
    function Obj: TSentimentFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAbsoluteTimeRange: Boolean;
    function IsSetNegate: Boolean;
    function IsSetParticipantRole: Boolean;
    function IsSetRelativeTimeRange: Boolean;
    function IsSetSentiments: Boolean;
    property AbsoluteTimeRange: TAbsoluteTimeRange read GetAbsoluteTimeRange write SetAbsoluteTimeRange;
    property KeepAbsoluteTimeRange: Boolean read GetKeepAbsoluteTimeRange write SetKeepAbsoluteTimeRange;
    property Negate: Boolean read GetNegate write SetNegate;
    property ParticipantRole: TParticipantRole read GetParticipantRole write SetParticipantRole;
    property RelativeTimeRange: TRelativeTimeRange read GetRelativeTimeRange write SetRelativeTimeRange;
    property KeepRelativeTimeRange: Boolean read GetKeepRelativeTimeRange write SetKeepRelativeTimeRange;
    property Sentiments: TList<string> read GetSentiments write SetSentiments;
    property KeepSentiments: Boolean read GetKeepSentiments write SetKeepSentiments;
  end;
  
implementation

{ TSentimentFilter }

constructor TSentimentFilter.Create;
begin
  inherited;
  FSentiments := TList<string>.Create;
end;

destructor TSentimentFilter.Destroy;
begin
  Sentiments := nil;
  RelativeTimeRange := nil;
  AbsoluteTimeRange := nil;
  inherited;
end;

function TSentimentFilter.Obj: TSentimentFilter;
begin
  Result := Self;
end;

function TSentimentFilter.GetAbsoluteTimeRange: TAbsoluteTimeRange;
begin
  Result := FAbsoluteTimeRange;
end;

procedure TSentimentFilter.SetAbsoluteTimeRange(const Value: TAbsoluteTimeRange);
begin
  if FAbsoluteTimeRange <> Value then
  begin
    if not KeepAbsoluteTimeRange then
      FAbsoluteTimeRange.Free;
    FAbsoluteTimeRange := Value;
  end;
end;

function TSentimentFilter.GetKeepAbsoluteTimeRange: Boolean;
begin
  Result := FKeepAbsoluteTimeRange;
end;

procedure TSentimentFilter.SetKeepAbsoluteTimeRange(const Value: Boolean);
begin
  FKeepAbsoluteTimeRange := Value;
end;

function TSentimentFilter.IsSetAbsoluteTimeRange: Boolean;
begin
  Result := FAbsoluteTimeRange <> nil;
end;

function TSentimentFilter.GetNegate: Boolean;
begin
  Result := FNegate.ValueOrDefault;
end;

procedure TSentimentFilter.SetNegate(const Value: Boolean);
begin
  FNegate := Value;
end;

function TSentimentFilter.IsSetNegate: Boolean;
begin
  Result := FNegate.HasValue;
end;

function TSentimentFilter.GetParticipantRole: TParticipantRole;
begin
  Result := FParticipantRole.ValueOrDefault;
end;

procedure TSentimentFilter.SetParticipantRole(const Value: TParticipantRole);
begin
  FParticipantRole := Value;
end;

function TSentimentFilter.IsSetParticipantRole: Boolean;
begin
  Result := FParticipantRole.HasValue;
end;

function TSentimentFilter.GetRelativeTimeRange: TRelativeTimeRange;
begin
  Result := FRelativeTimeRange;
end;

procedure TSentimentFilter.SetRelativeTimeRange(const Value: TRelativeTimeRange);
begin
  if FRelativeTimeRange <> Value then
  begin
    if not KeepRelativeTimeRange then
      FRelativeTimeRange.Free;
    FRelativeTimeRange := Value;
  end;
end;

function TSentimentFilter.GetKeepRelativeTimeRange: Boolean;
begin
  Result := FKeepRelativeTimeRange;
end;

procedure TSentimentFilter.SetKeepRelativeTimeRange(const Value: Boolean);
begin
  FKeepRelativeTimeRange := Value;
end;

function TSentimentFilter.IsSetRelativeTimeRange: Boolean;
begin
  Result := FRelativeTimeRange <> nil;
end;

function TSentimentFilter.GetSentiments: TList<string>;
begin
  Result := FSentiments;
end;

procedure TSentimentFilter.SetSentiments(const Value: TList<string>);
begin
  if FSentiments <> Value then
  begin
    if not KeepSentiments then
      FSentiments.Free;
    FSentiments := Value;
  end;
end;

function TSentimentFilter.GetKeepSentiments: Boolean;
begin
  Result := FKeepSentiments;
end;

procedure TSentimentFilter.SetKeepSentiments(const Value: Boolean);
begin
  FKeepSentiments := Value;
end;

function TSentimentFilter.IsSetSentiments: Boolean;
begin
  Result := (FSentiments <> nil) and (FSentiments.Count > 0);
end;

end.
