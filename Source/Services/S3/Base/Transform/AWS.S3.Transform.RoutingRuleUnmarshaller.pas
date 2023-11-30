unit AWS.S3.Transform.RoutingRuleUnmarshaller;

interface

uses
  AWS.S3.Model.RoutingRule, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.S3.Transform.ConditionUnmarshaller, 
  AWS.S3.Transform.RedirectUnmarshaller;

type
  IRoutingRuleUnmarshaller = IUnmarshaller<TRoutingRule, TXmlUnmarshallerContext>;
  
  TRoutingRuleUnmarshaller = class(TInterfacedObject, IUnmarshaller<TRoutingRule, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IRoutingRuleUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TRoutingRule;
    class function Instance: IRoutingRuleUnmarshaller; static;
  end;
  
implementation

{ TRoutingRuleUnmarshaller }

function TRoutingRuleUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TRoutingRule;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TRoutingRule;
begin
  UnmarshalledObject := TRoutingRule.Create;
  try
    Result := UnmarshalledObject;
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.Read do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('Condition', TargetDepth) then
        begin
          var Unmarshaller := TConditionUnmarshaller.Instance;
          UnmarshalledObject.Condition := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('Redirect', TargetDepth) then
        begin
          var Unmarshaller := TRedirectUnmarshaller.Instance;
          UnmarshalledObject.Redirect := Unmarshaller.Unmarshall(AContext);
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

class constructor TRoutingRuleUnmarshaller.Create;
begin
  FInstance := TRoutingRuleUnmarshaller.Create;
end;

class function TRoutingRuleUnmarshaller.Instance: IRoutingRuleUnmarshaller;
begin
  Result := FInstance;
end;

end.
