unit AWS.SESv2.Transform.PinpointDestinationMarshaller;

interface

uses
  AWS.SESv2.Model.PinpointDestination, 
  AWS.Transform.RequestMarshaller;

type
  IPinpointDestinationMarshaller = IRequestMarshaller<TPinpointDestination, TJsonMarshallerContext>;
  
  TPinpointDestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TPinpointDestination, TJsonMarshallerContext>)
  strict private
    class var FInstance: IPinpointDestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TPinpointDestination; Context: TJsonMarshallerContext);
    class function Instance: IPinpointDestinationMarshaller; static;
  end;
  
implementation

{ TPinpointDestinationMarshaller }

procedure TPinpointDestinationMarshaller.Marshall(ARequestObject: TPinpointDestination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetApplicationArn then
  begin
    Context.Writer.WriteName('ApplicationArn');
    Context.Writer.WriteString(ARequestObject.ApplicationArn);
  end;
end;

class constructor TPinpointDestinationMarshaller.Create;
begin
  FInstance := TPinpointDestinationMarshaller.Create;
end;

class function TPinpointDestinationMarshaller.Instance: IPinpointDestinationMarshaller;
begin
  Result := FInstance;
end;

end.
