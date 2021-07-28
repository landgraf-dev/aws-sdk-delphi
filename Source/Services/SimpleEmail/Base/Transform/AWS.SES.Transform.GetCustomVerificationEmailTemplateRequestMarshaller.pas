unit AWS.SES.Transform.GetCustomVerificationEmailTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.GetCustomVerificationEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
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
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'GetCustomVerificationEmailTemplate');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetTemplateName then
      Request.Parameters.Add('TemplateName', TStringUtils.Fromstring(PublicRequest.TemplateName));
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
