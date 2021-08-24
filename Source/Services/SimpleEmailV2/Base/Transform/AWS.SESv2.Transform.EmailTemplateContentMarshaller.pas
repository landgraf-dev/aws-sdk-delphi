unit AWS.SESv2.Transform.EmailTemplateContentMarshaller;

interface

uses
  AWS.SESv2.Model.EmailTemplateContent, 
  AWS.Transform.RequestMarshaller;

type
  IEmailTemplateContentMarshaller = IRequestMarshaller<TEmailTemplateContent, TJsonMarshallerContext>;
  
  TEmailTemplateContentMarshaller = class(TInterfacedObject, IRequestMarshaller<TEmailTemplateContent, TJsonMarshallerContext>)
  strict private
    class var FInstance: IEmailTemplateContentMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TEmailTemplateContent; Context: TJsonMarshallerContext);
    class function Instance: IEmailTemplateContentMarshaller; static;
  end;
  
implementation

{ TEmailTemplateContentMarshaller }

procedure TEmailTemplateContentMarshaller.Marshall(ARequestObject: TEmailTemplateContent; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetHtml then
  begin
    Context.Writer.WriteName('Html');
    Context.Writer.WriteString(ARequestObject.Html);
  end;
  if ARequestObject.IsSetSubject then
  begin
    Context.Writer.WriteName('Subject');
    Context.Writer.WriteString(ARequestObject.Subject);
  end;
  if ARequestObject.IsSetText then
  begin
    Context.Writer.WriteName('Text');
    Context.Writer.WriteString(ARequestObject.Text);
  end;
end;

class constructor TEmailTemplateContentMarshaller.Create;
begin
  FInstance := TEmailTemplateContentMarshaller.Create;
end;

class function TEmailTemplateContentMarshaller.Instance: IEmailTemplateContentMarshaller;
begin
  Result := FInstance;
end;

end.
