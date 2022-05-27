unit AWS.Transcribe.Transform.RuleUnmarshaller;

interface

uses
  AWS.Transcribe.Model.Rule, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transcribe.Transform.InterruptionFilterUnmarshaller, 
  AWS.Transcribe.Transform.NonTalkTimeFilterUnmarshaller, 
  AWS.Transcribe.Transform.SentimentFilterUnmarshaller, 
  AWS.Transcribe.Transform.TranscriptFilterUnmarshaller;

type
  IRuleUnmarshaller = IUnmarshaller<TRule, TJsonUnmarshallerContext>;
  
  TRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRule, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TRule;
    class function JsonInstance: IRuleUnmarshaller; static;
  end;
  
implementation

{ TRuleUnmarshaller }

function TRuleUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TRule;
var
  TargetDepth: Integer;
  UnmarshalledObject: TRule;
begin
  UnmarshalledObject := TRule.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('InterruptionFilter', TargetDepth) then
      begin
        var Unmarshaller := TInterruptionFilterUnmarshaller.JsonInstance;
        UnmarshalledObject.InterruptionFilter := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('NonTalkTimeFilter', TargetDepth) then
      begin
        var Unmarshaller := TNonTalkTimeFilterUnmarshaller.JsonInstance;
        UnmarshalledObject.NonTalkTimeFilter := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SentimentFilter', TargetDepth) then
      begin
        var Unmarshaller := TSentimentFilterUnmarshaller.JsonInstance;
        UnmarshalledObject.SentimentFilter := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TranscriptFilter', TargetDepth) then
      begin
        var Unmarshaller := TTranscriptFilterUnmarshaller.JsonInstance;
        UnmarshalledObject.TranscriptFilter := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TRuleUnmarshaller.Create;
begin
  FJsonInstance := TRuleUnmarshaller.Create;
end;

class function TRuleUnmarshaller.JsonInstance: IRuleUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
