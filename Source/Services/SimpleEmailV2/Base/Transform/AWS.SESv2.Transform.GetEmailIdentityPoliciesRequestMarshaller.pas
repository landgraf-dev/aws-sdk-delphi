unit AWS.SESv2.Transform.GetEmailIdentityPoliciesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetEmailIdentityPoliciesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetEmailIdentityPoliciesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetEmailIdentityPoliciesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetEmailIdentityPoliciesRequest>, IGetEmailIdentityPoliciesRequestMarshaller)
  strict private
    class var FInstance: IGetEmailIdentityPoliciesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetEmailIdentityPoliciesRequest): IRequest; overload;
    class function Instance: IGetEmailIdentityPoliciesRequestMarshaller; static;
  end;
  
implementation

{ TGetEmailIdentityPoliciesRequestMarshaller }

function TGetEmailIdentityPoliciesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetEmailIdentityPoliciesRequest(AInput));
end;

function TGetEmailIdentityPoliciesRequestMarshaller.Marshall(PublicRequest: TGetEmailIdentityPoliciesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetEmailIdentity then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EmailIdentity set');
  Request.AddPathResource('{EmailIdentity}', TStringUtils.Fromstring(PublicRequest.EmailIdentity));
  Request.ResourcePath := '/v2/email/identities/{EmailIdentity}/policies';
  Result := Request;
end;

class constructor TGetEmailIdentityPoliciesRequestMarshaller.Create;
begin
  FInstance := TGetEmailIdentityPoliciesRequestMarshaller.Create;
end;

class function TGetEmailIdentityPoliciesRequestMarshaller.Instance: IGetEmailIdentityPoliciesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
