unit AWS.SSM.Transform.OpsItemNotificationMarshaller;

interface

uses
  AWS.SSM.Model.OpsItemNotification, 
  AWS.Transform.RequestMarshaller;

type
  IOpsItemNotificationMarshaller = IRequestMarshaller<TOpsItemNotification, TJsonMarshallerContext>;
  
  TOpsItemNotificationMarshaller = class(TInterfacedObject, IRequestMarshaller<TOpsItemNotification, TJsonMarshallerContext>)
  strict private
    class var FInstance: IOpsItemNotificationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TOpsItemNotification; Context: TJsonMarshallerContext);
    class function Instance: IOpsItemNotificationMarshaller; static;
  end;
  
implementation

{ TOpsItemNotificationMarshaller }

procedure TOpsItemNotificationMarshaller.Marshall(ARequestObject: TOpsItemNotification; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetArn then
  begin
    Context.Writer.WriteName('Arn');
    Context.Writer.WriteString(ARequestObject.Arn);
  end;
end;

class constructor TOpsItemNotificationMarshaller.Create;
begin
  FInstance := TOpsItemNotificationMarshaller.Create;
end;

class function TOpsItemNotificationMarshaller.Instance: IOpsItemNotificationMarshaller;
begin
  Result := FInstance;
end;

end.
