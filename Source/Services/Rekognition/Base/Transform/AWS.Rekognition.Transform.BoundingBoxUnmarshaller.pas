unit AWS.Rekognition.Transform.BoundingBoxUnmarshaller;

interface

uses
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IBoundingBoxUnmarshaller = IUnmarshaller<TBoundingBox, TJsonUnmarshallerContext>;
  
  TBoundingBoxUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBoundingBox, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IBoundingBoxUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TBoundingBox;
    class function JsonInstance: IBoundingBoxUnmarshaller; static;
  end;
  
implementation

{ TBoundingBoxUnmarshaller }

function TBoundingBoxUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TBoundingBox;
var
  TargetDepth: Integer;
  UnmarshalledObject: TBoundingBox;
begin
  UnmarshalledObject := TBoundingBox.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Height', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Height := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Left', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Left := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Top', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Top := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Width', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Width := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TBoundingBoxUnmarshaller.Create;
begin
  FJsonInstance := TBoundingBoxUnmarshaller.Create;
end;

class function TBoundingBoxUnmarshaller.JsonInstance: IBoundingBoxUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
