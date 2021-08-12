unit AWS.SNS.Transform.GetSubscriptionAttributesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.GetSubscriptionAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetSubscriptionAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetSubscriptionAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetSubscriptionAttributesRequest>, IGetSubscriptionAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetSubscriptionAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetSubscriptionAttributesRequest): IRequest; overload;
    class function Instance: IGetSubscriptionAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetSubscriptionAttributesRequestMarshaller }

function TGetSubscriptionAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetSubscriptionAttributesRequest(AInput));
end;

function TGetSubscriptionAttributesRequestMarshaller.Marshall(PublicRequest: TGetSubscriptionAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'GetSubscriptionAttributes');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetSubscriptionArn then
      Request.Parameters.Add('SubscriptionArn', TStringUtils.Fromstring(PublicRequest.SubscriptionArn));
  Result := Request;
end;

class constructor TGetSubscriptionAttributesRequestMarshaller.Create;
begin
  FInstance := TGetSubscriptionAttributesRequestMarshaller.Create;
end;

class function TGetSubscriptionAttributesRequestMarshaller.Instance: IGetSubscriptionAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
