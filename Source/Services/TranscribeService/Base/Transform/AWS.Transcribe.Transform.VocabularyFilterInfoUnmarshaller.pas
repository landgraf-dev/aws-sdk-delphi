unit AWS.Transcribe.Transform.VocabularyFilterInfoUnmarshaller;

interface

uses
  AWS.Transcribe.Model.VocabularyFilterInfo, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IVocabularyFilterInfoUnmarshaller = IUnmarshaller<TVocabularyFilterInfo, TJsonUnmarshallerContext>;
  
  TVocabularyFilterInfoUnmarshaller = class(TInterfacedObject, IUnmarshaller<TVocabularyFilterInfo, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IVocabularyFilterInfoUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TVocabularyFilterInfo;
    class function JsonInstance: IVocabularyFilterInfoUnmarshaller; static;
  end;
  
implementation

{ TVocabularyFilterInfoUnmarshaller }

function TVocabularyFilterInfoUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TVocabularyFilterInfo;
var
  TargetDepth: Integer;
  UnmarshalledObject: TVocabularyFilterInfo;
begin
  UnmarshalledObject := TVocabularyFilterInfo.Create;
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
      if AContext.TestExpression('VocabularyFilterName', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.VocabularyFilterName := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TVocabularyFilterInfoUnmarshaller.Create;
begin
  FJsonInstance := TVocabularyFilterInfoUnmarshaller.Create;
end;

class function TVocabularyFilterInfoUnmarshaller.JsonInstance: IVocabularyFilterInfoUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
