unit AWS.SNS.Transform.UnsubscribeRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.UnsubscribeRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IUnsubscribeRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUnsubscribeRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUnsubscribeRequest>, IUnsubscribeRequestMarshaller)
  strict private
    class var FInstance: IUnsubscribeRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUnsubscribeRequest): IRequest; overload;
    class function Instance: IUnsubscribeRequestMarshaller; static;
  end;
  
implementation

{ TUnsubscribeRequestMarshaller }

function TUnsubscribeRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUnsubscribeRequest(AInput));
end;

function TUnsubscribeRequestMarshaller.Marshall(PublicRequest: TUnsubscribeRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'Unsubscribe');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetSubscriptionArn then
      Request.Parameters.Add('SubscriptionArn', TStringUtils.Fromstring(PublicRequest.SubscriptionArn));
  Result := Request;
end;

class constructor TUnsubscribeRequestMarshaller.Create;
begin
  FInstance := TUnsubscribeRequestMarshaller.Create;
end;

class function TUnsubscribeRequestMarshaller.Instance: IUnsubscribeRequestMarshaller;
begin
  Result := FInstance;
end;

end.
