unit AWS.SES.Transform.CreateTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateTemplateRequest>, ICreateTemplateRequestMarshaller)
  strict private
    class var FInstance: ICreateTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateTemplateRequest): IRequest; overload;
    class function Instance: ICreateTemplateRequestMarshaller; static;
  end;
  
implementation

{ TCreateTemplateRequestMarshaller }

function TCreateTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateTemplateRequest(AInput));
end;

function TCreateTemplateRequestMarshaller.Marshall(PublicRequest: TCreateTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'CreateTemplate');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetTemplate then
    begin
      if PublicRequest.Template.IsSetHtmlPart then
        Request.Parameters.Add('Template' + '.' + 'HtmlPart', TStringUtils.Fromstring(PublicRequest.Template.HtmlPart));
      if PublicRequest.Template.IsSetSubjectPart then
        Request.Parameters.Add('Template' + '.' + 'SubjectPart', TStringUtils.Fromstring(PublicRequest.Template.SubjectPart));
      if PublicRequest.Template.IsSetTemplateName then
        Request.Parameters.Add('Template' + '.' + 'TemplateName', TStringUtils.Fromstring(PublicRequest.Template.TemplateName));
      if PublicRequest.Template.IsSetTextPart then
        Request.Parameters.Add('Template' + '.' + 'TextPart', TStringUtils.Fromstring(PublicRequest.Template.TextPart));
    end;
  Result := Request;
end;

class constructor TCreateTemplateRequestMarshaller.Create;
begin
  FInstance := TCreateTemplateRequestMarshaller.Create;
end;

class function TCreateTemplateRequestMarshaller.Instance: ICreateTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
