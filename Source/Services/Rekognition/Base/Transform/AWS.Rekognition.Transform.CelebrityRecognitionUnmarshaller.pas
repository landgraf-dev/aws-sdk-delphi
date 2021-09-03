unit AWS.Rekognition.Transform.CelebrityRecognitionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.CelebrityRecognition, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.CelebrityDetailUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ICelebrityRecognitionUnmarshaller = IUnmarshaller<TCelebrityRecognition, TJsonUnmarshallerContext>;
  
  TCelebrityRecognitionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCelebrityRecognition, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICelebrityRecognitionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCelebrityRecognition;
    class function JsonInstance: ICelebrityRecognitionUnmarshaller; static;
  end;
  
implementation

{ TCelebrityRecognitionUnmarshaller }

function TCelebrityRecognitionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCelebrityRecognition;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCelebrityRecognition;
begin
  UnmarshalledObject := TCelebrityRecognition.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Celebrity', TargetDepth) then
      begin
        var Unmarshaller := TCelebrityDetailUnmarshaller.JsonInstance;
        UnmarshalledObject.Celebrity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Timestamp', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.Timestamp := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCelebrityRecognitionUnmarshaller.Create;
begin
  FJsonInstance := TCelebrityRecognitionUnmarshaller.Create;
end;

class function TCelebrityRecognitionUnmarshaller.JsonInstance: ICelebrityRecognitionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
