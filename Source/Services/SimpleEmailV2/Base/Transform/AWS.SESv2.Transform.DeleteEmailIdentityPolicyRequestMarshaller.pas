unit AWS.SESv2.Transform.DeleteEmailIdentityPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteEmailIdentityPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteEmailIdentityPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteEmailIdentityPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteEmailIdentityPolicyRequest>, IDeleteEmailIdentityPolicyRequestMarshaller)
  strict private
    class var FInstance: IDeleteEmailIdentityPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteEmailIdentityPolicyRequest): IRequest; overload;
    class function Instance: IDeleteEmailIdentityPolicyRequestMarshaller; static;
  end;
  
implementation

{ TDeleteEmailIdentityPolicyRequestMarshaller }

function TDeleteEmailIdentityPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteEmailIdentityPolicyRequest(AInput));
end;

function TDeleteEmailIdentityPolicyRequestMarshaller.Marshall(PublicRequest: TDeleteEmailIdentityPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetEmailIdentity then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EmailIdentity set');
  Request.AddPathResource('{EmailIdentity}', TStringUtils.Fromstring(PublicRequest.EmailIdentity));
  if not PublicRequest.IsSetPolicyName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field PolicyName set');
  Request.AddPathResource('{PolicyName}', TStringUtils.Fromstring(PublicRequest.PolicyName));
  Request.ResourcePath := '/v2/email/identities/{EmailIdentity}/policies/{PolicyName}';
  Result := Request;
end;

class constructor TDeleteEmailIdentityPolicyRequestMarshaller.Create;
begin
  FInstance := TDeleteEmailIdentityPolicyRequestMarshaller.Create;
end;

class function TDeleteEmailIdentityPolicyRequestMarshaller.Instance: IDeleteEmailIdentityPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
