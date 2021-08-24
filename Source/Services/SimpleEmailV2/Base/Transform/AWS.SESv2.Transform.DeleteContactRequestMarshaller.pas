unit AWS.SESv2.Transform.DeleteContactRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteContactRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteContactRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteContactRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteContactRequest>, IDeleteContactRequestMarshaller)
  strict private
    class var FInstance: IDeleteContactRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteContactRequest): IRequest; overload;
    class function Instance: IDeleteContactRequestMarshaller; static;
  end;
  
implementation

{ TDeleteContactRequestMarshaller }

function TDeleteContactRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteContactRequest(AInput));
end;

function TDeleteContactRequestMarshaller.Marshall(PublicRequest: TDeleteContactRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetContactListName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ContactListName set');
  Request.AddPathResource('{ContactListName}', TStringUtils.Fromstring(PublicRequest.ContactListName));
  if not PublicRequest.IsSetEmailAddress then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field EmailAddress set');
  Request.AddPathResource('{EmailAddress}', TStringUtils.Fromstring(PublicRequest.EmailAddress));
  Request.ResourcePath := '/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}';
  Result := Request;
end;

class constructor TDeleteContactRequestMarshaller.Create;
begin
  FInstance := TDeleteContactRequestMarshaller.Create;
end;

class function TDeleteContactRequestMarshaller.Instance: IDeleteContactRequestMarshaller;
begin
  Result := FInstance;
end;

end.
