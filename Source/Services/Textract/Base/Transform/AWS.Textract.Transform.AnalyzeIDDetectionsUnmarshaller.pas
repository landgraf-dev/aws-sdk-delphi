unit AWS.Textract.Transform.AnalyzeIDDetectionsUnmarshaller;

interface

uses
  AWS.Textract.Model.AnalyzeIDDetections, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Textract.Transform.NormalizedValueUnmarshaller;

type
  IAnalyzeIDDetectionsUnmarshaller = IUnmarshaller<TAnalyzeIDDetections, TJsonUnmarshallerContext>;
  
  TAnalyzeIDDetectionsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAnalyzeIDDetections, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IAnalyzeIDDetectionsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TAnalyzeIDDetections;
    class function JsonInstance: IAnalyzeIDDetectionsUnmarshaller; static;
  end;
  
implementation

{ TAnalyzeIDDetectionsUnmarshaller }

function TAnalyzeIDDetectionsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TAnalyzeIDDetections;
var
  TargetDepth: Integer;
  UnmarshalledObject: TAnalyzeIDDetections;
begin
  UnmarshalledObject := TAnalyzeIDDetections.Create;
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
      if AContext.TestExpression('NormalizedValue', TargetDepth) then
      begin
        var Unmarshaller := TNormalizedValueUnmarshaller.JsonInstance;
        UnmarshalledObject.NormalizedValue := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Text', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Text := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TAnalyzeIDDetectionsUnmarshaller.Create;
begin
  FJsonInstance := TAnalyzeIDDetectionsUnmarshaller.Create;
end;

class function TAnalyzeIDDetectionsUnmarshaller.JsonInstance: IAnalyzeIDDetectionsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
