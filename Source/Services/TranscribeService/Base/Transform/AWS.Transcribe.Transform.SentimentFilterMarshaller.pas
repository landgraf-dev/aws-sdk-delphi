unit AWS.Transcribe.Transform.SentimentFilterMarshaller;

interface

uses
  AWS.Transcribe.Model.SentimentFilter, 
  AWS.Transform.RequestMarshaller, 
  AWS.Transcribe.Transform.AbsoluteTimeRangeMarshaller, 
  AWS.Transcribe.Transform.RelativeTimeRangeMarshaller;

type
  ISentimentFilterMarshaller = IRequestMarshaller<TSentimentFilter, TJsonMarshallerContext>;
  
  TSentimentFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TSentimentFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISentimentFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSentimentFilter; Context: TJsonMarshallerContext);
    class function Instance: ISentimentFilterMarshaller; static;
  end;
  
implementation

{ TSentimentFilterMarshaller }

procedure TSentimentFilterMarshaller.Marshall(ARequestObject: TSentimentFilter; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetAbsoluteTimeRange then
  begin
    Context.Writer.WriteName('AbsoluteTimeRange');
    Context.Writer.WriteBeginObject;
    TAbsoluteTimeRangeMarshaller.Instance.Marshall(ARequestObject.AbsoluteTimeRange, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetNegate then
  begin
    Context.Writer.WriteName('Negate');
    Context.Writer.WriteBoolean(ARequestObject.Negate);
  end;
  if ARequestObject.IsSetParticipantRole then
  begin
    Context.Writer.WriteName('ParticipantRole');
    Context.Writer.WriteString(ARequestObject.ParticipantRole.Value);
  end;
  if ARequestObject.IsSetRelativeTimeRange then
  begin
    Context.Writer.WriteName('RelativeTimeRange');
    Context.Writer.WriteBeginObject;
    TRelativeTimeRangeMarshaller.Instance.Marshall(ARequestObject.RelativeTimeRange, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetSentiments then
  begin
    Context.Writer.WriteName('Sentiments');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectSentimentsListValue in ARequestObject.Sentiments do
      Context.Writer.WriteString(ARequestObjectSentimentsListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TSentimentFilterMarshaller.Create;
begin
  FInstance := TSentimentFilterMarshaller.Create;
end;

class function TSentimentFilterMarshaller.Instance: ISentimentFilterMarshaller;
begin
  Result := FInstance;
end;

end.
