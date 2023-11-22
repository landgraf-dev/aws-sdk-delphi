unit AWS.S3Control.Transform.StorageLensDataExportEncryptionUnmarshaller;

interface

uses
  AWS.S3Control.Model.StorageLensDataExportEncryption, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.SSEKMSUnmarshaller, 
  AWS.S3Control.Transform.SSES3Unmarshaller;

type
  IStorageLensDataExportEncryptionUnmarshaller = IUnmarshaller<TStorageLensDataExportEncryption, TXmlUnmarshallerContext>;
  
  TStorageLensDataExportEncryptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStorageLensDataExportEncryption, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStorageLensDataExportEncryptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensDataExportEncryption;
    class function Instance: IStorageLensDataExportEncryptionUnmarshaller; static;
  end;
  
implementation

{ TStorageLensDataExportEncryptionUnmarshaller }

function TStorageLensDataExportEncryptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensDataExportEncryption;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStorageLensDataExportEncryption;
begin
  UnmarshalledObject := TStorageLensDataExportEncryption.Create;
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

class constructor TStorageLensDataExportEncryptionUnmarshaller.Create;
begin
  FInstance := TStorageLensDataExportEncryptionUnmarshaller.Create;
end;

class function TStorageLensDataExportEncryptionUnmarshaller.Instance: IStorageLensDataExportEncryptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
