# AWS SDK for Delphi

The **AWS SDK for Delphi** enables Delphi developers to easily work with [Amazon Web Services][aws] and build scalable solutions with Amazon SES, Amazon SQS, and more. It is a non-official SDK based on the official [AWS SDK for .NET][aws-sdk-net]. Sample projects can be found in [AWS SDK for Delphi Samples](https://github.com/landgraf-dev/aws-sdk-delphi-samples) repository.

## Supported services

This is the list of AWS services currently supported by the SDK. More will be added over time:

* [Amazon Polly: Text To Speech](https://aws.amazon.com/polly/)
* [Amazon Lex: Conversational AI for Chatbox](https://aws.amazon.com/lex/)
* [Amazon Rekognition: Image and Video Analysis](https://aws.amazon.com/rekognition/)
* [Amazon SES: Simple Email Service API (Classic)](https://aws.amazon.com/ses/)
* [Amazon SES V2: Simple Email Service API v2](https://aws.amazon.com/ses/)
* [Amazon SNS: Simple Notification Service](#amazon-sns)
* [Amazon SQS: Simple Queue Service](https://aws.amazon.com/sqs/)
* [Amazon Translate: Text Translation](http://aws.amazon.com/translate/)

## Bug report and feature requests

Please use the [GitHub Issues][sdk-issues] page to report problems or request features.

## Supported Delphi versions and platforms

AWS SDK for Delphi supports all recent Delphi versions since Delphi 10.3 Rio (i.e., Delphi 10.4 Sydney, Delphi 11, Delphi 12, etc.) and supports all platforms available in those Delphi versions: Windows, Linux, Android, iOS and macOS.

## Required libraries

AWS SDK for Delphi does not require any 3rd party library, it's written in 100% native Delphi code and works on all SKUs of supported Delphi versions.

## Installation

You can install the library performing a manuall installation.

### Manual installation

For **each different platform** you want to install the SDK:

1. Open `AWSPackages.groupproj` project group in your Delphi IDE.
2. Add the platform output folder to the Delphi platform library path. For example, if you are building for Delphi 12, Win32, add the `<sdk_folder>/packages/d12/Win32/Release` folder to Delphi 12, Win32 library path.
3. Build all packages for the platform you want to install, in Release mode.

## Using the SDK

Each Amazon web service has its own package and unit name scheme, which is `AWS<service>.dproj` and `AWS.<service>.*.pas`, respectively. For example, for Amazon SQS (Simple Queue Service), the package name is `AWSSQS.dproj` and unit name is `AWS.SQS.pas` (and all other units in the package follow same pattern, like `AWS.SQS.Client.pas` or `AWS.SQS.ClientIntf.pas`.

Most types you need will be in the main unit, which for example is `AWS.SQS`. So that's the only unit you will need to use most of the functions. From there you can access all the available API operations. Each operation method receives a request interface and returns a response interface.

In summary, this is the process to perform API requests:

1. Use the main unit of the service, e.g. `AWS.SQS`;
2. Instantiate the client interface (`TAmazonSQSClient`);
3. Create and fill the request;
4. Call operation method passing the request to receive the response;
5. Process the response.

The following examples receive a message from an SQS queue and output the id and body of each message received:

```delphi
// 1. Use main unit
uses AWS.SQS;

procedure WriteMessageIds(const QueueUrl: string);
var
  Client: IAmazonSQS;
  Response: IReceiveMessageResponse;
  Request: IReceiveMessageRequest;
  Msg: AWS.SQS.TMessage;
begin
  // 2. Instantiate client interface
  Client := TAmazonSQSClient.Create;

  // 3. Create and fill the request
  Request := TReceiveMessageRequest.Create;
  Request.QueueUrl := QueueUrl;

  // 4. Call operation method passing the request to receive the response;
  Response := Client.ReceiveMessage(Request);

  // 5. Process the response
  for Msg in Response.Messages do
  begin
    WriteLn(Msg.MessageId);
    WriteLn(Msg.Body);
    WriteLn;
  end;
end;
```

The following example sends an e-mail to the specified address using the specified subject and message:

```delphi
// 1. Use main unit
uses AWS.SES;

procedure SendEmail(const Recipient, Subject, Content: string);
var
  Client: IAmazonSimpleEmailService;
  Request: ISendEmailRequest;
  Response: ISendEmailResponse;
begin
  // 2. Instantiate client interface
  Client := TAmazonSimpleEmailServiceClient.Create;

  // 3. Create and fill the request
  Request := TSendEmailRequest.Create;
  Request.Source := SenderEmail; 
  Request.Destination := TDestination.Create;
  Request.Destination.ToAddresses.Add(Recipient);
  Request.Message := TMessage.Create(
    TContent.Create(Subject),
    TBody.Create(TContent.Create(Content)));

  // 4. Call operation method passing the request to receive the response;
  Response := Client.SendEmail(Request);

  // 5. Process the response
  WriteLn(Response.MessageId);
end;
```

In all request objects, lists and dictionaries are already instantiated, while other associated objects are not. You don't need to destroy any interface or object passed to or received from the operations, or added to requests. Some operations have overloaded methods that receive fewer raw parameters instead of the full request object, for simpler usage.

For more information about the available operations, please refer to the API documentation of the Amazon service you are trying to use. Or, of course, use Delphi code completion to find all the methods available in each service client.

## Examples for specific services

### Amazon SNS

You can fully use [Amazon SNS: Simple Notification Service](https://aws.amazon.com/sns/) from AWS SDK for Delphi. Main unit is `AWS.SNS`. You find find more detailed information in this article about [using Amazon SNS with AWS SDK for Delphi](https://landgraf.dev/en/amazon-sns-with-delphi-push-notifications-sms-and-publish-subscribe-pattern/), and of course you can refer to [Amazon SNS API reference](https://docs.aws.amazon.com/sns/latest/api/) itself.

Creating the client:

```delphi
var
  Client: IAmazonSimpleNotificationService;
begin
  Client := TAmazonSimpleNotificationServiceClient.Create;
end;
```

Get ARN for all existing topics:

```delphi
function GetAllTopics(AllTopics: TList<string>);
var
  ListRequest: IListTopicsRequest;
  ListResponse: IListTopicsResponse;
  Topic: TTopic;
begin
  ListRequest := TListTopicsRequest.Create;
  repeat
    ListResponse := Client.ListTopics(ListRequest);
    for Topic in ListResponse.Topics do
      AllTopics.Add(Topic.TopicArn);
    ListRequest.NextToken := ListResponse.NextToken;
  until ListRequest.NextToken = '';
end;
```

Create a topic, get its ARN, set/get its attributes, and delete topic:

```delphi
var
  Response: ICreateTopicResponse;
  TopicArn: string;
  SetAttrRequest: ISetTopicAttributesRequest;
  GetAttrResponse: IGetTopicAttributesResponse;
begin
  // create new topic and get ARN
  Response := Client.CreateTopic('test-name');
  TopicArn := Response.TopicArn;

  // set topic attribute
  SetAttrRequest := TSetTopicAttributesRequest.Create(TopicArn, 'DisplayName', 'My topic');
  Client.SetTopicAttributes(SetAttrRequest);

  // verify topic attributes
  GetAttrResponse := Client.GetTopicAttributes(TopicArn);
  DisplayName := GetAttrResponse.Attributes['DisplayName']);

  // delete new topic
  Client.DeleteTopic(TopicArn);
end;
```

Subscribe a topic to an SQS queue via queue URL, adding the proper permissions:

```delphi
function SubscribeQueue(Client: IAmazonSimpleNotificationService;
  const TopicArn: string; SQSClient: IAmazonSQS; const SQSQueueUrl: string): string; 
var
  GetAttrResponse: IGetQueueAttributesResponse;
  GetAttrRequest: IGetQueueAttributesRequest;
  SQSQueueArn: string;
  Policy: TPolicy;
  PolicyStr: string;
  TopicArn: string;
  SetAttrRequest: ISetQueueAttributesRequest;
begin
  // Get the queue's existing policy and ARN
  GetAttrRequest := TGetQueueAttributesRequest.Create;
  GetAttrRequest.QueueUrl := SQSQueueUrl;
  GetAttrRequest.AttributeNames.Add(TSQSConsts.ATTRIBUTE_ALL);
  GetAttrResponse := SQSClient.GetQueueAttributes(GetAttrRequest);
  SQSQueueArn :=  GetAttrResponse.Attributes['QueueArn'];

  if  GetAttrResponse.Attributes.TryGetValue('Policy', PolicyStr) then
    Policy := TPolicy.FromJson(PolicyStr)
  else
    Policy := TPolicy.Create;
  try
    SetLength(Result, 0);
    if not HasSQSPermission(Policy, TopicArn, SQSQueueArn) then
      AddSQSPermission(Policy, TopicArn, SQSQueueArn);

    Result := Client.Subscribe(TopicArn, 'sqs', SQSQueueArn).SubscriptionArn;

    SetAttrRequest := TSetQueueAttributesRequest.Create;
    SetAttrRequest.QueueUrl := SQSQueueUrl;
    SetAttrRequest.Attributes.Add('Policy', Policy.ToJson);
    SQSClient.SetQueueAttributes(SetAttrRequest);
  finally
    Policy.Free;
  end;
end;
```

Subscribe a topic to e-mail and return the subscription ARN:

```delphi
function SubscribeTopic(const TopicArn, EmailAddress: string): string;
var
  Latest: TDateTime;
  Response: IListSubscriptionsByTopicResponse;
begin
  // subscribe an email address to the topic
  Client.Subscribe(TSubscribeRequest.Create(TopicArn, 'email', EmailAddress));

  // wait until subscription has been confirmed, wait time for two minutes
  Latest := IncMinute(Now, 2);
  while Now < Latest do
  begin
    // get subscriptions for topic
    Response := Client.ListSubscriptionsByTopic(TopicArn);

    // test whether the subscription has been confirmed
    if Response.Subscriptions[0].SubscriptionArn <> 'PendingConfirmation' then
      Exit(Response.Subscriptions[0].SubscriptionArn);

    // wait
    Sleep(15 * 1000);
  end;
end;
```

Publish a message to a topic:

```delphi
  // publish a message to the topic
  Client.Publish(TPublishRequest.Create(TopicArn, 'Test message', 'Subject'));
```

Delete a subscription:

```delphi
  // delete the subscription
  Client.Unsubscribe(SubArn);
```

Parse an SNS message from JSON and validate signature:

```delphi
function GetMessage(const Json: string): AWS.SNS.Message.TMessage;
begin
  Result := AWS.SNS.Message.TMessage.ParseMessage(Json);
  if not Result.IsMessageSignatureValid then
    raise Exception.Create('Invalid message: bad signature');
end;
```

Send an SMS message to a phone number:

```delphi
var
  Client: IAmazonSimpleNotificationService;
  Request: IPublishRequest;
begin
  Client := TAmazonSimpleNotificationServiceClient.Create;
  Request := TPublishRequest.Create;
  Request.PhoneNumber := '+184298765321';
  Request.Message := 'Hello from AWS SDK for Delphi!';
  Client.Publish(Request);
end;
```

## Credentials

The AWS SDK for Delphi searches for credentials in a certain order and uses the first available set for the current application.

### Credential search order

1. Credentials that are explicitly set on the AWS service client, as described in [Passing access and secret keys directly to client](#passing-access-and-secret-keys-directly-to-client).
2. A credentials profile with the name specified by a value in `TAWSConfigs.AWSProfileName`.
3. A credentials profile with the name specified by the `AWS_PROFILE` environment variable.
4. The [default] credentials profile.

### Profile resolution

The `TAWSConfigs.AWSProfilesLocation` property controls how the AWS SDK for Delphi finds [credential profiles](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html). If it's empty, it searches the shared AWS credentials file in the default location. If the profile isn't there, search `~/.aws/config` (Linux or macOS) or `%USERPROFILE%\.aws\config` (Windows). If `TAWSConfigs.AWSProfilesLocation` contains the path to a file in the AWS credentials file format, then the SDK searches for credentials *only* in the specified file for a profile with the specified name.

Please refer to AWS documentation for more information about [credentials file settings](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) and [named profiles](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html).

### Passing access and secret keys directly to client

You can simply pass the Access key ID and Secret key directly in the client constructor:

```delphi
  Client := TAmazonSQSClient.Create(myAccessKey, mySecretKey);
```

Although using credentials profile is recommended as it's easier to manage and also compatible with [AWS Command Line Interface](https://aws.amazon.com/cli/).

## Tests

**Important:** Do not run the integration tests on a production account.

Integration tests can be found in the **AWSTests** project. These tests assume that a default profile has been
configured for credentials. You can set up credentials using [Configuration files][configuration-files], [Named profiles][named-profiles] or [Environment variables][environment-variables].

The tests are designed to create and delete the resources needed for testing but it is important to keep your data safe. Do not run
these tests on accounts that contain production data or resources. Since AWS resources are created and deleted during the running
of these tests, charges can occur. To reduce charges occurred by running the tests focus on AWS resources that have minimal cost.

## Credits

Some OpenSSL internal classes were inspired from the Delphi-OpenSSL repository: <https://github.com/lminuti/Delphi-OpenSSL>.

Unit `AWS.Json.Helpers` is based on Uwe Raabe's REST-Json-Helpers: <https://github.com/UweRaabe/REST-JSon-Helpers>.

## License

AWS SDK for Delphi is [fair-code](http://faircode.io) distributed under [**Apache 2.0 with Commons Clause**](LICENSE) license.

[aws]: http://aws.amazon.com/
[sdk-source]: https://github.com/landgraf-dev/aws-sdk-delphi
[sdk-issues]: https://github.com/landgraf-dev/aws-sdk-delphi/issues
[aws-sdk-net]: https://github.com/aws/aws-sdk-net
[configuration-files]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html
[named-profiles]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
[environment-variables]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html
[tms-business]: https://tmssoftware.com/biz
[tms-bcl]: https://www.tmssoftware.com/site/tmsbcl.asp
[tms-sparkle]: https://www.tmssoftware.com/site/sparkle.asp
