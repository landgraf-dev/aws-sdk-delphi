unit AWS.Transcribe.Transform.TranscriptUnmarshaller;

interface

uses
  AWS.Transcribe.Model.Transcript, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITranscriptUnmarshaller = IUnmarshaller<TTranscript, TJsonUnmarshallerContext>;
  
  TTranscriptUnmarshaller = class(TInterfacedObject, IUnmarshaller<TTranscript, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ITranscriptUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TTranscript;
    class function JsonInstance: ITranscriptUnmarshaller; static;
  end;
  
implementation

{ TTranscriptUnmarshaller }

function TTranscriptUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TTranscript;
var
  TargetDepth: Integer;
  UnmarshalledObject: TTranscript;
begin
  UnmarshalledObject := TTranscript.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('RedactedTranscriptFileUri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.RedactedTranscriptFileUri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('TranscriptFileUri', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.TranscriptFileUri := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TTranscriptUnmarshaller.Create;
begin
  FJsonInstance := TTranscriptUnmarshaller.Create;
end;

class function TTranscriptUnmarshaller.JsonInstance: ITranscriptUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
