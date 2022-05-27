unit AWS.Transcribe.Model.RelativeTimeRange;

interface

uses
  Bcl.Types.Nullable;

type
  TRelativeTimeRange = class;
  
  IRelativeTimeRange = interface
    function GetEndPercentage: Integer;
    procedure SetEndPercentage(const Value: Integer);
    function GetFirst: Integer;
    procedure SetFirst(const Value: Integer);
    function GetLast: Integer;
    procedure SetLast(const Value: Integer);
    function GetStartPercentage: Integer;
    procedure SetStartPercentage(const Value: Integer);
    function Obj: TRelativeTimeRange;
    function IsSetEndPercentage: Boolean;
    function IsSetFirst: Boolean;
    function IsSetLast: Boolean;
    function IsSetStartPercentage: Boolean;
    property EndPercentage: Integer read GetEndPercentage write SetEndPercentage;
    property First: Integer read GetFirst write SetFirst;
    property Last: Integer read GetLast write SetLast;
    property StartPercentage: Integer read GetStartPercentage write SetStartPercentage;
  end;
  
  TRelativeTimeRange = class
  strict private
    FEndPercentage: Nullable<Integer>;
    FFirst: Nullable<Integer>;
    FLast: Nullable<Integer>;
    FStartPercentage: Nullable<Integer>;
    function GetEndPercentage: Integer;
    procedure SetEndPercentage(const Value: Integer);
    function GetFirst: Integer;
    procedure SetFirst(const Value: Integer);
    function GetLast: Integer;
    procedure SetLast(const Value: Integer);
    function GetStartPercentage: Integer;
    procedure SetStartPercentage(const Value: Integer);
  strict protected
    function Obj: TRelativeTimeRange;
  public
    function IsSetEndPercentage: Boolean;
    function IsSetFirst: Boolean;
    function IsSetLast: Boolean;
    function IsSetStartPercentage: Boolean;
    property EndPercentage: Integer read GetEndPercentage write SetEndPercentage;
    property First: Integer read GetFirst write SetFirst;
    property Last: Integer read GetLast write SetLast;
    property StartPercentage: Integer read GetStartPercentage write SetStartPercentage;
  end;
  
implementation

{ TRelativeTimeRange }

function TRelativeTimeRange.Obj: TRelativeTimeRange;
begin
  Result := Self;
end;

function TRelativeTimeRange.GetEndPercentage: Integer;
begin
  Result := FEndPercentage.ValueOrDefault;
end;

procedure TRelativeTimeRange.SetEndPercentage(const Value: Integer);
begin
  FEndPercentage := Value;
end;

function TRelativeTimeRange.IsSetEndPercentage: Boolean;
begin
  Result := FEndPercentage.HasValue;
end;

function TRelativeTimeRange.GetFirst: Integer;
begin
  Result := FFirst.ValueOrDefault;
end;

procedure TRelativeTimeRange.SetFirst(const Value: Integer);
begin
  FFirst := Value;
end;

function TRelativeTimeRange.IsSetFirst: Boolean;
begin
  Result := FFirst.HasValue;
end;

function TRelativeTimeRange.GetLast: Integer;
begin
  Result := FLast.ValueOrDefault;
end;

procedure TRelativeTimeRange.SetLast(const Value: Integer);
begin
  FLast := Value;
end;

function TRelativeTimeRange.IsSetLast: Boolean;
begin
  Result := FLast.HasValue;
end;

function TRelativeTimeRange.GetStartPercentage: Integer;
begin
  Result := FStartPercentage.ValueOrDefault;
end;

procedure TRelativeTimeRange.SetStartPercentage(const Value: Integer);
begin
  FStartPercentage := Value;
end;

function TRelativeTimeRange.IsSetStartPercentage: Boolean;
begin
  Result := FStartPercentage.HasValue;
end;

end.
