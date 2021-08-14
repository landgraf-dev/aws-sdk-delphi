unit AWSTests.SES;

interface

uses
  System.SysUtils, System.DateUtils, System.Generics.Collections,
  AWSTests.TestBase,
  AWS.SES,
  TestFramework;

type
  TSESTests = class(TAWSTestBase)
  private
    FClient: IAmazonSimpleEmailService;
    function Client: IAmazonSimpleEmailService;
  public
    procedure VerifyEmails(const Emails: TArray<string>);
    procedure TearDown; override;
  published
    // For this test to run you must replace the predefined email addresses
    // with valid emails for sending and receiving
    procedure TestSendEmail;
  end;

implementation

{ TSESTests }

function TSESTests.Client: IAmazonSimpleEmailService;
begin
  if FClient = nil then
    FClient := TAmazonSimpleEmailServiceClient.Create;
  Result := FClient;
end;

procedure TSESTests.TearDown;
begin
  FClient := nil;
  inherited;
end;

procedure TSESTests.TestSendEmail;
const
  // For this test to run you must replace the predefined email addresses
  // with valid emails for sending and receiving
  SourceAddress = 'bruce@example.com';
  DestinationAddress = 'alice@example.com';
var
  SendEmailRequest: ISendEmailRequest;
begin
  // Replace these email with valid emails.
  if (SourceAddress = 'bruce@example.com') or (DestinationAddress = 'alice@example.com') then
  begin
    Status('Please provide valid e-mail addresses for this test to run.');
    Exit;
  end;

  // verify email addresses, both source and destination
  VerifyEmails([SourceAddress, DestinationAddress]);

  // send email
  SendEmailRequest := TSendEmailRequest.Create;
  SendEmailRequest.Source := SourceAddress;
  SendEmailRequest.Destination := TDestination.Create;
  SendEmailRequest.Destination.ToAddresses.Add(DestinationAddress);
  SendEmailRequest.Message := TMessage.Create;
  SendEmailRequest.Message.Subject := TContent.Create('Re: Monday meeting');
  SendEmailRequest.Message.Body := TBody.Create;
  SendEmailRequest.Message.Body.Html := TContent.Create(
    '<h2>Meeting on Monday</h2> <br/> Monday''s meeting to discuss <b>intern projects</b> ' +
    '<br/> Let''s start at 9:30am.');
  Client.SendEmail(SendEmailRequest);
end;

procedure TSESTests.VerifyEmails(const Emails: TArray<string>);
var
  Email: string;
  VerifyRequest: IVerifyEmailIdentityRequest;
  AllVerified: Boolean;
  Latest: TDateTime;
  AttrRequest: IGetIdentityVerificationAttributesRequest;
  VerificationAttributes: TObjectDictionary<string, TIdentityVerificationAttributes>;
begin
  // start verification process for all email addresses
  for Email in Emails do
  begin
    VerifyRequest := TVerifyEmailIdentityRequest.Create;
    VerifyRequest.EmailAddress := Email;
    Client.VerifyEmailIdentity(VerifyRequest);
  end;

  // wait until all are verified, maximum wait time of two minutes
  AllVerified := True;
  Latest := IncMinute(Now, 2);
  while Now < Latest do
  begin
    // get verification status for all emails
    AttrRequest := TGetIdentityVerificationAttributesRequest.Create;
    AttrRequest.Identities.AddRange(Emails);
    VerificationAttributes := Client.GetIdentityVerificationAttributes(AttrRequest).VerificationAttributes;

    // test verification status
    AllVerified := True;
    for Email in Emails do
    begin
      if VerificationAttributes[Email].VerificationStatus <> TVerificationStatus.Success then
        AllVerified := False;
    end;

    if AllVerified then
      Break;

    Sleep(15000);
  end;

  if not AllVerified then
    raise EInvalidOpException.Create('Not all email addresses have been verified');
end;

initialization
  RegisterTest('AWS.SES', TSESTests.Suite);
end.
