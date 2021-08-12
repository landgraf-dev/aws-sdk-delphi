unit AWS.SNS.Transform.ListSubscriptionsByTopicRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.ListSubscriptionsByTopicRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListSubscriptionsByTopicRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListSubscriptionsByTopicRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListSubscriptionsByTopicRequest>, IListSubscriptionsByTopicRequestMarshaller)
  strict private
    class var FInstance: IListSubscriptionsByTopicRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListSubscriptionsByTopicRequest): IRequest; overload;
    class function Instance: IListSubscriptionsByTopicRequestMarshaller; static;
  end;
  
implementation

{ TListSubscriptionsByTopicRequestMarshaller }

function TListSubscriptionsByTopicRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListSubscriptionsByTopicRequest(AInput));
end;

function TListSubscriptionsByTopicRequestMarshaller.Marshall(PublicRequest: TListSubscriptionsByTopicRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'ListSubscriptionsByTopic');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
    if PublicRequest.IsSetTopicArn then
      Request.Parameters.Add('TopicArn', TStringUtils.Fromstring(PublicRequest.TopicArn));
  end;
  Result := Request;
end;

class constructor TListSubscriptionsByTopicRequestMarshaller.Create;
begin
  FInstance := TListSubscriptionsByTopicRequestMarshaller.Create;
end;

class function TListSubscriptionsByTopicRequestMarshaller.Instance: IListSubscriptionsByTopicRequestMarshaller;
begin
  Result := FInstance;
end;

end.
