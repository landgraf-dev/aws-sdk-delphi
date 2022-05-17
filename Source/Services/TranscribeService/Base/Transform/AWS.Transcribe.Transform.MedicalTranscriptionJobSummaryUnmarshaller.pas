unit AWS.Transcribe.Transform.MedicalTranscriptionJobSummaryUnmarshaller;

interface

uses
  AWS.Transcribe.Model.MedicalTranscriptionJobSummary, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMedicalTranscriptionJobSummaryUnmarshaller = IUnmarshaller<TMedicalTranscriptionJobSummary, TJsonUnmarshallerContext>;
  
  TMedicalTranscriptionJobSummaryUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMedicalTranscriptionJobSummary, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMedicalTranscriptionJobSummaryUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMedicalTranscriptionJobSummary;
    class function JsonInstance: IMedicalTranscriptionJobSummaryUnmarshaller; static;
  end;
  
implementation

{ TMedicalTranscriptionJobSummaryUnmarshaller }

function TMedicalTranscriptionJobSummaryUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMedicalTranscriptionJobSummary;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMedicalTranscriptionJobSummary;
begin
  UnmarshalledObject := TMedicalTranscriptionJobSummary.Create;
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
      if AContext.TestExpression('MedicalTranscriptionJobName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.MedicalTranscriptionJobName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputLocationType', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputLocationType := Unmarshaller.Unmarshall(AContext);
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

class constructor TMedicalTranscriptionJobSummaryUnmarshaller.Create;
begin
  FJsonInstance := TMedicalTranscriptionJobSummaryUnmarshaller.Create;
end;

class function TMedicalTranscriptionJobSummaryUnmarshaller.JsonInstance: IMedicalTranscriptionJobSummaryUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
