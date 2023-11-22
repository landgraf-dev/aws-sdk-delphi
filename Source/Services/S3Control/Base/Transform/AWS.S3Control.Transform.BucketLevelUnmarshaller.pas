unit AWS.S3Control.Transform.BucketLevelUnmarshaller;

interface

uses
  AWS.S3Control.Model.BucketLevel, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.ActivityMetricsUnmarshaller, 
  AWS.S3Control.Transform.PrefixLevelUnmarshaller;

type
  IBucketLevelUnmarshaller = IUnmarshaller<TBucketLevel, TXmlUnmarshallerContext>;
  
  TBucketLevelUnmarshaller = class(TInterfacedObject, IUnmarshaller<TBucketLevel, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IBucketLevelUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TBucketLevel;
    class function Instance: IBucketLevelUnmarshaller; static;
  end;
  
implementation

{ TBucketLevelUnmarshaller }

function TBucketLevelUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TBucketLevel;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TBucketLevel;
begin
  UnmarshalledObject := TBucketLevel.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('ActivityMetrics', TargetDepth) then
        begin
          var Unmarshaller := TActivityMetricsUnmarshaller.Instance;
          UnmarshalledObject.ActivityMetrics := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('PrefixLevel', TargetDepth) then
        begin
          var Unmarshaller := TPrefixLevelUnmarshaller.Instance;
          UnmarshalledObject.PrefixLevel := Unmarshaller.Unmarshall(AContext);
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

class constructor TBucketLevelUnmarshaller.Create;
begin
  FInstance := TBucketLevelUnmarshaller.Create;
end;

class function TBucketLevelUnmarshaller.Instance: IBucketLevelUnmarshaller;
begin
  Result := FInstance;
end;

end.
