unit AWS.S3.Model.ScanRange;

interface

uses
  Bcl.Types.Nullable;

type
  TScanRange = class;
  
  IScanRange = interface
    function GetEnd: Int64;
    procedure SetEnd(const Value: Int64);
    function GetStart: Int64;
    procedure SetStart(const Value: Int64);
    function Obj: TScanRange;
    function IsSetEnd: Boolean;
    function IsSetStart: Boolean;
    property &End: Int64 read GetEnd write SetEnd;
    property Start: Int64 read GetStart write SetStart;
  end;
  
  TScanRange = class
  strict private
    FEnd: Nullable<Int64>;
    FStart: Nullable<Int64>;
    function GetEnd: Int64;
    procedure SetEnd(const Value: Int64);
    function GetStart: Int64;
    procedure SetStart(const Value: Int64);
  strict protected
    function Obj: TScanRange;
  public
    function IsSetEnd: Boolean;
    function IsSetStart: Boolean;
    property &End: Int64 read GetEnd write SetEnd;
    property Start: Int64 read GetStart write SetStart;
  end;
  
implementation

{ TScanRange }

function TScanRange.Obj: TScanRange;
begin
  Result := Self;
end;

function TScanRange.GetEnd: Int64;
begin
  Result := FEnd.ValueOrDefault;
end;

procedure TScanRange.SetEnd(const Value: Int64);
begin
  FEnd := Value;
end;

function TScanRange.IsSetEnd: Boolean;
begin
  Result := FEnd.HasValue;
end;

function TScanRange.GetStart: Int64;
begin
  Result := FStart.ValueOrDefault;
end;

procedure TScanRange.SetStart(const Value: Int64);
begin
  FStart := Value;
end;

function TScanRange.IsSetStart: Boolean;
begin
  Result := FStart.HasValue;
end;

end.
