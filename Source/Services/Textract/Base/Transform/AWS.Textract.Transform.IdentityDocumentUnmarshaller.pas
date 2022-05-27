unit AWS.Textract.Transform.IdentityDocumentUnmarshaller;

interface

uses
  AWS.Textract.Model.IdentityDocument, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.Textract.Transform.IdentityDocumentFieldUnmarshaller, 
  AWS.Textract.Model.IdentityDocumentField;

type
  IIdentityDocumentUnmarshaller = IUnmarshaller<TIdentityDocument, TJsonUnmarshallerContext>;
  
  TIdentityDocumentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIdentityDocument, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IIdentityDocumentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TIdentityDocument;
    class function JsonInstance: IIdentityDocumentUnmarshaller; static;
  end;
  
implementation

{ TIdentityDocumentUnmarshaller }

function TIdentityDocumentUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TIdentityDocument;
var
  TargetDepth: Integer;
  UnmarshalledObject: TIdentityDocument;
begin
  UnmarshalledObject := TIdentityDocument.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
    begin
      if AContext.TestExpression('DocumentIndex', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.DocumentIndex := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
      if AContext.TestExpression('IdentityDocumentFields', TargetDepth) then
      begin
        var Unmarshaller := TJsonObjectListUnmarshaller<TIdentityDocumentField, IIdentityDocumentFieldUnmarshaller>.JsonNew(TIdentityDocumentFieldUnmarshaller.JsonInstance);
        UnmarshalledObject.IdentityDocumentFields := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TIdentityDocumentUnmarshaller.Create;
begin
  FJsonInstance := TIdentityDocumentUnmarshaller.Create;
end;

class function TIdentityDocumentUnmarshaller.JsonInstance: IIdentityDocumentUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
