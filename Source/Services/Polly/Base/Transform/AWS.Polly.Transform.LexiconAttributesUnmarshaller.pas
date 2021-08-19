unit AWS.Polly.Transform.LexiconAttributesUnmarshaller;

interface

uses
  AWS.Polly.Model.LexiconAttributes, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request;

type
  ILexiconAttributesUnmarshaller = IUnmarshaller<TLexiconAttributes, TJsonUnmarshallerContext>;
  
  TLexiconAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLexiconAttributes, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ILexiconAttributesUnmarshaller;
    class constructor Create;
  public
    class function Instance: ILexiconAttributesUnmarshaller; static;
  end;
  
implementation

{ TLexiconAttributesUnmarshaller }

class constructor TLexiconAttributesUnmarshaller.Create;
begin
  FInstance := TLexiconAttributesUnmarshaller.Create;
end;

class function TLexiconAttributesUnmarshaller.Instance: ILexiconAttributesUnmarshaller;
begin
  Result := FInstance;
end;

end.
