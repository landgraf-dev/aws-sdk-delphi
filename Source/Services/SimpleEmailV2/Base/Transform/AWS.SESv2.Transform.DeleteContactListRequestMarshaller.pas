unit AWS.SESv2.Transform.DeleteContactListRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SESv2.Model.DeleteContactListRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.SDKUtils, 
  AWS.SESv2.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteContactListRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteContactListRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteContactListRequest>, IDeleteContactListRequestMarshaller)
  strict private
    class var FInstance: IDeleteContactListRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteContactListRequest): IRequest; overload;
    class function Instance: IDeleteContactListRequestMarshaller; static;
  end;
  
implementation

{ TDeleteContactListRequestMarshaller }

function TDeleteContactListRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteContactListRequest(AInput));
end;

function TDeleteContactListRequestMarshaller.Marshall(PublicRequest: TDeleteContactListRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmailV2');
  Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2019-09-27');
  Request.HttpMethod := 'DELETE';
  if not PublicRequest.IsSetContactListName then
    raise EAmazonSimpleEmailServiceV2Exception.Create('Request object does not have required field ContactListName set');
  Request.AddPathResource('{ContactListName}', TStringUtils.Fromstring(PublicRequest.ContactListName));
  Request.ResourcePath := '/v2/email/contact-lists/{ContactListName}';
  Result := Request;
end;

class constructor TDeleteContactListRequestMarshaller.Create;
begin
  FInstance := TDeleteContactListRequestMarshaller.Create;
end;

class function TDeleteContactListRequestMarshaller.Instance: IDeleteContactListRequestMarshaller;
begin
  Result := FInstance;
end;

end.
