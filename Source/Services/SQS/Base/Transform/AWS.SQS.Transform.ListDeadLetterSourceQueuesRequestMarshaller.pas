unit AWS.SQS.Transform.ListDeadLetterSourceQueuesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.ListDeadLetterSourceQueuesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListDeadLetterSourceQueuesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListDeadLetterSourceQueuesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListDeadLetterSourceQueuesRequest>, IListDeadLetterSourceQueuesRequestMarshaller)
  strict private
    class var FInstance: IListDeadLetterSourceQueuesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListDeadLetterSourceQueuesRequest): IRequest; overload;
    class function Instance: IListDeadLetterSourceQueuesRequestMarshaller; static;
  end;
  
implementation

{ TListDeadLetterSourceQueuesRequestMarshaller }

function TListDeadLetterSourceQueuesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListDeadLetterSourceQueuesRequest(AInput));
end;

function TListDeadLetterSourceQueuesRequestMarshaller.Marshall(PublicRequest: TListDeadLetterSourceQueuesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'ListDeadLetterSourceQueues');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetMaxResults then
      Request.Parameters.Add('MaxResults', TStringUtils.FromInteger(PublicRequest.MaxResults));
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  end;
  Result := Request;
end;

class constructor TListDeadLetterSourceQueuesRequestMarshaller.Create;
begin
  FInstance := TListDeadLetterSourceQueuesRequestMarshaller.Create;
end;

class function TListDeadLetterSourceQueuesRequestMarshaller.Instance: IListDeadLetterSourceQueuesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
