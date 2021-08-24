unit AWS.SESv2.Transform.SendingOptionsMarshaller;

interface

uses
  AWS.SESv2.Model.SendingOptions, 
  AWS.Transform.RequestMarshaller;

type
  ISendingOptionsMarshaller = IRequestMarshaller<TSendingOptions, TJsonMarshallerContext>;
  
  TSendingOptionsMarshaller = class(TInterfacedObject, IRequestMarshaller<TSendingOptions, TJsonMarshallerContext>)
  strict private
    class var FInstance: ISendingOptionsMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TSendingOptions; Context: TJsonMarshallerContext);
    class function Instance: ISendingOptionsMarshaller; static;
  end;
  
implementation

{ TSendingOptionsMarshaller }

procedure TSendingOptionsMarshaller.Marshall(ARequestObject: TSendingOptions; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetSendingEnabled then
  begin
    Context.Writer.WriteName('SendingEnabled');
    Context.Writer.WriteBoolean(ARequestObject.SendingEnabled);
  end;
end;

class constructor TSendingOptionsMarshaller.Create;
begin
  FInstance := TSendingOptionsMarshaller.Create;
end;

class function TSendingOptionsMarshaller.Instance: ISendingOptionsMarshaller;
begin
  Result := FInstance;
end;

end.
