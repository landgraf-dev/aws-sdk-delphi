unit AWS.SES.Transform.DeleteCustomVerificationEmailTemplateRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteCustomVerificationEmailTemplateRequest, 
  AWS.Internal.DefaultRequest, 
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
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteCustomVerificationEmailTemplate');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetTemplateName then
      Request.Parameters.Add('TemplateName', TStringUtils.Fromstring(PublicRequest.TemplateName));
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
