unit AWS.Transcribe.Transform.LanguageIdSettingsMarshaller;

interface

uses
  AWS.Transcribe.Model.LanguageIdSettings, 
  AWS.Transform.RequestMarshaller;

type
  ILanguageIdSettingsMarshaller = IRequestMarshaller<TLanguageIdSettings, TJsonMarshallerContext>;
  
  TLanguageIdSettingsMarshaller = class(TInterfacedObject, IRequestMarshaller<TLanguageIdSettings, TJsonMarshallerContext>)
  strict private
    class var FInstance: ILanguageIdSettingsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TLanguageIdSettings; Context: TJsonMarshallerContext);
    class function Instance: ILanguageIdSettingsMarshaller; static;
  end;
  
implementation

{ TLanguageIdSettingsMarshaller }

procedure TLanguageIdSettingsMarshaller.Marshall(ARequestObject: TLanguageIdSettings; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetLanguageModelName then
  begin
    Context.Writer.WriteName('LanguageModelName');
    Context.Writer.WriteString(ARequestObject.LanguageModelName);
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

class constructor TLanguageIdSettingsMarshaller.Create;
begin
  FInstance := TLanguageIdSettingsMarshaller.Create;
end;

class function TLanguageIdSettingsMarshaller.Instance: ILanguageIdSettingsMarshaller;
begin
  Result := FInstance;
end;

end.
