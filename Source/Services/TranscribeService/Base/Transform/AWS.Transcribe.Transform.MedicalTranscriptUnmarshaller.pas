unit AWS.Transcribe.Transform.MedicalTranscriptUnmarshaller;

interface

uses
  AWS.Transcribe.Model.MedicalTranscript, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMedicalTranscriptUnmarshaller = IUnmarshaller<TMedicalTranscript, TJsonUnmarshallerContext>;
  
  TMedicalTranscriptUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMedicalTranscript, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IMedicalTranscriptUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TMedicalTranscript;
    class function JsonInstance: IMedicalTranscriptUnmarshaller; static;
  end;
  
implementation

{ TMedicalTranscriptUnmarshaller }

function TMedicalTranscriptUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TMedicalTranscript;
var
  TargetDepth: Integer;
  UnmarshalledObject: TMedicalTranscript;
begin
  UnmarshalledObject := TMedicalTranscript.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('TranscriptFileUri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TranscriptFileUri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TMedicalTranscriptUnmarshaller.Create;
begin
  FJsonInstance := TMedicalTranscriptUnmarshaller.Create;
end;

class function TMedicalTranscriptUnmarshaller.JsonInstance: IMedicalTranscriptUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
