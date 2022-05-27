unit AWS.Transcribe.Transform.RuleMarshaller;

interface

uses
  AWS.Transcribe.Model.Rule, 
  AWS.Transform.RequestMarshaller, 
  AWS.Transcribe.Transform.InterruptionFilterMarshaller, 
  AWS.Transcribe.Transform.NonTalkTimeFilterMarshaller, 
  AWS.Transcribe.Transform.SentimentFilterMarshaller, 
  AWS.Transcribe.Transform.TranscriptFilterMarshaller;

type
  IRuleMarshaller = IRequestMarshaller<TRule, TJsonMarshallerContext>;
  
  TRuleMarshaller = class(TInterfacedObject, IRequestMarshaller<TRule, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRuleMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRule; Context: TJsonMarshallerContext);
    class function Instance: IRuleMarshaller; static;
  end;
  
implementation

{ TRuleMarshaller }

procedure TRuleMarshaller.Marshall(ARequestObject: TRule; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetInterruptionFilter then
  begin
    Context.Writer.WriteName('InterruptionFilter');
    Context.Writer.WriteBeginObject;
    TInterruptionFilterMarshaller.Instance.Marshall(ARequestObject.InterruptionFilter, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetNonTalkTimeFilter then
  begin
    Context.Writer.WriteName('NonTalkTimeFilter');
    Context.Writer.WriteBeginObject;
    TNonTalkTimeFilterMarshaller.Instance.Marshall(ARequestObject.NonTalkTimeFilter, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetSentimentFilter then
  begin
    Context.Writer.WriteName('SentimentFilter');
    Context.Writer.WriteBeginObject;
    TSentimentFilterMarshaller.Instance.Marshall(ARequestObject.SentimentFilter, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetTranscriptFilter then
  begin
    Context.Writer.WriteName('TranscriptFilter');
    Context.Writer.WriteBeginObject;
    TTranscriptFilterMarshaller.Instance.Marshall(ARequestObject.TranscriptFilter, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TRuleMarshaller.Create;
begin
  FInstance := TRuleMarshaller.Create;
end;

class function TRuleMarshaller.Instance: IRuleMarshaller;
begin
  Result := FInstance;
end;

end.
