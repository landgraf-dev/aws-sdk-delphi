unit AWS.Transcribe.Transform.MedicalTranscriptionSettingMarshaller;

interface

uses
  AWS.Transcribe.Model.MedicalTranscriptionSetting, 
  AWS.Transform.RequestMarshaller;

type
  IMedicalTranscriptionSettingMarshaller = IRequestMarshaller<TMedicalTranscriptionSetting, TJsonMarshallerContext>;
  
  TMedicalTranscriptionSettingMarshaller = class(TInterfacedObject, IRequestMarshaller<TMedicalTranscriptionSetting, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMedicalTranscriptionSettingMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMedicalTranscriptionSetting; Context: TJsonMarshallerContext);
    class function Instance: IMedicalTranscriptionSettingMarshaller; static;
  end;
  
implementation

{ TMedicalTranscriptionSettingMarshaller }

procedure TMedicalTranscriptionSettingMarshaller.Marshall(ARequestObject: TMedicalTranscriptionSetting; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetChannelIdentification then
  begin
    Context.Writer.WriteName('ChannelIdentification');
    Context.Writer.WriteBoolean(ARequestObject.ChannelIdentification);
  end;
  if ARequestObject.IsSetMaxAlternatives then
  begin
    Context.Writer.WriteName('MaxAlternatives');
    Context.Writer.WriteInteger(ARequestObject.MaxAlternatives);
  end;
  if ARequestObject.IsSetMaxSpeakerLabels then
  begin
    Context.Writer.WriteName('MaxSpeakerLabels');
    Context.Writer.WriteInteger(ARequestObject.MaxSpeakerLabels);
  end;
  if ARequestObject.IsSetShowAlternatives then
  begin
    Context.Writer.WriteName('ShowAlternatives');
    Context.Writer.WriteBoolean(ARequestObject.ShowAlternatives);
  end;
  if ARequestObject.IsSetShowSpeakerLabels then
  begin
    Context.Writer.WriteName('ShowSpeakerLabels');
    Context.Writer.WriteBoolean(ARequestObject.ShowSpeakerLabels);
  end;
  if ARequestObject.IsSetVocabularyName then
  begin
    Context.Writer.WriteName('VocabularyName');
    Context.Writer.WriteString(ARequestObject.VocabularyName);
  end;
end;

class constructor TMedicalTranscriptionSettingMarshaller.Create;
begin
  FInstance := TMedicalTranscriptionSettingMarshaller.Create;
end;

class function TMedicalTranscriptionSettingMarshaller.Instance: IMedicalTranscriptionSettingMarshaller;
begin
  Result := FInstance;
end;

end.
