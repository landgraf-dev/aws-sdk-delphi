unit AWS.SQS.Transform.DeleteQueueRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.DeleteQueueRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteQueueRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteQueueRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteQueueRequest>, IDeleteQueueRequestMarshaller)
  strict private
    class var FInstance: IDeleteQueueRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteQueueRequest): IRequest; overload;
    class function Instance: IDeleteQueueRequestMarshaller; static;
  end;
  
implementation

{ TDeleteQueueRequestMarshaller }

function TDeleteQueueRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteQueueRequest(AInput));
end;

function TDeleteQueueRequestMarshaller.Marshall(PublicRequest: TDeleteQueueRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'DeleteQueue');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
  Result := Request;
end;

class constructor TDeleteQueueRequestMarshaller.Create;
begin
  FInstance := TDeleteQueueRequestMarshaller.Create;
end;

class function TDeleteQueueRequestMarshaller.Instance: IDeleteQueueRequestMarshaller;
begin
  Result := FInstance;
end;

end.
