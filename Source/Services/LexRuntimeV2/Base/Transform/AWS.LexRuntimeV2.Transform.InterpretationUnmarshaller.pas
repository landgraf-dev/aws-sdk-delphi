unit AWS.LexRuntimeV2.Transform.InterpretationUnmarshaller;

interface

uses
  AWS.LexRuntimeV2.Model.Interpretation, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.LexRuntimeV2.Transform.IntentUnmarshaller, 
  AWS.LexRuntimeV2.Transform.ConfidenceScoreUnmarshaller, 
  AWS.LexRuntimeV2.Transform.SentimentResponseUnmarshaller;

type
  IInterpretationUnmarshaller = IUnmarshaller<TInterpretation, TJsonUnmarshallerContext>;
  
  TInterpretationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInterpretation, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IInterpretationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TInterpretation;
    class function JsonInstance: IInterpretationUnmarshaller; static;
  end;
  
implementation

{ TInterpretationUnmarshaller }

function TInterpretationUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TInterpretation;
var
  TargetDepth: Integer;
  UnmarshalledObject: TInterpretation;
begin
  UnmarshalledObject := TInterpretation.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('intent', TargetDepth) then
      begin
        var Unmarshaller := TIntentUnmarshaller.JsonInstance;
        UnmarshalledObject.Intent := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('nluConfidence', TargetDepth) then
      begin
        var Unmarshaller := TConfidenceScoreUnmarshaller.JsonInstance;
        UnmarshalledObject.NluConfidence := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('sentimentResponse', TargetDepth) then
      begin
        var Unmarshaller := TSentimentResponseUnmarshaller.JsonInstance;
        UnmarshalledObject.SentimentResponse := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TInterpretationUnmarshaller.Create;
begin
  FJsonInstance := TInterpretationUnmarshaller.Create;
end;

class function TInterpretationUnmarshaller.JsonInstance: IInterpretationUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
