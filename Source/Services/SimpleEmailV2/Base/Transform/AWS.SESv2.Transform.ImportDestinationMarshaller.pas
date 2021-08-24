unit AWS.SESv2.Transform.ImportDestinationMarshaller;

interface

uses
  AWS.SESv2.Model.ImportDestination, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.ContactListDestinationMarshaller, 
  AWS.SESv2.Transform.SuppressionListDestinationMarshaller;

type
  IImportDestinationMarshaller = IRequestMarshaller<TImportDestination, TJsonMarshallerContext>;
  
  TImportDestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TImportDestination, TJsonMarshallerContext>)
  strict private
    class var FInstance: IImportDestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TImportDestination; Context: TJsonMarshallerContext);
    class function Instance: IImportDestinationMarshaller; static;
  end;
  
implementation

{ TImportDestinationMarshaller }

procedure TImportDestinationMarshaller.Marshall(ARequestObject: TImportDestination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetContactListDestination then
  begin
    Context.Writer.WriteName('ContactListDestination');
    Context.Writer.WriteBeginObject;
    TContactListDestinationMarshaller.Instance.Marshall(ARequestObject.ContactListDestination, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetSuppressionListDestination then
  begin
    Context.Writer.WriteName('SuppressionListDestination');
    Context.Writer.WriteBeginObject;
    TSuppressionListDestinationMarshaller.Instance.Marshall(ARequestObject.SuppressionListDestination, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TImportDestinationMarshaller.Create;
begin
  FInstance := TImportDestinationMarshaller.Create;
end;

class function TImportDestinationMarshaller.Instance: IImportDestinationMarshaller;
begin
  Result := FInstance;
end;

end.
