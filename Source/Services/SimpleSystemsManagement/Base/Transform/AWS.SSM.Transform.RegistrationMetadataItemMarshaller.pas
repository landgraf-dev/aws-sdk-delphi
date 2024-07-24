unit AWS.SSM.Transform.RegistrationMetadataItemMarshaller;

interface

uses
  AWS.SSM.Model.RegistrationMetadataItem, 
  AWS.Transform.RequestMarshaller;

type
  IRegistrationMetadataItemMarshaller = IRequestMarshaller<TRegistrationMetadataItem, TJsonMarshallerContext>;
  
  TRegistrationMetadataItemMarshaller = class(TInterfacedObject, IRequestMarshaller<TRegistrationMetadataItem, TJsonMarshallerContext>)
  strict private
    class var FInstance: IRegistrationMetadataItemMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TRegistrationMetadataItem; Context: TJsonMarshallerContext);
    class function Instance: IRegistrationMetadataItemMarshaller; static;
  end;
  
implementation

{ TRegistrationMetadataItemMarshaller }

procedure TRegistrationMetadataItemMarshaller.Marshall(ARequestObject: TRegistrationMetadataItem; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetKey then
  begin
    Context.Writer.WriteName('Key');
    Context.Writer.WriteString(ARequestObject.Key);
  end;
  if ARequestObject.IsSetValue then
  begin
    Context.Writer.WriteName('Value');
    Context.Writer.WriteString(ARequestObject.Value);
  end;
end;

class constructor TRegistrationMetadataItemMarshaller.Create;
begin
  FInstance := TRegistrationMetadataItemMarshaller.Create;
end;

class function TRegistrationMetadataItemMarshaller.Instance: IRegistrationMetadataItemMarshaller;
begin
  Result := FInstance;
end;

end.
