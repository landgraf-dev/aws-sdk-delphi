unit AWS.Transcribe.Transform.SettingsMarshaller;

interface

uses
  AWS.Transcribe.Model.Settings, 
  AWS.Transform.RequestMarshaller;

type
  ISettingsMarshaller = IRequestMarshaller<TSettings, TJsonMarshallerContext>;
  
  TSettingsMarshaller = class(TInterfacedObject, IRequestMarshaller<TSettings, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISettingsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSettings; Context: TJsonMarshallerContext);
    class function Instance: ISettingsMarshaller; static;
  end;
  
implementation

{ TSettingsMarshaller }

procedure TSettingsMarshaller.Marshall(ARequestObject: TSettings; Context: TJsonMarshallerContext);
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
  if ARequestObject.IsSetVocabularyFilterMethod then
  begin
    Context.Writer.WriteName('VocabularyFilterMethod');
    Context.Writer.WriteString(ARequestObject.VocabularyFilterMethod.Value);
  end;
  if ARequestObject.IsSetVocabularyFilterName then
  begin
    Context.Writer.WriteName('VocabularyFilterName');
    Context.Writer.WriteString(ARequestObject.VocabularyFilterName);
  end;
  if ARequestObject.IsSetVocabularyName then
  begin
    Context.Writer.WriteName('VocabularyName');
    Context.Writer.WriteString(ARequestObject.VocabularyName);
  end;
end;

class constructor TSettingsMarshaller.Create;
begin
  FInstance := TSettingsMarshaller.Create;
end;

class function TSettingsMarshaller.Instance: ISettingsMarshaller;
begin
  Result := FInstance;
end;

end.
