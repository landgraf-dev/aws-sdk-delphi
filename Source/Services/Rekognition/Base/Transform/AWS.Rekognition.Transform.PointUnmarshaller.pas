unit AWS.Rekognition.Transform.PointUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Point, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IPointUnmarshaller = IUnmarshaller<TPoint, TJsonUnmarshallerContext>;
  
  TPointUnmarshaller = class(TInterfacedObject, IUnmarshaller<TPoint, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IPointUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TPoint;
    class function JsonInstance: IPointUnmarshaller; static;
  end;
  
implementation

{ TPointUnmarshaller }

function TPointUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TPoint;
var
  TargetDepth: Integer;
  UnmarshalledObject: TPoint;
begin
  UnmarshalledObject := TPoint.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('X', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.X := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Y', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Y := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TPointUnmarshaller.Create;
begin
  FJsonInstance := TPointUnmarshaller.Create;
end;

class function TPointUnmarshaller.JsonInstance: IPointUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
