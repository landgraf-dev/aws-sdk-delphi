unit AWS.Transcribe.Model.TranscriptFilter;

interface

uses
  System.Generics.Collections, 
  AWS.Transcribe.Model.AbsoluteTimeRange, 
  AWS.Nullable, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.RelativeTimeRange;

type
  TTranscriptFilter = class;
  
  ITranscriptFilter = interface
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
    function GetTargets: TList<string>;
    procedure SetTargets(const Value: TList<string>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTranscriptFilterType: TTranscriptFilterType;
    procedure SetTranscriptFilterType(const Value: TTranscriptFilterType);
    function Obj: TTranscriptFilter;
    function IsSetAbsoluteTimeRange: Boolean;
    function IsSetNegate: Boolean;
    function IsSetParticipantRole: Boolean;
    function IsSetRelativeTimeRange: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTranscriptFilterType: Boolean;
    property AbsoluteTimeRange: TAbsoluteTimeRange read GetAbsoluteTimeRange write SetAbsoluteTimeRange;
    property KeepAbsoluteTimeRange: Boolean read GetKeepAbsoluteTimeRange write SetKeepAbsoluteTimeRange;
    property Negate: Boolean read GetNegate write SetNegate;
    property ParticipantRole: TParticipantRole read GetParticipantRole write SetParticipantRole;
    property RelativeTimeRange: TRelativeTimeRange read GetRelativeTimeRange write SetRelativeTimeRange;
    property KeepRelativeTimeRange: Boolean read GetKeepRelativeTimeRange write SetKeepRelativeTimeRange;
    property Targets: TList<string> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TranscriptFilterType: TTranscriptFilterType read GetTranscriptFilterType write SetTranscriptFilterType;
  end;
  
  TTranscriptFilter = class
  strict private
    FAbsoluteTimeRange: TAbsoluteTimeRange;
    FKeepAbsoluteTimeRange: Boolean;
    FNegate: Nullable<Boolean>;
    FParticipantRole: Nullable<TParticipantRole>;
    FRelativeTimeRange: TRelativeTimeRange;
    FKeepRelativeTimeRange: Boolean;
    FTargets: TList<string>;
    FKeepTargets: Boolean;
    FTranscriptFilterType: Nullable<TTranscriptFilterType>;
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
    function GetTargets: TList<string>;
    procedure SetTargets(const Value: TList<string>);
    function GetKeepTargets: Boolean;
    procedure SetKeepTargets(const Value: Boolean);
    function GetTranscriptFilterType: TTranscriptFilterType;
    procedure SetTranscriptFilterType(const Value: TTranscriptFilterType);
  strict protected
    function Obj: TTranscriptFilter;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAbsoluteTimeRange: Boolean;
    function IsSetNegate: Boolean;
    function IsSetParticipantRole: Boolean;
    function IsSetRelativeTimeRange: Boolean;
    function IsSetTargets: Boolean;
    function IsSetTranscriptFilterType: Boolean;
    property AbsoluteTimeRange: TAbsoluteTimeRange read GetAbsoluteTimeRange write SetAbsoluteTimeRange;
    property KeepAbsoluteTimeRange: Boolean read GetKeepAbsoluteTimeRange write SetKeepAbsoluteTimeRange;
    property Negate: Boolean read GetNegate write SetNegate;
    property ParticipantRole: TParticipantRole read GetParticipantRole write SetParticipantRole;
    property RelativeTimeRange: TRelativeTimeRange read GetRelativeTimeRange write SetRelativeTimeRange;
    property KeepRelativeTimeRange: Boolean read GetKeepRelativeTimeRange write SetKeepRelativeTimeRange;
    property Targets: TList<string> read GetTargets write SetTargets;
    property KeepTargets: Boolean read GetKeepTargets write SetKeepTargets;
    property TranscriptFilterType: TTranscriptFilterType read GetTranscriptFilterType write SetTranscriptFilterType;
  end;
  
implementation

{ TTranscriptFilter }

constructor TTranscriptFilter.Create;
begin
  inherited;
  FTargets := TList<string>.Create;
end;

destructor TTranscriptFilter.Destroy;
begin
  Targets := nil;
  RelativeTimeRange := nil;
  AbsoluteTimeRange := nil;
  inherited;
end;

function TTranscriptFilter.Obj: TTranscriptFilter;
begin
  Result := Self;
end;

function TTranscriptFilter.GetAbsoluteTimeRange: TAbsoluteTimeRange;
begin
  Result := FAbsoluteTimeRange;
end;

procedure TTranscriptFilter.SetAbsoluteTimeRange(const Value: TAbsoluteTimeRange);
begin
  if FAbsoluteTimeRange <> Value then
  begin
    if not KeepAbsoluteTimeRange then
      FAbsoluteTimeRange.Free;
    FAbsoluteTimeRange := Value;
  end;
end;

function TTranscriptFilter.GetKeepAbsoluteTimeRange: Boolean;
begin
  Result := FKeepAbsoluteTimeRange;
end;

procedure TTranscriptFilter.SetKeepAbsoluteTimeRange(const Value: Boolean);
begin
  FKeepAbsoluteTimeRange := Value;
end;

function TTranscriptFilter.IsSetAbsoluteTimeRange: Boolean;
begin
  Result := FAbsoluteTimeRange <> nil;
end;

function TTranscriptFilter.GetNegate: Boolean;
begin
  Result := FNegate.ValueOrDefault;
end;

procedure TTranscriptFilter.SetNegate(const Value: Boolean);
begin
  FNegate := Value;
end;

function TTranscriptFilter.IsSetNegate: Boolean;
begin
  Result := FNegate.HasValue;
end;

function TTranscriptFilter.GetParticipantRole: TParticipantRole;
begin
  Result := FParticipantRole.ValueOrDefault;
end;

procedure TTranscriptFilter.SetParticipantRole(const Value: TParticipantRole);
begin
  FParticipantRole := Value;
end;

function TTranscriptFilter.IsSetParticipantRole: Boolean;
begin
  Result := FParticipantRole.HasValue;
end;

function TTranscriptFilter.GetRelativeTimeRange: TRelativeTimeRange;
begin
  Result := FRelativeTimeRange;
end;

procedure TTranscriptFilter.SetRelativeTimeRange(const Value: TRelativeTimeRange);
begin
  if FRelativeTimeRange <> Value then
  begin
    if not KeepRelativeTimeRange then
      FRelativeTimeRange.Free;
    FRelativeTimeRange := Value;
  end;
end;

function TTranscriptFilter.GetKeepRelativeTimeRange: Boolean;
begin
  Result := FKeepRelativeTimeRange;
end;

procedure TTranscriptFilter.SetKeepRelativeTimeRange(const Value: Boolean);
begin
  FKeepRelativeTimeRange := Value;
end;

function TTranscriptFilter.IsSetRelativeTimeRange: Boolean;
begin
  Result := FRelativeTimeRange <> nil;
end;

function TTranscriptFilter.GetTargets: TList<string>;
begin
  Result := FTargets;
end;

procedure TTranscriptFilter.SetTargets(const Value: TList<string>);
begin
  if FTargets <> Value then
  begin
    if not KeepTargets then
      FTargets.Free;
    FTargets := Value;
  end;
end;

function TTranscriptFilter.GetKeepTargets: Boolean;
begin
  Result := FKeepTargets;
end;

procedure TTranscriptFilter.SetKeepTargets(const Value: Boolean);
begin
  FKeepTargets := Value;
end;

function TTranscriptFilter.IsSetTargets: Boolean;
begin
  Result := (FTargets <> nil) and (FTargets.Count > 0);
end;

function TTranscriptFilter.GetTranscriptFilterType: TTranscriptFilterType;
begin
  Result := FTranscriptFilterType.ValueOrDefault;
end;

procedure TTranscriptFilter.SetTranscriptFilterType(const Value: TTranscriptFilterType);
begin
  FTranscriptFilterType := Value;
end;

function TTranscriptFilter.IsSetTranscriptFilterType: Boolean;
begin
  Result := FTranscriptFilterType.HasValue;
end;

end.
