unit AWS.Rekognition.Transform.NotificationChannelMarshaller;

interface

uses
  AWS.Rekognition.Model.NotificationChannel, 
  AWS.Transform.RequestMarshaller;

type
  INotificationChannelMarshaller = IRequestMarshaller<TNotificationChannel, TJsonMarshallerContext>;
  
  TNotificationChannelMarshaller = class(TInterfacedObject, IRequestMarshaller<TNotificationChannel, TJsonMarshallerContext>)
  strict private
    class var FInstance: INotificationChannelMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TNotificationChannel; Context: TJsonMarshallerContext);
    class function Instance: INotificationChannelMarshaller; static;
  end;
  
implementation

{ TNotificationChannelMarshaller }

procedure TNotificationChannelMarshaller.Marshall(ARequestObject: TNotificationChannel; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetRoleArn then
  begin
    Context.Writer.WriteName('RoleArn');
    Context.Writer.WriteString(ARequestObject.RoleArn);
  end;
  if ARequestObject.IsSetSNSTopicArn then
  begin
    Context.Writer.WriteName('SNSTopicArn');
    Context.Writer.WriteString(ARequestObject.SNSTopicArn);
  end;
end;

class constructor TNotificationChannelMarshaller.Create;
begin
  FInstance := TNotificationChannelMarshaller.Create;
end;

class function TNotificationChannelMarshaller.Instance: INotificationChannelMarshaller;
begin
  Result := FInstance;
end;

end.
