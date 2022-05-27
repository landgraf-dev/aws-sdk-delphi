unit AWS.Rekognition.Transform.ComparedFaceUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ComparedFace, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.EmotionUnmarshaller, 
  AWS.Rekognition.Model.Emotion, 
  AWS.Rekognition.Transform.LandmarkUnmarshaller, 
  AWS.Rekognition.Model.Landmark, 
  AWS.Rekognition.Transform.PoseUnmarshaller, 
  AWS.Rekognition.Transform.ImageQualityUnmarshaller, 
  AWS.Rekognition.Transform.SmileUnmarshaller;

type
  IComparedFaceUnmarshaller = IUnmarshaller<TComparedFace, TJsonUnmarshallerContext>;
  
  TComparedFaceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TComparedFace, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IComparedFaceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TComparedFace;
    class function JsonInstance: IComparedFaceUnmarshaller; static;
  end;
  
implementation

{ TComparedFaceUnmarshaller }

function TComparedFaceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TComparedFace;
var
  TargetDepth: Integer;
  UnmarshalledObject: TComparedFace;
begin
  UnmarshalledObject := TComparedFace.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('BoundingBox', TargetDepth) then
      begin
        var Unmarshaller := TBoundingBoxUnmarshaller.JsonInstance;
        UnmarshalledObject.BoundingBox := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Confidence', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.Confidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Emotions', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TEmotion, IEmotionUnmarshaller>.JsonNew(TEmotionUnmarshaller.JsonInstance);
        UnmarshalledObject.Emotions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Landmarks', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TLandmark, ILandmarkUnmarshaller>.JsonNew(TLandmarkUnmarshaller.JsonInstance);
        UnmarshalledObject.Landmarks := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Pose', TargetDepth) then
      begin
        var Unmarshaller := TPoseUnmarshaller.JsonInstance;
        UnmarshalledObject.Pose := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Quality', TargetDepth) then
      begin
        var Unmarshaller := TImageQualityUnmarshaller.JsonInstance;
        UnmarshalledObject.Quality := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Smile', TargetDepth) then
      begin
        var Unmarshaller := TSmileUnmarshaller.JsonInstance;
        UnmarshalledObject.Smile := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TComparedFaceUnmarshaller.Create;
begin
  FJsonInstance := TComparedFaceUnmarshaller.Create;
end;

class function TComparedFaceUnmarshaller.JsonInstance: IComparedFaceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
