unit AWS.Transcribe.Transform.MedicalTranscriptionSettingUnmarshaller;

interface

uses
  AWS.Transcribe.Model.MedicalTranscriptionSetting, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMedicalTranscriptionSettingUnmarshaller = IUnmarshaller<TMedicalTranscriptionSetting, TJsonUnmarshallerContext>;
  
  TMedicalTranscriptionSettingUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMedicalTranscriptionSetting, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMedicalTranscriptionSettingUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMedicalTranscriptionSetting;
    class function JsonInstance: IMedicalTranscriptionSettingUnmarshaller; static;
  end;
  
implementation

{ TMedicalTranscriptionSettingUnmarshaller }

function TMedicalTranscriptionSettingUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMedicalTranscriptionSetting;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMedicalTranscriptionSetting;
begin
  UnmarshalledObject := TMedicalTranscriptionSetting.Create;
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

class constructor TMedicalTranscriptionSettingUnmarshaller.Create;
begin
  FJsonInstance := TMedicalTranscriptionSettingUnmarshaller.Create;
end;

class function TMedicalTranscriptionSettingUnmarshaller.JsonInstance: IMedicalTranscriptionSettingUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
