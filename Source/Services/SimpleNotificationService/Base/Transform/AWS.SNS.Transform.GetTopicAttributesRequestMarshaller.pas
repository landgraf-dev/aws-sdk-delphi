unit AWS.SNS.Transform.GetTopicAttributesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.GetTopicAttributesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetTopicAttributesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetTopicAttributesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetTopicAttributesRequest>, IGetTopicAttributesRequestMarshaller)
  strict private
    class var FInstance: IGetTopicAttributesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetTopicAttributesRequest): IRequest; overload;
    class function Instance: IGetTopicAttributesRequestMarshaller; static;
  end;
  
implementation

{ TGetTopicAttributesRequestMarshaller }

function TGetTopicAttributesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetTopicAttributesRequest(AInput));
end;

function TGetTopicAttributesRequestMarshaller.Marshall(PublicRequest: TGetTopicAttributesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'GetTopicAttributes');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetTopicArn then
      Request.Parameters.Add('TopicArn', TStringUtils.Fromstring(PublicRequest.TopicArn));
  Result := Request;
end;

class constructor TGetTopicAttributesRequestMarshaller.Create;
begin
  FInstance := TGetTopicAttributesRequestMarshaller.Create;
end;

class function TGetTopicAttributesRequestMarshaller.Instance: IGetTopicAttributesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
