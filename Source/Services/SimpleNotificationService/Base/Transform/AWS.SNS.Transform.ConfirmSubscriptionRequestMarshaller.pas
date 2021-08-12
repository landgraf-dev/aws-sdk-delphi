unit AWS.SNS.Transform.ConfirmSubscriptionRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ConfirmSubscriptionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IConfirmSubscriptionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TConfirmSubscriptionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TConfirmSubscriptionRequest>, IConfirmSubscriptionRequestMarshaller)
  strict private
    class var FInstance: IConfirmSubscriptionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TConfirmSubscriptionRequest): IRequest; overload;
    class function Instance: IConfirmSubscriptionRequestMarshaller; static;
  end;
  
implementation

{ TConfirmSubscriptionRequestMarshaller }

function TConfirmSubscriptionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TConfirmSubscriptionRequest(AInput));
end;

function TConfirmSubscriptionRequestMarshaller.Marshall(PublicRequest: TConfirmSubscriptionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ConfirmSubscription');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAuthenticateOnUnsubscribe then
      Request.Parameters.Add('AuthenticateOnUnsubscribe', TStringUtils.Fromstring(PublicRequest.AuthenticateOnUnsubscribe));
    if PublicRequest.IsSetToken then
      Request.Parameters.Add('Token', TStringUtils.Fromstring(PublicRequest.Token));
    if PublicRequest.IsSetTopicArn then
      Request.Parameters.Add('TopicArn', TStringUtils.Fromstring(PublicRequest.TopicArn));
  end;
  Result := Request;
end;

class constructor TConfirmSubscriptionRequestMarshaller.Create;
begin
  FInstance := TConfirmSubscriptionRequestMarshaller.Create;
end;

class function TConfirmSubscriptionRequestMarshaller.Instance: IConfirmSubscriptionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
