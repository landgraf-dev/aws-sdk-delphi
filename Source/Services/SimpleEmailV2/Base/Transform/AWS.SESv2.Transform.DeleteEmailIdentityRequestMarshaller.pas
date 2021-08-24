unit AWS.SESv2.Transform.DeleteEmailIdentityRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteEmailIdentityRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteEmailIdentityRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteEmailIdentityRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteEmailIdentityRequest>, IDeleteEmailIdentityRequestMarshaller)
  strict private
    class var FInstance: IDeleteEmailIdentityRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteEmailIdentityRequest): IRequest; overload;
    class function Instance: IDeleteEmailIdentityRequestMarshaller; static;
  end;
  
implementation

{ TDeleteEmailIdentityRequestMarshaller }

function TDeleteEmailIdentityRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteEmailIdentityRequest(AInput));
end;

function TDeleteEmailIdentityRequestMarshaller.Marshall(PublicRequest: TDeleteEmailIdentityRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetEmailIdentity then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EmailIdentity set');
  Request.AddPathResource('{EmailIdentity}', TStringUtils.Fromstring(PublicRequest.EmailIdentity));
  Request.ResourcePath := '/v2/email/identities/{EmailIdentity}';
  Result := Request;
end;

class constructor TDeleteEmailIdentityRequestMarshaller.Create;
begin
  FInstance := TDeleteEmailIdentityRequestMarshaller.Create;
end;

class function TDeleteEmailIdentityRequestMarshaller.Instance: IDeleteEmailIdentityRequestMarshaller;
begin
  Result := FInstance;
end;

end.
