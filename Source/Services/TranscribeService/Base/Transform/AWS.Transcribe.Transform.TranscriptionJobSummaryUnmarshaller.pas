unit AWS.Transcribe.Transform.TranscriptionJobSummaryUnmarshaller;

interface

uses
  AWS.Transcribe.Model.TranscriptionJobSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Transcribe.Transform.ContentRedactionUnmarshaller, 
  AWS.Transcribe.Transform.ModelSettingsUnmarshaller;

type
  ITranscriptionJobSummaryUnmarshaller = IUnmarshaller<TTranscriptionJobSummary, TJsonUnmarshallerContext>;
  
  TTranscriptionJobSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTranscriptionJobSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITranscriptionJobSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTranscriptionJobSummary;
    class function JsonInstance: ITranscriptionJobSummaryUnmarshaller; static;
  end;
  
implementation

{ TTranscriptionJobSummaryUnmarshaller }

function TTranscriptionJobSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTranscriptionJobSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTranscriptionJobSummary;
begin
  UnmarshalledObject := TTranscriptionJobSummary.Create;
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
      if AContext.TestExpression('LanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('ModelSettings', TargetDepth) then
      begin
        var Unmarshaller := TModelSettingsUnmarshaller.JsonInstance;
        UnmarshalledObject.ModelSettings := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputLocationType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputLocationType := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('StartTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.StartTime := Unmarshaller.Unmarshall(AContext);
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

class constructor TTranscriptionJobSummaryUnmarshaller.Create;
begin
  FJsonInstance := TTranscriptionJobSummaryUnmarshaller.Create;
end;

class function TTranscriptionJobSummaryUnmarshaller.JsonInstance: ITranscriptionJobSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
