unit AWS.SNS.Transform.SetTopicAttributesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.SetTopicAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  ISetTopicAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TSetTopicAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TSetTopicAttributesRequest>, ISetTopicAttributesRequestMarshaller)
  strict private
    class var FInstance: ISetTopicAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TSetTopicAttributesRequest): IRequest; overload;
    class function Instance: ISetTopicAttributesRequestMarshaller; static;
  end;
  
implementation

{ TSetTopicAttributesRequestMarshaller }

function TSetTopicAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TSetTopicAttributesRequest(AInput));
end;

function TSetTopicAttributesRequestMarshaller.Marshall(PublicRequest: TSetTopicAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'SetTopicAttributes');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAttributeName then
      Request.Parameters.Add('AttributeName', TStringUtils.Fromstring(PublicRequest.AttributeName));
    if PublicRequest.IsSetAttributeValue then
      Request.Parameters.Add('AttributeValue', TStringUtils.Fromstring(PublicRequest.AttributeValue));
    if PublicRequest.IsSetTopicArn then
      Request.Parameters.Add('TopicArn', TStringUtils.Fromstring(PublicRequest.TopicArn));
  end;
  Result := Request;
end;

class constructor TSetTopicAttributesRequestMarshaller.Create;
begin
  FInstance := TSetTopicAttributesRequestMarshaller.Create;
end;

class function TSetTopicAttributesRequestMarshaller.Instance: ISetTopicAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
