unit AWS.Rekognition.Transform.FaceMatchUnmarshaller;

interface

uses
  AWS.Rekognition.Model.FaceMatch, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.FaceUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IFaceMatchUnmarshaller = IUnmarshaller<TFaceMatch, TJsonUnmarshallerContext>;
  
  TFaceMatchUnmarshaller = class(TInterfacedObject, IUnmarshaller<TFaceMatch, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IFaceMatchUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TFaceMatch;
    class function JsonInstance: IFaceMatchUnmarshaller; static;
  end;
  
implementation

{ TFaceMatchUnmarshaller }

function TFaceMatchUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TFaceMatch;
var
  TargetDepth: Integer;
  UnmarshalledObject: TFaceMatch;
begin
  UnmarshalledObject := TFaceMatch.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Face', TargetDepth) then
      begin
        var Unmarshaller := TFaceUnmarshaller.JsonInstance;
        UnmarshalledObject.Face := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Similarity', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Similarity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TFaceMatchUnmarshaller.Create;
begin
  FJsonInstance := TFaceMatchUnmarshaller.Create;
end;

class function TFaceMatchUnmarshaller.JsonInstance: IFaceMatchUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
