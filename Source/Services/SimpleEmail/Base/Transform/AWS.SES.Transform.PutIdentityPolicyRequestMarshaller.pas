unit AWS.SES.Transform.PutIdentityPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.PutIdentityPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IPutIdentityPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutIdentityPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutIdentityPolicyRequest>, IPutIdentityPolicyRequestMarshaller)
  strict private
    class var FInstance: IPutIdentityPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutIdentityPolicyRequest): IRequest; overload;
    class function Instance: IPutIdentityPolicyRequestMarshaller; static;
  end;
  
implementation

{ TPutIdentityPolicyRequestMarshaller }

function TPutIdentityPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutIdentityPolicyRequest(AInput));
end;

function TPutIdentityPolicyRequestMarshaller.Marshall(PublicRequest: TPutIdentityPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'PutIdentityPolicy');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
    if PublicRequest.IsSetPolicy then
      Request.Parameters.Add('Policy', TStringUtils.Fromstring(PublicRequest.Policy));
    if PublicRequest.IsSetPolicyName then
      Request.Parameters.Add('PolicyName', TStringUtils.Fromstring(PublicRequest.PolicyName));
  end;
  Result := Request;
end;

class constructor TPutIdentityPolicyRequestMarshaller.Create;
begin
  FInstance := TPutIdentityPolicyRequestMarshaller.Create;
end;

class function TPutIdentityPolicyRequestMarshaller.Instance: IPutIdentityPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
