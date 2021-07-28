unit AWS.SES.Transform.SetIdentityHeadersInNotificationsEnabledRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetIdentityHeadersInNotificationsEnabledRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetIdentityHeadersInNotificationsEnabledRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetIdentityHeadersInNotificationsEnabledRequest>, ISetIdentityHeadersInNotificationsEnabledRequestMarshaller)
  strict private
    class var FInstance: ISetIdentityHeadersInNotificationsEnabledRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetIdentityHeadersInNotificationsEnabledRequest): IRequest; overload;
    class function Instance: ISetIdentityHeadersInNotificationsEnabledRequestMarshaller; static;
  end;
  
implementation

{ TSetIdentityHeadersInNotificationsEnabledRequestMarshaller }

function TSetIdentityHeadersInNotificationsEnabledRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetIdentityHeadersInNotificationsEnabledRequest(AInput));
end;

function TSetIdentityHeadersInNotificationsEnabledRequestMarshaller.Marshall(PublicRequest: TSetIdentityHeadersInNotificationsEnabledRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleEmail');
  Request.Parameters.Add('Action', 'SetIdentityHeadersInNotificationsEnabled');
  Request.Parameters.Add('Version', '2010-12-01');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetEnabled then
      Request.Parameters.Add('Enabled', TStringUtils.FromBoolean(PublicRequest.Enabled));
    if PublicRequest.IsSetIdentity then
      Request.Parameters.Add('Identity', TStringUtils.Fromstring(PublicRequest.Identity));
    if PublicRequest.IsSetNotificationType then
      Request.Parameters.Add('NotificationType', PublicRequest.NotificationType.Value);
  end;
  Result := Request;
end;

class constructor TSetIdentityHeadersInNotificationsEnabledRequestMarshaller.Create;
begin
  FInstance := TSetIdentityHeadersInNotificationsEnabledRequestMarshaller.Create;
end;

class function TSetIdentityHeadersInNotificationsEnabledRequestMarshaller.Instance: ISetIdentityHeadersInNotificationsEnabledRequestMarshaller;
begin
  Result := FInstance;
end;

end.
