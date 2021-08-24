unit AWS.SESv2.Transform.EmailContentMarshaller;

interface

uses
  AWS.SESv2.Model.EmailContent, 
  AWS.Transform.RequestMarshaller, 
  AWS.SESv2.Transform.RawMessageMarshaller, 
  AWS.SESv2.Transform.MessageMarshaller, 
  AWS.SESv2.Transform.TemplateMarshaller;

type
  IEmailContentMarshaller = IRequestMarshaller<TEmailContent, TJsonMarshallerContext>;
  
  TEmailContentMarshaller = class(TInterfacedObject, IRequestMarshaller<TEmailContent, TJsonMarshallerContext>)
  strict private
    class var FInstance: IEmailContentMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TEmailContent; Context: TJsonMarshallerContext);
    class function Instance: IEmailContentMarshaller; static;
  end;
  
implementation

{ TEmailContentMarshaller }

procedure TEmailContentMarshaller.Marshall(ARequestObject: TEmailContent; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetRaw then
  begin
    Context.Writer.WriteName('Raw');
    Context.Writer.WriteBeginObject;
    TRawMessageMarshaller.Instance.Marshall(ARequestObject.Raw, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetSimple then
  begin
    Context.Writer.WriteName('Simple');
    Context.Writer.WriteBeginObject;
    TMessageMarshaller.Instance.Marshall(ARequestObject.Simple, Context);
    Context.Writer.WriteEndObject;
  end;
  if ARequestObject.IsSetTemplate then
  begin
    Context.Writer.WriteName('Template');
    Context.Writer.WriteBeginObject;
    TTemplateMarshaller.Instance.Marshall(ARequestObject.Template, Context);
    Context.Writer.WriteEndObject;
  end;
end;

class constructor TEmailContentMarshaller.Create;
begin
  FInstance := TEmailContentMarshaller.Create;
end;

class function TEmailContentMarshaller.Instance: IEmailContentMarshaller;
begin
  Result := FInstance;
end;

end.
