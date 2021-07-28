unit AWS.SES.Transform.VerifyEmailIdentityRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.VerifyEmailIdentityRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IVerifyEmailIdentityRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TVerifyEmailIdentityRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TVerifyEmailIdentityRequest>, IVerifyEmailIdentityRequestMarshaller)
  strict private
    class var FInstance: IVerifyEmailIdentityRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TVerifyEmailIdentityRequest): IRequest; overload;
    class function Instance: IVerifyEmailIdentityRequestMarshaller; static;
  end;
  
implementation

{ TVerifyEmailIdentityRequestMarshaller }

function TVerifyEmailIdentityRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TVerifyEmailIdentityRequest(AInput));
end;

function TVerifyEmailIdentityRequestMarshaller.Marshall(PublicRequest: TVerifyEmailIdentityRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'VerifyEmailIdentity');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
    if PublicRequest.IsSetEmailAddress then
      Request.Parameters.Add('EmailAddress', TStringUtils.Fromstring(PublicRequest.EmailAddress));
  Result := Request;
end;

class constructor TVerifyEmailIdentityRequestMarshaller.Create;
begin
  FInstance := TVerifyEmailIdentityRequestMarshaller.Create;
end;

class function TVerifyEmailIdentityRequestMarshaller.Instance: IVerifyEmailIdentityRequestMarshaller;
begin
  Result := FInstance;
end;

end.
