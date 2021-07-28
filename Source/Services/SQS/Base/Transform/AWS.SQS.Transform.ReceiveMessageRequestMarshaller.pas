unit AWS.SQS.Transform.ReceiveMessageRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.SQS.Model.ReceiveMessageRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils;

type
  IReceiveMessageRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TReceiveMessageRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TReceiveMessageRequest>, IReceiveMessageRequestMarshaller)
  strict private
    class var FInstance: IReceiveMessageRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TReceiveMessageRequest): IRequest; overload;
    class function Instance: IReceiveMessageRequestMarshaller; static;
  end;
  
implementation

{ TReceiveMessageRequestMarshaller }

function TReceiveMessageRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TReceiveMessageRequest(AInput));
end;

function TReceiveMessageRequestMarshaller.Marshall(PublicRequest: TReceiveMessageRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.SQS');
  Request.Parameters.Add('Action', 'ReceiveMessage');
  Request.Parameters.Add('Version', '2012-11-05');
  if PublicRequest <> nil then
  begin
    if PublicRequest.IsSetAttributeNames then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.AttributeNames do
      begin
        Request.Parameters.Add('AttributeName' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetMaxNumberOfMessages then
      Request.Parameters.Add('MaxNumberOfMessages', TStringUtils.FromInteger(PublicRequest.MaxNumberOfMessages));
    if PublicRequest.IsSetMessageAttributeNames then
    begin
      var PublicRequestlistValueIndex: Integer := 1;
      for var PublicRequestlistValue in PublicRequest.MessageAttributeNames do
      begin
        Request.Parameters.Add('MessageAttributeName' + '.' + IntToStr(PublicRequestlistValueIndex), TStringUtils.Fromstring(PublicRequestlistValue));
        Inc(PublicRequestlistValueIndex);
      end;
    end;
    if PublicRequest.IsSetQueueUrl then
      Request.Parameters.Add('QueueUrl', TStringUtils.Fromstring(PublicRequest.QueueUrl));
    if PublicRequest.IsSetReceiveRequestAttemptId then
      Request.Parameters.Add('ReceiveRequestAttemptId', TStringUtils.Fromstring(PublicRequest.ReceiveRequestAttemptId));
    if PublicRequest.IsSetVisibilityTimeout then
      Request.Parameters.Add('VisibilityTimeout', TStringUtils.FromInteger(PublicRequest.VisibilityTimeout));
    if PublicRequest.IsSetWaitTimeSeconds then
      Request.Parameters.Add('WaitTimeSeconds', TStringUtils.FromInteger(PublicRequest.WaitTimeSeconds));
  end;
  Result := Request;
end;

class constructor TReceiveMessageRequestMarshaller.Create;
begin
  FInstance := TReceiveMessageRequestMarshaller.Create;
end;

class function TReceiveMessageRequestMarshaller.Instance: IReceiveMessageRequestMarshaller;
begin
  Result := FInstance;
end;

end.
