unit AWS.SES.Transform.VerifyDomainIdentityRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.VerifyDomainIdentityRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IVerifyDomainIdentityRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TVerifyDomainIdentityRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TVerifyDomainIdentityRequest>, IVerifyDomainIdentityRequestMarshaller)
  strict private
    class var FInstance: IVerifyDomainIdentityRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TVerifyDomainIdentityRequest): IRequest; overload;
    class function Instance: IVerifyDomainIdentityRequestMarshaller; static;
  end;
  
implementation

{ TVerifyDomainIdentityRequestMarshaller }

function TVerifyDomainIdentityRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TVerifyDomainIdentityRequest(AInput));
end;

function TVerifyDomainIdentityRequestMarshaller.Marshall(PublicRequest: TVerifyDomainIdentityRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'VerifyDomainIdentity');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetDomain then
      Request.Parameters.Add('Domain', TStringUtils.Fromstring(PublicRequest.Domain));
  Result := Request;
end;

class constructor TVerifyDomainIdentityRequestMarshaller.Create;
begin
  FInstance := TVerifyDomainIdentityRequestMarshaller.Create;
end;

class function TVerifyDomainIdentityRequestMarshaller.Instance: IVerifyDomainIdentityRequestMarshaller;
begin
  Result := FInstance;
end;

end.
