unit AWS.Textract.Model.Point;

interface

uses
  Bcl.Types.Nullable;

type
  TPoint = class;
  
  IPoint = interface
    function GetX: Double;
    procedure SetX(const Value: Double);
    function GetY: Double;
    procedure SetY(const Value: Double);
    function Obj: TPoint;
    function IsSetX: Boolean;
    function IsSetY: Boolean;
    property X: Double read GetX write SetX;
    property Y: Double read GetY write SetY;
  end;
  
  TPoint = class
  strict private
    FX: Nullable<Double>;
    FY: Nullable<Double>;
    function GetX: Double;
    procedure SetX(const Value: Double);
    function GetY: Double;
    procedure SetY(const Value: Double);
  strict protected
    function Obj: TPoint;
  public
    function IsSetX: Boolean;
    function IsSetY: Boolean;
    property X: Double read GetX write SetX;
    property Y: Double read GetY write SetY;
  end;
  
implementation

{ TPoint }

function TPoint.Obj: TPoint;
begin
  Result := Self;
end;

function TPoint.GetX: Double;
begin
  Result := FX.ValueOrDefault;
end;

procedure TPoint.SetX(const Value: Double);
begin
  FX := Value;
end;

function TPoint.IsSetX: Boolean;
begin
  Result := FX.HasValue;
end;

function TPoint.GetY: Double;
begin
  Result := FY.ValueOrDefault;
end;

procedure TPoint.SetY(const Value: Double);
begin
  FY := Value;
end;

function TPoint.IsSetY: Boolean;
begin
  Result := FY.HasValue;
end;

end.
