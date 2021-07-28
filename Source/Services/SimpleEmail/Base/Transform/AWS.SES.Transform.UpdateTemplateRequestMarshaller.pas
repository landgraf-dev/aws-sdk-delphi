unit AWS.SES.Transform.UpdateTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUpdateTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateTemplateRequest>, IUpdateTemplateRequestMarshaller)
  strict private
    class var FInstance: IUpdateTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateTemplateRequest): IRequest; overload;
    class function Instance: IUpdateTemplateRequestMarshaller; static;
  end;
  
implementation

{ TUpdateTemplateRequestMarshaller }

function TUpdateTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateTemplateRequest(AInput));
end;

function TUpdateTemplateRequestMarshaller.Marshall(PublicRequest: TUpdateTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'UpdateTemplate');
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

class constructor TUpdateTemplateRequestMarshaller.Create;
begin
  FInstance := TUpdateTemplateRequestMarshaller.Create;
end;

class function TUpdateTemplateRequestMarshaller.Instance: IUpdateTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
