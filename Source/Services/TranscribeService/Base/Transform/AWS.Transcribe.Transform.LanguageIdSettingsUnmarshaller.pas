unit AWS.Transcribe.Transform.LanguageIdSettingsUnmarshaller;

interface

uses
  AWS.Transcribe.Model.LanguageIdSettings, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILanguageIdSettingsUnmarshaller = IUnmarshaller<TLanguageIdSettings, TJsonUnmarshallerContext>;
  
  TLanguageIdSettingsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLanguageIdSettings, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILanguageIdSettingsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLanguageIdSettings;
    class function JsonInstance: ILanguageIdSettingsUnmarshaller; static;
  end;
  
implementation

{ TLanguageIdSettingsUnmarshaller }

function TLanguageIdSettingsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLanguageIdSettings;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLanguageIdSettings;
begin
  UnmarshalledObject := TLanguageIdSettings.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('LanguageModelName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageModelName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VocabularyFilterName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.VocabularyFilterName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VocabularyName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.VocabularyName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLanguageIdSettingsUnmarshaller.Create;
begin
  FJsonInstance := TLanguageIdSettingsUnmarshaller.Create;
end;

class function TLanguageIdSettingsUnmarshaller.JsonInstance: ILanguageIdSettingsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
