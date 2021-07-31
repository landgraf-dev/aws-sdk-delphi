unit AWS.SQS.Pipeline.ValidationResponseHandler;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Internal.Request,
  AWS.Runtime.Model,
  AWS.SQS.Model.SendMessageRequest,
  AWS.SQS.Model.ReceiveMessageResponse,
  AWS.SQS.Model.SendMessageResponse,
  AWS.SQS.Model.SendMessageBatchRequest,
  AWS.SQS.Model.SendMessageBatchResponse,
  AWS.SQS.Exception,
  AWS.Util.Crypto;

type
  TValidationResponseHandler = class(TPipelineHandler)
  public
    class procedure ValidateReceiveMessage(AResponse: TReceiveMessageResponse);
    class procedure ValidateSendMessage(ARequest: TSendMessageRequest; AResponse: TSendMessageResponse);
    class procedure ValidateSendMessageBatch(ARequest: TSendMessageBatchRequest;
      AResponse: TSendMessageBatchResponse);
    class procedure ValidateMD5(const Msg, MD5FromService: string); static;
    class function CompareMD5(const Msg, MD5FromService: string): Boolean; static;
    class function CalculateMD5(const Msg: string): string; overload; static;
    class function CalculateMD5(const Bytes: TArray<Byte>): string; overload; static;
  private
    procedure PostInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;


implementation

{ TValidationResponseHandler }

class function TValidationResponseHandler.CalculateMD5(const Msg: string): string;
begin
  Result := CalculateMD5(TEncoding.UTF8.GetBytes(Msg));
end;

class function TValidationResponseHandler.CalculateMD5(const Bytes: TArray<Byte>): string;
begin
  Result := TCryptoUtilFactory.CryptoInstance.HashAsString(
    TCryptoUtilFactory.CryptoInstance.ComputeMD5Hash(Bytes));
end;

class function TValidationResponseHandler.CompareMD5(const Msg, MD5FromService: string): Boolean;
begin
  Result := CalculateMD5(Msg) = MD5FromService;
end;

procedure TValidationResponseHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  inherited InvokeSync(AExecutionContext);
  PostInvoke(AExecutionContext);
end;

procedure TValidationResponseHandler.PostInvoke(AExecutionContext: TExecutionContext);
const
  STRING_TYPE = 1;
  BINARY_TYPE = 2;
  STRING_LIST_TYPE = 3;
  BINARY_LIST_TYPE = 4;
var
  Request: IRequest;
  Response: TAmazonWebServiceResponse;
  ReceiveMessageResponse: TReceiveMessageResponse;
begin
  Request := AExecutionContext.RequestContext.Request;
  Response := AExecutionContext.ResponseContext.Response;
  if Response is TReceiveMessageResponse then
    ValidateReceiveMessage(TReceiveMessageResponse(Response));

  if (Response is TSendMessageResponse) and (Request.OriginalRequest is TSendMessageRequest) then
    ValidateSendMessage(TSendMessageRequest(Request.OriginalRequest), TSendMessageResponse(Response));

  if (Request.OriginalRequest is TSendMessageBatchRequest)
    and (Response is TSendMessageBatchResponse) then
    ValidateSendMessageBatch(TSendMessageBatchRequest(Request.OriginalRequest), TSendMessageBatchResponse(Response));
end;

class procedure TValidationResponseHandler.ValidateMD5(const Msg, MD5FromService: string);
begin
  if not CompareMD5(Msg, MD5FromService) then
    raise EAmazonSQSException.Create('MD5 hash mismatch');
end;

class procedure TValidationResponseHandler.ValidateReceiveMessage(AResponse: TReceiveMessageResponse);
begin
  {$MESSAGE WARN 'Implement'}
end;

class procedure TValidationResponseHandler.ValidateSendMessage(ARequest: TSendMessageRequest;
  AResponse: TSendMessageResponse);
begin
  {$MESSAGE WARN 'Implement'}
end;

class procedure TValidationResponseHandler.ValidateSendMessageBatch(ARequest: TSendMessageBatchRequest;
  AResponse: TSendMessageBatchResponse);
begin
  {$MESSAGE WARN 'Implement'}
end;

end.
