unit AWS.SNS.Transform.SetSubscriptionAttributesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.SetSubscriptionAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetSubscriptionAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetSubscriptionAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetSubscriptionAttributesRequest>, ISetSubscriptionAttributesRequestMarshaller)
  strict private
    class var FInstance: ISetSubscriptionAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetSubscriptionAttributesRequest): IRequest; overload;
    class function Instance: ISetSubscriptionAttributesRequestMarshaller; static;
  end;
  
implementation

{ TSetSubscriptionAttributesRequestMarshaller }

function TSetSubscriptionAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetSubscriptionAttributesRequest(AInput));
end;

function TSetSubscriptionAttributesRequestMarshaller.Marshall(PublicRequest: TSetSubscriptionAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'SetSubscriptionAttributes');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAttributeName then
      Request.Parameters.Add('AttributeName', TStringUtils.Fromstring(PublicRequest.AttributeName));
    if PublicRequest.IsSetAttributeValue then
      Request.Parameters.Add('AttributeValue', TStringUtils.Fromstring(PublicRequest.AttributeValue));
    if PublicRequest.IsSetSubscriptionArn then
      Request.Parameters.Add('SubscriptionArn', TStringUtils.Fromstring(PublicRequest.SubscriptionArn));
  end;
  Result := Request;
end;

class constructor TSetSubscriptionAttributesRequestMarshaller.Create;
begin
  FInstance := TSetSubscriptionAttributesRequestMarshaller.Create;
end;

class function TSetSubscriptionAttributesRequestMarshaller.Instance: ISetSubscriptionAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
