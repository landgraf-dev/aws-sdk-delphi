unit AWS.SESv2.Transform.MessageMarshaller;

interface

uses
  AWS.SESv2.Model.Message, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.BodyMarshaller, 
  AWS.SESv2.Transform.ContentMarshaller;

type
  IMessageMarshaller = IRequestMarshaller<TMessage, TJsonMarshallerContext>;
  
  TMessageMarshaller = class(TInterfacedObject, IRequestMarshaller<TMessage, TJsonMarshallerContext>)
  strict private
    class var FInstance: IMessageMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TMessage; Context: TJsonMarshallerContext);
    class function Instance: IMessageMarshaller; static;
  end;
  
implementation

{ TMessageMarshaller }

procedure TMessageMarshaller.Marshall(ARequestObject: TMessage; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetBody then
  begin
    Context.Writer.WriteName('Body');
    Context.Writer.WriteBeginObject;
    TBodyMarshaller.Instance.Marshall(ARequestObject.Body, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetSubject then
  begin
    Context.Writer.WriteName('Subject');
    Context.Writer.WriteBeginObject;
    TContentMarshaller.Instance.Marshall(ARequestObject.Subject, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TMessageMarshaller.Create;
begin
  FInstance := TMessageMarshaller.Create;
end;

class function TMessageMarshaller.Instance: IMessageMarshaller;
begin
  Result := FInstance;
end;

end.
