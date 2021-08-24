unit AWS.SESv2.Transform.SnsDestinationMarshaller;

interface

uses
  AWS.SESv2.Model.SnsDestination, 
  AWS.Transform.RequestMarshaller;

type
  ISnsDestinationMarshaller = IRequestMarshaller<TSnsDestination, TJsonMarshallerContext>;
  
  TSnsDestinationMarshaller = class(TInterfacedObject, IRequestMarshaller<TSnsDestination, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISnsDestinationMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSnsDestination; Context: TJsonMarshallerContext);
    class function Instance: ISnsDestinationMarshaller; static;
  end;
  
implementation

{ TSnsDestinationMarshaller }

procedure TSnsDestinationMarshaller.Marshall(ARequestObject: TSnsDestination; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetTopicArn then
  begin
    Context.Writer.WriteName('TopicArn');
    Context.Writer.WriteString(ARequestObject.TopicArn);
  end;
end;

class constructor TSnsDestinationMarshaller.Create;
begin
  FInstance := TSnsDestinationMarshaller.Create;
end;

class function TSnsDestinationMarshaller.Instance: ISnsDestinationMarshaller;
begin
  Result := FInstance;
end;

end.
