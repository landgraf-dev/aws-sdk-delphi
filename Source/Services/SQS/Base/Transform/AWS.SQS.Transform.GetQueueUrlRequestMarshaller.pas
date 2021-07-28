unit AWS.SQS.Transform.GetQueueUrlRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.GetQueueUrlRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IGetQueueUrlRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetQueueUrlRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetQueueUrlRequest>, IGetQueueUrlRequestMarshaller)
  strict private
    class var FInstance: IGetQueueUrlRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetQueueUrlRequest): IRequest; overload;
    class function Instance: IGetQueueUrlRequestMarshaller; static;
  end;
  
implementation

{ TGetQueueUrlRequestMarshaller }

function TGetQueueUrlRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetQueueUrlRequest(AInput));
end;

function TGetQueueUrlRequestMarshaller.Marshall(PublicRequest: TGetQueueUrlRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'GetQueueUrl');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetQueueName then
      Request.Parameters.Add('QueueName', TStringUtils.Fromstring(PublicRequest.QueueName));
    if PublicRequest.IsSetQueueOwnerAWSAccountId then
      Request.Parameters.Add('QueueOwnerAWSAccountId', TStringUtils.Fromstring(PublicRequest.QueueOwnerAWSAccountId));
  end;
  Result := Request;
end;

class constructor TGetQueueUrlRequestMarshaller.Create;
begin
  FInstance := TGetQueueUrlRequestMarshaller.Create;
end;

class function TGetQueueUrlRequestMarshaller.Instance: IGetQueueUrlRequestMarshaller;
begin
  Result := FInstance;
end;

end.
