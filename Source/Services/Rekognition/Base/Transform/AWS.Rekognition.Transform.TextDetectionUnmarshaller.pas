unit AWS.Rekognition.Transform.TextDetectionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.TextDetection, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.GeometryUnmarshaller;

type
  ITextDetectionUnmarshaller = IUnmarshaller<TTextDetection, TJsonUnmarshallerContext>;
  
  TTextDetectionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTextDetection, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITextDetectionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTextDetection;
    class function JsonInstance: ITextDetectionUnmarshaller; static;
  end;
  
implementation

{ TTextDetectionUnmarshaller }

function TTextDetectionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTextDetection;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTextDetection;
begin
  UnmarshalledObject := TTextDetection.Create;
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
      if AContext.TestExpression('DetectedText', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DetectedText := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Geometry', TargetDepth) then
      begin
        var Unmarshaller := TGeometryUnmarshaller.JsonInstance;
        UnmarshalledObject.Geometry := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Id', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ParentId', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.ParentId := Unmarshaller.Unmarshall(AContext);
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

class constructor TTextDetectionUnmarshaller.Create;
begin
  FJsonInstance := TTextDetectionUnmarshaller.Create;
end;

class function TTextDetectionUnmarshaller.JsonInstance: ITextDetectionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
