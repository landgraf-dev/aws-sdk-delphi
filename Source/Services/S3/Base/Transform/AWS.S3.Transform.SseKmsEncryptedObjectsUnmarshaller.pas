unit AWS.S3.Transform.SseKmsEncryptedObjectsUnmarshaller;

interface

uses
  AWS.S3.Model.SseKmsEncryptedObjects, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISseKmsEncryptedObjectsUnmarshaller = IUnmarshaller<TSseKmsEncryptedObjects, TXmlUnmarshallerContext>;
  
  TSseKmsEncryptedObjectsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSseKmsEncryptedObjects, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISseKmsEncryptedObjectsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSseKmsEncryptedObjects;
    class function Instance: ISseKmsEncryptedObjectsUnmarshaller; static;
  end;
  
implementation

{ TSseKmsEncryptedObjectsUnmarshaller }

function TSseKmsEncryptedObjectsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSseKmsEncryptedObjects;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSseKmsEncryptedObjects;
begin
  UnmarshalledObject := TSseKmsEncryptedObjects.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
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

class constructor TSseKmsEncryptedObjectsUnmarshaller.Create;
begin
  FInstance := TSseKmsEncryptedObjectsUnmarshaller.Create;
end;

class function TSseKmsEncryptedObjectsUnmarshaller.Instance: ISseKmsEncryptedObjectsUnmarshaller;
begin
  Result := FInstance;
end;

end.
