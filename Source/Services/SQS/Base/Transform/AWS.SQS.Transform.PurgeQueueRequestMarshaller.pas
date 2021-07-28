unit AWS.SQS.Transform.PurgeQueueRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.PurgeQueueRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IPurgeQueueRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPurgeQueueRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPurgeQueueRequest>, IPurgeQueueRequestMarshaller)
  strict private
    class var FInstance: IPurgeQueueRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPurgeQueueRequest): IRequest; overload;
    class function Instance: IPurgeQueueRequestMarshaller; static;
  end;
  
implementation

{ TPurgeQueueRequestMarshaller }

function TPurgeQueueRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPurgeQueueRequest(AInput));
end;

function TPurgeQueueRequestMarshaller.Marshall(PublicRequest: TPurgeQueueRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'PurgeQueue');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  Result := Request;
end;

class constructor TPurgeQueueRequestMarshaller.Create;
begin
  FInstance := TPurgeQueueRequestMarshaller.Create;
end;

class function TPurgeQueueRequestMarshaller.Instance: IPurgeQueueRequestMarshaller;
begin
  Result := FInstance;
end;

end.
