unit AWS.SESv2.Transform.DestinationMarshaller;

interface

uses
  AWS.SESv2.Model.Destination, 
  AWS.Transform.RequestMarshaller;

type
  IDestinationMarshaller = IRequestMarshaller<TDestination, TJsonMarshallerContext>;
  
  TDestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TDestination, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDestination; Context: TJsonMarshallerContext);
    class function Instance: IDestinationMarshaller; static;
  end;
  
implementation

{ TDestinationMarshaller }

procedure TDestinationMarshaller.Marshall(ARequestObject: TDestination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetBccAddresses then
  begin
    Context.Writer.WriteName('BccAddresses');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectBccAddressesListValue in ARequestObject.BccAddresses do
      Context.Writer.WriteString(ARequestObjectBccAddressesListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetCcAddresses then
  begin
    Context.Writer.WriteName('CcAddresses');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectCcAddressesListValue in ARequestObject.CcAddresses do
      Context.Writer.WriteString(ARequestObjectCcAddressesListValue);
    Context.Writer.WriteEndArray;
  end;
  if ARequestObject.IsSetToAddresses then
  begin
    Context.Writer.WriteName('ToAddresses');
    Context.Writer.WriteBeginArray;
    for var ARequestObjectToAddressesListValue in ARequestObject.ToAddresses do
      Context.Writer.WriteString(ARequestObjectToAddressesListValue);
    Context.Writer.WriteEndArray;
  end;
end;

class constructor TDestinationMarshaller.Create;
begin
  FInstance := TDestinationMarshaller.Create;
end;

class function TDestinationMarshaller.Instance: IDestinationMarshaller;
begin
  Result := FInstance;
end;

end.
