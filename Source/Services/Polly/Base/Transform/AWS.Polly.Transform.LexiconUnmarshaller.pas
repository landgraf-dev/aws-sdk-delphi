unit AWS.Polly.Transform.LexiconUnmarshaller;

interface

uses
  AWS.Polly.Model.Lexicon, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request;

type
  ILexiconUnmarshaller = IUnmarshaller<TLexicon, TJsonUnmarshallerContext>;
  
  TLexiconUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLexicon, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ILexiconUnmarshaller;
    class constructor Create;
  public
    class function Instance: ILexiconUnmarshaller; static;
  end;
  
implementation

{ TLexiconUnmarshaller }

class constructor TLexiconUnmarshaller.Create;
begin
  FInstance := TLexiconUnmarshaller.Create;
end;

class function TLexiconUnmarshaller.Instance: ILexiconUnmarshaller;
begin
  Result := FInstance;
end;

end.
