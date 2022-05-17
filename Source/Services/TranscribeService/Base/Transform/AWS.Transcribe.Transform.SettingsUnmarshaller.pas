unit AWS.Transcribe.Transform.SettingsUnmarshaller;

interface

uses
  AWS.Transcribe.Model.Settings, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISettingsUnmarshaller = IUnmarshaller<TSettings, TJsonUnmarshallerContext>;
  
  TSettingsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSettings, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISettingsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSettings;
    class function JsonInstance: ISettingsUnmarshaller; static;
  end;
  
implementation

{ TSettingsUnmarshaller }

function TSettingsUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSettings;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSettings;
begin
  UnmarshalledObject := TSettings.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('ChannelIdentification', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.ChannelIdentification := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxAlternatives', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.MaxAlternatives := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MaxSpeakerLabels', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.MaxSpeakerLabels := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ShowAlternatives', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.ShowAlternatives := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ShowSpeakerLabels', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.ShowSpeakerLabels := Unmarshaller.Unmarshall(AContext);
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

class constructor TSettingsUnmarshaller.Create;
begin
  FJsonInstance := TSettingsUnmarshaller.Create;
end;

class function TSettingsUnmarshaller.JsonInstance: ISettingsUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
