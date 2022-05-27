unit AWS.Rekognition.Transform.SegmentDetectionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.SegmentDetection, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.ShotSegmentUnmarshaller, 
  AWS.Rekognition.Transform.TechnicalCueSegmentUnmarshaller;

type
  ISegmentDetectionUnmarshaller = IUnmarshaller<TSegmentDetection, TJsonUnmarshallerContext>;
  
  TSegmentDetectionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSegmentDetection, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISegmentDetectionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSegmentDetection;
    class function JsonInstance: ISegmentDetectionUnmarshaller; static;
  end;
  
implementation

{ TSegmentDetectionUnmarshaller }

function TSegmentDetectionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSegmentDetection;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSegmentDetection;
begin
  UnmarshalledObject := TSegmentDetection.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DurationFrames', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.DurationFrames := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DurationMillis', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.DurationMillis := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DurationSMPTE', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DurationSMPTE := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EndFrameNumber', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.EndFrameNumber := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EndTimecodeSMPTE', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.EndTimecodeSMPTE := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('EndTimestampMillis', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.EndTimestampMillis := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ShotSegment', TargetDepth) then
      begin
        var Unmarshaller := TShotSegmentUnmarshaller.JsonInstance;
        UnmarshalledObject.ShotSegment := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartFrameNumber', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.StartFrameNumber := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTimecodeSMPTE', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.StartTimecodeSMPTE := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTimestampMillis', TargetDepth) then
      begin
        var Unmarshaller := TInt64Unmarshaller.JsonInstance;
        UnmarshalledObject.StartTimestampMillis := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TechnicalCueSegment', TargetDepth) then
      begin
        var Unmarshaller := TTechnicalCueSegmentUnmarshaller.JsonInstance;
        UnmarshalledObject.TechnicalCueSegment := Unmarshaller.Unmarshall(AContext);
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

class constructor TSegmentDetectionUnmarshaller.Create;
begin
  FJsonInstance := TSegmentDetectionUnmarshaller.Create;
end;

class function TSegmentDetectionUnmarshaller.JsonInstance: ISegmentDetectionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
