unit AWS.SESv2.Transform.DkimSigningAttributesMarshaller;

interface

uses
  AWS.SESv2.Model.DkimSigningAttributes, 
  AWS.Transform.RequestMarshaller;

type
  IDkimSigningAttributesMarshaller = IRequestMarshaller<TDkimSigningAttributes, TJsonMarshallerContext>;
  
  TDkimSigningAttributesMarshaller = class(TInterfacedObject, IRequestMarshaller<TDkimSigningAttributes, TJsonMarshallerContext>)
  strict private
    class var FInstance: IDkimSigningAttributesMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TDkimSigningAttributes; Context: TJsonMarshallerContext);
    class function Instance: IDkimSigningAttributesMarshaller; static;
  end;
  
implementation

{ TDkimSigningAttributesMarshaller }

procedure TDkimSigningAttributesMarshaller.Marshall(ARequestObject: TDkimSigningAttributes; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetDomainSigningPrivateKey then
  begin
    Context.Writer.WriteName('DomainSigningPrivateKey');
    Context.Writer.WriteString(ARequestObject.DomainSigningPrivateKey);
  end;
  if ARequestObject.IsSetDomainSigningSelector then
  begin
    Context.Writer.WriteName('DomainSigningSelector');
    Context.Writer.WriteString(ARequestObject.DomainSigningSelector);
  end;
  if ARequestObject.IsSetNextSigningKeyLength then
  begin
    Context.Writer.WriteName('NextSigningKeyLength');
    Context.Writer.WriteString(ARequestObject.NextSigningKeyLength.Value);
  end;
end;

class constructor TDkimSigningAttributesMarshaller.Create;
begin
  FInstance := TDkimSigningAttributesMarshaller.Create;
end;

class function TDkimSigningAttributesMarshaller.Instance: IDkimSigningAttributesMarshaller;
begin
  Result := FInstance;
end;

end.
