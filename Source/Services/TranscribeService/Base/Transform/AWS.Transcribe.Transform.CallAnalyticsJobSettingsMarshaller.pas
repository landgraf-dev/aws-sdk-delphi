unit AWS.Transcribe.Transform.CallAnalyticsJobSettingsMarshaller;

interface

uses
  AWS.Transcribe.Model.CallAnalyticsJobSettings, 
  AWS.Transform.RequestMarshaller, 
  AWS.Transcribe.Transform.ContentRedactionMarshaller, 
  AWS.Transcribe.Transform.LanguageIdSettingsMarshaller;

type
  ICallAnalyticsJobSettingsMarshaller = IRequestMarshaller<TCallAnalyticsJobSettings, TJsonMarshallerContext>;
  
  TCallAnalyticsJobSettingsMarshaller = class(TInterfacedObject, IRequestMarshaller<TCallAnalyticsJobSettings, TJsonMarshallerContext>)
  strict private
    class var FInstance: ICallAnalyticsJobSettingsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TCallAnalyticsJobSettings; Context: TJsonMarshallerContext);
    class function Instance: ICallAnalyticsJobSettingsMarshaller; static;
  end;
  
implementation

{ TCallAnalyticsJobSettingsMarshaller }

procedure TCallAnalyticsJobSettingsMarshaller.Marshall(ARequestObject: TCallAnalyticsJobSettings; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetContentRedaction then
  begin
    Context.Writer.WriteName('ContentRedaction');
    Context.Writer.WriteBeginObject;
    TContentRedactionMarshaller.Instance.Marshall(ARequestObject.ContentRedaction, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetLanguageIdSettings then
  begin
    Context.Writer.WriteName('LanguageIdSettings');
    Context.Writer.WriteBeginObject;
    for var ARequestObjectLanguageIdSettingsKvp in ARequestObject.LanguageIdSettings do
    begin
      Context.Writer.WriteName(ARequestObjectLanguageIdSettingsKvp.Key);
      var ARequestObjectLanguageIdSettingsValue := ARequestObjectLanguageIdSettingsKvp.Value;
      Context.Writer.WriteBeginObject;
      TLanguageIdSettingsMarshaller.Instance.Marshall(ARequestObjectLanguageIdSettingsValue, Context);
      Context.Writer.WriteEndObject;
    end;
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetLanguageModelName then
  begin
    Context.Writer.WriteName('LanguageModelName');
    Context.Writer.WriteString(ARequestObject.LanguageModelName);
  end;
  if ARequestObject.IsSetLanguageOptions then
  begin
    Context.Writer.WriteName('LanguageOptions');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectLanguageOptionsListValue in ARequestObject.LanguageOptions do
      Context.Writer.WriteString(ARequestObjectLanguageOptionsListValue);
    Context.Writer.WriteEndArray;
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

class constructor TCallAnalyticsJobSettingsMarshaller.Create;
begin
  FInstance := TCallAnalyticsJobSettingsMarshaller.Create;
end;

class function TCallAnalyticsJobSettingsMarshaller.Instance: ICallAnalyticsJobSettingsMarshaller;
begin
  Result := FInstance;
end;

end.
