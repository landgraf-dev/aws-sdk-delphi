unit AWS.SQS.Transform.ListQueueTagsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.ListQueueTagsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IListQueueTagsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListQueueTagsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListQueueTagsRequest>, IListQueueTagsRequestMarshaller)
  strict private
    class var FInstance: IListQueueTagsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListQueueTagsRequest): IRequest; overload;
    class function Instance: IListQueueTagsRequestMarshaller; static;
  end;
  
implementation

{ TListQueueTagsRequestMarshaller }

function TListQueueTagsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListQueueTagsRequest(AInput));
end;

function TListQueueTagsRequestMarshaller.Marshall(PublicRequest: TListQueueTagsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'ListQueueTags');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  Result := Request;
end;

class constructor TListQueueTagsRequestMarshaller.Create;
begin
  FInstance := TListQueueTagsRequestMarshaller.Create;
end;

class function TListQueueTagsRequestMarshaller.Instance: IListQueueTagsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
