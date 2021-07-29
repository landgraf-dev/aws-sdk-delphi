# AWS SDK for Delphi

The **AWS SDK for Delphi** enables Delphi developers to easily work with [Amazon Web Services][aws] and build scalable solutions with Amazon SES, Amazon SQS, and more. It is a non-official SDK based on the official [AWS SDK for .NET][aws-sdk-net].

## Supported services

This is the list of AWS services currently supported by the SDK. More will be added over time:

* [Amazon SES: Simple Email Service](https://aws.amazon.com/ses/)
* [Amazon SQS: Simple Queue Service](https://aws.amazon.com/sqs/)

## Bug report and feature requests

Please use the [GitHub Issues][sdk-issues] page to report problems or request features.

## Required libraries

AWS SDK for Delphi requires [TMS Business][tms-business], more specifically [TMS BCL][tms-bcl] (version 1.27 and up) and [TMS Sparkle][tms-sparkle] (version 3.17 and up). Because life is short.

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

## Credentials

The AWS SDK for Delphi searches for credentials in a certain order and uses the first available set for the current application.

### Credential search order

1. Credentials that are explicitly set on the AWS service client, as described in [Passing access and secret keys directly to client](#passing-access-and-secret-keys-directly-to-client).
2. A credentials profile with the name specified by a value in `TAWSConfigs.AWSProfileName`.
3. A credentials profile with the name specified by the `AWS_PROFILE` environment variable.
4. The [default] credentials profile.

### Profile resolution

The `TAWSConfigs.AWSProfilesLocation` property controls how the AWS SDK for Delphi finds [credential profiles](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html). If it's empty, it searches the shared AWS credentials file in the default location. If the profile isn't there, search `~/.aws/config` (Linux or macOS) or `%USERPROFILE%\.aws\config` (Windows). If `TAWSConfigs.AWSProfilesLocation` contains the path to a file in the AWS credentials file format, then the SDK searchs for credentials *only* in the specified file for a profile with the specified name.

Please refer to AWS documentation for more information about [credentials file settings](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) and [named profiles](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html).

### Passing access and secret keys directly to client

You can simply pass the Access key ID and Secret key directly in the client constructor:

```delphi
  Client := TAmazonSQSClient.Create(myAccessKey, mySecretKey);
```

Although using credentials profile is recommended as it's easier to manage and also compatible with [AWS Command Line Interface](https://aws.amazon.com/cli/).

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
