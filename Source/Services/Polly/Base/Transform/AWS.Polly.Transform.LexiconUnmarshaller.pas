unit AWS.Polly.Transform.LexiconUnmarshaller;

interface

uses
  AWS.Polly.Model.Lexicon, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILexiconUnmarshaller = IUnmarshaller<TLexicon, TJsonUnmarshallerContext>;
  
  TLexiconUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLexicon, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILexiconUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLexicon;
    class function JsonInstance: ILexiconUnmarshaller; static;
  end;
  
implementation

{ TLexiconUnmarshaller }

function TLexiconUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLexicon;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLexicon;
begin
  UnmarshalledObject := TLexicon.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Content', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Content := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('Name', TargetDepth) then
      begin
        var Unmarshaller := TStringUnmarshaller.JsonInstance;
        UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TLexiconUnmarshaller.Create;
begin
  FJsonInstance := TLexiconUnmarshaller.Create;
end;

class function TLexiconUnmarshaller.JsonInstance: ILexiconUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
