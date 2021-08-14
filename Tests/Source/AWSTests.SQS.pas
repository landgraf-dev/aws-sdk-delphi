unit AWSTests.SQS;

interface

uses
  System.Generics.Collections, System.SysUtils, System.StrUtils, System.Classes,
  System.DateUtils,
  TestFramework,
  AWSTests.TestBase,
  AWS.SQS,
  AWS.SQS.Consts,
  AWS.Runtime.Model,
  AWS.RegionEndpoints;

type
  TSQSTests = class(TAWSTestBase)
  private const
    Prefix = 'TestQueue';
    DefaultTimeout = '30';
  private
    FClient: IAmazonSQS;
    function Client: IAmazonSQS;
    function CreateTestAttributes: TObjectDictionary<string, TMessageAttributeValue>;
  protected
    procedure ValidateMD5(const Msg, MD5: string);
    function CreateQueueTest(const Name: string): string;
    function GetQueueArn(const QueueUrl: string): string;
    procedure TestSendMessage(Client: IAmazonSQS; const QueueUrl, MessageBody: string);
    procedure TestSendMessageBatch(Client: IAmazonSQS; const QueueUrl, MessageBody: string);
    procedure TestReceiveMessage(Client: IAmazonSQS; const QueueUrl: string);
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure DeadLetterQueueTest;
    procedure SimpleSend;
    procedure TestGetQueueUrl;
    procedure FifoTest;
    procedure MD5OfAttributes;
  end;

implementation

uses
  AWS.SQS.Pipeline.ValidationResponseHandler;


{ TSQSTests }

function TSQSTests.Client: IAmazonSQS;
begin
  if FClient = nil then
    FClient := TAmazonSQSClient.Create;
  Result := FClient;
end;

function TSQSTests.CreateQueueTest(const Name: string): string;
var
  Response: ICreateQueueResponse;
  Request: ICreateQueueRequest;
  AttrRequest: IGetQueueAttributesRequest;
  AttrResponse: IGetQueueAttributesResponse;
  FifoQueue: string;
  ListResponse: IListQueuesResponse;
  I: Integer;
  QueueUrl: string;
begin
  Request := TCreateQueueRequest.Create;
  Request.QueueName := Name;
  Request.Attributes.Add(TSQSConsts.ATTRIBUTE_VISIBILITY_TIMEOUT, DefaultTimeout);
  Response := Client.CreateQueue(Request);
  Check(Response <> nil);
  Check(Response.QueueUrl <> '');

  AttrRequest := TGetQueueAttributesRequest.Create;
  AttrRequest.QueueUrl := Response.QueueUrl;
  AttrRequest.AttributeNames.Add(TSQSConsts.ATTRIBUTE_ALL);
  AttrResponse := Client.GetQueueAttributes(AttrRequest);
  CheckEquals(11, AttrResponse.Attributes.Count);
  CheckEquals(StrToInt(DefaultTimeout), StrToInt(AttrResponse.Attributes[TSQSConsts.ATTRIBUTE_VISIBILITY_TIMEOUT]));
  if not AttrResponse.Attributes.TryGetValue(TSQSConsts.ATTRIBUTE_FIFO_QUEUE, FifoQueue) then
    FifoQueue := 'False';
  CheckEquals(False, StrToBool(FifoQueue));
  CheckEquals(false, AttrResponse.Attributes.ContainsKey(TSQSConsts.ATTRIBUTE_CONTENT_BASED_DEDUPLICATION));

  for I := 1 to 30 do
  begin
    ListResponse := Client.ListQueues(Prefix);
    for QueueUrl in ListResponse.QueueUrls do
      if QueueUrl = Response.QueueUrl then
        Exit(Response.QueueUrl);

    // Sleeping while queue is being created
    Sleep(2000);
  end;
  Fail('Queue never created');
  Result := 'fail';
end;

function TSQSTests.CreateTestAttributes: TObjectDictionary<string, TMessageAttributeValue>;

  function StrAttr(const DataType, Value: string): TMessageAttributeValue;
  begin
    Result := TMessageAttributeValue.Create;
    Result.DataType := DataType;
    Result.StringValue := Value;
  end;

  function BinaryAttr(const Value: TBytesStream): TMessageAttributeValue;
  begin
    Result := TMessageAttributeValue.Create;
    Result.DataType := 'Binary';
    Result.BinaryValue := Value;
  end;

begin
  Result := TObjectDictionary<string, TMessageAttributeValue>.Create([doOwnsValues]);
  try
    Result.Add('StringAttribute', StrAttr('String', 'StringAttributeValue'));
    Result.Add('NumberAttribute', StrAttr('Number', '1234'));
    Result.Add('lowercasestringattribute', StrAttr('String', 'lowercasestringattribute'));
    Result.Add('BinaryAttribute', BinaryAttr(TBytesStream.Create(TEncoding.UTF8.GetBytes('BinaryAttributeValue'))));
    Result.Add('UPPERCASESTRINGATTRIBUTE', StrAttr('String', 'UPPERCASESTRINGATTRIBUTE'));
  except
    Result.Free;
    raise;
  end;
end;

procedure TSQSTests.DeadLetterQueueTest;
var
  MainQueueName: string;
  MainQueueUrl: string;
  DeadQueueName: string;
  DeadQueueUrl: string;
  DeadQueueArn: string;
  RedrivePolicy: string;
  Request: ISetQueueAttributesRequest;
  DeadListRequest: IListDeadLetterSourceQueuesRequest;
  DeadListResponse: IListDeadLetterSourceQueuesResponse;
  Metadata: TResponseMetadata;
begin
  MainQueueName := Prefix + IntToStr(Random(MaxInt)) + 'MQ';
  MainQueueURL := CreateQueueTest(MainQueueName);
  DeadQueueName := Prefix + IntToStr(Random(MaxInt)) + 'DLQ';
  DeadQueueURL := CreateQueueTest(DeadQueueName);

  DeadQueueArn := GetQueueArn(deadQueueURL);

  RedrivePolicy := Format('{"maxReceiveCount" : 5, "deadLetterTargetArn" : "%s"}', [DeadQueueArn]);
  Request := TSetQueueAttributesRequest.Create;
  Request.QueueUrl := MainQueueURL;
  Request.Attributes.Add(TSQSConsts.ATTRIBUTE_REDRIVE_POLICY, RedrivePolicy);
  Client.SetQueueAttributes(Request);

  // Wait a bit to make sure the attribute has fully propagated.
  Sleep(1000);

  DeadListRequest := TListDeadLetterSourceQueuesRequest.Create;
  DeadListRequest.QueueUrl := DeadQueueUrl;

  DeadListResponse := Client.ListDeadLetterSourceQueues(DeadListRequest);
  Check(DeadListResponse <> nil);
  Check(DeadListResponse.QueueUrls <> nil);
  CheckEquals(1, DeadListResponse.QueueUrls.Count);
  Metadata := DeadListResponse.ResponseMetadata;
  Check(Metadata <> nil);
  Check(Metadata.RequestId <> '');
end;

procedure TSQSTests.FifoTest;
var
  FifoQueueName: string;
  SQSClient: IAmazonSQS;
  Request: ICreateQueueRequest;
  Response: ICreateQueueResponse;
  AttrRequest: IGetQueueAttributesRequest;
  AttrResponse: IGetQueueAttributesResponse;
  FifoQueue: string;
begin
  FifoQueueName := Prefix + IntToStr(Random(MaxInt)) + '.fifo';

  SQSClient := TAmazonSQSClient.Create(TRegionEndpoints.USEast2);
  Request := TCreateQueueRequest.Create;
  Request.QueueName := FifoQueueName;
  Request.Attributes.Add(TSQSConsts.ATTRIBUTE_FIFO_QUEUE, 'true');
  Request.Attributes.Add(TSQSConsts.ATTRIBUTE_CONTENT_BASED_DEDUPLICATION , 'true');
  Response := SQSClient.CreateQueue(Request);
  Check(Response <> nil);
  Check(Response.QueueUrl <> '');

  AttrRequest := TGetQueueAttributesRequest.Create;
  AttrRequest.QueueUrl := Response.QueueUrl;
  AttrRequest.AttributeNames.Add(TSQSConsts.ATTRIBUTE_FIFO_QUEUE);
  AttrRequest.AttributeNames.Add(TSQSConsts.ATTRIBUTE_CONTENT_BASED_DEDUPLICATION);
  AttrResponse := SQSClient.GetQueueAttributes(AttrRequest);

  if not AttrResponse.Attributes.TryGetValue(TSQSConsts.ATTRIBUTE_FIFO_QUEUE, FifoQueue) then
    FifoQueue := 'False';
  CheckEquals(True, StrToBool(FifoQueue));
  CheckEquals(True, AttrResponse.Attributes.ContainsKey(TSQSConsts.ATTRIBUTE_CONTENT_BASED_DEDUPLICATION));
end;

function TSQSTests.GetQueueArn(const QueueUrl: string): string;
var
  Request: IGetQueueAttributesRequest;
begin
  Request := TGetQueueAttributesRequest.Create;
  Request.QueueUrl := QueueUrl;
  Request.AttributeNames.Add(TSQSConsts.ATTRIBUTE_ALL);
  Result := Client.GetQueueAttributes(Request).Attributes[TSQSConsts.ATTRIBUTE_QUEUE_ARN];
end;

procedure TSQSTests.MD5OfAttributes;
var
  Attributes: TDictionary<string, AWS.SQS.TMessageAttributeValue>;
begin
  Attributes := CreateTestAttributes;
  try
    CheckEquals('1f3bb098e34eefc22bab1113af7ad09c', TValidationResponseHandler.CalculateMD5(Attributes));
  finally
    Attributes.Free;
  end;
end;

procedure TSQSTests.SetUp;
var
  Response: IListQueuesResponse;
begin
  Response := Client.ListQueues(TListQueuesRequest.Create);
  Check(Response <> nil);
  Check(Response.QueueUrls <> nil);
end;

procedure TSQSTests.SimpleSend;
var
  QueueName: string;
  QueueURL: string;
  MessageBody: string;
begin
  QueueName := prefix + IntToStr(Random(MaxInt));
  QueueURL := CreateQueueTest(QueueName);
  MessageBody := 'The quick brown fox jumped over the lazy dog';
  TestSendMessage(Client, QueueURL, MessageBody);
  TestSendMessageBatch(Client, QueueURL, MessageBody);
  TestReceiveMessage(Client, QueueURL);
end;

procedure TSQSTests.TearDown;
var
  Response: IListQueuesResponse;
  Queue: string;
begin
  Response := Client.ListQueues(TListQueuesRequest.Create);
  for Queue in Response.QueueUrls do
  begin
    if ContainsStr(Queue, Prefix) then
    try
      Client.DeleteQueue(TDeleteQueueRequest.Create(Queue));
    except
    end;
  end;
  FClient := nil;
  inherited;
end;

procedure TSQSTests.TestGetQueueUrl;
var
  QueueName: string;
  CreateResponse: ICreateQueueResponse;
  GetQueueResponse: IGetQueueUrlResponse;
begin
  Client.ListQueues(TListQueuesRequest.Create);
  QueueName := 'TestGetQueueUrl' + IntToStr(DateTimeToUnix(Now));
  CreateResponse := Client.CreateQueue(TCreateQueueRequest.Create(QueueName));
  try
    GetQueueResponse := Client.GetQueueUrl(TGetQueueUrlRequest.Create(QueueName));
    CheckEquals(CreateResponse.QueueUrl, GetQueueResponse.QueueUrl);
  finally
    Client.DeleteQueue(TDeleteQueueRequest.Create(CreateResponse.QueueUrl));
  end;
end;

procedure TSQSTests.TestReceiveMessage(Client: IAmazonSQS; const QueueUrl: string);
var
  Request: IReceiveMessageRequest;
  Response: IReceiveMessageResponse;
  Msg: AWS.SQS.TMessage;
begin
  Request := TReceiveMessageRequest.Create;
  Request.QueueUrl := QueueUrl;
  Response := Client.ReceiveMessage(Request);
  for Msg in Response.Messages do
    ValidateMD5(Msg.Body, Msg.MD5OfBody);
end;

procedure TSQSTests.TestSendMessage(Client: IAmazonSQS; const QueueUrl, MessageBody: string);
var
  Request: ISendMessageRequest;
  Response: ISendMessageResponse;
begin
  Request := TSendMessageRequest.Create;
  Request.MessageBody := MessageBody;
  Request.QueueUrl := QueueUrl;
  Request.MessageAttributes := CreateTestAttributes;
  Response := Client.SendMessage(Request);
  ValidateMD5(Request.MessageBody, Response.MD5OfMessageBody);
end;

procedure TSQSTests.TestSendMessageBatch(Client: IAmazonSQS; const QueueUrl, MessageBody: string);
var
  Request: ISendMessageBatchRequest;
  Response: ISendMessageBatchResponse;
  Entry: TSendMessageBatchRequestEntry;
begin
  Request := TSendMessageBatchRequest.Create;
  Request.QueueUrl := QueueUrl;
  Entry := TSendMessageBatchRequestEntry.Create;
  Request.Entries.Add(Entry);
  Entry.MessageBody := MessageBody;
  Entry.Id := 'FooId';
  Response := Client.SendMessageBatch(request);
  ValidateMD5(Request.Entries[0].MessageBody, Response.Successful[0].MD5OfMessageBody);
end;

procedure TSQSTests.ValidateMD5(const Msg, MD5: string);
begin
  TValidationResponseHandler.ValidateMD5(Msg, MD5);
end;

initialization
  RegisterTest('AWS.SQS', TSQSTests.Suite);
end.
