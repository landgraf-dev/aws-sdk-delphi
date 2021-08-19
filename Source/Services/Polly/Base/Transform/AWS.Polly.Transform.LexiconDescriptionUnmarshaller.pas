unit AWS.Polly.Transform.LexiconDescriptionUnmarshaller;

interface

uses
  AWS.Polly.Model.LexiconDescription, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Polly.Transform.LexiconAttributesUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ILexiconDescriptionUnmarshaller = IUnmarshaller<TLexiconDescription, TJsonUnmarshallerContext>;
  
  TLexiconDescriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLexiconDescription, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: ILexiconDescriptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TLexiconDescription;
    class function JsonInstance: ILexiconDescriptionUnmarshaller; static;
  end;
  
implementation

{ TLexiconDescriptionUnmarshaller }

function TLexiconDescriptionUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TLexiconDescription;
var
  TargetDepth: Integer;
  UnmarshalledObject: TLexiconDescription;
begin
  UnmarshalledObject := TLexiconDescription.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('Attributes', TargetDepth) then
      begin
        var Unmarshaller := TLexiconAttributesUnmarshaller.JsonInstance;
        UnmarshalledObject.Attributes := Unmarshaller.Unmarshall(AContext);
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

class constructor TLexiconDescriptionUnmarshaller.Create;
begin
  FJsonInstance := TLexiconDescriptionUnmarshaller.Create;
end;

class function TLexiconDescriptionUnmarshaller.JsonInstance: ILexiconDescriptionUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
