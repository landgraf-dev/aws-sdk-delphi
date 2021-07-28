unit AWS.SES.Transform.CreateCustomVerificationEmailTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.CreateCustomVerificationEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ICreateCustomVerificationEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCreateCustomVerificationEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCreateCustomVerificationEmailTemplateRequest>, ICreateCustomVerificationEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: ICreateCustomVerificationEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCreateCustomVerificationEmailTemplateRequest): IRequest; overload;
    class function Instance: ICreateCustomVerificationEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TCreateCustomVerificationEmailTemplateRequestMarshaller }

function TCreateCustomVerificationEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCreateCustomVerificationEmailTemplateRequest(AInput));
end;

function TCreateCustomVerificationEmailTemplateRequestMarshaller.Marshall(PublicRequest: TCreateCustomVerificationEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'CreateCustomVerificationEmailTemplate');
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

class constructor TCreateCustomVerificationEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TCreateCustomVerificationEmailTemplateRequestMarshaller.Create;
end;

class function TCreateCustomVerificationEmailTemplateRequestMarshaller.Instance: ICreateCustomVerificationEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
