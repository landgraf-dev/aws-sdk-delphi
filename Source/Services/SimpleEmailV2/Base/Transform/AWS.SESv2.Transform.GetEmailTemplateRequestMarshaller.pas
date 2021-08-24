unit AWS.SESv2.Transform.GetEmailTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetEmailTemplateRequest>, IGetEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: IGetEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetEmailTemplateRequest): IRequest; overload;
    class function Instance: IGetEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TGetEmailTemplateRequestMarshaller }

function TGetEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetEmailTemplateRequest(AInput));
end;

function TGetEmailTemplateRequestMarshaller.Marshall(PublicRequest: TGetEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetTemplateName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field TemplateName set');
  Request.AddPathResource('{TemplateName}', TStringUtils.Fromstring(PublicRequest.TemplateName));
  Request.ResourcePath := '/v2/email/templates/{TemplateName}';
  Result := Request;
end;

class constructor TGetEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TGetEmailTemplateRequestMarshaller.Create;
end;

class function TGetEmailTemplateRequestMarshaller.Instance: IGetEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
