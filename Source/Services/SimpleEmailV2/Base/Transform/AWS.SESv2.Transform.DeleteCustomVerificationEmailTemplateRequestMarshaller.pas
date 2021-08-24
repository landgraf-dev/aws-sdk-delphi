unit AWS.SESv2.Transform.DeleteCustomVerificationEmailTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteCustomVerificationEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteCustomVerificationEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteCustomVerificationEmailTemplateRequest>, IDeleteCustomVerificationEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: IDeleteCustomVerificationEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteCustomVerificationEmailTemplateRequest): IRequest; overload;
    class function Instance: IDeleteCustomVerificationEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TDeleteCustomVerificationEmailTemplateRequestMarshaller }

function TDeleteCustomVerificationEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteCustomVerificationEmailTemplateRequest(AInput));
end;

function TDeleteCustomVerificationEmailTemplateRequestMarshaller.Marshall(PublicRequest: TDeleteCustomVerificationEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetTemplateName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field TemplateName set');
  Request.AddPathResource('{TemplateName}', TStringUtils.Fromstring(PublicRequest.TemplateName));
  Request.ResourcePath := '/v2/email/custom-verification-email-templates/{TemplateName}';
  Result := Request;
end;

class constructor TDeleteCustomVerificationEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TDeleteCustomVerificationEmailTemplateRequestMarshaller.Create;
end;

class function TDeleteCustomVerificationEmailTemplateRequestMarshaller.Instance: IDeleteCustomVerificationEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
