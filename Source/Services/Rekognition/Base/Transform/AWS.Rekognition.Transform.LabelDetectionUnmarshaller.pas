unit AWS.Rekognition.Transform.LabelDetectionUnmarshaller;

interface

uses
  AWS.Rekognition.Model.LabelDetection, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Rekognition.Transform.LabelUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILabelDetectionUnmarshaller = IUnmarshaller<TLabelDetection, TJsonUnmarshallerContext>;
  
  TLabelDetectionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLabelDetection, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILabelDetectionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLabelDetection;
    class function JsonInstance: ILabelDetectionUnmarshaller; static;
  end;
  
implementation

{ TLabelDetectionUnmarshaller }

function TLabelDetectionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLabelDetection;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLabelDetection;
begin
  UnmarshalledObject := TLabelDetection.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Label', TargetDepth) then
      begin
        var Unmarshaller := TLabelUnmarshaller.JsonInstance;
        UnmarshalledObject.&Label := Unmarshaller.Unmarshall(AContext);
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

class constructor TLabelDetectionUnmarshaller.Create;
begin
  FJsonInstance := TLabelDetectionUnmarshaller.Create;
end;

class function TLabelDetectionUnmarshaller.JsonInstance: ILabelDetectionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
