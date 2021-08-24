unit AWS.SESv2.Transform.GetContactRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetContactRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetContactRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetContactRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetContactRequest>, IGetContactRequestMarshaller)
  strict private
    class var FInstance: IGetContactRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetContactRequest): IRequest; overload;
    class function Instance: IGetContactRequestMarshaller; static;
  end;
  
implementation

{ TGetContactRequestMarshaller }

function TGetContactRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetContactRequest(AInput));
end;

function TGetContactRequestMarshaller.Marshall(PublicRequest: TGetContactRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetContactListName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ContactListName set');
  Request.AddPathResource('{ContactListName}', TStringUtils.Fromstring(PublicRequest.ContactListName));
  if not PublicRequest.IsSetEmailAddress then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EmailAddress set');
  Request.AddPathResource('{EmailAddress}', TStringUtils.Fromstring(PublicRequest.EmailAddress));
  Request.ResourcePath := '/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}';
  Result := Request;
end;

class constructor TGetContactRequestMarshaller.Create;
begin
  FInstance := TGetContactRequestMarshaller.Create;
end;

class function TGetContactRequestMarshaller.Instance: IGetContactRequestMarshaller;
begin
  Result := FInstance;
end;

end.
