unit AWS.SESv2.Transform.GetContactListRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.GetContactListRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IGetContactListRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetContactListRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetContactListRequest>, IGetContactListRequestMarshaller)
  strict private
    class var FInstance: IGetContactListRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetContactListRequest): IRequest; overload;
    class function Instance: IGetContactListRequestMarshaller; static;
  end;
  
implementation

{ TGetContactListRequestMarshaller }

function TGetContactListRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetContactListRequest(AInput));
end;

function TGetContactListRequestMarshaller.Marshall(PublicRequest: TGetContactListRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'GET';
  if not PublicRequest.IsSetContactListName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ContactListName set');
  Request.AddPathResource('{ContactListName}', TStringUtils.Fromstring(PublicRequest.ContactListName));
  Request.ResourcePath := '/v2/email/contact-lists/{ContactListName}';
  Result := Request;
end;

class constructor TGetContactListRequestMarshaller.Create;
begin
  FInstance := TGetContactListRequestMarshaller.Create;
end;

class function TGetContactListRequestMarshaller.Instance: IGetContactListRequestMarshaller;
begin
  Result := FInstance;
end;

end.
