unit AWS.Transcribe.Transform.VocabularyInfoUnmarshaller;

interface

uses
  AWS.Transcribe.Model.VocabularyInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IVocabularyInfoUnmarshaller = IUnmarshaller<TVocabularyInfo, TJsonUnmarshallerContext>;
  
  TVocabularyInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TVocabularyInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IVocabularyInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TVocabularyInfo;
    class function JsonInstance: IVocabularyInfoUnmarshaller; static;
  end;
  
implementation

{ TVocabularyInfoUnmarshaller }

function TVocabularyInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TVocabularyInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TVocabularyInfo;
begin
  UnmarshalledObject := TVocabularyInfo.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('LanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModifiedTime', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModifiedTime := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VocabularyName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.VocabularyName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('VocabularyState', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.VocabularyState := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TVocabularyInfoUnmarshaller.Create;
begin
  FJsonInstance := TVocabularyInfoUnmarshaller.Create;
end;

class function TVocabularyInfoUnmarshaller.JsonInstance: IVocabularyInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
