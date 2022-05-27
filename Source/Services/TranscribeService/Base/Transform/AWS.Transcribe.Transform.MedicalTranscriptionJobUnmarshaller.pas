unit AWS.Transcribe.Transform.MedicalTranscriptionJobUnmarshaller;

interface

uses
  AWS.Transcribe.Model.MedicalTranscriptionJob, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.MediaUnmarshaller, 
  AWS.Transcribe.Transform.MedicalTranscriptionSettingUnmarshaller, 
  AWS.Transcribe.Transform.TagUnmarshaller, 
  AWS.Transcribe.Model.Tag, 
  AWS.Transcribe.Transform.MedicalTranscriptUnmarshaller;

type
  IMedicalTranscriptionJobUnmarshaller = IUnmarshaller<TMedicalTranscriptionJob, TJsonUnmarshallerContext>;
  
  TMedicalTranscriptionJobUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMedicalTranscriptionJob, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMedicalTranscriptionJobUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMedicalTranscriptionJob;
    class function JsonInstance: IMedicalTranscriptionJobUnmarshaller; static;
  end;
  
implementation

{ TMedicalTranscriptionJobUnmarshaller }

function TMedicalTranscriptionJobUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMedicalTranscriptionJob;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMedicalTranscriptionJob;
begin
  UnmarshalledObject := TMedicalTranscriptionJob.Create;
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
      if AContext.TestExpression('ContentIdentificationType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.ContentIdentificationType := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('LanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageCode := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('MedicalTranscriptionJobName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MedicalTranscriptionJobName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Settings', TargetDepth) then
      begin
        var Unmarshaller := TMedicalTranscriptionSettingUnmarshaller.JsonInstance;
        UnmarshalledObject.Settings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Specialty', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Specialty := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.StartTime := Unmarshaller.Unmarshall(AContext);
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
        var Unmarshaller := TMedicalTranscriptUnmarshaller.JsonInstance;
        UnmarshalledObject.Transcript := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TranscriptionJobStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TranscriptionJobStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Type', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.&Type := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMedicalTranscriptionJobUnmarshaller.Create;
begin
  FJsonInstance := TMedicalTranscriptionJobUnmarshaller.Create;
end;

class function TMedicalTranscriptionJobUnmarshaller.JsonInstance: IMedicalTranscriptionJobUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
