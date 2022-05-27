unit AWS.Transcribe.Transform.CallAnalyticsJobSettingsUnmarshaller;

interface

uses
  AWS.Transcribe.Model.CallAnalyticsJobSettings, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transcribe.Transform.ContentRedactionUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.LanguageIdSettingsUnmarshaller, 
  AWS.Transcribe.Model.LanguageIdSettings;

type
  ICallAnalyticsJobSettingsUnmarshaller = IUnmarshaller<TCallAnalyticsJobSettings, TJsonUnmarshallerContext>;
  
  TCallAnalyticsJobSettingsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCallAnalyticsJobSettings, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICallAnalyticsJobSettingsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCallAnalyticsJobSettings;
    class function JsonInstance: ICallAnalyticsJobSettingsUnmarshaller; static;
  end;
  
implementation

{ TCallAnalyticsJobSettingsUnmarshaller }

function TCallAnalyticsJobSettingsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCallAnalyticsJobSettings;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCallAnalyticsJobSettings;
begin
  UnmarshalledObject := TCallAnalyticsJobSettings.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ContentRedaction', TargetDepth) then
      begin
        var Unmarshaller := TContentRedactionUnmarshaller.JsonInstance;
        UnmarshalledObject.ContentRedaction := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageIdSettings', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TLanguageIdSettings, IJsonStringUnmarshaller, ILanguageIdSettingsUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TLanguageIdSettingsUnmarshaller.JsonInstance);
        UnmarshalledObject.LanguageIdSettings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageModelName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageModelName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageOptions', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.LanguageOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VocabularyFilterMethod', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.VocabularyFilterMethod := Unmarshaller.Unmarshall(AContext);
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

class constructor TCallAnalyticsJobSettingsUnmarshaller.Create;
begin
  FJsonInstance := TCallAnalyticsJobSettingsUnmarshaller.Create;
end;

class function TCallAnalyticsJobSettingsUnmarshaller.JsonInstance: ICallAnalyticsJobSettingsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
