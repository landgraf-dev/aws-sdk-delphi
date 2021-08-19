unit AWS.Polly.Transform.SynthesisTaskUnmarshaller;

interface

uses
  AWS.Polly.Model.SynthesisTask, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISynthesisTaskUnmarshaller = IUnmarshaller<TSynthesisTask, TJsonUnmarshallerContext>;
  
  TSynthesisTaskUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSynthesisTask, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISynthesisTaskUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSynthesisTask;
    class function JsonInstance: ISynthesisTaskUnmarshaller; static;
  end;
  
implementation

{ TSynthesisTaskUnmarshaller }

function TSynthesisTaskUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSynthesisTask;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSynthesisTask;
begin
  UnmarshalledObject := TSynthesisTask.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CreationTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreationTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Engine', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Engine := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LexiconNames', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.LexiconNames := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputFormat', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputFormat := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputUri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputUri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('RequestCharacters', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.RequestCharacters := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SampleRate', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SampleRate := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SnsTopicArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.SnsTopicArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SpeechMarkTypes', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.SpeechMarkTypes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TaskId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TaskId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TaskStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TaskStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TaskStatusReason', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TaskStatusReason := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TextType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TextType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VoiceId', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.VoiceId := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSynthesisTaskUnmarshaller.Create;
begin
  FJsonInstance := TSynthesisTaskUnmarshaller.Create;
end;

class function TSynthesisTaskUnmarshaller.JsonInstance: ISynthesisTaskUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
