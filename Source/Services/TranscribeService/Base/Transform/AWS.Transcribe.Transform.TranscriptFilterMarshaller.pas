unit AWS.Transcribe.Transform.TranscriptFilterMarshaller;

interface

uses
  AWS.Transcribe.Model.TranscriptFilter, 
  AWS.Transform.RequestMarshaller, 
  AWS.Transcribe.Transform.AbsoluteTimeRangeMarshaller, 
  AWS.Transcribe.Transform.RelativeTimeRangeMarshaller;

type
  ITranscriptFilterMarshaller = IRequestMarshaller<TTranscriptFilter, TJsonMarshallerContext>;
  
  TTranscriptFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TTranscriptFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITranscriptFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTranscriptFilter; Context: TJsonMarshallerContext);
    class function Instance: ITranscriptFilterMarshaller; static;
  end;
  
implementation

{ TTranscriptFilterMarshaller }

procedure TTranscriptFilterMarshaller.Marshall(ARequestObject: TTranscriptFilter; Context: TJsonMarshallerContext);
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
  if ARequestObject.IsSetTargets then
  begin
    Context.Writer.WriteName('Targets');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectTargetsListValue in ARequestObject.Targets do
      Context.Writer.WriteString(ARequestObjectTargetsListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetTranscriptFilterType then
  begin
    Context.Writer.WriteName('TranscriptFilterType');
    Context.Writer.WriteString(ARequestObject.TranscriptFilterType.Value);
  end;
end;

class constructor TTranscriptFilterMarshaller.Create;
begin
  FInstance := TTranscriptFilterMarshaller.Create;
end;

class function TTranscriptFilterMarshaller.Instance: ITranscriptFilterMarshaller;
begin
  Result := FInstance;
end;

end.
