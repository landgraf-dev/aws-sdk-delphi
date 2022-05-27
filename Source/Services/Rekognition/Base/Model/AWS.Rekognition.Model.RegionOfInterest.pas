unit AWS.Rekognition.Model.RegionOfInterest;

interface

uses
  System.Generics.Collections, 
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Rekognition.Model.Point;

type
  TRegionOfInterest = class;
  
  IRegionOfInterest = interface
    function GetBoundingBox: TBoundingBox;
    procedure SetBoundingBox(const Value: TBoundingBox);
    function GetKeepBoundingBox: Boolean;
    procedure SetKeepBoundingBox(const Value: Boolean);
    function GetPolygon: TObjectList<TPoint>;
    procedure SetPolygon(const Value: TObjectList<TPoint>);
    function GetKeepPolygon: Boolean;
    procedure SetKeepPolygon(const Value: Boolean);
    function Obj: TRegionOfInterest;
    function IsSetBoundingBox: Boolean;
    function IsSetPolygon: Boolean;
    property BoundingBox: TBoundingBox read GetBoundingBox write SetBoundingBox;
    property KeepBoundingBox: Boolean read GetKeepBoundingBox write SetKeepBoundingBox;
    property Polygon: TObjectList<TPoint> read GetPolygon write SetPolygon;
    property KeepPolygon: Boolean read GetKeepPolygon write SetKeepPolygon;
  end;
  
  TRegionOfInterest = class
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
    function Obj: TRegionOfInterest;
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

{ TRegionOfInterest }

constructor TRegionOfInterest.Create;
begin
  inherited;
  FPolygon := TObjectList<TPoint>.Create;
end;

destructor TRegionOfInterest.Destroy;
begin
  Polygon := nil;
  BoundingBox := nil;
  inherited;
end;

function TRegionOfInterest.Obj: TRegionOfInterest;
begin
  Result := Self;
end;

function TRegionOfInterest.GetBoundingBox: TBoundingBox;
begin
  Result := FBoundingBox;
end;

procedure TRegionOfInterest.SetBoundingBox(const Value: TBoundingBox);
begin
  if FBoundingBox <> Value then
  begin
    if not KeepBoundingBox then
      FBoundingBox.Free;
    FBoundingBox := Value;
  end;
end;

function TRegionOfInterest.GetKeepBoundingBox: Boolean;
begin
  Result := FKeepBoundingBox;
end;

procedure TRegionOfInterest.SetKeepBoundingBox(const Value: Boolean);
begin
  FKeepBoundingBox := Value;
end;

function TRegionOfInterest.IsSetBoundingBox: Boolean;
begin
  Result := FBoundingBox <> nil;
end;

function TRegionOfInterest.GetPolygon: TObjectList<TPoint>;
begin
  Result := FPolygon;
end;

procedure TRegionOfInterest.SetPolygon(const Value: TObjectList<TPoint>);
begin
  if FPolygon <> Value then
  begin
    if not KeepPolygon then
      FPolygon.Free;
    FPolygon := Value;
  end;
end;

function TRegionOfInterest.GetKeepPolygon: Boolean;
begin
  Result := FKeepPolygon;
end;

procedure TRegionOfInterest.SetKeepPolygon(const Value: Boolean);
begin
  FKeepPolygon := Value;
end;

function TRegionOfInterest.IsSetPolygon: Boolean;
begin
  Result := (FPolygon <> nil) and (FPolygon.Count > 0);
end;

end.
