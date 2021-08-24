unit AWS.SESv2.Transform.GetEmailIdentityRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetEmailIdentityRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetEmailIdentityRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetEmailIdentityRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetEmailIdentityRequest>, IGetEmailIdentityRequestMarshaller)
  strict private
    class var FInstance: IGetEmailIdentityRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetEmailIdentityRequest): IRequest; overload;
    class function Instance: IGetEmailIdentityRequestMarshaller; static;
  end;
  
implementation

{ TGetEmailIdentityRequestMarshaller }

function TGetEmailIdentityRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetEmailIdentityRequest(AInput));
end;

function TGetEmailIdentityRequestMarshaller.Marshall(PublicRequest: TGetEmailIdentityRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetEmailIdentity then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EmailIdentity set');
  Request.AddPathResource('{EmailIdentity}', TStringUtils.Fromstring(PublicRequest.EmailIdentity));
  Request.ResourcePath := '/v2/email/identities/{EmailIdentity}';
  Result := Request;
end;

class constructor TGetEmailIdentityRequestMarshaller.Create;
begin
  FInstance := TGetEmailIdentityRequestMarshaller.Create;
end;

class function TGetEmailIdentityRequestMarshaller.Instance: IGetEmailIdentityRequestMarshaller;
begin
  Result := FInstance;
end;

end.
