unit AWS.Polly.Transform.LexiconAttributesUnmarshaller;

interface

uses
  AWS.Polly.Model.LexiconAttributes, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILexiconAttributesUnmarshaller = IUnmarshaller<TLexiconAttributes, TJsonUnmarshallerContext>;
  
  TLexiconAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLexiconAttributes, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILexiconAttributesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLexiconAttributes;
    class function JsonInstance: ILexiconAttributesUnmarshaller; static;
  end;
  
implementation

{ TLexiconAttributesUnmarshaller }

function TLexiconAttributesUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLexiconAttributes;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLexiconAttributes;
begin
  UnmarshalledObject := TLexiconAttributes.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Alphabet', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Alphabet := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LanguageCode', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LanguageCode := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LastModified', TargetDepth) then
      begin
        var Unmarshaller := TDateTimeUnmarshaller.JsonInstance;
        UnmarshalledObject.LastModified := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LexemesCount', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.LexemesCount := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('LexiconArn', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.LexiconArn := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Size', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Size := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLexiconAttributesUnmarshaller.Create;
begin
  FJsonInstance := TLexiconAttributesUnmarshaller.Create;
end;

class function TLexiconAttributesUnmarshaller.JsonInstance: ILexiconAttributesUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
