unit AWS.Transcribe.Transform.InterruptionFilterMarshaller;

interface

uses
  AWS.Transcribe.Model.InterruptionFilter, 
  AWS.Transform.RequestMarshaller, 
  AWS.Transcribe.Transform.AbsoluteTimeRangeMarshaller, 
  AWS.Transcribe.Transform.RelativeTimeRangeMarshaller;

type
  IInterruptionFilterMarshaller = IRequestMarshaller<TInterruptionFilter, TJsonMarshallerContext>;
  
  TInterruptionFilterMarshaller = class(TInterfacedObject, IRequestMarshaller<TInterruptionFilter, TJsonMarshallerContext>)
  strict private
    class var FInstance: IInterruptionFilterMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TInterruptionFilter; Context: TJsonMarshallerContext);
    class function Instance: IInterruptionFilterMarshaller; static;
  end;
  
implementation

{ TInterruptionFilterMarshaller }

procedure TInterruptionFilterMarshaller.Marshall(ARequestObject: TInterruptionFilter; Context: TJsonMarshallerContext);
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
  if ARequestObject.IsSetThreshold then
  begin
    Context.Writer.WriteName('Threshold');
    Context.Writer.WriteInteger(ARequestObject.Threshold);
  end;
end;

class constructor TInterruptionFilterMarshaller.Create;
begin
  FInstance := TInterruptionFilterMarshaller.Create;
end;

class function TInterruptionFilterMarshaller.Instance: IInterruptionFilterMarshaller;
begin
  Result := FInstance;
end;

end.
