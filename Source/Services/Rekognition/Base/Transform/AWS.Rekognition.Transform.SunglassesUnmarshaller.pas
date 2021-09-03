unit AWS.Rekognition.Transform.SunglassesUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Sunglasses, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISunglassesUnmarshaller = IUnmarshaller<TSunglasses, TJsonUnmarshallerContext>;
  
  TSunglassesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSunglasses, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISunglassesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSunglasses;
    class function JsonInstance: ISunglassesUnmarshaller; static;
  end;
  
implementation

{ TSunglassesUnmarshaller }

function TSunglassesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSunglasses;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSunglasses;
begin
  UnmarshalledObject := TSunglasses.Create;
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

class constructor TSunglassesUnmarshaller.Create;
begin
  FJsonInstance := TSunglassesUnmarshaller.Create;
end;

class function TSunglassesUnmarshaller.JsonInstance: ISunglassesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
