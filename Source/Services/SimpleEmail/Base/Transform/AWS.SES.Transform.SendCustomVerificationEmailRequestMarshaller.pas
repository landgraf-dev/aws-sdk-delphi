unit AWS.SES.Transform.SendCustomVerificationEmailRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SendCustomVerificationEmailRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISendCustomVerificationEmailRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSendCustomVerificationEmailRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSendCustomVerificationEmailRequest>, ISendCustomVerificationEmailRequestMarshaller)
  strict private
    class var FInstance: ISendCustomVerificationEmailRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSendCustomVerificationEmailRequest): IRequest; overload;
    class function Instance: ISendCustomVerificationEmailRequestMarshaller; static;
  end;
  
implementation

{ TSendCustomVerificationEmailRequestMarshaller }

function TSendCustomVerificationEmailRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSendCustomVerificationEmailRequest(AInput));
end;

function TSendCustomVerificationEmailRequestMarshaller.Marshall(PublicRequest: TSendCustomVerificationEmailRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SendCustomVerificationEmail');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetConfigurationSetName then
      Request.Parameters.Add('ConfigurationSetName', TStringUtils.Fromstring(PublicRequest.ConfigurationSetName));
    if PublicRequest.IsSetEmailAddress then
      Request.Parameters.Add('EmailAddress', TStringUtils.Fromstring(PublicRequest.EmailAddress));
    if PublicRequest.IsSetTemplateName then
      Request.Parameters.Add('TemplateName', TStringUtils.Fromstring(PublicRequest.TemplateName));
  end;
  Result := Request;
end;

class constructor TSendCustomVerificationEmailRequestMarshaller.Create;
begin
  FInstance := TSendCustomVerificationEmailRequestMarshaller.Create;
end;

class function TSendCustomVerificationEmailRequestMarshaller.Instance: ISendCustomVerificationEmailRequestMarshaller;
begin
  Result := FInstance;
end;

end.
