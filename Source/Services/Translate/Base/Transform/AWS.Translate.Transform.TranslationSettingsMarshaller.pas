unit AWS.Translate.Transform.TranslationSettingsMarshaller;

interface

uses
  AWS.Translate.Model.TranslationSettings, 
  AWS.Transform.RequestMarshaller;

type
  ITranslationSettingsMarshaller = IRequestMarshaller<TTranslationSettings, TJsonMarshallerContext>;
  
  TTranslationSettingsMarshaller = class(TInterfacedObject, IRequestMarshaller<TTranslationSettings, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITranslationSettingsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTranslationSettings; Context: TJsonMarshallerContext);
    class function Instance: ITranslationSettingsMarshaller; static;
  end;
  
implementation

{ TTranslationSettingsMarshaller }

procedure TTranslationSettingsMarshaller.Marshall(ARequestObject: TTranslationSettings; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetFormality then
  begin
    Context.Writer.WriteName('Formality');
    Context.Writer.WriteString(ARequestObject.Formality.Value);
  end;
  if ARequestObject.IsSetProfanity then
  begin
    Context.Writer.WriteName('Profanity');
    Context.Writer.WriteString(ARequestObject.Profanity.Value);
  end;
end;

class constructor TTranslationSettingsMarshaller.Create;
begin
  FInstance := TTranslationSettingsMarshaller.Create;
end;

class function TTranslationSettingsMarshaller.Instance: ITranslationSettingsMarshaller;
begin
  Result := FInstance;
end;

end.
