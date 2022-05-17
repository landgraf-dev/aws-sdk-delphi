unit AWS.Transcribe.Transform.ModelSettingsMarshaller;

interface

uses
  AWS.Transcribe.Model.ModelSettings, 
  AWS.Transform.RequestMarshaller;

type
  IModelSettingsMarshaller = IRequestMarshaller<TModelSettings, TJsonMarshallerContext>;
  
  TModelSettingsMarshaller = class(TInterfacedObject, IRequestMarshaller<TModelSettings, TJsonMarshallerContext>)
  strict private
    class var FInstance: IModelSettingsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TModelSettings; Context: TJsonMarshallerContext);
    class function Instance: IModelSettingsMarshaller; static;
  end;
  
implementation

{ TModelSettingsMarshaller }

procedure TModelSettingsMarshaller.Marshall(ARequestObject: TModelSettings; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetLanguageModelName then
  begin
    Context.Writer.WriteName('LanguageModelName');
    Context.Writer.WriteString(ARequestObject.LanguageModelName);
  end;
end;

class constructor TModelSettingsMarshaller.Create;
begin
  FInstance := TModelSettingsMarshaller.Create;
end;

class function TModelSettingsMarshaller.Instance: IModelSettingsMarshaller;
begin
  Result := FInstance;
end;

end.
