unit AWS.SESv2.Transform.KinesisFirehoseDestinationMarshaller;

interface

uses
  AWS.SESv2.Model.KinesisFirehoseDestination, 
  AWS.Transform.RequestMarshaller;

type
  IKinesisFirehoseDestinationMarshaller = IRequestMarshaller<TKinesisFirehoseDestination, TJsonMarshallerContext>;
  
  TKinesisFirehoseDestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TKinesisFirehoseDestination, TJsonMarshallerContext>)
  strict private
    class var FInstance: IKinesisFirehoseDestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TKinesisFirehoseDestination; Context: TJsonMarshallerContext);
    class function Instance: IKinesisFirehoseDestinationMarshaller; static;
  end;
  
implementation

{ TKinesisFirehoseDestinationMarshaller }

procedure TKinesisFirehoseDestinationMarshaller.Marshall(ARequestObject: TKinesisFirehoseDestination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDeliveryStreamArn then
  begin
    Context.Writer.WriteName('DeliveryStreamArn');
    Context.Writer.WriteString(ARequestObject.DeliveryStreamArn);
  end;
  if ARequestObject.IsSetIamRoleArn then
  begin
    Context.Writer.WriteName('IamRoleArn');
    Context.Writer.WriteString(ARequestObject.IamRoleArn);
  end;
end;

class constructor TKinesisFirehoseDestinationMarshaller.Create;
begin
  FInstance := TKinesisFirehoseDestinationMarshaller.Create;
end;

class function TKinesisFirehoseDestinationMarshaller.Instance: IKinesisFirehoseDestinationMarshaller;
begin
  Result := FInstance;
end;

end.
