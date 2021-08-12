unit AWSTests.SNS;

interface

uses
  System.SysUtils, System.DateUtils, System.Generics.Collections,
  AWSTests.TestBase,
  AWS.SNS,
  AWS.SQS,
  TestFramework;

type
  TSNSMessageAttributeValue = AWS.SNS.TMessageAttributeValue;

  TSNSTests = class(TAWSTestBase)
  private
    FClient: IAmazonSimpleNotificationService;
    FSQSClient: IAmazonSQS;
    function Client: IAmazonSimpleNotificationService;
    function GetAllTopics: TArray<string>;
  public
    procedure SetUp; override;
  published
    procedure CRUDTopics;
    procedure FindTopic;
  end;

implementation

uses
  AWS.SNS.Extensions;

{ TSNSTests }

function TSNSTests.Client: IAmazonSimpleNotificationService;
begin
  if FClient = nil then
    FClient := TAmazonSimpleNotificationServiceClient.Create;
  Result := FClient;
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

procedure TSNSTests.SetUp;
begin
  inherited;
  FSQSClient := TAmazonSQSClient.Create;
end;

initialization
  RegisterTest('AWS.SNS', TSNSTests.Suite);
end.
