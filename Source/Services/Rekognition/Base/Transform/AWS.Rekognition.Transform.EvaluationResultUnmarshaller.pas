unit AWS.Rekognition.Transform.EvaluationResultUnmarshaller;

interface

uses
  AWS.Rekognition.Model.EvaluationResult, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Rekognition.Transform.SummaryUnmarshaller;

type
  IEvaluationResultUnmarshaller = IUnmarshaller<TEvaluationResult, TJsonUnmarshallerContext>;
  
  TEvaluationResultUnmarshaller = class(TInterfacedObject, IUnmarshaller<TEvaluationResult, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IEvaluationResultUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TEvaluationResult;
    class function JsonInstance: IEvaluationResultUnmarshaller; static;
  end;
  
implementation

{ TEvaluationResultUnmarshaller }

function TEvaluationResultUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TEvaluationResult;
var
  TargetDepth: Integer;
  UnmarshalledObject: TEvaluationResult;
begin
  UnmarshalledObject := TEvaluationResult.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('F1Score', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.F1Score := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Summary', TargetDepth) then
      begin
        var Unmarshaller := TSummaryUnmarshaller.JsonInstance;
        UnmarshalledObject.Summary := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TEvaluationResultUnmarshaller.Create;
begin
  FJsonInstance := TEvaluationResultUnmarshaller.Create;
end;

class function TEvaluationResultUnmarshaller.JsonInstance: IEvaluationResultUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
