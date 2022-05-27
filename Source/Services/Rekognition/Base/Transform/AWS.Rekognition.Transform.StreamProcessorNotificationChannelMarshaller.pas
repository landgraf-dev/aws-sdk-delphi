unit AWS.Rekognition.Transform.StreamProcessorNotificationChannelMarshaller;

interface

uses
  AWS.Rekognition.Model.StreamProcessorNotificationChannel, 
  AWS.Transform.RequestMarshaller;

type
  IStreamProcessorNotificationChannelMarshaller = IRequestMarshaller<TStreamProcessorNotificationChannel, TJsonMarshallerContext>;
  
  TStreamProcessorNotificationChannelMarshaller = class(TInterfacedObject, IRequestMarshaller<TStreamProcessorNotificationChannel, TJsonMarshallerContext>)
  strict private
    class var FInstance: IStreamProcessorNotificationChannelMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TStreamProcessorNotificationChannel; Context: TJsonMarshallerContext);
    class function Instance: IStreamProcessorNotificationChannelMarshaller; static;
  end;
  
implementation

{ TStreamProcessorNotificationChannelMarshaller }

procedure TStreamProcessorNotificationChannelMarshaller.Marshall(ARequestObject: TStreamProcessorNotificationChannel; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetSNSTopicArn then
  begin
    Context.Writer.WriteName('SNSTopicArn');
    Context.Writer.WriteString(ARequestObject.SNSTopicArn);
  end;
end;

class constructor TStreamProcessorNotificationChannelMarshaller.Create;
begin
  FInstance := TStreamProcessorNotificationChannelMarshaller.Create;
end;

class function TStreamProcessorNotificationChannelMarshaller.Instance: IStreamProcessorNotificationChannelMarshaller;
begin
  Result := FInstance;
end;

end.
