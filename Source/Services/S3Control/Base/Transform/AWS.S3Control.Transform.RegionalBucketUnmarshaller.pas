unit AWS.S3Control.Transform.RegionalBucketUnmarshaller;

interface

uses
  AWS.S3Control.Model.RegionalBucket, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IRegionalBucketUnmarshaller = IUnmarshaller<TRegionalBucket, TXmlUnmarshallerContext>;
  
  TRegionalBucketUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRegionalBucket, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IRegionalBucketUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TRegionalBucket;
    class function Instance: IRegionalBucketUnmarshaller; static;
  end;
  
implementation

{ TRegionalBucketUnmarshaller }

function TRegionalBucketUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TRegionalBucket;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TRegionalBucket;
begin
  UnmarshalledObject := TRegionalBucket.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Bucket', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Bucket := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('BucketArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.BucketArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('CreationDate', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.CreationDate := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('OutpostId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.OutpostId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('PublicAccessBlockEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.PublicAccessBlockEnabled := Unmarshaller.Unmarshall(AContext);
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

class constructor TRegionalBucketUnmarshaller.Create;
begin
  FInstance := TRegionalBucketUnmarshaller.Create;
end;

class function TRegionalBucketUnmarshaller.Instance: IRegionalBucketUnmarshaller;
begin
  Result := FInstance;
end;

end.
