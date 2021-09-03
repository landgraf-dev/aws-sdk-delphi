unit AWS.Rekognition.Transform.EyeglassesUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Eyeglasses, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEyeglassesUnmarshaller = IUnmarshaller<TEyeglasses, TJsonUnmarshallerContext>;
  
  TEyeglassesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEyeglasses, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEyeglassesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEyeglasses;
    class function JsonInstance: IEyeglassesUnmarshaller; static;
  end;
  
implementation

{ TEyeglassesUnmarshaller }

function TEyeglassesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEyeglasses;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEyeglasses;
begin
  UnmarshalledObject := TEyeglasses.Create;
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

class constructor TEyeglassesUnmarshaller.Create;
begin
  FJsonInstance := TEyeglassesUnmarshaller.Create;
end;

class function TEyeglassesUnmarshaller.JsonInstance: IEyeglassesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
