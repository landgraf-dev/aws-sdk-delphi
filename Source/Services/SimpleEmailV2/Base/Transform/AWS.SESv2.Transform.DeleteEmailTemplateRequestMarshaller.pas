unit AWS.SESv2.Transform.DeleteEmailTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteEmailTemplateRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteEmailTemplateRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteEmailTemplateRequest>, IDeleteEmailTemplateRequestMarshaller)
  strict private
    class var FInstance: IDeleteEmailTemplateRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteEmailTemplateRequest): IRequest; overload;
    class function Instance: IDeleteEmailTemplateRequestMarshaller; static;
  end;
  
implementation

{ TDeleteEmailTemplateRequestMarshaller }

function TDeleteEmailTemplateRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteEmailTemplateRequest(AInput));
end;

function TDeleteEmailTemplateRequestMarshaller.Marshall(PublicRequest: TDeleteEmailTemplateRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetTemplateName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field TemplateName set');
  Request.AddPathResource('{TemplateName}', TStringUtils.Fromstring(PublicRequest.TemplateName));
  Request.ResourcePath := '/v2/email/templates/{TemplateName}';
  Result := Request;
end;

class constructor TDeleteEmailTemplateRequestMarshaller.Create;
begin
  FInstance := TDeleteEmailTemplateRequestMarshaller.Create;
end;

class function TDeleteEmailTemplateRequestMarshaller.Instance: IDeleteEmailTemplateRequestMarshaller;
begin
  Result := FInstance;
end;

end.
