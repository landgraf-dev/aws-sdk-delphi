unit AWS.S3.Transform.AnalyticsS3BucketDestinationUnmarshaller;

interface

uses
  AWS.S3.Model.AnalyticsS3BucketDestination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IAnalyticsS3BucketDestinationUnmarshaller = IUnmarshaller<TAnalyticsS3BucketDestination, TXmlUnmarshallerContext>;
  
  TAnalyticsS3BucketDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAnalyticsS3BucketDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAnalyticsS3BucketDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsS3BucketDestination;
    class function Instance: IAnalyticsS3BucketDestinationUnmarshaller; static;
  end;
  
implementation

{ TAnalyticsS3BucketDestinationUnmarshaller }

function TAnalyticsS3BucketDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsS3BucketDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAnalyticsS3BucketDestination;
begin
  UnmarshalledObject := TAnalyticsS3BucketDestination.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('BucketAccountId', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.BucketAccountId := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Bucket', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.BucketName := Unmarshaller.Unmarshall(AContext);
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

class constructor TAnalyticsS3BucketDestinationUnmarshaller.Create;
begin
  FInstance := TAnalyticsS3BucketDestinationUnmarshaller.Create;
end;

class function TAnalyticsS3BucketDestinationUnmarshaller.Instance: IAnalyticsS3BucketDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.
