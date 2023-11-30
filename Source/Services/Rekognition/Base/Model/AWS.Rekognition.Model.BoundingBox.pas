unit AWS.Rekognition.Model.BoundingBox;

interface

uses
  AWS.Nullable;

type
  TBoundingBox = class;
  
  IBoundingBox = interface
    function GetHeight: Double;
    procedure SetHeight(const Value: Double);
    function GetLeft: Double;
    procedure SetLeft(const Value: Double);
    function GetTop: Double;
    procedure SetTop(const Value: Double);
    function GetWidth: Double;
    procedure SetWidth(const Value: Double);
    function Obj: TBoundingBox;
    function IsSetHeight: Boolean;
    function IsSetLeft: Boolean;
    function IsSetTop: Boolean;
    function IsSetWidth: Boolean;
    property Height: Double read GetHeight write SetHeight;
    property Left: Double read GetLeft write SetLeft;
    property Top: Double read GetTop write SetTop;
    property Width: Double read GetWidth write SetWidth;
  end;
  
  TBoundingBox = class
  strict private
    FHeight: Nullable<Double>;
    FLeft: Nullable<Double>;
    FTop: Nullable<Double>;
    FWidth: Nullable<Double>;
    function GetHeight: Double;
    procedure SetHeight(const Value: Double);
    function GetLeft: Double;
    procedure SetLeft(const Value: Double);
    function GetTop: Double;
    procedure SetTop(const Value: Double);
    function GetWidth: Double;
    procedure SetWidth(const Value: Double);
  strict protected
    function Obj: TBoundingBox;
  public
    function IsSetHeight: Boolean;
    function IsSetLeft: Boolean;
    function IsSetTop: Boolean;
    function IsSetWidth: Boolean;
    property Height: Double read GetHeight write SetHeight;
    property Left: Double read GetLeft write SetLeft;
    property Top: Double read GetTop write SetTop;
    property Width: Double read GetWidth write SetWidth;
  end;
  
implementation

{ TBoundingBox }

function TBoundingBox.Obj: TBoundingBox;
begin
  Result := Self;
end;

function TBoundingBox.GetHeight: Double;
begin
  Result := FHeight.ValueOrDefault;
end;

procedure TBoundingBox.SetHeight(const Value: Double);
begin
  FHeight := Value;
end;

function TBoundingBox.IsSetHeight: Boolean;
begin
  Result := FHeight.HasValue;
end;

function TBoundingBox.GetLeft: Double;
begin
  Result := FLeft.ValueOrDefault;
end;

procedure TBoundingBox.SetLeft(const Value: Double);
begin
  FLeft := Value;
end;

function TBoundingBox.IsSetLeft: Boolean;
begin
  Result := FLeft.HasValue;
end;

function TBoundingBox.GetTop: Double;
begin
  Result := FTop.ValueOrDefault;
end;

procedure TBoundingBox.SetTop(const Value: Double);
begin
  FTop := Value;
end;

function TBoundingBox.IsSetTop: Boolean;
begin
  Result := FTop.HasValue;
end;

function TBoundingBox.GetWidth: Double;
begin
  Result := FWidth.ValueOrDefault;
end;

procedure TBoundingBox.SetWidth(const Value: Double);
begin
  FWidth := Value;
end;

function TBoundingBox.IsSetWidth: Boolean;
begin
  Result := FWidth.HasValue;
end;

end.
