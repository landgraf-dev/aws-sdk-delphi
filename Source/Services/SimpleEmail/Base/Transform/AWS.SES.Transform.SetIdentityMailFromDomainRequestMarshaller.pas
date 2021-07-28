unit AWS.SES.Transform.SetIdentityMailFromDomainRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SetIdentityMailFromDomainRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetIdentityMailFromDomainRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetIdentityMailFromDomainRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetIdentityMailFromDomainRequest>, ISetIdentityMailFromDomainRequestMarshaller)
  strict private
    class var FInstance: ISetIdentityMailFromDomainRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetIdentityMailFromDomainRequest): IRequest; overload;
    class function Instance: ISetIdentityMailFromDomainRequestMarshaller; static;
  end;
  
implementation

{ TSetIdentityMailFromDomainRequestMarshaller }

function TSetIdentityMailFromDomainRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetIdentityMailFromDomainRequest(AInput));
end;

function TSetIdentityMailFromDomainRequestMarshaller.Marshall(PublicRequest: TSetIdentityMailFromDomainRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SetIdentityMailFromDomain');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetBehaviorOnMXFailure then
      Request.Parameters.Add('BehaviorOnMXFailure', PublicRequest.BehaviorOnMXFailure.Value);
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
    if PublicRequest.IsSetMailFromDomain then
      Request.Parameters.Add('MailFromDomain', TStringUtils.Fromstring(PublicRequest.MailFromDomain));
  end;
  Result := Request;
end;

class constructor TSetIdentityMailFromDomainRequestMarshaller.Create;
begin
  FInstance := TSetIdentityMailFromDomainRequestMarshaller.Create;
end;

class function TSetIdentityMailFromDomainRequestMarshaller.Instance: ISetIdentityMailFromDomainRequestMarshaller;
begin
  Result := FInstance;
end;

end.
