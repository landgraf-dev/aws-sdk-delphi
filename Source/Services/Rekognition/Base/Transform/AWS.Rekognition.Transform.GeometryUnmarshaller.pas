unit AWS.Rekognition.Transform.GeometryUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Geometry, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Rekognition.Transform.PointUnmarshaller, 
  AWS.Rekognition.Model.Point, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IGeometryUnmarshaller = IUnmarshaller<TGeometry, TJsonUnmarshallerContext>;
  
  TGeometryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TGeometry, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IGeometryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TGeometry;
    class function JsonInstance: IGeometryUnmarshaller; static;
  end;
  
implementation

{ TGeometryUnmarshaller }

function TGeometryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TGeometry;
var
  TargetDepth: Integer;
  UnmarshalledObject: TGeometry;
begin
  UnmarshalledObject := TGeometry.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BoundingBox', TargetDepth) then
      begin
        var Unmarshaller := TBoundingBoxUnmarshaller.JsonInstance;
        UnmarshalledObject.BoundingBox := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Polygon', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TPoint, IPointUnmarshaller>.JsonNew(TPointUnmarshaller.JsonInstance);
        UnmarshalledObject.Polygon := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TGeometryUnmarshaller.Create;
begin
  FJsonInstance := TGeometryUnmarshaller.Create;
end;

class function TGeometryUnmarshaller.JsonInstance: IGeometryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
