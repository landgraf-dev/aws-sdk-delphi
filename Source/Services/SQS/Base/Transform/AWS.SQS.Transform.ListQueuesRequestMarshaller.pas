unit AWS.SQS.Transform.ListQueuesRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.ListQueuesRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListQueuesRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListQueuesRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListQueuesRequest>, IListQueuesRequestMarshaller)
  strict private
    class var FInstance: IListQueuesRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListQueuesRequest): IRequest; overload;
    class function Instance: IListQueuesRequestMarshaller; static;
  end;
  
implementation

{ TListQueuesRequestMarshaller }

function TListQueuesRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListQueuesRequest(AInput));
end;

function TListQueuesRequestMarshaller.Marshall(PublicRequest: TListQueuesRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'ListQueues');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetMaxResults then
      Request.Parameters.Add('MaxResults', TStringUtils.FromInteger(PublicRequest.MaxResults));
    if PublicRequest.IsSetNextToken then
      Request.Parameters.Add('NextToken', TStringUtils.Fromstring(PublicRequest.NextToken));
    if PublicRequest.IsSetQueueNamePrefix then
      Request.Parameters.Add('QueueNamePrefix', TStringUtils.Fromstring(PublicRequest.QueueNamePrefix));
  end;
  Result := Request;
end;

class constructor TListQueuesRequestMarshaller.Create;
begin
  FInstance := TListQueuesRequestMarshaller.Create;
end;

class function TListQueuesRequestMarshaller.Instance: IListQueuesRequestMarshaller;
begin
  Result := FInstance;
end;

end.
