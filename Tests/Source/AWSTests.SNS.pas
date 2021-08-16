unit AWSTests.SNS;

{$ZEROBASEDSTRINGS OFF}

interface

uses
  System.SysUtils, System.DateUtils, System.Generics.Collections, System.Classes,
  AWSTests.TestBase,
  AWS.SNS.Message,
  AWS.SNS,
  AWS.SQS,
  TestFramework,
  Bcl.Json.Classes;

type
  TSNSMessageAttributeValue = AWS.SNS.TMessageAttributeValue;

  TSNSTests = class(TAWSTestBase)
  private
    FClient: IAmazonSimpleNotificationService;
    FSQSClient: IAmazonSQS;
    function Client: IAmazonSimpleNotificationService;
    function GetAllTopics: TArray<string>;
    function CreateTopic: string;
    function CreateQueue: string;
    function SubscribeQueue(const TopicArn, QueueUrl: string): string; overload;
    function SubscribeQueue(Client: IAmazonSimpleNotificationService;
      const TopicArn: string; SQSClient: IAmazonSQS; const SQSQueueUrl: string): string; overload;
    function SubscribeQueueToTopics(Client: IAmazonSimpleNotificationService;
      const TopicArns: TArray<string>; SQSClient: IAmazonSQS;
      const SQSQueueUrl: string): TArray<TPair<string, string>>;
    function GetPublishRequest(const TopicArn: string): IPublishRequest;
    function PublishToSNSAndReceiveMessages(PublishRequest: IPublishRequest;
      const TopicArn, QueueUrl: string): IReceiveMessageResponse;
    function GetBodyJson(Msg: TMessage): string;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  public
  published
    procedure CRUDTopics;
    procedure TestPublishAsJson;
    procedure TestQueueSubscription;
    procedure TestMultipleQueueSubscription;
    procedure FindTopic;
    procedure IsMessageSignatureValid;

    // to run this test, a valid email address must be supplied and
    // the subscription confirmed within two minutes by default
    procedure SubscribeTopic;
  end;

implementation

uses
  AWS.SNS.Extensions,
  Bcl.Utils,
  AWSTests.Utils,
  Bcl.Json,
  AWS.Auth.Policy,
  AWS.SQS.Consts;

{ TSNSTests }

function TSNSTests.Client: IAmazonSimpleNotificationService;
begin
  if FClient = nil then
    FClient := TAmazonSimpleNotificationServiceClient.Create;
  Result := FClient;
end;

function TSNSTests.CreateQueue: string;
begin
  Result := FSQSClient.CreateQueue(
    TAWSTestUtils.GenerateName('TestQueueSubscription')
    ).QueueUrl;
end;

function TSNSTests.CreateTopic: string;
var
  TopicName: string;
begin
  TopicName := TAWSTestUtils.GenerateName('TestQueueSubscription');
  Result := Client.CreateTopic(TCreateTopicRequest.Create(TopicName)).TopicArn;
end;

procedure TSNSTests.CRUDTopics;
var
  AllTopics: TArray<string>;
  CurrentTopicCount: Integer;
  Name: string;
  Response: ICreateTopicResponse;
  TopicArn: string;
  SetAttrRequest: ISetTopicAttributesRequest;
  GetAttrResponse: IGetTopicAttributesResponse;
begin
  // list all topics
  AllTopics := GetAllTopics;
  CurrentTopicCount := Length(AllTopics);

  // create new topic
  Name := 'delphisdk' + IntToStr(Random(MaxInt));
  Response := Client.CreateTopic(TCreateTopicRequest.Create(Name));
  TopicArn := Response.TopicArn;
  try
    // verify there is a new topic
    AllTopics := GetAllTopics;
    CheckNotEquals(CurrentTopicCount, Length(AllTopics));

    // set topic attribute
    SetAttrRequest := TSetTopicAttributesRequest.Create(TopicArn, 'DisplayName', 'Test topic');
    Client.SetTopicAttributes(SetAttrRequest);

    // verify topic attributes
    GetAttrResponse := Client.GetTopicAttributes(TopicArn);
    CheckEquals('Test topic', GetAttrResponse.Attributes['DisplayName']);
  finally
    // delete new topic
    Client.DeleteTopic(TDeleteTopicRequest.Create(TopicArn));

    // verify the topic was deleted
    AllTopics := GetAllTopics;
    CheckEquals(CurrentTopicCount, Length(AllTopics));
  end;
end;

procedure TSNSTests.FindTopic;
var
  Name: string;
  Request: ICreateTopicRequest;
  Response: ICreateTopicResponse;
  TopicArn: string;
  FoundTopic: TTopic;
begin
  // create new topic
  Name := 'delphisdk' + IntToStr(Random(MaxInt));
  Request := TCreateTopicRequest.Create(Name);
  Response := Client.CreateTopic(Request);
  TopicArn := Response.TopicArn;
  try
    // find the topic by name
    FoundTopic := AWS.SNS.Extensions.FindTopic(Client, Name);

    // verify that the topic was fund
    Check(FoundTopic <> nil);
  finally
    // delete the topic
    Client.DeleteTopic(TDeleteTopicRequest.Create(TopicArn));
  end;
end;

function TSNSTests.GetAllTopics: TArray<string>;
var
  AllTopics: TList<string>;
  ListRequest: IListTopicsRequest;
  ListResponse: IListTopicsResponse;
  Topic: TTopic;
begin
  AllTopics := TList<string>.Create;
  try
    ListRequest := TListTopicsRequest.Create;
    repeat
      ListResponse := Client.ListTopics(ListRequest);
      for Topic in ListResponse.Topics do
        AllTopics.Add(Topic.TopicArn);

      ListRequest.NextToken := ListResponse.NextToken;
    until ListRequest.NextToken = '';
    Result := AllTopics.ToArray;
  finally
    AllTopics.Free;
  end;
end;

function TSNSTests.GetBodyJson(Msg: TMessage): string;
var
  MsgBody: string;
begin
  // Handle some accounts returning message body as base 64 encoded.
  MsgBody := Trim(Msg.Body);
  if (Length(MsgBody) > 0) and (MsgBody[1] = '{') then
    Result := Msg.Body
  else
    Result := TEncoding.UTF8.GetString(TBclUtils.DecodeBase64(Msg.Body));
end;

function TSNSTests.GetPublishRequest(const TopicArn: string): IPublishRequest;
var
  Value: TSNSMessageAttributeValue;
begin
  Result := TPublishRequest.Create;
  Result.TopicArn := TopicArn;
  Result.Subject := 'Test Subject';
  Result.Message := 'Test Message';

  Value := TSNSMessageAttributeValue.Create;
  Value.StringValue := 'Red';
  Value.DataType := 'String';
  Result.MessageAttributes.Add('Color', Value);

  Value := TSNSMessageAttributeValue.Create;
  Value.BinaryValue := TBytesStream.Create(TEncoding.UTF8.GetBytes('Yes please'));
  Value.DataType := 'Binary';
  Result.MessageAttributes.Add('Binary', Value);

  Value := TSNSMessageAttributeValue.Create;
  Value.StringValue := '31';
  Value.DataType := 'Number';
  Result.MessageAttributes.Add('Prime', Value);
end;

procedure TSNSTests.IsMessageSignatureValid;
var
  TopicArn: string;
  QueueUrl: string;
  Response: IReceiveMessageResponse;
  Messages: TList<TMessage>;
  ValidMessage: AWS.SNS.Message.TMessage;
  InvalidMessage: AWS.SNS.Message.TMessage;
  BodyJson: string;
begin
  try
    TopicArn := CreateTopic;
    QueueUrl := CreateQueue;

    SubscribeQueue(TopicArn, QueueUrl);
    Response := PublishToSNSAndReceiveMessages(GetPublishRequest(TopicArn), TopicArn, QueueUrl);
    Messages := Response.Messages;

    CheckEquals(1, Messages.Count);
    BodyJson := GetBodyJson(Messages[0]);

    ValidMessage := AWS.SNS.Message.TMessage.ParseMessage(BodyJson);
    try
      Check(ValidMessage.IsMessageSignatureValid);
    finally
      ValidMessage.Free;
    end;

    InvalidMessage := AWS.SNS.Message.TMessage.ParseMessage(
      StringReplace(BodyJson, 'Test Message', 'Hacked Message', [rfReplaceAll]));
    try
      Check(not InvalidMessage.IsMessageSignatureValid);
    finally
      InvalidMessage.Free;
    end;
  finally
    if TopicArn <> '' then
      Client.DeleteTopic(TopicArn);
    if QueueUrl <> '' then
      FSQSClient.DeleteQueue(QueueUrl);
  end;
end;

function TSNSTests.PublishToSNSAndReceiveMessages(PublishRequest: IPublishRequest; const TopicArn,
  QueueUrl: string): IReceiveMessageResponse;
var
  Request: IReceiveMessageRequest;
begin
  Client.Publish(PublishRequest);

  Request := TReceiveMessageRequest.Create(QueueUrl);
  Request.WaitTimeSeconds := 20;
  Result := FSQSClient.ReceiveMessage(Request);
end;

procedure TSNSTests.SetUp;
begin
  inherited;
  FSQSClient := TAmazonSQSClient.Create;
end;

function TSNSTests.SubscribeQueue(const TopicArn, QueueUrl: string): string;
begin
  Result := SubscribeQueue(FClient, TopicArn, FSQSClient, QueueUrl);

  // Sleep to wait for the subscribe to complete.
  Sleep(5000);
end;

function TSNSTests.SubscribeQueue(Client: IAmazonSimpleNotificationService;
  const TopicArn: string; SQSClient: IAmazonSQS; const SQSQueueUrl: string): string;
begin
  Result := SubscribeQueueToTopics(Client, TArray<string>.Create(TopicArn), SQSClient, SQSQueueUrl)[0].Value;
end;

procedure TSNSTests.SubscribeTopic;
const
  // to run this test, a valid email address must be supplied and
  // the subscription confirmed within two minutes by default
  EmailAddress = 'replaceme@example.com';
var
  Name: string;
  TopicArn: string;
  SubArn: string;
  Latest: TDateTime;
  Response: IListSubscriptionsByTopicResponse;
begin
  if EmailAddress = 'replaceme@example.com' then
  begin
    Status('Please provide a valid e-mail address for this test to run.');
    Exit;
  end;

  // create new topic
  Name := 'delphisdk' + IntToStr(Random(MaxInt));
  TopicArn := Client.CreateTopic(Name).TopicArn;
  try
    // subscribe an email address to the topic
    Client.Subscribe(TSubscribeRequest.Create(TopicArn, 'email', EmailAddress));

    // wait until subscription has been confirmed, maximum wait time of two minutes
    // by default
    SubArn := '';
    Latest := IncMinute(Now, 2);
    while Now < Latest do
    begin
      // get subscriptions for topic
      Response := Client.ListSubscriptionsByTopic(TopicArn);
      CheckEquals(1, Response.Subscriptions.Count);

      // test whether the subscription has been confirmed
      if Response.Subscriptions[0].SubscriptionArn <> 'PendingConfirmation' then
      begin
        subArn := Response.Subscriptions[0].SubscriptionArn;
        Break;
      end;

      // wait
      Sleep(15 * 1000);
    end;

    // verify that the subscription was confirmed and the arn has been set
    Check(SubArn <> '');

    // publish a message to the topic
    Client.Publish(TPublishRequest.Create(TopicArn, 'Test message', 'Test subject'));

    // delete the subscription
    Client.Unsubscribe(SubArn);
  finally
    // delete the topic
    Client.DeleteTopic(TopicArn);
  end;
end;

procedure TSNSTests.TearDown;
begin
  FClient := nil;
  inherited;
end;

procedure TSNSTests.TestMultipleQueueSubscription;
var
  TopicArns: TArray<string>;
  TopicArn: string;
  QueueUrl: string;
  SubscriptionArns: TArray<TPair<string, string>>;
  Request: IGetQueueAttributesRequest;
  Response: IGetQueueAttributesResponse;
  Policy: TPolicy;
begin
  SetLength(TopicArns, 2);
  TopicArns[0] := Client.CreateTopic(TAWSTestUtils.GenerateName('delphisdkTopic')).TopicArn;
  TopicArns[1] := Client.CreateTopic(TAWSTestUtils.GenerateName('delphisdkTopic')).TopicArn;
  QueueUrl := FSQSClient.CreateQueue(TAWSTestUtils.GenerateName('delphisdkQueue-')).QueueUrl;
  try
    SubscriptionArns := SubscribeQueueToTopics(Client, TopicArns, FSQSClient, QueueUrl);
    CheckEquals(2, Length(SubscriptionArns));
    Sleep(5000);

    Request := TGetQueueAttributesRequest.Create;
    Request.QueueUrl := QueueUrl;
    Request.AttributeNames.Add('All');
    Response := FSQSClient.GetQueueAttributes(Request);
    Policy := TPolicy.FromJson(Response.Attributes['Policy']);
    try
      CheckEquals(2, Policy.Statements.Count);
    finally
      Policy.Free;
    end;
  finally
    for TopicArn in TopicArns do
      Client.DeleteTopic(TopicArn);
    FSQSClient.DeleteQueue(QueueUrl);
  end;
end;

procedure TSNSTests.TestPublishAsJson;
var
  Name: string;
  TopicArn: string;
  GotException: Boolean;
  PubRequest: IPublishRequest;
begin
  // create new topic
  Name := 'delphisdk' + IntToStr(Random(MaxInt));
  TopicArn := Client.CreateTopic(TCreateTopicRequest.Create(Name)).TopicArn;
  try
    PubRequest := TPublishRequest.Create(TopicArn, 'stuff');
    PubRequest.MessageStructure := 'json';
    GotException := True;
    try
      Client.Publish(PubRequest);
      GotException := false;
    except
      on E: EAmazonSimpleNotificationServiceException do
        CheckEquals('InvalidParameter', e.ErrorCode);
      else
        raise;
    end;
    Check(gotException, 'Failed to get exception about invalid JSON');
    PubRequest.Message := '{"default" : "Data"}';
    Client.Publish(PubRequest);
  finally
    Client.DeleteTopic(TDeleteTopicRequest.Create(TopicArn));
  end;
end;

procedure TSNSTests.TestQueueSubscription;
var
  TopicArn: string;
  QueueUrl: string;
  SubscriptionArn: string;
  PublishRequest: IPublishRequest;
  MsgResponse: IReceiveMessageResponse;
  Messages: TList<TMessage>;
  Msg: TMessage;
  Json: TJObject;
  MessageAttributes: TJObject;
  Ma: TPair<string, TSNSMessageAttributeValue>;
  JsonAttribute: TJObject;
  JsonType: string;
  JsonValue: string;
  ReceiveRequest: IReceiveMessageRequest;
  GetAttributeRequest: IGetQueueAttributesRequest;
  GetAttributeResponse: IGetQueueAttributesResponse;
  Policy: TPolicy;
  PolicyStr: string;
begin
  TopicArn := '';
  QueueUrl := '';
  try
    TopicArn := CreateTopic;
    QueueUrl := CreateQueue;

    SubscriptionArn := SubscribeQueue(TopicArn, QueueUrl);
    PublishRequest := GetPublishRequest(TopicArn);
    MsgResponse := PublishToSNSAndReceiveMessages(publishRequest, topicArn, queueUrl);
    Messages := MsgResponse.Messages;
    CheckEquals(1, Messages.Count);
    Msg := Messages[0];

    Json := TJson.Deserialize<TJObject>(GetBodyJson(Msg));
    try
      CheckEquals(PublishRequest.Message, Json['Message'].AsString);
      CheckEquals(PublishRequest.Subject, Json['Subject'].AsString);
      MessageAttributes := Json['MessageAttributes'].AsObject;
      CheckEquals(PublishRequest.MessageAttributes.Count, Length(TJObject.keys(MessageAttributes)));
      for Ma in PublishRequest.MessageAttributes do
      begin
        Check(MessageAttributes.Contains(Ma.Key));
        JsonAttribute := MessageAttributes[Ma.Key].AsObject;
        JsonType := JsonAttribute['Type'].AsString;
        JsonValue := jsonAttribute['Value'].AsString;
        CheckNotEquals('', JsonType);
        CheckNotEquals('', JsonValue);
        CheckEquals(Ma.Value.DataType, JsonType);
        if Ma.Value.DataType <> 'Binary' then
          CheckEquals(Ma.Value.StringValue, JsonValue)
        else
          CheckEquals(TBclUtils.EncodeBase64(Ma.Value.BinaryValue.Bytes), JsonValue);
      end;
    finally
      Json.Free;
    end;

    FSQSClient.DeleteMessage(TDeleteMessageRequest.Create(QueueUrl, Msg.ReceiptHandle));

    // This will unsubscribe but leave the policy in place.
    Client.Unsubscribe(TUnsubscribeRequest.Create(SubscriptionArn));

    // Subscribe again to see if this affects the policy.
    SubscribeQueue(Client, TopicArn, FSQSClient, QueueUrl);

    Client.Publish(TPublishRequest.Create(TopicArn, 'Test Message again'));

    ReceiveRequest := TReceiveMessageRequest.Create(QueueUrl);
    ReceiveRequest.WaitTimeSeconds := 20;
    MsgResponse := FSQSClient.ReceiveMessage(ReceiveRequest);
    Messages := MsgResponse.Messages;
    CheckEquals(1, Messages.Count);

    GetAttributeRequest := TGetQueueAttributesRequest.Create;
    GetAttributeRequest.QueueUrl := QueueUrl;
    GetAttributeRequest.AttributeNames.Add('All');
    GetAttributeResponse := FSQSClient.GetQueueAttributes(GetAttributeRequest);

    if not GetAttributeResponse.Attributes.TryGetValue(TSQSConsts.ATTRIBUTE_POLICY, PolicyStr) then
      PolicyStr := '';
    Policy := TPolicy.FromJson(PolicyStr);
    try
      CheckEquals(1, Policy.Statements.Count);
    finally
      Policy.Free;
    end;
  finally
    if TopicArn <> '' then
      Client.DeleteTopic(TopicArn);

    if QueueUrl <> '' then
      FSQSClient.DeleteQueue(QueueUrl);
  end;
end;

function TSNSTests.SubscribeQueueToTopics(Client: IAmazonSimpleNotificationService;
  const TopicArns: TArray<string>; SQSClient: IAmazonSQS;
  const SQSQueueUrl: string): TArray<TPair<string, string>>;
var
  GetAttrResponse: IGetQueueAttributesResponse;
  GetAttrRequest: IGetQueueAttributesRequest;
  QueueAttributes: TDictionary<string, string>;
  SQSQueueArn: string;
  Policy: TPolicy;
  PolicyStr: string;
  SubscriptionArns: TDictionary<string, string>;
  TopicArn: string;
  Arn: string;
  SetAttrRequest: ISetQueueAttributesRequest;
begin
  // Get the queue's existing policy and ARN
  GetAttrRequest := TGetQueueAttributesRequest.Create;
  GetAttrRequest.QueueUrl := SQSQueueUrl;
  GetAttrRequest.AttributeNames.Add(TSQSConsts.ATTRIBUTE_ALL);
  GetAttrResponse := SQSClient.GetQueueAttributes(GetAttrRequest);

  QueueAttributes := GetAttrResponse.Attributes;
  SQSQueueArn := QueueAttributes['QueueArn'];

  if QueueAttributes.TryGetValue('Policy', PolicyStr) then
    Policy := TPolicy.FromJson(PolicyStr)
  else
    Policy := TPolicy.Create;
  try
    SetLength(Result, 0);
    SubscriptionArns := TDictionary<string,string>.Create;
    try
      for TopicArn in TopicArns do
      begin
        if not HasSQSPermission(Policy, TopicArn, SQSQueueArn) then
          AddSQSPermission(Policy, TopicArn, SQSQueueArn);

        Arn := Client.Subscribe(TopicArn, 'sqs', SQSQueueArn).SubscriptionArn;
        SubscriptionArns.Add(TopicArn, Arn);
      end;
      Result := SubscriptionArns.ToArray;
    finally
      SubscriptionArns.Free;
    end;

    SetAttrRequest := TSetQueueAttributesRequest.Create;
    SetAttrRequest.QueueUrl := SQSQueueUrl;
    SetAttrRequest.Attributes.Add('Policy', Policy.ToJson);
    FSQSClient.SetQueueAttributes(SetAttrRequest);
  finally
    Policy.Free;
  end;
end;

initialization
  RegisterTest('AWS.SNS', TSNSTests.Suite);
end.
