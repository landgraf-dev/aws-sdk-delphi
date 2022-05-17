unit AWS.Textract.Model.Geometry;

interface

uses
  System.Generics.Collections, 
  AWS.Textract.Model.BoundingBox, 
  AWS.Textract.Model.Point;

type
  TGeometry = class;
  
  IGeometry = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetPolygon: TObjectList<TPoint>;
    procedure SetPolygon(const Value: TObjectList<TPoint>);
    function GetKeepPolygon: Boolean;
    procedure SetKeepPolygon(const Value: Boolean);
    function Obj: TGeometry;
    function IsSetBoundingBox: Boolean;
    function IsSetPolygon: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Polygon: TObjectList<TPoint> read GetPolygon write SetPolygon;
    property KeepPolygon: Boolean read GetKeepPolygon write SetKeepPolygon;
  end;
  
  TGeometry = class
  strict private
    FBoundingBox: TBoundingBox;
    FKeepBoundingBox: Boolean;
    FPolygon: TObjectList<TPoint>;
    FKeepPolygon: Boolean;
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetPolygon: TObjectList<TPoint>;
    procedure SetPolygon(const Value: TObjectList<TPoint>);
    function GetKeepPolygon: Boolean;
    procedure SetKeepPolygon(const Value: Boolean);
  strict protected
    function Obj: TGeometry;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBoundingBox: Boolean;
    function IsSetPolygon: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Polygon: TObjectList<TPoint> read GetPolygon write SetPolygon;
    property KeepPolygon: Boolean read GetKeepPolygon write SetKeepPolygon;
  end;
  
implementation

{ TGeometry }

constructor TGeometry.Create;
begin
  inherited;
  FPolygon := TObjectList<TPoint>.Create;
end;

destructor TGeometry.Destroy;
begin
  Polygon := nil;
  BoundingBox := nil;
  inherited;
end;

function TGeometry.Obj: TGeometry;
begin
  Result := Self;
end;

function TGeometry.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TGeometry.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TGeometry.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TGeometry.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TGeometry.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TGeometry.GetPolygon: TObjectList<TPoint>;
begin
  Result := FPolygon;
end;

procedure TGeometry.SetPolygon(const Value: TObjectList<TPoint>);
begin
  if FPolygon <> Value then
  begin
    if not KeepPolygon then
      FPolygon.Free;
    FPolygon := Value;
  end;
end;

function TGeometry.GetKeepPolygon: Boolean;
begin
  Result := FKeepPolygon;
end;

procedure TGeometry.SetKeepPolygon(const Value: Boolean);
begin
  FKeepPolygon := Value;
end;

function TGeometry.IsSetPolygon: Boolean;
begin
  Result := (FPolygon <> nil) and (FPolygon.Count > 0);
end;

end.
