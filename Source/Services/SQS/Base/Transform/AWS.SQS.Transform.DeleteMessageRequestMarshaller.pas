unit AWS.SQS.Transform.DeleteMessageRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.DeleteMessageRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IDeleteMessageRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteMessageRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteMessageRequest>, IDeleteMessageRequestMarshaller)
  strict private
    class var FInstance: IDeleteMessageRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteMessageRequest): IRequest; overload;
    class function Instance: IDeleteMessageRequestMarshaller; static;
  end;
  
implementation

{ TDeleteMessageRequestMarshaller }

function TDeleteMessageRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteMessageRequest(AInput));
end;

function TDeleteMessageRequestMarshaller.Marshall(PublicRequest: TDeleteMessageRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'DeleteMessage');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
    if PublicRequest.IsSetReceiptHandle then
      Request.Parameters.Add('ReceiptHandle', TStringUtils.Fromstring(PublicRequest.ReceiptHandle));
  end;
  Result := Request;
end;

class constructor TDeleteMessageRequestMarshaller.Create;
begin
  FInstance := TDeleteMessageRequestMarshaller.Create;
end;

class function TDeleteMessageRequestMarshaller.Instance: IDeleteMessageRequestMarshaller;
begin
  Result := FInstance;
end;

end.
