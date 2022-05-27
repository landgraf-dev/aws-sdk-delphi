unit AWS.Transcribe.Transform.TranscriptionJobUnmarshaller;

interface

uses
  AWS.Transcribe.Model.TranscriptionJob, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.ContentRedactionUnmarshaller, 
  AWS.Transcribe.Transform.JobExecutionSettingsUnmarshaller, 
  AWS.Transcribe.Transform.LanguageIdSettingsUnmarshaller, 
  AWS.Transcribe.Model.LanguageIdSettings, 
  AWS.Transcribe.Transform.MediaUnmarshaller, 
  AWS.Transcribe.Transform.ModelSettingsUnmarshaller, 
  AWS.Transcribe.Transform.SettingsUnmarshaller, 
  AWS.Transcribe.Transform.SubtitlesOutputUnmarshaller, 
  AWS.Transcribe.Transform.TagUnmarshaller, 
  AWS.Transcribe.Model.Tag, 
  AWS.Transcribe.Transform.TranscriptUnmarshaller;

type
  ITranscriptionJobUnmarshaller = IUnmarshaller<TTranscriptionJob, TJsonUnmarshallerContext>;
  
  TTranscriptionJobUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTranscriptionJob, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITranscriptionJobUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTranscriptionJob;
    class function JsonInstance: ITranscriptionJobUnmarshaller; static;
  end;
  
implementation

{ TTranscriptionJobUnmarshaller }

function TTranscriptionJobUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTranscriptionJob;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTranscriptionJob;
begin
  UnmarshalledObject := TTranscriptionJob.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CompletionTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CompletionTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ContentRedaction', TargetDepth) then
      begin
        var Unmarshaller := TContentRedactionUnmarshaller.JsonInstance;
        UnmarshalledObject.ContentRedaction := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreationTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreationTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('FailureReason', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.FailureReason := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IdentifiedLanguageScore', TargetDepth) then
      begin
        var Unmarshaller := TFloatUnmarshaller.JsonInstance;
        UnmarshalledObject.IdentifiedLanguageScore := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IdentifyLanguage', TargetDepth) then
      begin
        var Unmarshaller := TBooleanUnmarshaller.JsonInstance;
        UnmarshalledObject.IdentifyLanguage := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('JobExecutionSettings', TargetDepth) then
      begin
        var Unmarshaller := TJobExecutionSettingsUnmarshaller.JsonInstance;
        UnmarshalledObject.JobExecutionSettings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageIdSettings', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectDictionaryUnmarshaller<string, TLanguageIdSettings, IJsonStringUnmarshaller, ILanguageIdSettingsUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance, TLanguageIdSettingsUnmarshaller.JsonInstance);
        UnmarshalledObject.LanguageIdSettings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageOptions', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.LanguageOptions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Media', TargetDepth) then
      begin
        var Unmarshaller := TMediaUnmarshaller.JsonInstance;
        UnmarshalledObject.Media := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MediaFormat', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MediaFormat := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('MediaSampleRateHertz', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.MediaSampleRateHertz := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ModelSettings', TargetDepth) then
      begin
        var Unmarshaller := TModelSettingsUnmarshaller.JsonInstance;
        UnmarshalledObject.ModelSettings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Settings', TargetDepth) then
      begin
        var Unmarshaller := TSettingsUnmarshaller.JsonInstance;
        UnmarshalledObject.Settings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.StartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Subtitles', TargetDepth) then
      begin
        var Unmarshaller := TSubtitlesOutputUnmarshaller.JsonInstance;
        UnmarshalledObject.Subtitles := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Tags', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TTag, ITagUnmarshaller>.JsonNew(TTagUnmarshaller.JsonInstance);
        UnmarshalledObject.Tags := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Transcript', TargetDepth) then
      begin
        var Unmarshaller := TTranscriptUnmarshaller.JsonInstance;
        UnmarshalledObject.Transcript := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TranscriptionJobName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TranscriptionJobName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TranscriptionJobStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TranscriptionJobStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTranscriptionJobUnmarshaller.Create;
begin
  FJsonInstance := TTranscriptionJobUnmarshaller.Create;
end;

class function TTranscriptionJobUnmarshaller.JsonInstance: ITranscriptionJobUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
