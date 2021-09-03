unit AWS.Rekognition.Transform.FaceDetectionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.FaceDetection, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.FaceDetailUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IFaceDetectionUnmarshaller = IUnmarshaller<TFaceDetection, TJsonUnmarshallerContext>;
  
  TFaceDetectionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TFaceDetection, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IFaceDetectionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TFaceDetection;
    class function JsonInstance: IFaceDetectionUnmarshaller; static;
  end;
  
implementation

{ TFaceDetectionUnmarshaller }

function TFaceDetectionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TFaceDetection;
var
  TargetDepth: Integer;
  UnmarshalledObject: TFaceDetection;
begin
  UnmarshalledObject := TFaceDetection.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Face', TargetDepth) then
      begin
        var Unmarshaller := TFaceDetailUnmarshaller.JsonInstance;
        UnmarshalledObject.Face := Unmarshaller.Unmarshall(AContext);
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

class constructor TFaceDetectionUnmarshaller.Create;
begin
  FJsonInstance := TFaceDetectionUnmarshaller.Create;
end;

class function TFaceDetectionUnmarshaller.JsonInstance: IFaceDetectionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
