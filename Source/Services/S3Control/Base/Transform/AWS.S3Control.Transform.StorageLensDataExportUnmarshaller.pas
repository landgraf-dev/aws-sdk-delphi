unit AWS.S3Control.Transform.StorageLensDataExportUnmarshaller;

interface

uses
  AWS.S3Control.Model.StorageLensDataExport, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.S3BucketDestinationUnmarshaller;

type
  IStorageLensDataExportUnmarshaller = IUnmarshaller<TStorageLensDataExport, TXmlUnmarshallerContext>;
  
  TStorageLensDataExportUnmarshaller = class(TInterfacedObject, IUnmarshaller<TStorageLensDataExport, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IStorageLensDataExportUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensDataExport;
    class function Instance: IStorageLensDataExportUnmarshaller; static;
  end;
  
implementation

{ TStorageLensDataExportUnmarshaller }

function TStorageLensDataExportUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TStorageLensDataExport;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TStorageLensDataExport;
begin
  UnmarshalledObject := TStorageLensDataExport.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('S3BucketDestination', TargetDepth) then
        begin
          var Unmarshaller := TS3BucketDestinationUnmarshaller.Instance;
          UnmarshalledObject.S3BucketDestination := Unmarshaller.Unmarshall(AContext);
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

class constructor TStorageLensDataExportUnmarshaller.Create;
begin
  FInstance := TStorageLensDataExportUnmarshaller.Create;
end;

class function TStorageLensDataExportUnmarshaller.Instance: IStorageLensDataExportUnmarshaller;
begin
  Result := FInstance;
end;

end.
