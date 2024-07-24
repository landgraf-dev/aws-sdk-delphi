unit AWS.SSM.Transform.NotificationConfigMarshaller;

interface

uses
  AWS.SSM.Model.NotificationConfig, 
  AWS.Transform.RequestMarshaller;

type
  INotificationConfigMarshaller = IRequestMarshaller<TNotificationConfig, TJsonMarshallerContext>;
  
  TNotificationConfigMarshaller = class(TInterfacedObject, IRequestMarshaller<TNotificationConfig, TJsonMarshallerContext>)
  strict private
    class var FInstance: INotificationConfigMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TNotificationConfig; Context: TJsonMarshallerContext);
    class function Instance: INotificationConfigMarshaller; static;
  end;
  
implementation

{ TNotificationConfigMarshaller }

procedure TNotificationConfigMarshaller.Marshall(ARequestObject: TNotificationConfig; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetNotificationArn then
  begin
    Context.Writer.WriteName('NotificationArn');
    Context.Writer.WriteString(ARequestObject.NotificationArn);
  end;
  if ARequestObject.IsSetNotificationEvents then
  begin
    Context.Writer.WriteName('NotificationEvents');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectNotificationEventsListValue in ARequestObject.NotificationEvents do
      Context.Writer.WriteString(ARequestObjectNotificationEventsListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetNotificationType then
  begin
    Context.Writer.WriteName('NotificationType');
    Context.Writer.WriteString(ARequestObject.NotificationType.Value);
  end;
end;

class constructor TNotificationConfigMarshaller.Create;
begin
  FInstance := TNotificationConfigMarshaller.Create;
end;

class function TNotificationConfigMarshaller.Instance: INotificationConfigMarshaller;
begin
  Result := FInstance;
end;

end.
