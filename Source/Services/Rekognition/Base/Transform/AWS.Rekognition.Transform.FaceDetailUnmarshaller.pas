unit AWS.Rekognition.Transform.FaceDetailUnmarshaller;

interface

uses
  AWS.Rekognition.Model.FaceDetail, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.AgeRangeUnmarshaller, 
  AWS.Rekognition.Transform.BeardUnmarshaller, 
  AWS.Rekognition.Transform.BoundingBoxUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.EmotionUnmarshaller, 
  AWS.Rekognition.Model.Emotion, 
  AWS.Rekognition.Transform.EyeglassesUnmarshaller, 
  AWS.Rekognition.Transform.EyeOpenUnmarshaller, 
  AWS.Rekognition.Transform.GenderUnmarshaller, 
  AWS.Rekognition.Transform.LandmarkUnmarshaller, 
  AWS.Rekognition.Model.Landmark, 
  AWS.Rekognition.Transform.MouthOpenUnmarshaller, 
  AWS.Rekognition.Transform.MustacheUnmarshaller, 
  AWS.Rekognition.Transform.PoseUnmarshaller, 
  AWS.Rekognition.Transform.ImageQualityUnmarshaller, 
  AWS.Rekognition.Transform.SmileUnmarshaller, 
  AWS.Rekognition.Transform.SunglassesUnmarshaller;

type
  IFaceDetailUnmarshaller = IUnmarshaller<TFaceDetail, TJsonUnmarshallerContext>;
  
  TFaceDetailUnmarshaller = class(TInterfacedObject, IUnmarshaller<TFaceDetail, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IFaceDetailUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TFaceDetail;
    class function JsonInstance: IFaceDetailUnmarshaller; static;
  end;
  
implementation

{ TFaceDetailUnmarshaller }

function TFaceDetailUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TFaceDetail;
var
  TargetDepth: Integer;
  UnmarshalledObject: TFaceDetail;
begin
  UnmarshalledObject := TFaceDetail.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AgeRange', TargetDepth) then
      begin
        var Unmarshaller := TAgeRangeUnmarshaller.JsonInstance;
        UnmarshalledObject.AgeRange := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Beard', TargetDepth) then
      begin
        var Unmarshaller := TBeardUnmarshaller.JsonInstance;
        UnmarshalledObject.Beard := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
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
      if AContext.TestExpression('Eyeglasses', TargetDepth) then
      begin
        var Unmarshaller := TEyeglassesUnmarshaller.JsonInstance;
        UnmarshalledObject.Eyeglasses := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EyesOpen', TargetDepth) then
      begin
        var Unmarshaller := TEyeOpenUnmarshaller.JsonInstance;
        UnmarshalledObject.EyesOpen := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Gender', TargetDepth) then
      begin
        var Unmarshaller := TGenderUnmarshaller.JsonInstance;
        UnmarshalledObject.Gender := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Landmarks', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TLandmark, ILandmarkUnmarshaller>.JsonNew(TLandmarkUnmarshaller.JsonInstance);
        UnmarshalledObject.Landmarks := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MouthOpen', TargetDepth) then
      begin
        var Unmarshaller := TMouthOpenUnmarshaller.JsonInstance;
        UnmarshalledObject.MouthOpen := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Mustache', TargetDepth) then
      begin
        var Unmarshaller := TMustacheUnmarshaller.JsonInstance;
        UnmarshalledObject.Mustache := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('Sunglasses', TargetDepth) then
      begin
        var Unmarshaller := TSunglassesUnmarshaller.JsonInstance;
        UnmarshalledObject.Sunglasses := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TFaceDetailUnmarshaller.Create;
begin
  FJsonInstance := TFaceDetailUnmarshaller.Create;
end;

class function TFaceDetailUnmarshaller.JsonInstance: IFaceDetailUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
