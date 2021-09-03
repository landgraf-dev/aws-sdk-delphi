unit AWS.Rekognition.Transform.MustacheUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Mustache, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMustacheUnmarshaller = IUnmarshaller<TMustache, TJsonUnmarshallerContext>;
  
  TMustacheUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMustache, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMustacheUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMustache;
    class function JsonInstance: IMustacheUnmarshaller; static;
  end;
  
implementation

{ TMustacheUnmarshaller }

function TMustacheUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMustache;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMustache;
begin
  UnmarshalledObject := TMustache.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Confidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Confidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Value', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.Value := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMustacheUnmarshaller.Create;
begin
  FJsonInstance := TMustacheUnmarshaller.Create;
end;

class function TMustacheUnmarshaller.JsonInstance: IMustacheUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
