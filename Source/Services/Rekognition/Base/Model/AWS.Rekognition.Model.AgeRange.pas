unit AWS.Rekognition.Model.AgeRange;

interface

uses
  Bcl.Types.Nullable;

type
  TAgeRange = class;
  
  IAgeRange = interface
    function GetHigh: Integer;
    procedure SetHigh(const Value: Integer);
    function GetLow: Integer;
    procedure SetLow(const Value: Integer);
    function Obj: TAgeRange;
    function IsSetHigh: Boolean;
    function IsSetLow: Boolean;
    property High: Integer read GetHigh write SetHigh;
    property Low: Integer read GetLow write SetLow;
  end;
  
  TAgeRange = class
  strict private
    FHigh: Nullable<Integer>;
    FLow: Nullable<Integer>;
    function GetHigh: Integer;
    procedure SetHigh(const Value: Integer);
    function GetLow: Integer;
    procedure SetLow(const Value: Integer);
  strict protected
    function Obj: TAgeRange;
  public
    function IsSetHigh: Boolean;
    function IsSetLow: Boolean;
    property High: Integer read GetHigh write SetHigh;
    property Low: Integer read GetLow write SetLow;
  end;
  
implementation

{ TAgeRange }

function TAgeRange.Obj: TAgeRange;
begin
  Result := Self;
end;

function TAgeRange.GetHigh: Integer;
begin
  Result := FHigh.ValueOrDefault;
end;

procedure TAgeRange.SetHigh(const Value: Integer);
begin
  FHigh := Value;
end;

function TAgeRange.IsSetHigh: Boolean;
begin
  Result := FHigh.HasValue;
end;

function TAgeRange.GetLow: Integer;
begin
  Result := FLow.ValueOrDefault;
end;

procedure TAgeRange.SetLow(const Value: Integer);
begin
  FLow := Value;
end;

function TAgeRange.IsSetLow: Boolean;
begin
  Result := FLow.HasValue;
end;

end.
