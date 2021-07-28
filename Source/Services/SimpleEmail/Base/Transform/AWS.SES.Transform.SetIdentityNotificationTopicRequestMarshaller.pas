unit AWS.SES.Transform.SetIdentityNotificationTopicRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SetIdentityNotificationTopicRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetIdentityNotificationTopicRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetIdentityNotificationTopicRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetIdentityNotificationTopicRequest>, ISetIdentityNotificationTopicRequestMarshaller)
  strict private
    class var FInstance: ISetIdentityNotificationTopicRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetIdentityNotificationTopicRequest): IRequest; overload;
    class function Instance: ISetIdentityNotificationTopicRequestMarshaller; static;
  end;
  
implementation

{ TSetIdentityNotificationTopicRequestMarshaller }

function TSetIdentityNotificationTopicRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetIdentityNotificationTopicRequest(AInput));
end;

function TSetIdentityNotificationTopicRequestMarshaller.Marshall(PublicRequest: TSetIdentityNotificationTopicRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SetIdentityNotificationTopic');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
    if PublicRequest.IsSetNotificationType then
      Request.Parameters.Add('NotificationType', PublicRequest.NotificationType.Value);
    if PublicRequest.IsSetSnsTopic then
      Request.Parameters.Add('SnsTopic', TStringUtils.Fromstring(PublicRequest.SnsTopic));
  end;
  Result := Request;
end;

class constructor TSetIdentityNotificationTopicRequestMarshaller.Create;
begin
  FInstance := TSetIdentityNotificationTopicRequestMarshaller.Create;
end;

class function TSetIdentityNotificationTopicRequestMarshaller.Instance: ISetIdentityNotificationTopicRequestMarshaller;
begin
  Result := FInstance;
end;

end.
