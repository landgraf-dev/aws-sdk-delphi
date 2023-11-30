unit AWS.Transcribe.Model.InterruptionFilter;

interface

uses
  AWS.Transcribe.Model.AbsoluteTimeRange, 
  AWS.Nullable, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Model.RelativeTimeRange;

type
  TInterruptionFilter = class;
  
  IInterruptionFilter = interface
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
    function GetThreshold: Int64;
    procedure SetThreshold(const Value: Int64);
    function Obj: TInterruptionFilter;
    function IsSetAbsoluteTimeRange: Boolean;
    function IsSetNegate: Boolean;
    function IsSetParticipantRole: Boolean;
    function IsSetRelativeTimeRange: Boolean;
    function IsSetThreshold: Boolean;
    property AbsoluteTimeRange: TAbsoluteTimeRange read GetAbsoluteTimeRange write SetAbsoluteTimeRange;
    property KeepAbsoluteTimeRange: Boolean read GetKeepAbsoluteTimeRange write SetKeepAbsoluteTimeRange;
    property Negate: Boolean read GetNegate write SetNegate;
    property ParticipantRole: TParticipantRole read GetParticipantRole write SetParticipantRole;
    property RelativeTimeRange: TRelativeTimeRange read GetRelativeTimeRange write SetRelativeTimeRange;
    property KeepRelativeTimeRange: Boolean read GetKeepRelativeTimeRange write SetKeepRelativeTimeRange;
    property Threshold: Int64 read GetThreshold write SetThreshold;
  end;
  
  TInterruptionFilter = class
  strict private
    FAbsoluteTimeRange: TAbsoluteTimeRange;
    FKeepAbsoluteTimeRange: Boolean;
    FNegate: Nullable<Boolean>;
    FParticipantRole: Nullable<TParticipantRole>;
    FRelativeTimeRange: TRelativeTimeRange;
    FKeepRelativeTimeRange: Boolean;
    FThreshold: Nullable<Int64>;
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
    function GetThreshold: Int64;
    procedure SetThreshold(const Value: Int64);
  strict protected
    function Obj: TInterruptionFilter;
  public
    destructor Destroy; override;
    function IsSetAbsoluteTimeRange: Boolean;
    function IsSetNegate: Boolean;
    function IsSetParticipantRole: Boolean;
    function IsSetRelativeTimeRange: Boolean;
    function IsSetThreshold: Boolean;
    property AbsoluteTimeRange: TAbsoluteTimeRange read GetAbsoluteTimeRange write SetAbsoluteTimeRange;
    property KeepAbsoluteTimeRange: Boolean read GetKeepAbsoluteTimeRange write SetKeepAbsoluteTimeRange;
    property Negate: Boolean read GetNegate write SetNegate;
    property ParticipantRole: TParticipantRole read GetParticipantRole write SetParticipantRole;
    property RelativeTimeRange: TRelativeTimeRange read GetRelativeTimeRange write SetRelativeTimeRange;
    property KeepRelativeTimeRange: Boolean read GetKeepRelativeTimeRange write SetKeepRelativeTimeRange;
    property Threshold: Int64 read GetThreshold write SetThreshold;
  end;
  
implementation

{ TInterruptionFilter }

destructor TInterruptionFilter.Destroy;
begin
  RelativeTimeRange := nil;
  AbsoluteTimeRange := nil;
  inherited;
end;

function TInterruptionFilter.Obj: TInterruptionFilter;
begin
  Result := Self;
end;

function TInterruptionFilter.GetAbsoluteTimeRange: TAbsoluteTimeRange;
begin
  Result := FAbsoluteTimeRange;
end;

procedure TInterruptionFilter.SetAbsoluteTimeRange(const Value: TAbsoluteTimeRange);
begin
  if FAbsoluteTimeRange <> Value then
  begin
    if not KeepAbsoluteTimeRange then
      FAbsoluteTimeRange.Free;
    FAbsoluteTimeRange := Value;
  end;
end;

function TInterruptionFilter.GetKeepAbsoluteTimeRange: Boolean;
begin
  Result := FKeepAbsoluteTimeRange;
end;

procedure TInterruptionFilter.SetKeepAbsoluteTimeRange(const Value: Boolean);
begin
  FKeepAbsoluteTimeRange := Value;
end;

function TInterruptionFilter.IsSetAbsoluteTimeRange: Boolean;
begin
  Result := FAbsoluteTimeRange <> nil;
end;

function TInterruptionFilter.GetNegate: Boolean;
begin
  Result := FNegate.ValueOrDefault;
end;

procedure TInterruptionFilter.SetNegate(const Value: Boolean);
begin
  FNegate := Value;
end;

function TInterruptionFilter.IsSetNegate: Boolean;
begin
  Result := FNegate.HasValue;
end;

function TInterruptionFilter.GetParticipantRole: TParticipantRole;
begin
  Result := FParticipantRole.ValueOrDefault;
end;

procedure TInterruptionFilter.SetParticipantRole(const Value: TParticipantRole);
begin
  FParticipantRole := Value;
end;

function TInterruptionFilter.IsSetParticipantRole: Boolean;
begin
  Result := FParticipantRole.HasValue;
end;

function TInterruptionFilter.GetRelativeTimeRange: TRelativeTimeRange;
begin
  Result := FRelativeTimeRange;
end;

procedure TInterruptionFilter.SetRelativeTimeRange(const Value: TRelativeTimeRange);
begin
  if FRelativeTimeRange <> Value then
  begin
    if not KeepRelativeTimeRange then
      FRelativeTimeRange.Free;
    FRelativeTimeRange := Value;
  end;
end;

function TInterruptionFilter.GetKeepRelativeTimeRange: Boolean;
begin
  Result := FKeepRelativeTimeRange;
end;

procedure TInterruptionFilter.SetKeepRelativeTimeRange(const Value: Boolean);
begin
  FKeepRelativeTimeRange := Value;
end;

function TInterruptionFilter.IsSetRelativeTimeRange: Boolean;
begin
  Result := FRelativeTimeRange <> nil;
end;

function TInterruptionFilter.GetThreshold: Int64;
begin
  Result := FThreshold.ValueOrDefault;
end;

procedure TInterruptionFilter.SetThreshold(const Value: Int64);
begin
  FThreshold := Value;
end;

function TInterruptionFilter.IsSetThreshold: Boolean;
begin
  Result := FThreshold.HasValue;
end;

end.
