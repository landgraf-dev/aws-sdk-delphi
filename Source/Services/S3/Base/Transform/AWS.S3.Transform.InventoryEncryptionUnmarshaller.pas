unit AWS.S3.Transform.InventoryEncryptionUnmarshaller;

interface

uses
  AWS.S3.Model.InventoryEncryption, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.SSEKMSUnmarshaller, 
  AWS.S3.Transform.SSES3Unmarshaller;

type
  IInventoryEncryptionUnmarshaller = IUnmarshaller<TInventoryEncryption, TXmlUnmarshallerContext>;
  
  TInventoryEncryptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryEncryption, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInventoryEncryptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryEncryption;
    class function Instance: IInventoryEncryptionUnmarshaller; static;
  end;
  
implementation

{ TInventoryEncryptionUnmarshaller }

function TInventoryEncryptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryEncryption;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryEncryption;
begin
  UnmarshalledObject := TInventoryEncryption.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('SSE-KMS', TargetDepth) then
        begin
          var Unmarshaller := TSSEKMSUnmarshaller.Instance;
          UnmarshalledObject.SSEKMS := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SSE-S3', TargetDepth) then
        begin
          var Unmarshaller := TSSES3Unmarshaller.Instance;
          UnmarshalledObject.SSES3 := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
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

class constructor TInventoryEncryptionUnmarshaller.Create;
begin
  FInstance := TInventoryEncryptionUnmarshaller.Create;
end;

class function TInventoryEncryptionUnmarshaller.Instance: IInventoryEncryptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
