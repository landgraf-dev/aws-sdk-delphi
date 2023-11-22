unit AWS.S3Control.Transform.AccountLevelUnmarshaller;

interface

uses
  AWS.S3Control.Model.AccountLevel, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3Control.Transform.ActivityMetricsUnmarshaller, 
  AWS.S3Control.Transform.BucketLevelUnmarshaller;

type
  IAccountLevelUnmarshaller = IUnmarshaller<TAccountLevel, TXmlUnmarshallerContext>;
  
  TAccountLevelUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAccountLevel, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAccountLevelUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAccountLevel;
    class function Instance: IAccountLevelUnmarshaller; static;
  end;
  
implementation

{ TAccountLevelUnmarshaller }

function TAccountLevelUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAccountLevel;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAccountLevel;
begin
  UnmarshalledObject := TAccountLevel.Create;
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
        if AContext.TestExpression('BucketLevel', TargetDepth) then
        begin
          var Unmarshaller := TBucketLevelUnmarshaller.Instance;
          UnmarshalledObject.BucketLevel := Unmarshaller.Unmarshall(AContext);
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

class constructor TAccountLevelUnmarshaller.Create;
begin
  FInstance := TAccountLevelUnmarshaller.Create;
end;

class function TAccountLevelUnmarshaller.Instance: IAccountLevelUnmarshaller;
begin
  Result := FInstance;
end;

end.
