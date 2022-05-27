unit AWS.Translate.Transform.TranslationSettingsUnmarshaller;

interface

uses
  AWS.Translate.Model.TranslationSettings, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITranslationSettingsUnmarshaller = IUnmarshaller<TTranslationSettings, TJsonUnmarshallerContext>;
  
  TTranslationSettingsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTranslationSettings, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITranslationSettingsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTranslationSettings;
    class function JsonInstance: ITranslationSettingsUnmarshaller; static;
  end;
  
implementation

{ TTranslationSettingsUnmarshaller }

function TTranslationSettingsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTranslationSettings;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTranslationSettings;
begin
  UnmarshalledObject := TTranslationSettings.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Formality', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Formality := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Profanity', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Profanity := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTranslationSettingsUnmarshaller.Create;
begin
  FJsonInstance := TTranslationSettingsUnmarshaller.Create;
end;

class function TTranslationSettingsUnmarshaller.JsonInstance: ITranslationSettingsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
