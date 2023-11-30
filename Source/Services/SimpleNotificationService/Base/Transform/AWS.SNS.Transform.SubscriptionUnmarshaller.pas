unit AWS.SNS.Transform.SubscriptionUnmarshaller;

interface

uses
  AWS.SNS.Model.Subscription, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ISubscriptionUnmarshaller = IUnmarshaller<TSubscription, TXmlUnmarshallerContext>;
  
  TSubscriptionUnmarshaller = class(TInterfacedObject, IUnmarshaller<TSubscription, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ISubscriptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TSubscription;
    class function Instance: ISubscriptionUnmarshaller; static;
  end;
  
implementation

{ TSubscriptionUnmarshaller }

function TSubscriptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TSubscription;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TSubscription;
begin
  UnmarshalledObject := TSubscription.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Endpoint', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Endpoint := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Owner', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Owner := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Protocol', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.Protocol := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('SubscriptionArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.SubscriptionArn := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('TopicArn', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.TopicArn := Unmarshaller.Unmarshall(AContext);
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

class constructor TSubscriptionUnmarshaller.Create;
begin
  FInstance := TSubscriptionUnmarshaller.Create;
end;

class function TSubscriptionUnmarshaller.Instance: ISubscriptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
