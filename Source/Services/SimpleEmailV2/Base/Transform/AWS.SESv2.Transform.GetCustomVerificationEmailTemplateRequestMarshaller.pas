unit AWS.SESv2.Transform.GetCustomVerificationEmailTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetCustomVerificationEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetCustomVerificationEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetCustomVerificationEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetCustomVerificationEmailTemplateRequest>, IGetCustomVerificationEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: IGetCustomVerificationEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetCustomVerificationEmailTemplateRequest): IRequest; overload;
    class function Instance: IGetCustomVerificationEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TGetCustomVerificationEmailTemplateRequestMarshaller }

function TGetCustomVerificationEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetCustomVerificationEmailTemplateRequest(AInput));
end;

function TGetCustomVerificationEmailTemplateRequestMarshaller.Marshall(PublicRequest: TGetCustomVerificationEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetTemplateName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field TemplateName set');
  Request.AddPathResource('{TemplateName}', TStringUtils.Fromstring(PublicRequest.TemplateName));
  Request.ResourcePath := '/v2/email/custom-verification-email-templates/{TemplateName}';
  Result := Request;
end;

class constructor TGetCustomVerificationEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TGetCustomVerificationEmailTemplateRequestMarshaller.Create;
end;

class function TGetCustomVerificationEmailTemplateRequestMarshaller.Instance: IGetCustomVerificationEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
