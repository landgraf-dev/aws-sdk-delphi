unit AWS.SQS.Transform.ChangeMessageVisibilityRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.ChangeMessageVisibilityRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IChangeMessageVisibilityRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TChangeMessageVisibilityRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TChangeMessageVisibilityRequest>, IChangeMessageVisibilityRequestMarshaller)
  strict private
    class var FInstance: IChangeMessageVisibilityRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TChangeMessageVisibilityRequest): IRequest; overload;
    class function Instance: IChangeMessageVisibilityRequestMarshaller; static;
  end;
  
implementation

{ TChangeMessageVisibilityRequestMarshaller }

function TChangeMessageVisibilityRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TChangeMessageVisibilityRequest(AInput));
end;

function TChangeMessageVisibilityRequestMarshaller.Marshall(PublicRequest: TChangeMessageVisibilityRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'ChangeMessageVisibility');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
    if PublicRequest.IsSetReceiptHandle then
      Request.Parameters.Add('ReceiptHandle', TStringUtils.Fromstring(PublicRequest.ReceiptHandle));
    if PublicRequest.IsSetVisibilityTimeout then
      Request.Parameters.Add('VisibilityTimeout', TStringUtils.FromInteger(PublicRequest.VisibilityTimeout));
  end;
  Result := Request;
end;

class constructor TChangeMessageVisibilityRequestMarshaller.Create;
begin
  FInstance := TChangeMessageVisibilityRequestMarshaller.Create;
end;

class function TChangeMessageVisibilityRequestMarshaller.Instance: IChangeMessageVisibilityRequestMarshaller;
begin
  Result := FInstance;
end;

end.
