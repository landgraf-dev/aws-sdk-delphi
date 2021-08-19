unit AWS.Polly.Transform.VoiceUnmarshaller;

interface

uses
  AWS.Polly.Model.Voice, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IVoiceUnmarshaller = IUnmarshaller<TVoice, TJsonUnmarshallerContext>;
  
  TVoiceUnmarshaller = class(TInterfacedObject, IUnmarshaller<TVoice, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IVoiceUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TVoice;
    class function JsonInstance: IVoiceUnmarshaller; static;
  end;
  
implementation

{ TVoiceUnmarshaller }

function TVoiceUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TVoice;
var
  TargetDepth: Integer;
  UnmarshalledObject: TVoice;
begin
  UnmarshalledObject := TVoice.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('AdditionalLanguageCodes', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.AdditionalLanguageCodes := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Gender', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Gender := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Id', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Id := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('SupportedEngines', TargetDepth) then
      begin
        var Unmarshaller := TJsonListUnmarshaller<string, IJsonStringUnmarshaller>.JsonNew(TStringUnmarshaller.JsonInstance);
        UnmarshalledObject.SupportedEngines := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TVoiceUnmarshaller.Create;
begin
  FJsonInstance := TVoiceUnmarshaller.Create;
end;

class function TVoiceUnmarshaller.JsonInstance: IVoiceUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
