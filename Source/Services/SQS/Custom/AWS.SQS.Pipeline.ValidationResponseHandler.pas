unit AWS.SQS.Pipeline.ValidationResponseHandler;

interface

uses
  System.SysUtils, System.Generics.Collections, System.Generics.Defaults, System.Classes, System.Types,
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
  AWS.Util.Crypto,
  AWS.SQS.Model.Message,
  AWS.SQS.Model.MessageAttributeValue,
  AWS.SQS.Model.SendMessageBatchRequestEntry,
  AWS.SQS.Model.SendMessageBatchResultEntry;

type
  TValidationResponseHandler = class(TPipelineHandler)
  public
    class procedure ValidateReceiveMessage(AResponse: TReceiveMessageResponse);
    class procedure ValidateSendMessage(ARequest: TSendMessageRequest; AResponse: TSendMessageResponse);
    class procedure ValidateSendMessageBatch(ARequest: TSendMessageBatchRequest;
      AResponse: TSendMessageBatchResponse);
    class function CompareMD5(const Msg, MD5FromService: string): Boolean; overload; static;
    class function CompareMD5(Attributes: TDictionary<string, TMessageAttributeValue>;
      const MD5FromService: string): Boolean overload; static;
    class function CalculateMD5(const Msg: string): string; overload; static;
    class function CalculateMD5(const Bytes: TArray<Byte>): string; overload; static;
    class function CalculateMD5(Attributes: TDictionary<string, TMessageAttributeValue>): string; overload; static;
    class procedure ValidateMD5(const Msg, MD5FromService: string); overload; static;
    class procedure ValidateMD5(const Msg: TMessage); overload; static;
    class procedure ValidateMD5(const Msg, MessageId, MD5FromService: string); overload; static;
    class procedure ValidateMD5(Attributes: TDictionary<string, TMessageAttributeValue>;
      const MessageId, MD5FromService: string); overload; static;
    class procedure ValidateMD5(Attributes: TDictionary<string, TMessageAttributeValue>;
      const MD5FromService: string); overload; static;
  private
    procedure PostInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;


implementation

type
  TSQSWriter = class
  strict private
    FWriter: TBinaryWriter;
    FUTF8: TEncoding;
    FShouldReverseInts: Boolean;
  public
    constructor Create(AStream: TStream);
    destructor Destroy; override;
    procedure Write(const Value: string); overload;
    procedure Write(const Stream: TBytesStream); overload;
    procedure Write(const Value: Integer); overload;
    procedure Write(const Bytes: TArray<Byte>); overload;
    procedure Write(const Value: Byte); overload;
  end;

{ TSQSWriter }

constructor TSQSWriter.Create(AStream: TStream);
begin
  inherited Create;
  FWriter := TBinaryWriter.Create(AStream);
  FUTF8 := TEncoding.UTF8;
  FShouldReverseInts := PlatformEndian = TEndian.Little;
end;

destructor TSQSWriter.Destroy;
begin
  FWriter.Free;
  inherited;
end;

procedure TSQSWriter.Write(const Value: Byte);
begin
  FWriter.Write(Value);
end;

procedure TSQSWriter.Write(const Bytes: TArray<Byte>);
begin
  FWriter.Write(Bytes);
end;

procedure TSQSWriter.Write(const Value: Integer);
var
  Bytes: TArray<Byte>;
  B: Byte;
begin
  SetLength(Bytes, SizeOf(Integer));
  TBitConverter.From<Integer>(Value, Bytes);
  if FShouldReverseInts then
  begin
    Assert(Length(Bytes) = 4);
    B := Bytes[0];
    Bytes[0] := Bytes[3];
    Bytes[3] := B;
    B := Bytes[1];
    Bytes[1] := Bytes[2];
    Bytes[2] := B;
  end;
  Write(Bytes);
end;

procedure TSQSWriter.Write(const Stream: TBytesStream);
begin
  if Stream = nil then
    raise EArgumentNilException.Create('Stream argument must not be nil');

  Write(Integer(Stream.Size));
  Write(Copy(Stream.Bytes, 0, Stream.Size));
end;

procedure TSQSWriter.Write(const Value: string);
var
  Bytes: TBytes;
begin
  if Value = '' then
    raise EArgumentNilException.Create('Value argument must not be empty');

  Bytes := FUTF8.GetBytes(value);
  Write(Length(Bytes));
  Write(Bytes);
end;

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
var
  Request: IRequest;
  Response: TAmazonWebServiceResponse;
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

class procedure TValidationResponseHandler.ValidateMD5(const Msg: TMessage);
begin
  ValidateMD5(Msg.Body, Msg.MessageId, Msg.MD5OfBody);
  if (Msg.MessageAttributes <> nil) and (Msg.MessageAttributes.Count > 0) and (Msg.MD5OfMessageAttributes <> '') then
    ValidateMD5(Msg.MessageAttributes, Msg.MessageId, Msg.MD5OfMessageAttributes);
end;

class procedure TValidationResponseHandler.ValidateMD5(const Msg, MessageId, MD5FromService: string);
begin
  if not CompareMD5(Msg, MD5FromService) then
    raise EAmazonSQSException.Create('MD5 hash mismatch for message id ' + MessageId);
end;

class procedure TValidationResponseHandler.ValidateMD5(Attributes: TDictionary<string, TMessageAttributeValue>;
  const MessageId, MD5FromService: string);
begin
  if not CompareMD5(Attributes, MD5FromService) then
    raise EAmazonSQSException.Create('Attribute MD5 hash mismatch for message id ' + MessageId);
end;

class function TValidationResponseHandler.CalculateMD5(Attributes: TDictionary<string, TMessageAttributeValue>): string;
const
  STRING_TYPE: Byte = 1;
  BINARY_TYPE: Byte = 2;
  STRING_LIST_TYPE: Byte = 3;
  BINARY_LIST_TYPE: Byte = 4;
var
  OrderedAttributes: TList<TPair<string, TMessageAttributeValue>>;
  Kvp: TPair<string, TMessageAttributeValue>;
  MS: TBytesStream;
  Writer: TSQSWriter;
  Value: TMessageAttributeValue;
  Item: string;
  BinItem: TBytesStream;
begin
  OrderedAttributes := TList<TPair<string, TMessageAttributeValue>>.Create;
  try
    for Kvp in Attributes do
      OrderedAttributes.Add(Kvp);
    OrderedAttributes.Sort(TComparer<TPair<string, TMessageAttributeValue>>.Construct(
      function(const Left, Right: TPair<string, TMessageAttributeValue>): Integer
      begin
        Result := CompareStr(Left.Key, Right.Key);
      end));

    MS := TBytesStream.Create;
    try
      Writer := TSQSWriter.Create(MS);
      try
        for Kvp in OrderedAttributes do
        begin
          Value := Kvp.Value;
          Writer.Write(Kvp.Key);
          Writer.Write(Value.DataType);

          if Value.StringValue <> '' then
          begin
            Writer.Write(STRING_TYPE);
            Writer.Write(Value.StringValue);
          end
          else
          if Value.BinaryValue <> nil then
          begin
            Writer.Write(BINARY_TYPE);
            Writer.Write(Value.BinaryValue);
          end
          else
          if Value.StringListValues <> nil then
          begin
            Writer.Write(STRING_LIST_TYPE);
            for Item in Value.StringListValues do
              Writer.Write(item);
          end
          else
          if Value.BinaryListValues <> nil then
          begin
            Writer.Write(BINARY_LIST_TYPE);
            for BinItem in Value.BinaryListValues do
              Writer.Write(BinItem);
          end;
        end;
        Result := CalculateMD5(Copy(MS.Bytes, 0, MS.Size));
      finally
        Writer.Free;
      end;
    finally
      MS.Free;
    end;
  finally
    OrderedAttributes.Free;
  end;
end;

class function TValidationResponseHandler.CompareMD5(Attributes: TDictionary<string, TMessageAttributeValue>;
  const MD5FromService: string): Boolean;
begin
  Result := CalculateMD5(Attributes) = MD5FromService;
end;

class procedure TValidationResponseHandler.ValidateReceiveMessage(AResponse: TReceiveMessageResponse);
var
  Msg: TMessage;
begin
  if (AResponse <> nil) and (AResponse.Messages <> nil) and (AResponse.Messages.Count > 0) then
    for Msg in AResponse.Messages do
      ValidateMD5(Msg);
end;

class procedure TValidationResponseHandler.ValidateSendMessage(ARequest: TSendMessageRequest;
  AResponse: TSendMessageResponse);
begin
  if (ARequest <> nil) and (AResponse <> nil)
    and (ARequest.MessageBody <> '') and (AResponse.MD5OfMessageBody <> '') then
    ValidateMD5(ARequest.MessageBody, AResponse.MD5OfMessageBody);

  if (ARequest <> nil) and (AResponse <> nil)
    and (ARequest.MessageAttributes <> nil) and (ARequest.MessageAttributes.Count > 0)
    and (AResponse.MD5OfMessageAttributes <> '') then
    ValidateMD5(ARequest.MessageAttributes, AResponse.MD5OfMessageAttributes);
end;

class procedure TValidationResponseHandler.ValidateSendMessageBatch(ARequest: TSendMessageBatchRequest;
  AResponse: TSendMessageBatchResponse);
var
  Entry: TSendMessageBatchResultEntry;
  Target, Msg: TSendMessageBatchRequestEntry;
begin
  if (AResponse <> nil) and (AResponse.Successful <> nil) and
    (AResponse.Successful.Count > 0) then
  begin
    for Entry in AResponse.Successful do
    begin
      Msg := nil;
      for Target in ARequest.Entries do
        if Target.Id = Entry.Id then
        begin
          Msg := Target;
          Break;
        end;
      if Msg = nil then Continue;
      
      ValidateMD5(Msg.MessageBody, Entry.MessageId, Entry.MD5OfMessageBody);
      if (Msg.MessageAttributes <> nil) and (Msg.MessageAttributes.Count > 0) and
        (Entry.MD5OfMessageAttributes <> '') then
        ValidateMD5(Msg.MessageAttributes, Entry.MessageId, Entry.MD5OfMessageAttributes);
    end;
  end;
end;

class procedure TValidationResponseHandler.ValidateMD5(Attributes: TDictionary<string, TMessageAttributeValue>;
  const MD5FromService: string);
begin
  if not CompareMD5(Attributes, MD5FromService) then
    raise EAmazonSQSException.Create('Attribute MD5 hash mismatch');
end;

end.
