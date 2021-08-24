unit AWS.SESv2.Transform.ListManagementOptionsMarshaller;

interface

uses
  AWS.SESv2.Model.ListManagementOptions, 
  AWS.Transform.RequestMarshaller;

type
  IListManagementOptionsMarshaller = IRequestMarshaller<TListManagementOptions, TJsonMarshallerContext>;
  
  TListManagementOptionsMarshaller = class(TInterfacedObject, IRequestMarshaller<TListManagementOptions, TJsonMarshallerContext>)
  strict private
    class var FInstance: IListManagementOptionsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TListManagementOptions; Context: TJsonMarshallerContext);
    class function Instance: IListManagementOptionsMarshaller; static;
  end;
  
implementation

{ TListManagementOptionsMarshaller }

procedure TListManagementOptionsMarshaller.Marshall(ARequestObject: TListManagementOptions; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetContactListName then
  begin
    Context.Writer.WriteName('ContactListName');
    Context.Writer.WriteString(ARequestObject.ContactListName);
  end;
  if ARequestObject.IsSetTopicName then
  begin
    Context.Writer.WriteName('TopicName');
    Context.Writer.WriteString(ARequestObject.TopicName);
  end;
end;

class constructor TListManagementOptionsMarshaller.Create;
begin
  FInstance := TListManagementOptionsMarshaller.Create;
end;

class function TListManagementOptionsMarshaller.Instance: IListManagementOptionsMarshaller;
begin
  Result := FInstance;
end;

end.
