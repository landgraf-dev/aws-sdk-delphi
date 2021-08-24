unit AWS.SESv2.Transform.DeliveryOptionsMarshaller;

interface

uses
  AWS.SESv2.Model.DeliveryOptions, 
  AWS.Transform.RequestMarshaller;

type
  IDeliveryOptionsMarshaller = IRequestMarshaller<TDeliveryOptions, TJsonMarshallerContext>;
  
  TDeliveryOptionsMarshaller = class(TInterfacedObject, IRequestMarshaller<TDeliveryOptions, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDeliveryOptionsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDeliveryOptions; Context: TJsonMarshallerContext);
    class function Instance: IDeliveryOptionsMarshaller; static;
  end;
  
implementation

{ TDeliveryOptionsMarshaller }

procedure TDeliveryOptionsMarshaller.Marshall(ARequestObject: TDeliveryOptions; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetSendingPoolName then
  begin
    Context.Writer.WriteName('SendingPoolName');
    Context.Writer.WriteString(ARequestObject.SendingPoolName);
  end;
  if ARequestObject.IsSetTlsPolicy then
  begin
    Context.Writer.WriteName('TlsPolicy');
    Context.Writer.WriteString(ARequestObject.TlsPolicy.Value);
  end;
end;

class constructor TDeliveryOptionsMarshaller.Create;
begin
  FInstance := TDeliveryOptionsMarshaller.Create;
end;

class function TDeliveryOptionsMarshaller.Instance: IDeliveryOptionsMarshaller;
begin
  Result := FInstance;
end;

end.
