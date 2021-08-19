unit AWS.Polly.Transform.LexiconDescriptionUnmarshaller;

interface

uses
  AWS.Polly.Model.LexiconDescription, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request;

type
  ILexiconDescriptionUnmarshaller = IUnmarshaller<TLexiconDescription, TJsonUnmarshallerContext>;
  
  TLexiconDescriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TLexiconDescription, TJsonUnmarshallerContext>)
  strict private
    class var FInstance: ILexiconDescriptionUnmarshaller;
    class constructor Create;
  public
    class function Instance: ILexiconDescriptionUnmarshaller; static;
  end;
  
implementation

{ TLexiconDescriptionUnmarshaller }

class constructor TLexiconDescriptionUnmarshaller.Create;
begin
  FInstance := TLexiconDescriptionUnmarshaller.Create;
end;

class function TLexiconDescriptionUnmarshaller.Instance: ILexiconDescriptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
