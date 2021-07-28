unit AWS.SES.Transform.UpdateCustomVerificationEmailTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.UpdateCustomVerificationEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUpdateCustomVerificationEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUpdateCustomVerificationEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUpdateCustomVerificationEmailTemplateRequest>, IUpdateCustomVerificationEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: IUpdateCustomVerificationEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUpdateCustomVerificationEmailTemplateRequest): IRequest; overload;
    class function Instance: IUpdateCustomVerificationEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TUpdateCustomVerificationEmailTemplateRequestMarshaller }

function TUpdateCustomVerificationEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUpdateCustomVerificationEmailTemplateRequest(AInput));
end;

function TUpdateCustomVerificationEmailTemplateRequestMarshaller.Marshall(PublicRequest: TUpdateCustomVerificationEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'UpdateCustomVerificationEmailTemplate');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetFailureRedirectionURL then
      Request.Parameters.Add('FailureRedirectionURL', TStringUtils.Fromstring(PublicRequest.FailureRedirectionURL));
    if PublicRequest.IsSetFromEmailAddress then
      Request.Parameters.Add('FromEmailAddress', TStringUtils.Fromstring(PublicRequest.FromEmailAddress));
    if PublicRequest.IsSetSuccessRedirectionURL then
      Request.Parameters.Add('SuccessRedirectionURL', TStringUtils.Fromstring(PublicRequest.SuccessRedirectionURL));
    if PublicRequest.IsSetTemplateContent then
      Request.Parameters.Add('TemplateContent', TStringUtils.Fromstring(PublicRequest.TemplateContent));
    if PublicRequest.IsSetTemplateName then
      Request.Parameters.Add('TemplateName', TStringUtils.Fromstring(PublicRequest.TemplateName));
    if PublicRequest.IsSetTemplateSubject then
      Request.Parameters.Add('TemplateSubject', TStringUtils.Fromstring(PublicRequest.TemplateSubject));
  end;
  Result := Request;
end;

class constructor TUpdateCustomVerificationEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TUpdateCustomVerificationEmailTemplateRequestMarshaller.Create;
end;

class function TUpdateCustomVerificationEmailTemplateRequestMarshaller.Instance: IUpdateCustomVerificationEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
