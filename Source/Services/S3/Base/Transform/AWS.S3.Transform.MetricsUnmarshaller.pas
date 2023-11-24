unit AWS.S3.Transform.MetricsUnmarshaller;

interface

uses
  AWS.S3.Model.Metrics, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.ReplicationTimeValueUnmarshaller, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IMetricsUnmarshaller = IUnmarshaller<TMetrics, TXmlUnmarshallerContext>;
  
  TMetricsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TMetrics, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IMetricsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TMetrics;
    class function Instance: IMetricsUnmarshaller; static;
  end;
  
implementation

{ TMetricsUnmarshaller }

function TMetricsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TMetrics;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TMetrics;
begin
  UnmarshalledObject := TMetrics.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('EventThreshold', TargetDepth) then
        begin
          var Unmarshaller := TReplicationTimeValueUnmarshaller.Instance;
          UnmarshalledObject.EventThreshold := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Status', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Status := Unmarshaller.Unmarshall(AContext);
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

class constructor TMetricsUnmarshaller.Create;
begin
  FInstance := TMetricsUnmarshaller.Create;
end;

class function TMetricsUnmarshaller.Instance: IMetricsUnmarshaller;
begin
  Result := FInstance;
end;

end.
