unit AWS.S3.Transform.AnalyticsExportDestinationUnmarshaller;

interface

uses
  AWS.S3.Model.AnalyticsExportDestination, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.AnalyticsS3BucketDestinationUnmarshaller;

type
  IAnalyticsExportDestinationUnmarshaller = IUnmarshaller<TAnalyticsExportDestination, TXmlUnmarshallerContext>;
  
  TAnalyticsExportDestinationUnmarshaller = class(TInterfacedObject, IUnmarshaller<TAnalyticsExportDestination, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IAnalyticsExportDestinationUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsExportDestination;
    class function Instance: IAnalyticsExportDestinationUnmarshaller; static;
  end;
  
implementation

{ TAnalyticsExportDestinationUnmarshaller }

function TAnalyticsExportDestinationUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAnalyticsExportDestination;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TAnalyticsExportDestination;
begin
  UnmarshalledObject := TAnalyticsExportDestination.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('S3BucketDestination', TargetDepth) then
        begin
          var Unmarshaller := TAnalyticsS3BucketDestinationUnmarshaller.Instance;
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

class constructor TAnalyticsExportDestinationUnmarshaller.Create;
begin
  FInstance := TAnalyticsExportDestinationUnmarshaller.Create;
end;

class function TAnalyticsExportDestinationUnmarshaller.Instance: IAnalyticsExportDestinationUnmarshaller;
begin
  Result := FInstance;
end;

end.
