unit AWS.SES.Transform.IdentityNotificationAttributesUnmarshaller;

interface

uses
  AWS.SES.Model.IdentityNotificationAttributes, 
  AWS.Transform.UnmarshallerContext, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Internal.Request, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  IIdentityNotificationAttributesUnmarshaller = IUnmarshaller<TIdentityNotificationAttributes, TXmlUnmarshallerContext>;
  
  TIdentityNotificationAttributesUnmarshaller = class(TInterfacedObject, IUnmarshaller<TIdentityNotificationAttributes, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: IIdentityNotificationAttributesUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TIdentityNotificationAttributes;
    class function Instance: IIdentityNotificationAttributesUnmarshaller; static;
  end;
  
implementation

{ TIdentityNotificationAttributesUnmarshaller }

function TIdentityNotificationAttributesUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TIdentityNotificationAttributes;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  UnmarshalledObject: TIdentityNotificationAttributes;
begin
  UnmarshalledObject := TIdentityNotificationAttributes.Create;
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
      begin
        if AContext.TestExpression('BounceTopic', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.BounceTopic := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ComplaintTopic', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.ComplaintTopic := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('DeliveryTopic', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          UnmarshalledObject.DeliveryTopic := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('ForwardingEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.ForwardingEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('HeadersInBounceNotificationsEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.HeadersInBounceNotificationsEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('HeadersInComplaintNotificationsEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.HeadersInComplaintNotificationsEnabled := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
        if AContext.TestExpression('HeadersInDeliveryNotificationsEnabled', TargetDepth) then
        begin
          var Unmarshaller := TBooleanUnmarshaller.Instance;
          UnmarshalledObject.HeadersInDeliveryNotificationsEnabled := Unmarshaller.Unmarshall(AContext);
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

class constructor TIdentityNotificationAttributesUnmarshaller.Create;
begin
  FInstance := TIdentityNotificationAttributesUnmarshaller.Create;
end;

class function TIdentityNotificationAttributesUnmarshaller.Instance: IIdentityNotificationAttributesUnmarshaller;
begin
  Result := FInstance;
end;

end.
