unit AWS.SESv2.Transform.ContactListDestinationMarshaller;

interface

uses
  AWS.SESv2.Model.ContactListDestination, 
  AWS.Transform.RequestMarshaller;

type
  IContactListDestinationMarshaller = IRequestMarshaller<TContactListDestination, TJsonMarshallerContext>;
  
  TContactListDestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TContactListDestination, TJsonMarshallerContext>)
  strict private
    class var FInstance: IContactListDestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TContactListDestination; Context: TJsonMarshallerContext);
    class function Instance: IContactListDestinationMarshaller; static;
  end;
  
implementation

{ TContactListDestinationMarshaller }

procedure TContactListDestinationMarshaller.Marshall(ARequestObject: TContactListDestination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetContactListImportAction then
  begin
    Context.Writer.WriteName('ContactListImportAction');
    Context.Writer.WriteString(ARequestObject.ContactListImportAction.Value);
  end;
  if ARequestObject.IsSetContactListName then
  begin
    Context.Writer.WriteName('ContactListName');
    Context.Writer.WriteString(ARequestObject.ContactListName);
  end;
end;

class constructor TContactListDestinationMarshaller.Create;
begin
  FInstance := TContactListDestinationMarshaller.Create;
end;

class function TContactListDestinationMarshaller.Instance: IContactListDestinationMarshaller;
begin
  Result := FInstance;
end;

end.
