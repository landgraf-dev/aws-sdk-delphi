unit AWS.Rekognition.Transform.EmotionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.Emotion, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IEmotionUnmarshaller = IUnmarshaller<TEmotion, TJsonUnmarshallerContext>;
  
  TEmotionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEmotion, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEmotionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEmotion;
    class function JsonInstance: IEmotionUnmarshaller; static;
  end;
  
implementation

{ TEmotionUnmarshaller }

function TEmotionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEmotion;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEmotion;
begin
  UnmarshalledObject := TEmotion.Create;
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
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TEmotionUnmarshaller.Create;
begin
  FJsonInstance := TEmotionUnmarshaller.Create;
end;

class function TEmotionUnmarshaller.JsonInstance: IEmotionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
