unit AWS.S3Control.Transform.ActivityMetricsUnmarshaller;

interface

uses
  AWS.S3Control.Model.ActivityMetrics, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IActivityMetricsUnmarshaller = IUnmarshaller<TActivityMetrics, TXmlUnmarshallerContext>;
  
  TActivityMetricsUnmarshaller = class(TInterfacedObject, IUnmarshaller<TActivityMetrics, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IActivityMetricsUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TActivityMetrics;
    class function Instance: IActivityMetricsUnmarshaller; static;
  end;
  
implementation

{ TActivityMetricsUnmarshaller }

function TActivityMetricsUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TActivityMetrics;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TActivityMetrics;
begin
  UnmarshalledObject := TActivityMetrics.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('IsEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.IsEnabled := Unmarshaller.Unmarshall(AContext);
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

class constructor TActivityMetricsUnmarshaller.Create;
begin
  FInstance := TActivityMetricsUnmarshaller.Create;
end;

class function TActivityMetricsUnmarshaller.Instance: IActivityMetricsUnmarshaller;
begin
  Result := FInstance;
end;

end.
