unit AWS.Textract.Transform.DocumentMetadataUnmarshaller;

interface

uses
  AWS.Textract.Model.DocumentMetadata, 
  AWS.Transform.JsonUnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IDocumentMetadataUnmarshaller = IUnmarshaller<TDocumentMetadata, TJsonUnmarshallerContext>;
  
  TDocumentMetadataUnmarshaller = class(TInterfacedObject, IUnmarshaller<TDocumentMetadata, TJsonUnmarshallerContext>)
  strict private
    class var FJsonInstance: IDocumentMetadataUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentMetadata;
    class function JsonInstance: IDocumentMetadataUnmarshaller; static;
  end;
  
implementation

{ TDocumentMetadataUnmarshaller }

function TDocumentMetadataUnmarshaller.Unmarshall(AContext: TJsonUnmarshallerContext): TDocumentMetadata;
var
  TargetDepth: Integer;
  UnmarshalledObject: TDocumentMetadata;
begin
  UnmarshalledObject := TDocumentMetadata.Create;
  try
    AContext.Read;
    if AContext.CurrentTokenType = TJsonToken.Null then
      Exit(nil);
    TargetDepth := AContext.CurrentDepth;
    while AContext.ReadAtDepth(TargetDepth) do
      if AContext.TestExpression('Pages', TargetDepth) then
      begin
        var Unmarshaller := TIntegerUnmarshaller.JsonInstance;
        UnmarshalledObject.Pages := Unmarshaller.Unmarshall(AContext);
        Continue;
      end;
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TDocumentMetadataUnmarshaller.Create;
begin
  FJsonInstance := TDocumentMetadataUnmarshaller.Create;
end;

class function TDocumentMetadataUnmarshaller.JsonInstance: IDocumentMetadataUnmarshaller;
begin
  Result := FJsonInstance;
end;

end.
