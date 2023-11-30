unit AWS.S3.Transform.IndexDocumentUnmarshaller;

interface

uses
  AWS.S3.Model.IndexDocument, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IIndexDocumentUnmarshaller = IUnmarshaller<TIndexDocument, TXmlUnmarshallerContext>;
  
  TIndexDocumentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIndexDocument, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIndexDocumentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TIndexDocument;
    class function Instance: IIndexDocumentUnmarshaller; static;
  end;
  
implementation

{ TIndexDocumentUnmarshaller }

function TIndexDocumentUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TIndexDocument;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TIndexDocument;
begin
  UnmarshalledObject := TIndexDocument.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Suffix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Suffix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TIndexDocumentUnmarshaller.Create;
begin
  FInstance := TIndexDocumentUnmarshaller.Create;
end;

class function TIndexDocumentUnmarshaller.Instance: IIndexDocumentUnmarshaller;
begin
  Result := FInstance;
end;

end.
