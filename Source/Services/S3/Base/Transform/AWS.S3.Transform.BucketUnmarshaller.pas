unit AWS.S3.Transform.BucketUnmarshaller;

interface

uses
  AWS.S3.Model.Bucket, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IBucketUnmarshaller = IUnmarshaller<TBucket, TXmlUnmarshallerContext>;
  
  TBucketUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBucket, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBucketUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TBucket;
    class function Instance: IBucketUnmarshaller; static;
  end;
  
implementation

{ TBucketUnmarshaller }

function TBucketUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TBucket;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TBucket;
begin
  UnmarshalledObject := TBucket.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('CreationDate', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.CreationDate := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Name', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Name := Unmarshaller.Unmarshall(AContext);
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

class constructor TBucketUnmarshaller.Create;
begin
  FInstance := TBucketUnmarshaller.Create;
end;

class function TBucketUnmarshaller.Instance: IBucketUnmarshaller;
begin
  Result := FInstance;
end;

end.
