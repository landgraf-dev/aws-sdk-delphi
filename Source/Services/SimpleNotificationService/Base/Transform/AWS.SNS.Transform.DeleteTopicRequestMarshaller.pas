unit AWS.SNS.Transform.DeleteTopicRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SNS.Model.DeleteTopicRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteTopicRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteTopicRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteTopicRequest>, IDeleteTopicRequestMarshaller)
  strict private
    class var FInstance: IDeleteTopicRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteTopicRequest): IRequest; overload;
    class function Instance: IDeleteTopicRequestMarshaller; static;
  end;
  
implementation

{ TDeleteTopicRequestMarshaller }

function TDeleteTopicRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteTopicRequest(AInput));
end;

function TDeleteTopicRequestMarshaller.Marshall(PublicRequest: TDeleteTopicRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SimpleNotificationService');
  Request.Parameters.Add('Action', 'DeleteTopic');
  Request.Parameters.Add('Version', '2010-03-31');
  if PublicRequest <> nil then
    if PublicRequest.IsSetTopicArn then
      Request.Parameters.Add('TopicArn', TStringUtils.Fromstring(PublicRequest.TopicArn));
  Result := Request;
end;

class constructor TDeleteTopicRequestMarshaller.Create;
begin
  FInstance := TDeleteTopicRequestMarshaller.Create;
end;

class function TDeleteTopicRequestMarshaller.Instance: IDeleteTopicRequestMarshaller;
begin
  Result := FInstance;
end;

end.
