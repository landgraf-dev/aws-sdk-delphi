# AWS SDK for Delphi

The **AWS SDK for Delphi** enables Delphi developers to easily work with [Amazon Web Services][aws] and build scalable solutions with Amazon SES, Amazon SQS, and more. It is a non-official SDK based on the official [AWS SDK for .NET][aws-sdk-net].

## Supported services

This is the list of AWS services currently supported by the SDK. More will be added over time:

* [Amazon SES: Simple Email Service](https://aws.amazon.com/ses/)
* [Amazon SQS: Simple Queue Service](https://aws.amazon.com/sqs/)

## Bug report and feature requests

Please use the [GitHub Issues][sdk-issues] page to report problems or request features.

## Supported Delphi versions

AWS SDK for Delphi supports Delphi versions from Delphi XE2 and up.

## Supported platforms

AWS SDK for Delphi supports all current platforms supported by Delphi: Windows x86 and x64, macOS, iOS, Android and Linux.

## Required libraries

AWS SDK for Delphi requires [TMS Business][tms-business], more specifically [TMS BCL][tms-bcl] and [TMS Sparkle][tms-sparkle]. Because life is short.

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

## Tests

**Important:** Do not run the integration tests on a production account.

Integration tests can be found in the **AWSIntegrationTests** project. These test assume that a default profile has been
configured for credentials. You can set up credentials using [Configuration files][configuration-files], [Named profiles][named-profiles] or [Environment variables][environment-variables].

The tests are designed to create and delete the resources needed for testing but it is important to keep your data safe. Do not run
these tests on accounts that contain production data or resources. Since AWS resources are created and deleted during the running
of these tests, charges can occur. To reduce charges occurred by running the tests the test focus on AWS resources that have minimal cost.

Unit tests can be found in the **AWSUnitTests** project.

## License

AWS SDK for Delphi is [fair-code](http://faircode.io) distributed under [**Apache 2.0 with Commons Clause**](sdk-license) license.

[aws]: http://aws.amazon.com/
[sdk-source]: https://github.com/landgraf-dev/aws-sdk-delphi
[sdk-issues]: https://github.com/ladgraf-dev/aws-sdk-delphi/issues
[sdk-license]: https://github.com/landgraf-dev/aws-sdk-delphi/blob/main/LICENSE
[aws-sdk-net]: https://github.com/aws/aws-sdk-net
[configuration-files]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html
[named-profiles]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
[environment-variables]: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html
[tms-business]: https://tmssoftware.com/biz
[tms-bcl]: https://www.tmssoftware.com/site/tmsbcl.asp
[tms-sparkle]: https://www.tmssoftware.com/site/sparkle.asp
