unit AWS.Rekognition.Transform.RegionOfInterestUnmarshaller;

interface

uses
  AWS.Rekognition.Model.RegionOfInterest, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Rekognition.Transform.PointUnmarshaller, 
  AWS.Rekognition.Model.Point, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRegionOfInterestUnmarshaller = IUnmarshaller<TRegionOfInterest, TJsonUnmarshallerContext>;
  
  TRegionOfInterestUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRegionOfInterest, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IRegionOfInterestUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TRegionOfInterest;
    class function JsonInstance: IRegionOfInterestUnmarshaller; static;
  end;
  
implementation

{ TRegionOfInterestUnmarshaller }

function TRegionOfInterestUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TRegionOfInterest;
var
  TargetDepth: Integer;
  UnmarshalledObject: TRegionOfInterest;
begin
  UnmarshalledObject := TRegionOfInterest.Create;
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

class constructor TRegionOfInterestUnmarshaller.Create;
begin
  FJsonInstance := TRegionOfInterestUnmarshaller.Create;
end;

class function TRegionOfInterestUnmarshaller.JsonInstance: IRegionOfInterestUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
