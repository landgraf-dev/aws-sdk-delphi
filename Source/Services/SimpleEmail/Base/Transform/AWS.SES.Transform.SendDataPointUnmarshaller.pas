unit AWS.SES.Transform.SendDataPointUnmarshaller;

interface

uses
  AWS.SES.Model.SendDataPoint, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISendDataPointUnmarshaller = IUnmarshaller<TSendDataPoint, TXmlUnmarshallerContext>;
  
  TSendDataPointUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSendDataPoint, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISendDataPointUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSendDataPoint;
    class function Instance: ISendDataPointUnmarshaller; static;
  end;
  
implementation

{ TSendDataPointUnmarshaller }

function TSendDataPointUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSendDataPoint;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSendDataPoint;
begin
  UnmarshalledObject := TSendDataPoint.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Bounces', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.Bounces := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Complaints', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.Complaints := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('DeliveryAttempts', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.DeliveryAttempts := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Rejects', TargetDepth) then
        begin
          var Unmarshaller := TInt64Unmarshaller.Instance;
          UnmarshalledObject.Rejects := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Timestamp', TargetDepth) then
        begin
          var Unmarshaller := TDateTimeUnmarshaller.Instance;
          UnmarshalledObject.Timestamp := Unmarshaller.Unmarshall(AContext);
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

class constructor TSendDataPointUnmarshaller.Create;
begin
  FInstance := TSendDataPointUnmarshaller.Create;
end;

class function TSendDataPointUnmarshaller.Instance: ISendDataPointUnmarshaller;
begin
  Result := FInstance;
end;

end.
