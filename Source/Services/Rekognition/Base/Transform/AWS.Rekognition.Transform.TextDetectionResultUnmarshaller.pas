unit AWS.Rekognition.Transform.TextDetectionResultUnmarshaller;

interface

uses
  AWS.Rekognition.Model.TextDetectionResult, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.TextDetectionUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITextDetectionResultUnmarshaller = IUnmarshaller<TTextDetectionResult, TJsonUnmarshallerContext>;
  
  TTextDetectionResultUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTextDetectionResult, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITextDetectionResultUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTextDetectionResult;
    class function JsonInstance: ITextDetectionResultUnmarshaller; static;
  end;
  
implementation

{ TTextDetectionResultUnmarshaller }

function TTextDetectionResultUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTextDetectionResult;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTextDetectionResult;
begin
  UnmarshalledObject := TTextDetectionResult.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('TextDetection', TargetDepth) then
      begin
        var Unmarshaller := TTextDetectionUnmarshaller.JsonInstance;
        UnmarshalledObject.TextDetection := Unmarshaller.Unmarshall(AContext);
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

class constructor TTextDetectionResultUnmarshaller.Create;
begin
  FJsonInstance := TTextDetectionResultUnmarshaller.Create;
end;

class function TTextDetectionResultUnmarshaller.JsonInstance: ITextDetectionResultUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
