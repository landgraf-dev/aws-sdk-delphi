unit AWS.S3.Transform.InventoryDestinationUnmarshaller;

interface

uses
  AWS.S3.Model.InventoryDestination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.InventoryS3BucketDestinationUnmarshaller;

type
  IInventoryDestinationUnmarshaller = IUnmarshaller<TInventoryDestination, TXmlUnmarshallerContext>;
  
  TInventoryDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TInventoryDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IInventoryDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryDestination;
    class function Instance: IInventoryDestinationUnmarshaller; static;
  end;
  
implementation

{ TInventoryDestinationUnmarshaller }

function TInventoryDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TInventoryDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TInventoryDestination;
begin
  UnmarshalledObject := TInventoryDestination.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('S3BucketDestination', TargetDepth) then
        begin
          var Unmarshaller := TInventoryS3BucketDestinationUnmarshaller.Instance;
          UnmarshalledObject.S3BucketDestination := Unmarshaller.Unmarshall(AContext);
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

class constructor TInventoryDestinationUnmarshaller.Create;
begin
  FInstance := TInventoryDestinationUnmarshaller.Create;
end;

class function TInventoryDestinationUnmarshaller.Instance: IInventoryDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.
