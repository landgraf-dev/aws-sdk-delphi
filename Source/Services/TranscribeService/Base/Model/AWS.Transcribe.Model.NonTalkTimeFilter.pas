unit AWS.Transcribe.Model.NonTalkTimeFilter;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Transcribe.Model.AbsoluteTimeRange, 
  AWS.Transcribe.Model.RelativeTimeRange;

type
  TNonTalkTimeFilter = class;
  
  INonTalkTimeFilter = interface
    function GetAbsoluteTimeRange: TAbsoluteTimeRange;
    procedure SetAbsoluteTimeRange(const Value: TAbsoluteTimeRange);
    function GetKeepAbsoluteTimeRange: Boolean;
    procedure SetKeepAbsoluteTimeRange(const Value: Boolean);
    function GetNegate: Boolean;
    procedure SetNegate(const Value: Boolean);
    function GetRelativeTimeRange: TRelativeTimeRange;
    procedure SetRelativeTimeRange(const Value: TRelativeTimeRange);
    function GetKeepRelativeTimeRange: Boolean;
    procedure SetKeepRelativeTimeRange(const Value: Boolean);
    function GetThreshold: Int64;
    procedure SetThreshold(const Value: Int64);
    function Obj: TNonTalkTimeFilter;
    function IsSetAbsoluteTimeRange: Boolean;
    function IsSetNegate: Boolean;
    function IsSetRelativeTimeRange: Boolean;
    function IsSetThreshold: Boolean;
    property AbsoluteTimeRange: TAbsoluteTimeRange read GetAbsoluteTimeRange write SetAbsoluteTimeRange;
    property KeepAbsoluteTimeRange: Boolean read GetKeepAbsoluteTimeRange write SetKeepAbsoluteTimeRange;
    property Negate: Boolean read GetNegate write SetNegate;
    property RelativeTimeRange: TRelativeTimeRange read GetRelativeTimeRange write SetRelativeTimeRange;
    property KeepRelativeTimeRange: Boolean read GetKeepRelativeTimeRange write SetKeepRelativeTimeRange;
    property Threshold: Int64 read GetThreshold write SetThreshold;
  end;
  
  TNonTalkTimeFilter = class
  strict private
    FAbsoluteTimeRange: TAbsoluteTimeRange;
    FKeepAbsoluteTimeRange: Boolean;
    FNegate: Nullable<Boolean>;
    FRelativeTimeRange: TRelativeTimeRange;
    FKeepRelativeTimeRange: Boolean;
    FThreshold: Nullable<Int64>;
    function GetAbsoluteTimeRange: TAbsoluteTimeRange;
    procedure SetAbsoluteTimeRange(const Value: TAbsoluteTimeRange);
    function GetKeepAbsoluteTimeRange: Boolean;
    procedure SetKeepAbsoluteTimeRange(const Value: Boolean);
    function GetNegate: Boolean;
    procedure SetNegate(const Value: Boolean);
    function GetRelativeTimeRange: TRelativeTimeRange;
    procedure SetRelativeTimeRange(const Value: TRelativeTimeRange);
    function GetKeepRelativeTimeRange: Boolean;
    procedure SetKeepRelativeTimeRange(const Value: Boolean);
    function GetThreshold: Int64;
    procedure SetThreshold(const Value: Int64);
  strict protected
    function Obj: TNonTalkTimeFilter;
  public
    destructor Destroy; override;
    function IsSetAbsoluteTimeRange: Boolean;
    function IsSetNegate: Boolean;
    function IsSetRelativeTimeRange: Boolean;
    function IsSetThreshold: Boolean;
    property AbsoluteTimeRange: TAbsoluteTimeRange read GetAbsoluteTimeRange write SetAbsoluteTimeRange;
    property KeepAbsoluteTimeRange: Boolean read GetKeepAbsoluteTimeRange write SetKeepAbsoluteTimeRange;
    property Negate: Boolean read GetNegate write SetNegate;
    property RelativeTimeRange: TRelativeTimeRange read GetRelativeTimeRange write SetRelativeTimeRange;
    property KeepRelativeTimeRange: Boolean read GetKeepRelativeTimeRange write SetKeepRelativeTimeRange;
    property Threshold: Int64 read GetThreshold write SetThreshold;
  end;
  
implementation

{ TNonTalkTimeFilter }

destructor TNonTalkTimeFilter.Destroy;
begin
  RelativeTimeRange := nil;
  AbsoluteTimeRange := nil;
  inherited;
end;

function TNonTalkTimeFilter.Obj: TNonTalkTimeFilter;
begin
  Result := Self;
end;

function TNonTalkTimeFilter.GetAbsoluteTimeRange: TAbsoluteTimeRange;
begin
  Result := FAbsoluteTimeRange;
end;

procedure TNonTalkTimeFilter.SetAbsoluteTimeRange(const Value: TAbsoluteTimeRange);
begin
  if FAbsoluteTimeRange <> Value then
  begin
    if not KeepAbsoluteTimeRange then
      FAbsoluteTimeRange.Free;
    FAbsoluteTimeRange := Value;
  end;
end;

function TNonTalkTimeFilter.GetKeepAbsoluteTimeRange: Boolean;
begin
  Result := FKeepAbsoluteTimeRange;
end;

procedure TNonTalkTimeFilter.SetKeepAbsoluteTimeRange(const Value: Boolean);
begin
  FKeepAbsoluteTimeRange := Value;
end;

function TNonTalkTimeFilter.IsSetAbsoluteTimeRange: Boolean;
begin
  Result := FAbsoluteTimeRange <> nil;
end;

function TNonTalkTimeFilter.GetNegate: Boolean;
begin
  Result := FNegate.ValueOrDefault;
end;

procedure TNonTalkTimeFilter.SetNegate(const Value: Boolean);
begin
  FNegate := Value;
end;

function TNonTalkTimeFilter.IsSetNegate: Boolean;
begin
  Result := FNegate.HasValue;
end;

function TNonTalkTimeFilter.GetRelativeTimeRange: TRelativeTimeRange;
begin
  Result := FRelativeTimeRange;
end;

procedure TNonTalkTimeFilter.SetRelativeTimeRange(const Value: TRelativeTimeRange);
begin
  if FRelativeTimeRange <> Value then
  begin
    if not KeepRelativeTimeRange then
      FRelativeTimeRange.Free;
    FRelativeTimeRange := Value;
  end;
end;

function TNonTalkTimeFilter.GetKeepRelativeTimeRange: Boolean;
begin
  Result := FKeepRelativeTimeRange;
end;

procedure TNonTalkTimeFilter.SetKeepRelativeTimeRange(const Value: Boolean);
begin
  FKeepRelativeTimeRange := Value;
end;

function TNonTalkTimeFilter.IsSetRelativeTimeRange: Boolean;
begin
  Result := FRelativeTimeRange <> nil;
end;

function TNonTalkTimeFilter.GetThreshold: Int64;
begin
  Result := FThreshold.ValueOrDefault;
end;

procedure TNonTalkTimeFilter.SetThreshold(const Value: Int64);
begin
  FThreshold := Value;
end;

function TNonTalkTimeFilter.IsSetThreshold: Boolean;
begin
  Result := FThreshold.HasValue;
end;

end.
