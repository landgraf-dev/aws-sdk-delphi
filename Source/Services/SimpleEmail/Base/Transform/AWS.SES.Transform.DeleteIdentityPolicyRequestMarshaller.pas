unit AWS.SES.Transform.DeleteIdentityPolicyRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.DeleteIdentityPolicyRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteIdentityPolicyRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteIdentityPolicyRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteIdentityPolicyRequest>, IDeleteIdentityPolicyRequestMarshaller)
  strict private
    class var FInstance: IDeleteIdentityPolicyRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteIdentityPolicyRequest): IRequest; overload;
    class function Instance: IDeleteIdentityPolicyRequestMarshaller; static;
  end;
  
implementation

{ TDeleteIdentityPolicyRequestMarshaller }

function TDeleteIdentityPolicyRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteIdentityPolicyRequest(AInput));
end;

function TDeleteIdentityPolicyRequestMarshaller.Marshall(PublicRequest: TDeleteIdentityPolicyRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'DeleteIdentityPolicy');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
    if PublicRequest.IsSetPolicyName then
      Request.Parameters.Add('PolicyName', TStringUtils.Fromstring(PublicRequest.PolicyName));
  end;
  Result := Request;
end;

class constructor TDeleteIdentityPolicyRequestMarshaller.Create;
begin
  FInstance := TDeleteIdentityPolicyRequestMarshaller.Create;
end;

class function TDeleteIdentityPolicyRequestMarshaller.Instance: IDeleteIdentityPolicyRequestMarshaller;
begin
  Result := FInstance;
end;

end.
