unit AWS.Rekognition.Transform.ContentModerationDetectionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.ContentModerationDetection, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.ModerationLabelUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IContentModerationDetectionUnmarshaller = IUnmarshaller<TContentModerationDetection, TJsonUnmarshallerContext>;
  
  TContentModerationDetectionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TContentModerationDetection, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IContentModerationDetectionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TContentModerationDetection;
    class function JsonInstance: IContentModerationDetectionUnmarshaller; static;
  end;
  
implementation

{ TContentModerationDetectionUnmarshaller }

function TContentModerationDetectionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TContentModerationDetection;
var
  TargetDepth: Integer;
  UnmarshalledObject: TContentModerationDetection;
begin
  UnmarshalledObject := TContentModerationDetection.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ModerationLabel', TargetDepth) then
      begin
        var Unmarshaller := TModerationLabelUnmarshaller.JsonInstance;
        UnmarshalledObject.ModerationLabel := Unmarshaller.Unmarshall(AContext);
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

class constructor TContentModerationDetectionUnmarshaller.Create;
begin
  FJsonInstance := TContentModerationDetectionUnmarshaller.Create;
end;

class function TContentModerationDetectionUnmarshaller.JsonInstance: IContentModerationDetectionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
