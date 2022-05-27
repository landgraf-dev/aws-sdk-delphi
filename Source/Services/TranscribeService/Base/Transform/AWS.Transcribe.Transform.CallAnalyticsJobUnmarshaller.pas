unit AWS.Transcribe.Transform.CallAnalyticsJobUnmarshaller;

interface

uses
  AWS.Transcribe.Model.CallAnalyticsJob, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.ChannelDefinitionUnmarshaller, 
  AWS.Transcribe.Model.ChannelDefinition, 
  AWS.Transcribe.Transform.MediaUnmarshaller, 
  AWS.Transcribe.Transform.CallAnalyticsJobSettingsUnmarshaller, 
  AWS.Transcribe.Transform.TranscriptUnmarshaller;

type
  ICallAnalyticsJobUnmarshaller = IUnmarshaller<TCallAnalyticsJob, TJsonUnmarshallerContext>;
  
  TCallAnalyticsJobUnmarshaller = class(TInterfacedObject, IUnmarshaller<TCallAnalyticsJob, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ICallAnalyticsJobUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TCallAnalyticsJob;
    class function JsonInstance: ICallAnalyticsJobUnmarshaller; static;
  end;
  
implementation

{ TCallAnalyticsJobUnmarshaller }

function TCallAnalyticsJobUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TCallAnalyticsJob;
var
  TargetDepth: Integer;
  UnmarshalledObject: TCallAnalyticsJob;
begin
  UnmarshalledObject := TCallAnalyticsJob.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('CallAnalyticsJobName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CallAnalyticsJobName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CallAnalyticsJobStatus', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.CallAnalyticsJobStatus := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ChannelDefinitions', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TChannelDefinition, IChannelDefinitionUnmarshaller>.JsonNew(TChannelDefinitionUnmarshaller.JsonInstance);
        UnmarshalledObject.ChannelDefinitions := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CompletionTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CompletionTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('CreationTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.CreationTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('DataAccessRoleArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.DataAccessRoleArn := Unmarshaller.Unmarshall(AContext);
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
      if AContext.TestExpression('Settings', TargetDepth) then
      begin
        var Unmarshaller := TCallAnalyticsJobSettingsUnmarshaller.JsonInstance;
        UnmarshalledObject.Settings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.StartTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Transcript', TargetDepth) then
      begin
        var Unmarshaller := TTranscriptUnmarshaller.JsonInstance;
        UnmarshalledObject.Transcript := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TCallAnalyticsJobUnmarshaller.Create;
begin
  FJsonInstance := TCallAnalyticsJobUnmarshaller.Create;
end;

class function TCallAnalyticsJobUnmarshaller.JsonInstance: ICallAnalyticsJobUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
