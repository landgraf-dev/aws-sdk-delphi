unit AWS.SESv2.Transform.TemplateMarshaller;

interface

uses
  AWS.SESv2.Model.Template, 
  AWS.Transform.RequestMarshaller;

type
  ITemplateMarshaller = IRequestMarshaller<TTemplate, TJsonMarshallerContext>;
  
  TTemplateMarshaller = class(TInterfacedObject, IRequestMarshaller<TTemplate, TJsonMarshallerContext>)
  strict private
    class var FInstance: ITemplateMarshaller;
    class constructor Create;
  public
    procedure Marshall(ARequestObject: TTemplate; Context: TJsonMarshallerContext);
    class function Instance: ITemplateMarshaller; static;
  end;
  
implementation

{ TTemplateMarshaller }

procedure TTemplateMarshaller.Marshall(ARequestObject: TTemplate; Context: TJsonMarshallerContext);
begin
  if ARequestObject.IsSetTemplateArn then
  begin
    Context.Writer.WriteName('TemplateArn');
    Context.Writer.WriteString(ARequestObject.TemplateArn);
  end;
  if ARequestObject.IsSetTemplateData then
  begin
    Context.Writer.WriteName('TemplateData');
    Context.Writer.WriteString(ARequestObject.TemplateData);
  end;
  if ARequestObject.IsSetTemplateName then
  begin
    Context.Writer.WriteName('TemplateName');
    Context.Writer.WriteString(ARequestObject.TemplateName);
  end;
end;

class constructor TTemplateMarshaller.Create;
begin
  FInstance := TTemplateMarshaller.Create;
end;

class function TTemplateMarshaller.Instance: ITemplateMarshaller;
begin
  Result := FInstance;
end;

end.
