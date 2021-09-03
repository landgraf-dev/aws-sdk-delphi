unit AWS.Rekognition.Transform.MouthOpenUnmarshaller;

interface

uses
  AWS.Rekognition.Model.MouthOpen, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMouthOpenUnmarshaller = IUnmarshaller<TMouthOpen, TJsonUnmarshallerContext>;
  
  TMouthOpenUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMouthOpen, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMouthOpenUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMouthOpen;
    class function JsonInstance: IMouthOpenUnmarshaller; static;
  end;
  
implementation

{ TMouthOpenUnmarshaller }

function TMouthOpenUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMouthOpen;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMouthOpen;
begin
  UnmarshalledObject := TMouthOpen.Create;
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

class constructor TMouthOpenUnmarshaller.Create;
begin
  FJsonInstance := TMouthOpenUnmarshaller.Create;
end;

class function TMouthOpenUnmarshaller.JsonInstance: IMouthOpenUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
