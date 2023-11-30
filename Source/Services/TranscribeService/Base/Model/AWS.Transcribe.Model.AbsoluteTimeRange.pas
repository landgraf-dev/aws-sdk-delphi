unit AWS.Transcribe.Model.AbsoluteTimeRange;

interface

uses
  AWS.Nullable;

type
  TAbsoluteTimeRange = class;
  
  IAbsoluteTimeRange = interface
    function GetEndTime: Int64;
    procedure SetEndTime(const Value: Int64);
    function GetFirst: Int64;
    procedure SetFirst(const Value: Int64);
    function GetLast: Int64;
    procedure SetLast(const Value: Int64);
    function GetStartTime: Int64;
    procedure SetStartTime(const Value: Int64);
    function Obj: TAbsoluteTimeRange;
    function IsSetEndTime: Boolean;
    function IsSetFirst: Boolean;
    function IsSetLast: Boolean;
    function IsSetStartTime: Boolean;
    property EndTime: Int64 read GetEndTime write SetEndTime;
    property First: Int64 read GetFirst write SetFirst;
    property Last: Int64 read GetLast write SetLast;
    property StartTime: Int64 read GetStartTime write SetStartTime;
  end;
  
  TAbsoluteTimeRange = class
  strict private
    FEndTime: Nullable<Int64>;
    FFirst: Nullable<Int64>;
    FLast: Nullable<Int64>;
    FStartTime: Nullable<Int64>;
    function GetEndTime: Int64;
    procedure SetEndTime(const Value: Int64);
    function GetFirst: Int64;
    procedure SetFirst(const Value: Int64);
    function GetLast: Int64;
    procedure SetLast(const Value: Int64);
    function GetStartTime: Int64;
    procedure SetStartTime(const Value: Int64);
  strict protected
    function Obj: TAbsoluteTimeRange;
  public
    function IsSetEndTime: Boolean;
    function IsSetFirst: Boolean;
    function IsSetLast: Boolean;
    function IsSetStartTime: Boolean;
    property EndTime: Int64 read GetEndTime write SetEndTime;
    property First: Int64 read GetFirst write SetFirst;
    property Last: Int64 read GetLast write SetLast;
    property StartTime: Int64 read GetStartTime write SetStartTime;
  end;
  
implementation

{ TAbsoluteTimeRange }

function TAbsoluteTimeRange.Obj: TAbsoluteTimeRange;
begin
  Result := Self;
end;

function TAbsoluteTimeRange.GetEndTime: Int64;
begin
  Result := FEndTime.ValueOrDefault;
end;

procedure TAbsoluteTimeRange.SetEndTime(const Value: Int64);
begin
  FEndTime := Value;
end;

function TAbsoluteTimeRange.IsSetEndTime: Boolean;
begin
  Result := FEndTime.HasValue;
end;

function TAbsoluteTimeRange.GetFirst: Int64;
begin
  Result := FFirst.ValueOrDefault;
end;

procedure TAbsoluteTimeRange.SetFirst(const Value: Int64);
begin
  FFirst := Value;
end;

function TAbsoluteTimeRange.IsSetFirst: Boolean;
begin
  Result := FFirst.HasValue;
end;

function TAbsoluteTimeRange.GetLast: Int64;
begin
  Result := FLast.ValueOrDefault;
end;

procedure TAbsoluteTimeRange.SetLast(const Value: Int64);
begin
  FLast := Value;
end;

function TAbsoluteTimeRange.IsSetLast: Boolean;
begin
  Result := FLast.HasValue;
end;

function TAbsoluteTimeRange.GetStartTime: Int64;
begin
  Result := FStartTime.ValueOrDefault;
end;

procedure TAbsoluteTimeRange.SetStartTime(const Value: Int64);
begin
  FStartTime := Value;
end;

function TAbsoluteTimeRange.IsSetStartTime: Boolean;
begin
  Result := FStartTime.HasValue;
end;

end.
