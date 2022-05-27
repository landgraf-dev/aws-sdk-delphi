unit AWS.Transcribe.Transform.SubtitlesOutputUnmarshaller;

interface

uses
  AWS.Transcribe.Model.SubtitlesOutput, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISubtitlesOutputUnmarshaller = IUnmarshaller<TSubtitlesOutput, TJsonUnmarshallerContext>;
  
  TSubtitlesOutputUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSubtitlesOutput, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ISubtitlesOutputUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TSubtitlesOutput;
    class function JsonInstance: ISubtitlesOutputUnmarshaller; static;
  end;
  
implementation

{ TSubtitlesOutputUnmarshaller }

function TSubtitlesOutputUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TSubtitlesOutput;
var
  TargetDepth: Integer;
  UnmarshalledObject: TSubtitlesOutput;
begin
  UnmarshalledObject := TSubtitlesOutput.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Formats', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.Formats := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('OutputStartIndex', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.OutputStartIndex := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SubtitleFileUris', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.SubtitleFileUris := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TSubtitlesOutputUnmarshaller.Create;
begin
  FJsonInstance := TSubtitlesOutputUnmarshaller.Create;
end;

class function TSubtitlesOutputUnmarshaller.JsonInstance: ISubtitlesOutputUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
