unit AWS.S3.Transform.ErrorDocumentUnmarshaller;

interface

uses
  AWS.S3.Model.ErrorDocument, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IErrorDocumentUnmarshaller = IUnmarshaller<TErrorDocument, TXmlUnmarshallerContext>;
  
  TErrorDocumentUnmarshaller = class(TInterfacedObject, IUnmarshaller<TErrorDocument, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IErrorDocumentUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TErrorDocument;
    class function Instance: IErrorDocumentUnmarshaller; static;
  end;
  
implementation

{ TErrorDocumentUnmarshaller }

function TErrorDocumentUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TErrorDocument;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TErrorDocument;
begin
  UnmarshalledObject := TErrorDocument.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Key', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Key := Unmarshaller.Unmarshall(AContext);
          Continue;
        end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
    Result := UnmarshalledObject;
    UnmarshalledObject := nil;
  finally
    UnmarshalledObject.Free;
  end;
end;

class constructor TErrorDocumentUnmarshaller.Create;
begin
  FInstance := TErrorDocumentUnmarshaller.Create;
end;

class function TErrorDocumentUnmarshaller.Instance: IErrorDocumentUnmarshaller;
begin
  Result := FInstance;
end;

end.
