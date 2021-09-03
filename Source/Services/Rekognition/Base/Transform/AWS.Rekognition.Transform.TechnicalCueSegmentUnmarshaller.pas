unit AWS.Rekognition.Transform.TechnicalCueSegmentUnmarshaller;

interface

uses
  AWS.Rekognition.Model.TechnicalCueSegment, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITechnicalCueSegmentUnmarshaller = IUnmarshaller<TTechnicalCueSegment, TJsonUnmarshallerContext>;
  
  TTechnicalCueSegmentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTechnicalCueSegment, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITechnicalCueSegmentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTechnicalCueSegment;
    class function JsonInstance: ITechnicalCueSegmentUnmarshaller; static;
  end;
  
implementation

{ TTechnicalCueSegmentUnmarshaller }

function TTechnicalCueSegmentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTechnicalCueSegment;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTechnicalCueSegment;
begin
  UnmarshalledObject := TTechnicalCueSegment.Create;
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

class constructor TTechnicalCueSegmentUnmarshaller.Create;
begin
  FJsonInstance := TTechnicalCueSegmentUnmarshaller.Create;
end;

class function TTechnicalCueSegmentUnmarshaller.JsonInstance: ITechnicalCueSegmentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
