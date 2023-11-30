unit AWS.S3.Transform.InventoryS3BucketDestinationUnmarshaller;

interface

uses
  AWS.S3.Model.InventoryS3BucketDestination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller, 
  AWS.S3.Transform.InventoryEncryptionUnmarshaller;

type
  IInventoryS3BucketDestinationUnmarshaller = IUnmarshaller<TInventoryS3BucketDestination, TXmlUnmarshallerContext>;
  
  TInventoryS3BucketDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryS3BucketDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInventoryS3BucketDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryS3BucketDestination;
    class function Instance: IInventoryS3BucketDestinationUnmarshaller; static;
  end;
  
implementation

{ TInventoryS3BucketDestinationUnmarshaller }

function TInventoryS3BucketDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryS3BucketDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryS3BucketDestination;
begin
  UnmarshalledObject := TInventoryS3BucketDestination.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('AccountId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.AccountId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Bucket', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.BucketName := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Encryption', TargetDepth) then
        begin
          var Unmarshaller := TInventoryEncryptionUnmarshaller.Instance;
          UnmarshalledObject.Encryption := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Format', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Format := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Prefix', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Prefix := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
      end
      else
        if AContext.IsEndElement and (AContext.CurrentDepth < OriginalDepth) then
          Exit(UnmarshalledObject);
  except
    UnmarshalledObject.Free;
    raise;
  end;
end;

class constructor TInventoryS3BucketDestinationUnmarshaller.Create;
begin
  FInstance := TInventoryS3BucketDestinationUnmarshaller.Create;
end;

class function TInventoryS3BucketDestinationUnmarshaller.Instance: IInventoryS3BucketDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.
