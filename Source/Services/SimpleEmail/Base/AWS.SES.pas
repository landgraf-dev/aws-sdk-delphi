unit AWS.SES;

interface

uses
  AWS.SES.Client, 
  AWS.SES.ClientIntf, 
  AWS.SES.Config, 
  AWS.SES.Enums, 
  AWS.SES.Exception, 
  AWS.SES.Metadata, 
  AWS.SES.Model.AccountSendingPausedException, 
  AWS.SES.Model.AddHeaderAction, 
  AWS.SES.Model.AlreadyExistsException, 
  AWS.SES.Model.Body, 
  AWS.SES.Model.BounceAction, 
  AWS.SES.Model.BouncedRecipientInfo, 
  AWS.SES.Model.BulkEmailDestination, 
  AWS.SES.Model.BulkEmailDestinationStatus, 
  AWS.SES.Model.CannotDeleteException, 
  AWS.SES.Model.CloneReceiptRuleSetRequest, 
  AWS.SES.Model.CloneReceiptRuleSetResponse, 
  AWS.SES.Model.CloudWatchDestination, 
  AWS.SES.Model.CloudWatchDimensionConfiguration, 
  AWS.SES.Model.ConfigurationSet, 
  AWS.SES.Model.ConfigurationSetAlreadyExistsException, 
  AWS.SES.Model.ConfigurationSetDoesNotExistException, 
  AWS.SES.Model.ConfigurationSetSendingPausedException, 
  AWS.SES.Model.Content, 
  AWS.SES.Model.CreateConfigurationSetEventDestinationRequest, 
  AWS.SES.Model.CreateConfigurationSetEventDestinationResponse, 
  AWS.SES.Model.CreateConfigurationSetRequest, 
  AWS.SES.Model.CreateConfigurationSetResponse, 
  AWS.SES.Model.CreateConfigurationSetTrackingOptionsRequest, 
  AWS.SES.Model.CreateConfigurationSetTrackingOptionsResponse, 
  AWS.SES.Model.CreateCustomVerificationEmailTemplateRequest, 
  AWS.SES.Model.CreateCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.CreateReceiptFilterRequest, 
  AWS.SES.Model.CreateReceiptFilterResponse, 
  AWS.SES.Model.CreateReceiptRuleRequest, 
  AWS.SES.Model.CreateReceiptRuleResponse, 
  AWS.SES.Model.CreateReceiptRuleSetRequest, 
  AWS.SES.Model.CreateReceiptRuleSetResponse, 
  AWS.SES.Model.CreateTemplateRequest, 
  AWS.SES.Model.CreateTemplateResponse, 
  AWS.SES.Model.CustomVerificationEmailInvalidContentException, 
  AWS.SES.Model.CustomVerificationEmailTemplate, 
  AWS.SES.Model.CustomVerificationEmailTemplateAlreadyExistsException, 
  AWS.SES.Model.CustomVerificationEmailTemplateDoesNotExistException, 
  AWS.SES.Model.DeleteConfigurationSetEventDestinationRequest, 
  AWS.SES.Model.DeleteConfigurationSetEventDestinationResponse, 
  AWS.SES.Model.DeleteConfigurationSetRequest, 
  AWS.SES.Model.DeleteConfigurationSetResponse, 
  AWS.SES.Model.DeleteConfigurationSetTrackingOptionsRequest, 
  AWS.SES.Model.DeleteConfigurationSetTrackingOptionsResponse, 
  AWS.SES.Model.DeleteCustomVerificationEmailTemplateRequest, 
  AWS.SES.Model.DeleteCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.DeleteIdentityPolicyRequest, 
  AWS.SES.Model.DeleteIdentityPolicyResponse, 
  AWS.SES.Model.DeleteIdentityRequest, 
  AWS.SES.Model.DeleteIdentityResponse, 
  AWS.SES.Model.DeleteReceiptFilterRequest, 
  AWS.SES.Model.DeleteReceiptFilterResponse, 
  AWS.SES.Model.DeleteReceiptRuleRequest, 
  AWS.SES.Model.DeleteReceiptRuleResponse, 
  AWS.SES.Model.DeleteReceiptRuleSetRequest, 
  AWS.SES.Model.DeleteReceiptRuleSetResponse, 
  AWS.SES.Model.DeleteTemplateRequest, 
  AWS.SES.Model.DeleteTemplateResponse, 
  AWS.SES.Model.DeleteVerifiedEmailAddressRequest, 
  AWS.SES.Model.DeleteVerifiedEmailAddressResponse, 
  AWS.SES.Model.DeliveryOptions, 
  AWS.SES.Model.DescribeActiveReceiptRuleSetRequest, 
  AWS.SES.Model.DescribeActiveReceiptRuleSetResponse, 
  AWS.SES.Model.DescribeConfigurationSetRequest, 
  AWS.SES.Model.DescribeConfigurationSetResponse, 
  AWS.SES.Model.DescribeReceiptRuleRequest, 
  AWS.SES.Model.DescribeReceiptRuleResponse, 
  AWS.SES.Model.DescribeReceiptRuleSetRequest, 
  AWS.SES.Model.DescribeReceiptRuleSetResponse, 
  AWS.SES.Model.Destination, 
  AWS.SES.Model.EventDestination, 
  AWS.SES.Model.EventDestinationAlreadyExistsException, 
  AWS.SES.Model.EventDestinationDoesNotExistException, 
  AWS.SES.Model.ExtensionField, 
  AWS.SES.Model.FromEmailAddressNotVerifiedException, 
  AWS.SES.Model.GetAccountSendingEnabledRequest, 
  AWS.SES.Model.GetAccountSendingEnabledResponse, 
  AWS.SES.Model.GetCustomVerificationEmailTemplateRequest, 
  AWS.SES.Model.GetCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.GetIdentityDkimAttributesRequest, 
  AWS.SES.Model.GetIdentityDkimAttributesResponse, 
  AWS.SES.Model.GetIdentityMailFromDomainAttributesRequest, 
  AWS.SES.Model.GetIdentityMailFromDomainAttributesResponse, 
  AWS.SES.Model.GetIdentityNotificationAttributesRequest, 
  AWS.SES.Model.GetIdentityNotificationAttributesResponse, 
  AWS.SES.Model.GetIdentityPoliciesRequest, 
  AWS.SES.Model.GetIdentityPoliciesResponse, 
  AWS.SES.Model.GetIdentityVerificationAttributesRequest, 
  AWS.SES.Model.GetIdentityVerificationAttributesResponse, 
  AWS.SES.Model.GetSendQuotaRequest, 
  AWS.SES.Model.GetSendQuotaResponse, 
  AWS.SES.Model.GetSendStatisticsRequest, 
  AWS.SES.Model.GetSendStatisticsResponse, 
  AWS.SES.Model.GetTemplateRequest, 
  AWS.SES.Model.GetTemplateResponse, 
  AWS.SES.Model.IdentityDkimAttributes, 
  AWS.SES.Model.IdentityMailFromDomainAttributes, 
  AWS.SES.Model.IdentityNotificationAttributes, 
  AWS.SES.Model.IdentityVerificationAttributes, 
  AWS.SES.Model.InvalidCloudWatchDestinationException, 
  AWS.SES.Model.InvalidConfigurationSetException, 
  AWS.SES.Model.InvalidDeliveryOptionsException, 
  AWS.SES.Model.InvalidFirehoseDestinationException, 
  AWS.SES.Model.InvalidLambdaFunctionException, 
  AWS.SES.Model.InvalidPolicyException, 
  AWS.SES.Model.InvalidRenderingParameterException, 
  AWS.SES.Model.InvalidS3ConfigurationException, 
  AWS.SES.Model.InvalidSNSDestinationException, 
  AWS.SES.Model.InvalidSnsTopicException, 
  AWS.SES.Model.InvalidTemplateException, 
  AWS.SES.Model.InvalidTrackingOptionsException, 
  AWS.SES.Model.KinesisFirehoseDestination, 
  AWS.SES.Model.LambdaAction, 
  AWS.SES.Model.LimitExceededException, 
  AWS.SES.Model.ListConfigurationSetsRequest, 
  AWS.SES.Model.ListConfigurationSetsResponse, 
  AWS.SES.Model.ListCustomVerificationEmailTemplatesRequest, 
  AWS.SES.Model.ListCustomVerificationEmailTemplatesResponse, 
  AWS.SES.Model.ListIdentitiesRequest, 
  AWS.SES.Model.ListIdentitiesResponse, 
  AWS.SES.Model.ListIdentityPoliciesRequest, 
  AWS.SES.Model.ListIdentityPoliciesResponse, 
  AWS.SES.Model.ListReceiptFiltersRequest, 
  AWS.SES.Model.ListReceiptFiltersResponse, 
  AWS.SES.Model.ListReceiptRuleSetsRequest, 
  AWS.SES.Model.ListReceiptRuleSetsResponse, 
  AWS.SES.Model.ListTemplatesRequest, 
  AWS.SES.Model.ListTemplatesResponse, 
  AWS.SES.Model.ListVerifiedEmailAddressesRequest, 
  AWS.SES.Model.ListVerifiedEmailAddressesResponse, 
  AWS.SES.Model.MailFromDomainNotVerifiedException, 
  AWS.SES.Model.Message, 
  AWS.SES.Model.MessageDsn, 
  AWS.SES.Model.MessageRejectedException, 
  AWS.SES.Model.MessageTag, 
  AWS.SES.Model.MissingRenderingAttributeException, 
  AWS.SES.Model.ProductionAccessNotGrantedException, 
  AWS.SES.Model.PutConfigurationSetDeliveryOptionsRequest, 
  AWS.SES.Model.PutConfigurationSetDeliveryOptionsResponse, 
  AWS.SES.Model.PutIdentityPolicyRequest, 
  AWS.SES.Model.PutIdentityPolicyResponse, 
  AWS.SES.Model.RawMessage, 
  AWS.SES.Model.ReceiptAction, 
  AWS.SES.Model.ReceiptFilter, 
  AWS.SES.Model.ReceiptIpFilter, 
  AWS.SES.Model.ReceiptRule, 
  AWS.SES.Model.ReceiptRuleSetMetadata, 
  AWS.SES.Model.RecipientDsnFields, 
  AWS.SES.Model.ReorderReceiptRuleSetRequest, 
  AWS.SES.Model.ReorderReceiptRuleSetResponse, 
  AWS.SES.Model.ReputationOptions, 
  AWS.SES.Model.Request, 
  AWS.SES.Model.RuleDoesNotExistException, 
  AWS.SES.Model.RuleSetDoesNotExistException, 
  AWS.SES.Model.S3Action, 
  AWS.SES.Model.SendBounceRequest, 
  AWS.SES.Model.SendBounceResponse, 
  AWS.SES.Model.SendBulkTemplatedEmailRequest, 
  AWS.SES.Model.SendBulkTemplatedEmailResponse, 
  AWS.SES.Model.SendCustomVerificationEmailRequest, 
  AWS.SES.Model.SendCustomVerificationEmailResponse, 
  AWS.SES.Model.SendDataPoint, 
  AWS.SES.Model.SendEmailRequest, 
  AWS.SES.Model.SendEmailResponse, 
  AWS.SES.Model.SendRawEmailRequest, 
  AWS.SES.Model.SendRawEmailResponse, 
  AWS.SES.Model.SendTemplatedEmailRequest, 
  AWS.SES.Model.SendTemplatedEmailResponse, 
  AWS.SES.Model.SetActiveReceiptRuleSetRequest, 
  AWS.SES.Model.SetActiveReceiptRuleSetResponse, 
  AWS.SES.Model.SetIdentityDkimEnabledRequest, 
  AWS.SES.Model.SetIdentityDkimEnabledResponse, 
  AWS.SES.Model.SetIdentityFeedbackForwardingEnabledRequest, 
  AWS.SES.Model.SetIdentityFeedbackForwardingEnabledResponse, 
  AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledRequest, 
  AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledResponse, 
  AWS.SES.Model.SetIdentityMailFromDomainRequest, 
  AWS.SES.Model.SetIdentityMailFromDomainResponse, 
  AWS.SES.Model.SetIdentityNotificationTopicRequest, 
  AWS.SES.Model.SetIdentityNotificationTopicResponse, 
  AWS.SES.Model.SetReceiptRulePositionRequest, 
  AWS.SES.Model.SetReceiptRulePositionResponse, 
  AWS.SES.Model.SNSAction, 
  AWS.SES.Model.SNSDestination, 
  AWS.SES.Model.StopAction, 
  AWS.SES.Model.Template, 
  AWS.SES.Model.TemplateDoesNotExistException, 
  AWS.SES.Model.TemplateMetadata, 
  AWS.SES.Model.TestRenderTemplateRequest, 
  AWS.SES.Model.TestRenderTemplateResponse, 
  AWS.SES.Model.TrackingOptions, 
  AWS.SES.Model.TrackingOptionsAlreadyExistsException, 
  AWS.SES.Model.TrackingOptionsDoesNotExistException, 
  AWS.SES.Model.UpdateAccountSendingEnabledRequest, 
  AWS.SES.Model.UpdateAccountSendingEnabledResponse, 
  AWS.SES.Model.UpdateConfigurationSetEventDestinationRequest, 
  AWS.SES.Model.UpdateConfigurationSetEventDestinationResponse, 
  AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledRequest, 
  AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledResponse, 
  AWS.SES.Model.UpdateConfigurationSetSendingEnabledRequest, 
  AWS.SES.Model.UpdateConfigurationSetSendingEnabledResponse, 
  AWS.SES.Model.UpdateConfigurationSetTrackingOptionsRequest, 
  AWS.SES.Model.UpdateConfigurationSetTrackingOptionsResponse, 
  AWS.SES.Model.UpdateCustomVerificationEmailTemplateRequest, 
  AWS.SES.Model.UpdateCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.UpdateReceiptRuleRequest, 
  AWS.SES.Model.UpdateReceiptRuleResponse, 
  AWS.SES.Model.UpdateTemplateRequest, 
  AWS.SES.Model.UpdateTemplateResponse, 
  AWS.SES.Model.VerifyDomainDkimRequest, 
  AWS.SES.Model.VerifyDomainDkimResponse, 
  AWS.SES.Model.VerifyDomainIdentityRequest, 
  AWS.SES.Model.VerifyDomainIdentityResponse, 
  AWS.SES.Model.VerifyEmailAddressRequest, 
  AWS.SES.Model.VerifyEmailAddressResponse, 
  AWS.SES.Model.VerifyEmailIdentityRequest, 
  AWS.SES.Model.VerifyEmailIdentityResponse, 
  AWS.SES.Model.WorkmailAction;

type
  EAccountSendingPausedException = AWS.SES.Model.AccountSendingPausedException.EAccountSendingPausedException;
  EAlreadyExistsException = AWS.SES.Model.AlreadyExistsException.EAlreadyExistsException;
  EAmazonSimpleEmailServiceException = AWS.SES.Exception.EAmazonSimpleEmailServiceException;
  ECannotDeleteException = AWS.SES.Model.CannotDeleteException.ECannotDeleteException;
  EConfigurationSetAlreadyExistsException = AWS.SES.Model.ConfigurationSetAlreadyExistsException.EConfigurationSetAlreadyExistsException;
  EConfigurationSetDoesNotExistException = AWS.SES.Model.ConfigurationSetDoesNotExistException.EConfigurationSetDoesNotExistException;
  EConfigurationSetSendingPausedException = AWS.SES.Model.ConfigurationSetSendingPausedException.EConfigurationSetSendingPausedException;
  ECustomVerificationEmailInvalidContentException = AWS.SES.Model.CustomVerificationEmailInvalidContentException.ECustomVerificationEmailInvalidContentException;
  ECustomVerificationEmailTemplateAlreadyExistsException = AWS.SES.Model.CustomVerificationEmailTemplateAlreadyExistsException.ECustomVerificationEmailTemplateAlreadyExistsException;
  ECustomVerificationEmailTemplateDoesNotExistException = AWS.SES.Model.CustomVerificationEmailTemplateDoesNotExistException.ECustomVerificationEmailTemplateDoesNotExistException;
  EEventDestinationAlreadyExistsException = AWS.SES.Model.EventDestinationAlreadyExistsException.EEventDestinationAlreadyExistsException;
  EEventDestinationDoesNotExistException = AWS.SES.Model.EventDestinationDoesNotExistException.EEventDestinationDoesNotExistException;
  EFromEmailAddressNotVerifiedException = AWS.SES.Model.FromEmailAddressNotVerifiedException.EFromEmailAddressNotVerifiedException;
  EInvalidCloudWatchDestinationException = AWS.SES.Model.InvalidCloudWatchDestinationException.EInvalidCloudWatchDestinationException;
  EInvalidConfigurationSetException = AWS.SES.Model.InvalidConfigurationSetException.EInvalidConfigurationSetException;
  EInvalidDeliveryOptionsException = AWS.SES.Model.InvalidDeliveryOptionsException.EInvalidDeliveryOptionsException;
  EInvalidFirehoseDestinationException = AWS.SES.Model.InvalidFirehoseDestinationException.EInvalidFirehoseDestinationException;
  EInvalidLambdaFunctionException = AWS.SES.Model.InvalidLambdaFunctionException.EInvalidLambdaFunctionException;
  EInvalidPolicyException = AWS.SES.Model.InvalidPolicyException.EInvalidPolicyException;
  EInvalidRenderingParameterException = AWS.SES.Model.InvalidRenderingParameterException.EInvalidRenderingParameterException;
  EInvalidS3ConfigurationException = AWS.SES.Model.InvalidS3ConfigurationException.EInvalidS3ConfigurationException;
  EInvalidSNSDestinationException = AWS.SES.Model.InvalidSNSDestinationException.EInvalidSNSDestinationException;
  EInvalidSnsTopicException = AWS.SES.Model.InvalidSnsTopicException.EInvalidSnsTopicException;
  EInvalidTemplateException = AWS.SES.Model.InvalidTemplateException.EInvalidTemplateException;
  EInvalidTrackingOptionsException = AWS.SES.Model.InvalidTrackingOptionsException.EInvalidTrackingOptionsException;
  ELimitExceededException = AWS.SES.Model.LimitExceededException.ELimitExceededException;
  EMailFromDomainNotVerifiedException = AWS.SES.Model.MailFromDomainNotVerifiedException.EMailFromDomainNotVerifiedException;
  EMessageRejectedException = AWS.SES.Model.MessageRejectedException.EMessageRejectedException;
  EMissingRenderingAttributeException = AWS.SES.Model.MissingRenderingAttributeException.EMissingRenderingAttributeException;
  EProductionAccessNotGrantedException = AWS.SES.Model.ProductionAccessNotGrantedException.EProductionAccessNotGrantedException;
  ERuleDoesNotExistException = AWS.SES.Model.RuleDoesNotExistException.ERuleDoesNotExistException;
  ERuleSetDoesNotExistException = AWS.SES.Model.RuleSetDoesNotExistException.ERuleSetDoesNotExistException;
  ETemplateDoesNotExistException = AWS.SES.Model.TemplateDoesNotExistException.ETemplateDoesNotExistException;
  ETrackingOptionsAlreadyExistsException = AWS.SES.Model.TrackingOptionsAlreadyExistsException.ETrackingOptionsAlreadyExistsException;
  ETrackingOptionsDoesNotExistException = AWS.SES.Model.TrackingOptionsDoesNotExistException.ETrackingOptionsDoesNotExistException;
  IAddHeaderAction = AWS.SES.Model.AddHeaderAction.IAddHeaderAction;
  IAmazonSimpleEmailService = AWS.SES.ClientIntf.IAmazonSimpleEmailService;
  IBody = AWS.SES.Model.Body.IBody;
  IBounceAction = AWS.SES.Model.BounceAction.IBounceAction;
  IBouncedRecipientInfo = AWS.SES.Model.BouncedRecipientInfo.IBouncedRecipientInfo;
  IBulkEmailDestination = AWS.SES.Model.BulkEmailDestination.IBulkEmailDestination;
  IBulkEmailDestinationStatus = AWS.SES.Model.BulkEmailDestinationStatus.IBulkEmailDestinationStatus;
  ICloneReceiptRuleSetRequest = AWS.SES.Model.CloneReceiptRuleSetRequest.ICloneReceiptRuleSetRequest;
  ICloneReceiptRuleSetResponse = AWS.SES.Model.CloneReceiptRuleSetResponse.ICloneReceiptRuleSetResponse;
  ICloudWatchDestination = AWS.SES.Model.CloudWatchDestination.ICloudWatchDestination;
  ICloudWatchDimensionConfiguration = AWS.SES.Model.CloudWatchDimensionConfiguration.ICloudWatchDimensionConfiguration;
  IConfigurationSet = AWS.SES.Model.ConfigurationSet.IConfigurationSet;
  IContent = AWS.SES.Model.Content.IContent;
  ICreateConfigurationSetEventDestinationRequest = AWS.SES.Model.CreateConfigurationSetEventDestinationRequest.ICreateConfigurationSetEventDestinationRequest;
  ICreateConfigurationSetEventDestinationResponse = AWS.SES.Model.CreateConfigurationSetEventDestinationResponse.ICreateConfigurationSetEventDestinationResponse;
  ICreateConfigurationSetRequest = AWS.SES.Model.CreateConfigurationSetRequest.ICreateConfigurationSetRequest;
  ICreateConfigurationSetResponse = AWS.SES.Model.CreateConfigurationSetResponse.ICreateConfigurationSetResponse;
  ICreateConfigurationSetTrackingOptionsRequest = AWS.SES.Model.CreateConfigurationSetTrackingOptionsRequest.ICreateConfigurationSetTrackingOptionsRequest;
  ICreateConfigurationSetTrackingOptionsResponse = AWS.SES.Model.CreateConfigurationSetTrackingOptionsResponse.ICreateConfigurationSetTrackingOptionsResponse;
  ICreateCustomVerificationEmailTemplateRequest = AWS.SES.Model.CreateCustomVerificationEmailTemplateRequest.ICreateCustomVerificationEmailTemplateRequest;
  ICreateCustomVerificationEmailTemplateResponse = AWS.SES.Model.CreateCustomVerificationEmailTemplateResponse.ICreateCustomVerificationEmailTemplateResponse;
  ICreateReceiptFilterRequest = AWS.SES.Model.CreateReceiptFilterRequest.ICreateReceiptFilterRequest;
  ICreateReceiptFilterResponse = AWS.SES.Model.CreateReceiptFilterResponse.ICreateReceiptFilterResponse;
  ICreateReceiptRuleRequest = AWS.SES.Model.CreateReceiptRuleRequest.ICreateReceiptRuleRequest;
  ICreateReceiptRuleResponse = AWS.SES.Model.CreateReceiptRuleResponse.ICreateReceiptRuleResponse;
  ICreateReceiptRuleSetRequest = AWS.SES.Model.CreateReceiptRuleSetRequest.ICreateReceiptRuleSetRequest;
  ICreateReceiptRuleSetResponse = AWS.SES.Model.CreateReceiptRuleSetResponse.ICreateReceiptRuleSetResponse;
  ICreateTemplateRequest = AWS.SES.Model.CreateTemplateRequest.ICreateTemplateRequest;
  ICreateTemplateResponse = AWS.SES.Model.CreateTemplateResponse.ICreateTemplateResponse;
  ICustomVerificationEmailTemplate = AWS.SES.Model.CustomVerificationEmailTemplate.ICustomVerificationEmailTemplate;
  IDeleteConfigurationSetEventDestinationRequest = AWS.SES.Model.DeleteConfigurationSetEventDestinationRequest.IDeleteConfigurationSetEventDestinationRequest;
  IDeleteConfigurationSetEventDestinationResponse = AWS.SES.Model.DeleteConfigurationSetEventDestinationResponse.IDeleteConfigurationSetEventDestinationResponse;
  IDeleteConfigurationSetRequest = AWS.SES.Model.DeleteConfigurationSetRequest.IDeleteConfigurationSetRequest;
  IDeleteConfigurationSetResponse = AWS.SES.Model.DeleteConfigurationSetResponse.IDeleteConfigurationSetResponse;
  IDeleteConfigurationSetTrackingOptionsRequest = AWS.SES.Model.DeleteConfigurationSetTrackingOptionsRequest.IDeleteConfigurationSetTrackingOptionsRequest;
  IDeleteConfigurationSetTrackingOptionsResponse = AWS.SES.Model.DeleteConfigurationSetTrackingOptionsResponse.IDeleteConfigurationSetTrackingOptionsResponse;
  IDeleteCustomVerificationEmailTemplateRequest = AWS.SES.Model.DeleteCustomVerificationEmailTemplateRequest.IDeleteCustomVerificationEmailTemplateRequest;
  IDeleteCustomVerificationEmailTemplateResponse = AWS.SES.Model.DeleteCustomVerificationEmailTemplateResponse.IDeleteCustomVerificationEmailTemplateResponse;
  IDeleteIdentityPolicyRequest = AWS.SES.Model.DeleteIdentityPolicyRequest.IDeleteIdentityPolicyRequest;
  IDeleteIdentityPolicyResponse = AWS.SES.Model.DeleteIdentityPolicyResponse.IDeleteIdentityPolicyResponse;
  IDeleteIdentityRequest = AWS.SES.Model.DeleteIdentityRequest.IDeleteIdentityRequest;
  IDeleteIdentityResponse = AWS.SES.Model.DeleteIdentityResponse.IDeleteIdentityResponse;
  IDeleteReceiptFilterRequest = AWS.SES.Model.DeleteReceiptFilterRequest.IDeleteReceiptFilterRequest;
  IDeleteReceiptFilterResponse = AWS.SES.Model.DeleteReceiptFilterResponse.IDeleteReceiptFilterResponse;
  IDeleteReceiptRuleRequest = AWS.SES.Model.DeleteReceiptRuleRequest.IDeleteReceiptRuleRequest;
  IDeleteReceiptRuleResponse = AWS.SES.Model.DeleteReceiptRuleResponse.IDeleteReceiptRuleResponse;
  IDeleteReceiptRuleSetRequest = AWS.SES.Model.DeleteReceiptRuleSetRequest.IDeleteReceiptRuleSetRequest;
  IDeleteReceiptRuleSetResponse = AWS.SES.Model.DeleteReceiptRuleSetResponse.IDeleteReceiptRuleSetResponse;
  IDeleteTemplateRequest = AWS.SES.Model.DeleteTemplateRequest.IDeleteTemplateRequest;
  IDeleteTemplateResponse = AWS.SES.Model.DeleteTemplateResponse.IDeleteTemplateResponse;
  IDeleteVerifiedEmailAddressRequest = AWS.SES.Model.DeleteVerifiedEmailAddressRequest.IDeleteVerifiedEmailAddressRequest;
  IDeleteVerifiedEmailAddressResponse = AWS.SES.Model.DeleteVerifiedEmailAddressResponse.IDeleteVerifiedEmailAddressResponse;
  IDeliveryOptions = AWS.SES.Model.DeliveryOptions.IDeliveryOptions;
  IDescribeActiveReceiptRuleSetRequest = AWS.SES.Model.DescribeActiveReceiptRuleSetRequest.IDescribeActiveReceiptRuleSetRequest;
  IDescribeActiveReceiptRuleSetResponse = AWS.SES.Model.DescribeActiveReceiptRuleSetResponse.IDescribeActiveReceiptRuleSetResponse;
  IDescribeConfigurationSetRequest = AWS.SES.Model.DescribeConfigurationSetRequest.IDescribeConfigurationSetRequest;
  IDescribeConfigurationSetResponse = AWS.SES.Model.DescribeConfigurationSetResponse.IDescribeConfigurationSetResponse;
  IDescribeReceiptRuleRequest = AWS.SES.Model.DescribeReceiptRuleRequest.IDescribeReceiptRuleRequest;
  IDescribeReceiptRuleResponse = AWS.SES.Model.DescribeReceiptRuleResponse.IDescribeReceiptRuleResponse;
  IDescribeReceiptRuleSetRequest = AWS.SES.Model.DescribeReceiptRuleSetRequest.IDescribeReceiptRuleSetRequest;
  IDescribeReceiptRuleSetResponse = AWS.SES.Model.DescribeReceiptRuleSetResponse.IDescribeReceiptRuleSetResponse;
  IDestination = AWS.SES.Model.Destination.IDestination;
  IEventDestination = AWS.SES.Model.EventDestination.IEventDestination;
  IExtensionField = AWS.SES.Model.ExtensionField.IExtensionField;
  IGetAccountSendingEnabledRequest = AWS.SES.Model.GetAccountSendingEnabledRequest.IGetAccountSendingEnabledRequest;
  IGetAccountSendingEnabledResponse = AWS.SES.Model.GetAccountSendingEnabledResponse.IGetAccountSendingEnabledResponse;
  IGetCustomVerificationEmailTemplateRequest = AWS.SES.Model.GetCustomVerificationEmailTemplateRequest.IGetCustomVerificationEmailTemplateRequest;
  IGetCustomVerificationEmailTemplateResponse = AWS.SES.Model.GetCustomVerificationEmailTemplateResponse.IGetCustomVerificationEmailTemplateResponse;
  IGetIdentityDkimAttributesRequest = AWS.SES.Model.GetIdentityDkimAttributesRequest.IGetIdentityDkimAttributesRequest;
  IGetIdentityDkimAttributesResponse = AWS.SES.Model.GetIdentityDkimAttributesResponse.IGetIdentityDkimAttributesResponse;
  IGetIdentityMailFromDomainAttributesRequest = AWS.SES.Model.GetIdentityMailFromDomainAttributesRequest.IGetIdentityMailFromDomainAttributesRequest;
  IGetIdentityMailFromDomainAttributesResponse = AWS.SES.Model.GetIdentityMailFromDomainAttributesResponse.IGetIdentityMailFromDomainAttributesResponse;
  IGetIdentityNotificationAttributesRequest = AWS.SES.Model.GetIdentityNotificationAttributesRequest.IGetIdentityNotificationAttributesRequest;
  IGetIdentityNotificationAttributesResponse = AWS.SES.Model.GetIdentityNotificationAttributesResponse.IGetIdentityNotificationAttributesResponse;
  IGetIdentityPoliciesRequest = AWS.SES.Model.GetIdentityPoliciesRequest.IGetIdentityPoliciesRequest;
  IGetIdentityPoliciesResponse = AWS.SES.Model.GetIdentityPoliciesResponse.IGetIdentityPoliciesResponse;
  IGetIdentityVerificationAttributesRequest = AWS.SES.Model.GetIdentityVerificationAttributesRequest.IGetIdentityVerificationAttributesRequest;
  IGetIdentityVerificationAttributesResponse = AWS.SES.Model.GetIdentityVerificationAttributesResponse.IGetIdentityVerificationAttributesResponse;
  IGetSendQuotaRequest = AWS.SES.Model.GetSendQuotaRequest.IGetSendQuotaRequest;
  IGetSendQuotaResponse = AWS.SES.Model.GetSendQuotaResponse.IGetSendQuotaResponse;
  IGetSendStatisticsRequest = AWS.SES.Model.GetSendStatisticsRequest.IGetSendStatisticsRequest;
  IGetSendStatisticsResponse = AWS.SES.Model.GetSendStatisticsResponse.IGetSendStatisticsResponse;
  IGetTemplateRequest = AWS.SES.Model.GetTemplateRequest.IGetTemplateRequest;
  IGetTemplateResponse = AWS.SES.Model.GetTemplateResponse.IGetTemplateResponse;
  IIdentityDkimAttributes = AWS.SES.Model.IdentityDkimAttributes.IIdentityDkimAttributes;
  IIdentityMailFromDomainAttributes = AWS.SES.Model.IdentityMailFromDomainAttributes.IIdentityMailFromDomainAttributes;
  IIdentityNotificationAttributes = AWS.SES.Model.IdentityNotificationAttributes.IIdentityNotificationAttributes;
  IIdentityVerificationAttributes = AWS.SES.Model.IdentityVerificationAttributes.IIdentityVerificationAttributes;
  IKinesisFirehoseDestination = AWS.SES.Model.KinesisFirehoseDestination.IKinesisFirehoseDestination;
  ILambdaAction = AWS.SES.Model.LambdaAction.ILambdaAction;
  IListConfigurationSetsRequest = AWS.SES.Model.ListConfigurationSetsRequest.IListConfigurationSetsRequest;
  IListConfigurationSetsResponse = AWS.SES.Model.ListConfigurationSetsResponse.IListConfigurationSetsResponse;
  IListCustomVerificationEmailTemplatesRequest = AWS.SES.Model.ListCustomVerificationEmailTemplatesRequest.IListCustomVerificationEmailTemplatesRequest;
  IListCustomVerificationEmailTemplatesResponse = AWS.SES.Model.ListCustomVerificationEmailTemplatesResponse.IListCustomVerificationEmailTemplatesResponse;
  IListIdentitiesRequest = AWS.SES.Model.ListIdentitiesRequest.IListIdentitiesRequest;
  IListIdentitiesResponse = AWS.SES.Model.ListIdentitiesResponse.IListIdentitiesResponse;
  IListIdentityPoliciesRequest = AWS.SES.Model.ListIdentityPoliciesRequest.IListIdentityPoliciesRequest;
  IListIdentityPoliciesResponse = AWS.SES.Model.ListIdentityPoliciesResponse.IListIdentityPoliciesResponse;
  IListReceiptFiltersRequest = AWS.SES.Model.ListReceiptFiltersRequest.IListReceiptFiltersRequest;
  IListReceiptFiltersResponse = AWS.SES.Model.ListReceiptFiltersResponse.IListReceiptFiltersResponse;
  IListReceiptRuleSetsRequest = AWS.SES.Model.ListReceiptRuleSetsRequest.IListReceiptRuleSetsRequest;
  IListReceiptRuleSetsResponse = AWS.SES.Model.ListReceiptRuleSetsResponse.IListReceiptRuleSetsResponse;
  IListTemplatesRequest = AWS.SES.Model.ListTemplatesRequest.IListTemplatesRequest;
  IListTemplatesResponse = AWS.SES.Model.ListTemplatesResponse.IListTemplatesResponse;
  IListVerifiedEmailAddressesRequest = AWS.SES.Model.ListVerifiedEmailAddressesRequest.IListVerifiedEmailAddressesRequest;
  IListVerifiedEmailAddressesResponse = AWS.SES.Model.ListVerifiedEmailAddressesResponse.IListVerifiedEmailAddressesResponse;
  IMessage = AWS.SES.Model.Message.IMessage;
  IMessageDsn = AWS.SES.Model.MessageDsn.IMessageDsn;
  IMessageTag = AWS.SES.Model.MessageTag.IMessageTag;
  IPutConfigurationSetDeliveryOptionsRequest = AWS.SES.Model.PutConfigurationSetDeliveryOptionsRequest.IPutConfigurationSetDeliveryOptionsRequest;
  IPutConfigurationSetDeliveryOptionsResponse = AWS.SES.Model.PutConfigurationSetDeliveryOptionsResponse.IPutConfigurationSetDeliveryOptionsResponse;
  IPutIdentityPolicyRequest = AWS.SES.Model.PutIdentityPolicyRequest.IPutIdentityPolicyRequest;
  IPutIdentityPolicyResponse = AWS.SES.Model.PutIdentityPolicyResponse.IPutIdentityPolicyResponse;
  IRawMessage = AWS.SES.Model.RawMessage.IRawMessage;
  IReceiptAction = AWS.SES.Model.ReceiptAction.IReceiptAction;
  IReceiptFilter = AWS.SES.Model.ReceiptFilter.IReceiptFilter;
  IReceiptIpFilter = AWS.SES.Model.ReceiptIpFilter.IReceiptIpFilter;
  IReceiptRule = AWS.SES.Model.ReceiptRule.IReceiptRule;
  IReceiptRuleSetMetadata = AWS.SES.Model.ReceiptRuleSetMetadata.IReceiptRuleSetMetadata;
  IRecipientDsnFields = AWS.SES.Model.RecipientDsnFields.IRecipientDsnFields;
  IReorderReceiptRuleSetRequest = AWS.SES.Model.ReorderReceiptRuleSetRequest.IReorderReceiptRuleSetRequest;
  IReorderReceiptRuleSetResponse = AWS.SES.Model.ReorderReceiptRuleSetResponse.IReorderReceiptRuleSetResponse;
  IReputationOptions = AWS.SES.Model.ReputationOptions.IReputationOptions;
  IS3Action = AWS.SES.Model.S3Action.IS3Action;
  ISendBounceRequest = AWS.SES.Model.SendBounceRequest.ISendBounceRequest;
  ISendBounceResponse = AWS.SES.Model.SendBounceResponse.ISendBounceResponse;
  ISendBulkTemplatedEmailRequest = AWS.SES.Model.SendBulkTemplatedEmailRequest.ISendBulkTemplatedEmailRequest;
  ISendBulkTemplatedEmailResponse = AWS.SES.Model.SendBulkTemplatedEmailResponse.ISendBulkTemplatedEmailResponse;
  ISendCustomVerificationEmailRequest = AWS.SES.Model.SendCustomVerificationEmailRequest.ISendCustomVerificationEmailRequest;
  ISendCustomVerificationEmailResponse = AWS.SES.Model.SendCustomVerificationEmailResponse.ISendCustomVerificationEmailResponse;
  ISendDataPoint = AWS.SES.Model.SendDataPoint.ISendDataPoint;
  ISendEmailRequest = AWS.SES.Model.SendEmailRequest.ISendEmailRequest;
  ISendEmailResponse = AWS.SES.Model.SendEmailResponse.ISendEmailResponse;
  ISendRawEmailRequest = AWS.SES.Model.SendRawEmailRequest.ISendRawEmailRequest;
  ISendRawEmailResponse = AWS.SES.Model.SendRawEmailResponse.ISendRawEmailResponse;
  ISendTemplatedEmailRequest = AWS.SES.Model.SendTemplatedEmailRequest.ISendTemplatedEmailRequest;
  ISendTemplatedEmailResponse = AWS.SES.Model.SendTemplatedEmailResponse.ISendTemplatedEmailResponse;
  ISetActiveReceiptRuleSetRequest = AWS.SES.Model.SetActiveReceiptRuleSetRequest.ISetActiveReceiptRuleSetRequest;
  ISetActiveReceiptRuleSetResponse = AWS.SES.Model.SetActiveReceiptRuleSetResponse.ISetActiveReceiptRuleSetResponse;
  ISetIdentityDkimEnabledRequest = AWS.SES.Model.SetIdentityDkimEnabledRequest.ISetIdentityDkimEnabledRequest;
  ISetIdentityDkimEnabledResponse = AWS.SES.Model.SetIdentityDkimEnabledResponse.ISetIdentityDkimEnabledResponse;
  ISetIdentityFeedbackForwardingEnabledRequest = AWS.SES.Model.SetIdentityFeedbackForwardingEnabledRequest.ISetIdentityFeedbackForwardingEnabledRequest;
  ISetIdentityFeedbackForwardingEnabledResponse = AWS.SES.Model.SetIdentityFeedbackForwardingEnabledResponse.ISetIdentityFeedbackForwardingEnabledResponse;
  ISetIdentityHeadersInNotificationsEnabledRequest = AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledRequest.ISetIdentityHeadersInNotificationsEnabledRequest;
  ISetIdentityHeadersInNotificationsEnabledResponse = AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledResponse.ISetIdentityHeadersInNotificationsEnabledResponse;
  ISetIdentityMailFromDomainRequest = AWS.SES.Model.SetIdentityMailFromDomainRequest.ISetIdentityMailFromDomainRequest;
  ISetIdentityMailFromDomainResponse = AWS.SES.Model.SetIdentityMailFromDomainResponse.ISetIdentityMailFromDomainResponse;
  ISetIdentityNotificationTopicRequest = AWS.SES.Model.SetIdentityNotificationTopicRequest.ISetIdentityNotificationTopicRequest;
  ISetIdentityNotificationTopicResponse = AWS.SES.Model.SetIdentityNotificationTopicResponse.ISetIdentityNotificationTopicResponse;
  ISetReceiptRulePositionRequest = AWS.SES.Model.SetReceiptRulePositionRequest.ISetReceiptRulePositionRequest;
  ISetReceiptRulePositionResponse = AWS.SES.Model.SetReceiptRulePositionResponse.ISetReceiptRulePositionResponse;
  ISNSAction = AWS.SES.Model.SNSAction.ISNSAction;
  ISNSDestination = AWS.SES.Model.SNSDestination.ISNSDestination;
  IStopAction = AWS.SES.Model.StopAction.IStopAction;
  ITemplate = AWS.SES.Model.Template.ITemplate;
  ITemplateMetadata = AWS.SES.Model.TemplateMetadata.ITemplateMetadata;
  ITestRenderTemplateRequest = AWS.SES.Model.TestRenderTemplateRequest.ITestRenderTemplateRequest;
  ITestRenderTemplateResponse = AWS.SES.Model.TestRenderTemplateResponse.ITestRenderTemplateResponse;
  ITrackingOptions = AWS.SES.Model.TrackingOptions.ITrackingOptions;
  IUpdateAccountSendingEnabledRequest = AWS.SES.Model.UpdateAccountSendingEnabledRequest.IUpdateAccountSendingEnabledRequest;
  IUpdateAccountSendingEnabledResponse = AWS.SES.Model.UpdateAccountSendingEnabledResponse.IUpdateAccountSendingEnabledResponse;
  IUpdateConfigurationSetEventDestinationRequest = AWS.SES.Model.UpdateConfigurationSetEventDestinationRequest.IUpdateConfigurationSetEventDestinationRequest;
  IUpdateConfigurationSetEventDestinationResponse = AWS.SES.Model.UpdateConfigurationSetEventDestinationResponse.IUpdateConfigurationSetEventDestinationResponse;
  IUpdateConfigurationSetReputationMetricsEnabledRequest = AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledRequest.IUpdateConfigurationSetReputationMetricsEnabledRequest;
  IUpdateConfigurationSetReputationMetricsEnabledResponse = AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledResponse.IUpdateConfigurationSetReputationMetricsEnabledResponse;
  IUpdateConfigurationSetSendingEnabledRequest = AWS.SES.Model.UpdateConfigurationSetSendingEnabledRequest.IUpdateConfigurationSetSendingEnabledRequest;
  IUpdateConfigurationSetSendingEnabledResponse = AWS.SES.Model.UpdateConfigurationSetSendingEnabledResponse.IUpdateConfigurationSetSendingEnabledResponse;
  IUpdateConfigurationSetTrackingOptionsRequest = AWS.SES.Model.UpdateConfigurationSetTrackingOptionsRequest.IUpdateConfigurationSetTrackingOptionsRequest;
  IUpdateConfigurationSetTrackingOptionsResponse = AWS.SES.Model.UpdateConfigurationSetTrackingOptionsResponse.IUpdateConfigurationSetTrackingOptionsResponse;
  IUpdateCustomVerificationEmailTemplateRequest = AWS.SES.Model.UpdateCustomVerificationEmailTemplateRequest.IUpdateCustomVerificationEmailTemplateRequest;
  IUpdateCustomVerificationEmailTemplateResponse = AWS.SES.Model.UpdateCustomVerificationEmailTemplateResponse.IUpdateCustomVerificationEmailTemplateResponse;
  IUpdateReceiptRuleRequest = AWS.SES.Model.UpdateReceiptRuleRequest.IUpdateReceiptRuleRequest;
  IUpdateReceiptRuleResponse = AWS.SES.Model.UpdateReceiptRuleResponse.IUpdateReceiptRuleResponse;
  IUpdateTemplateRequest = AWS.SES.Model.UpdateTemplateRequest.IUpdateTemplateRequest;
  IUpdateTemplateResponse = AWS.SES.Model.UpdateTemplateResponse.IUpdateTemplateResponse;
  IVerifyDomainDkimRequest = AWS.SES.Model.VerifyDomainDkimRequest.IVerifyDomainDkimRequest;
  IVerifyDomainDkimResponse = AWS.SES.Model.VerifyDomainDkimResponse.IVerifyDomainDkimResponse;
  IVerifyDomainIdentityRequest = AWS.SES.Model.VerifyDomainIdentityRequest.IVerifyDomainIdentityRequest;
  IVerifyDomainIdentityResponse = AWS.SES.Model.VerifyDomainIdentityResponse.IVerifyDomainIdentityResponse;
  IVerifyEmailAddressRequest = AWS.SES.Model.VerifyEmailAddressRequest.IVerifyEmailAddressRequest;
  IVerifyEmailAddressResponse = AWS.SES.Model.VerifyEmailAddressResponse.IVerifyEmailAddressResponse;
  IVerifyEmailIdentityRequest = AWS.SES.Model.VerifyEmailIdentityRequest.IVerifyEmailIdentityRequest;
  IVerifyEmailIdentityResponse = AWS.SES.Model.VerifyEmailIdentityResponse.IVerifyEmailIdentityResponse;
  IWorkmailAction = AWS.SES.Model.WorkmailAction.IWorkmailAction;
  TAddHeaderAction = AWS.SES.Model.AddHeaderAction.TAddHeaderAction;
  TAmazonSimpleEmailServiceClient = AWS.SES.Client.TAmazonSimpleEmailServiceClient;
  TAmazonSimpleEmailServiceConfig = AWS.SES.Config.TAmazonSimpleEmailServiceConfig;
  TAmazonSimpleEmailServiceMetadata = AWS.SES.Metadata.TAmazonSimpleEmailServiceMetadata;
  TAmazonSimpleEmailServiceRequest = AWS.SES.Model.Request.TAmazonSimpleEmailServiceRequest;
  TBehaviorOnMXFailure = AWS.SES.Enums.TBehaviorOnMXFailure;
  TBody = AWS.SES.Model.Body.TBody;
  TBounceAction = AWS.SES.Model.BounceAction.TBounceAction;
  TBouncedRecipientInfo = AWS.SES.Model.BouncedRecipientInfo.TBouncedRecipientInfo;
  TBounceType = AWS.SES.Enums.TBounceType;
  TBulkEmailDestination = AWS.SES.Model.BulkEmailDestination.TBulkEmailDestination;
  TBulkEmailDestinationStatus = AWS.SES.Model.BulkEmailDestinationStatus.TBulkEmailDestinationStatus;
  TBulkEmailStatus = AWS.SES.Enums.TBulkEmailStatus;
  TCloneReceiptRuleSetRequest = AWS.SES.Model.CloneReceiptRuleSetRequest.TCloneReceiptRuleSetRequest;
  TCloneReceiptRuleSetResponse = AWS.SES.Model.CloneReceiptRuleSetResponse.TCloneReceiptRuleSetResponse;
  TCloudWatchDestination = AWS.SES.Model.CloudWatchDestination.TCloudWatchDestination;
  TCloudWatchDimensionConfiguration = AWS.SES.Model.CloudWatchDimensionConfiguration.TCloudWatchDimensionConfiguration;
  TConfigurationSet = AWS.SES.Model.ConfigurationSet.TConfigurationSet;
  TConfigurationSetAttribute = AWS.SES.Enums.TConfigurationSetAttribute;
  TContent = AWS.SES.Model.Content.TContent;
  TCreateConfigurationSetEventDestinationRequest = AWS.SES.Model.CreateConfigurationSetEventDestinationRequest.TCreateConfigurationSetEventDestinationRequest;
  TCreateConfigurationSetEventDestinationResponse = AWS.SES.Model.CreateConfigurationSetEventDestinationResponse.TCreateConfigurationSetEventDestinationResponse;
  TCreateConfigurationSetRequest = AWS.SES.Model.CreateConfigurationSetRequest.TCreateConfigurationSetRequest;
  TCreateConfigurationSetResponse = AWS.SES.Model.CreateConfigurationSetResponse.TCreateConfigurationSetResponse;
  TCreateConfigurationSetTrackingOptionsRequest = AWS.SES.Model.CreateConfigurationSetTrackingOptionsRequest.TCreateConfigurationSetTrackingOptionsRequest;
  TCreateConfigurationSetTrackingOptionsResponse = AWS.SES.Model.CreateConfigurationSetTrackingOptionsResponse.TCreateConfigurationSetTrackingOptionsResponse;
  TCreateCustomVerificationEmailTemplateRequest = AWS.SES.Model.CreateCustomVerificationEmailTemplateRequest.TCreateCustomVerificationEmailTemplateRequest;
  TCreateCustomVerificationEmailTemplateResponse = AWS.SES.Model.CreateCustomVerificationEmailTemplateResponse.TCreateCustomVerificationEmailTemplateResponse;
  TCreateReceiptFilterRequest = AWS.SES.Model.CreateReceiptFilterRequest.TCreateReceiptFilterRequest;
  TCreateReceiptFilterResponse = AWS.SES.Model.CreateReceiptFilterResponse.TCreateReceiptFilterResponse;
  TCreateReceiptRuleRequest = AWS.SES.Model.CreateReceiptRuleRequest.TCreateReceiptRuleRequest;
  TCreateReceiptRuleResponse = AWS.SES.Model.CreateReceiptRuleResponse.TCreateReceiptRuleResponse;
  TCreateReceiptRuleSetRequest = AWS.SES.Model.CreateReceiptRuleSetRequest.TCreateReceiptRuleSetRequest;
  TCreateReceiptRuleSetResponse = AWS.SES.Model.CreateReceiptRuleSetResponse.TCreateReceiptRuleSetResponse;
  TCreateTemplateRequest = AWS.SES.Model.CreateTemplateRequest.TCreateTemplateRequest;
  TCreateTemplateResponse = AWS.SES.Model.CreateTemplateResponse.TCreateTemplateResponse;
  TCustomMailFromStatus = AWS.SES.Enums.TCustomMailFromStatus;
  TCustomVerificationEmailTemplate = AWS.SES.Model.CustomVerificationEmailTemplate.TCustomVerificationEmailTemplate;
  TDeleteConfigurationSetEventDestinationRequest = AWS.SES.Model.DeleteConfigurationSetEventDestinationRequest.TDeleteConfigurationSetEventDestinationRequest;
  TDeleteConfigurationSetEventDestinationResponse = AWS.SES.Model.DeleteConfigurationSetEventDestinationResponse.TDeleteConfigurationSetEventDestinationResponse;
  TDeleteConfigurationSetRequest = AWS.SES.Model.DeleteConfigurationSetRequest.TDeleteConfigurationSetRequest;
  TDeleteConfigurationSetResponse = AWS.SES.Model.DeleteConfigurationSetResponse.TDeleteConfigurationSetResponse;
  TDeleteConfigurationSetTrackingOptionsRequest = AWS.SES.Model.DeleteConfigurationSetTrackingOptionsRequest.TDeleteConfigurationSetTrackingOptionsRequest;
  TDeleteConfigurationSetTrackingOptionsResponse = AWS.SES.Model.DeleteConfigurationSetTrackingOptionsResponse.TDeleteConfigurationSetTrackingOptionsResponse;
  TDeleteCustomVerificationEmailTemplateRequest = AWS.SES.Model.DeleteCustomVerificationEmailTemplateRequest.TDeleteCustomVerificationEmailTemplateRequest;
  TDeleteCustomVerificationEmailTemplateResponse = AWS.SES.Model.DeleteCustomVerificationEmailTemplateResponse.TDeleteCustomVerificationEmailTemplateResponse;
  TDeleteIdentityPolicyRequest = AWS.SES.Model.DeleteIdentityPolicyRequest.TDeleteIdentityPolicyRequest;
  TDeleteIdentityPolicyResponse = AWS.SES.Model.DeleteIdentityPolicyResponse.TDeleteIdentityPolicyResponse;
  TDeleteIdentityRequest = AWS.SES.Model.DeleteIdentityRequest.TDeleteIdentityRequest;
  TDeleteIdentityResponse = AWS.SES.Model.DeleteIdentityResponse.TDeleteIdentityResponse;
  TDeleteReceiptFilterRequest = AWS.SES.Model.DeleteReceiptFilterRequest.TDeleteReceiptFilterRequest;
  TDeleteReceiptFilterResponse = AWS.SES.Model.DeleteReceiptFilterResponse.TDeleteReceiptFilterResponse;
  TDeleteReceiptRuleRequest = AWS.SES.Model.DeleteReceiptRuleRequest.TDeleteReceiptRuleRequest;
  TDeleteReceiptRuleResponse = AWS.SES.Model.DeleteReceiptRuleResponse.TDeleteReceiptRuleResponse;
  TDeleteReceiptRuleSetRequest = AWS.SES.Model.DeleteReceiptRuleSetRequest.TDeleteReceiptRuleSetRequest;
  TDeleteReceiptRuleSetResponse = AWS.SES.Model.DeleteReceiptRuleSetResponse.TDeleteReceiptRuleSetResponse;
  TDeleteTemplateRequest = AWS.SES.Model.DeleteTemplateRequest.TDeleteTemplateRequest;
  TDeleteTemplateResponse = AWS.SES.Model.DeleteTemplateResponse.TDeleteTemplateResponse;
  TDeleteVerifiedEmailAddressRequest = AWS.SES.Model.DeleteVerifiedEmailAddressRequest.TDeleteVerifiedEmailAddressRequest;
  TDeleteVerifiedEmailAddressResponse = AWS.SES.Model.DeleteVerifiedEmailAddressResponse.TDeleteVerifiedEmailAddressResponse;
  TDeliveryOptions = AWS.SES.Model.DeliveryOptions.TDeliveryOptions;
  TDescribeActiveReceiptRuleSetRequest = AWS.SES.Model.DescribeActiveReceiptRuleSetRequest.TDescribeActiveReceiptRuleSetRequest;
  TDescribeActiveReceiptRuleSetResponse = AWS.SES.Model.DescribeActiveReceiptRuleSetResponse.TDescribeActiveReceiptRuleSetResponse;
  TDescribeConfigurationSetRequest = AWS.SES.Model.DescribeConfigurationSetRequest.TDescribeConfigurationSetRequest;
  TDescribeConfigurationSetResponse = AWS.SES.Model.DescribeConfigurationSetResponse.TDescribeConfigurationSetResponse;
  TDescribeReceiptRuleRequest = AWS.SES.Model.DescribeReceiptRuleRequest.TDescribeReceiptRuleRequest;
  TDescribeReceiptRuleResponse = AWS.SES.Model.DescribeReceiptRuleResponse.TDescribeReceiptRuleResponse;
  TDescribeReceiptRuleSetRequest = AWS.SES.Model.DescribeReceiptRuleSetRequest.TDescribeReceiptRuleSetRequest;
  TDescribeReceiptRuleSetResponse = AWS.SES.Model.DescribeReceiptRuleSetResponse.TDescribeReceiptRuleSetResponse;
  TDestination = AWS.SES.Model.Destination.TDestination;
  TDimensionValueSource = AWS.SES.Enums.TDimensionValueSource;
  TDsnAction = AWS.SES.Enums.TDsnAction;
  TEventDestination = AWS.SES.Model.EventDestination.TEventDestination;
  TEventType = AWS.SES.Enums.TEventType;
  TExtensionField = AWS.SES.Model.ExtensionField.TExtensionField;
  TGetAccountSendingEnabledRequest = AWS.SES.Model.GetAccountSendingEnabledRequest.TGetAccountSendingEnabledRequest;
  TGetAccountSendingEnabledResponse = AWS.SES.Model.GetAccountSendingEnabledResponse.TGetAccountSendingEnabledResponse;
  TGetCustomVerificationEmailTemplateRequest = AWS.SES.Model.GetCustomVerificationEmailTemplateRequest.TGetCustomVerificationEmailTemplateRequest;
  TGetCustomVerificationEmailTemplateResponse = AWS.SES.Model.GetCustomVerificationEmailTemplateResponse.TGetCustomVerificationEmailTemplateResponse;
  TGetIdentityDkimAttributesRequest = AWS.SES.Model.GetIdentityDkimAttributesRequest.TGetIdentityDkimAttributesRequest;
  TGetIdentityDkimAttributesResponse = AWS.SES.Model.GetIdentityDkimAttributesResponse.TGetIdentityDkimAttributesResponse;
  TGetIdentityMailFromDomainAttributesRequest = AWS.SES.Model.GetIdentityMailFromDomainAttributesRequest.TGetIdentityMailFromDomainAttributesRequest;
  TGetIdentityMailFromDomainAttributesResponse = AWS.SES.Model.GetIdentityMailFromDomainAttributesResponse.TGetIdentityMailFromDomainAttributesResponse;
  TGetIdentityNotificationAttributesRequest = AWS.SES.Model.GetIdentityNotificationAttributesRequest.TGetIdentityNotificationAttributesRequest;
  TGetIdentityNotificationAttributesResponse = AWS.SES.Model.GetIdentityNotificationAttributesResponse.TGetIdentityNotificationAttributesResponse;
  TGetIdentityPoliciesRequest = AWS.SES.Model.GetIdentityPoliciesRequest.TGetIdentityPoliciesRequest;
  TGetIdentityPoliciesResponse = AWS.SES.Model.GetIdentityPoliciesResponse.TGetIdentityPoliciesResponse;
  TGetIdentityVerificationAttributesRequest = AWS.SES.Model.GetIdentityVerificationAttributesRequest.TGetIdentityVerificationAttributesRequest;
  TGetIdentityVerificationAttributesResponse = AWS.SES.Model.GetIdentityVerificationAttributesResponse.TGetIdentityVerificationAttributesResponse;
  TGetSendQuotaRequest = AWS.SES.Model.GetSendQuotaRequest.TGetSendQuotaRequest;
  TGetSendQuotaResponse = AWS.SES.Model.GetSendQuotaResponse.TGetSendQuotaResponse;
  TGetSendStatisticsRequest = AWS.SES.Model.GetSendStatisticsRequest.TGetSendStatisticsRequest;
  TGetSendStatisticsResponse = AWS.SES.Model.GetSendStatisticsResponse.TGetSendStatisticsResponse;
  TGetTemplateRequest = AWS.SES.Model.GetTemplateRequest.TGetTemplateRequest;
  TGetTemplateResponse = AWS.SES.Model.GetTemplateResponse.TGetTemplateResponse;
  TIdentityDkimAttributes = AWS.SES.Model.IdentityDkimAttributes.TIdentityDkimAttributes;
  TIdentityMailFromDomainAttributes = AWS.SES.Model.IdentityMailFromDomainAttributes.TIdentityMailFromDomainAttributes;
  TIdentityNotificationAttributes = AWS.SES.Model.IdentityNotificationAttributes.TIdentityNotificationAttributes;
  TIdentityType = AWS.SES.Enums.TIdentityType;
  TIdentityVerificationAttributes = AWS.SES.Model.IdentityVerificationAttributes.TIdentityVerificationAttributes;
  TInvocationType = AWS.SES.Enums.TInvocationType;
  TKinesisFirehoseDestination = AWS.SES.Model.KinesisFirehoseDestination.TKinesisFirehoseDestination;
  TLambdaAction = AWS.SES.Model.LambdaAction.TLambdaAction;
  TListConfigurationSetsRequest = AWS.SES.Model.ListConfigurationSetsRequest.TListConfigurationSetsRequest;
  TListConfigurationSetsResponse = AWS.SES.Model.ListConfigurationSetsResponse.TListConfigurationSetsResponse;
  TListCustomVerificationEmailTemplatesRequest = AWS.SES.Model.ListCustomVerificationEmailTemplatesRequest.TListCustomVerificationEmailTemplatesRequest;
  TListCustomVerificationEmailTemplatesResponse = AWS.SES.Model.ListCustomVerificationEmailTemplatesResponse.TListCustomVerificationEmailTemplatesResponse;
  TListIdentitiesRequest = AWS.SES.Model.ListIdentitiesRequest.TListIdentitiesRequest;
  TListIdentitiesResponse = AWS.SES.Model.ListIdentitiesResponse.TListIdentitiesResponse;
  TListIdentityPoliciesRequest = AWS.SES.Model.ListIdentityPoliciesRequest.TListIdentityPoliciesRequest;
  TListIdentityPoliciesResponse = AWS.SES.Model.ListIdentityPoliciesResponse.TListIdentityPoliciesResponse;
  TListReceiptFiltersRequest = AWS.SES.Model.ListReceiptFiltersRequest.TListReceiptFiltersRequest;
  TListReceiptFiltersResponse = AWS.SES.Model.ListReceiptFiltersResponse.TListReceiptFiltersResponse;
  TListReceiptRuleSetsRequest = AWS.SES.Model.ListReceiptRuleSetsRequest.TListReceiptRuleSetsRequest;
  TListReceiptRuleSetsResponse = AWS.SES.Model.ListReceiptRuleSetsResponse.TListReceiptRuleSetsResponse;
  TListTemplatesRequest = AWS.SES.Model.ListTemplatesRequest.TListTemplatesRequest;
  TListTemplatesResponse = AWS.SES.Model.ListTemplatesResponse.TListTemplatesResponse;
  TListVerifiedEmailAddressesRequest = AWS.SES.Model.ListVerifiedEmailAddressesRequest.TListVerifiedEmailAddressesRequest;
  TListVerifiedEmailAddressesResponse = AWS.SES.Model.ListVerifiedEmailAddressesResponse.TListVerifiedEmailAddressesResponse;
  TMessage = AWS.SES.Model.Message.TMessage;
  TMessageDsn = AWS.SES.Model.MessageDsn.TMessageDsn;
  TMessageTag = AWS.SES.Model.MessageTag.TMessageTag;
  TNotificationType = AWS.SES.Enums.TNotificationType;
  TPutConfigurationSetDeliveryOptionsRequest = AWS.SES.Model.PutConfigurationSetDeliveryOptionsRequest.TPutConfigurationSetDeliveryOptionsRequest;
  TPutConfigurationSetDeliveryOptionsResponse = AWS.SES.Model.PutConfigurationSetDeliveryOptionsResponse.TPutConfigurationSetDeliveryOptionsResponse;
  TPutIdentityPolicyRequest = AWS.SES.Model.PutIdentityPolicyRequest.TPutIdentityPolicyRequest;
  TPutIdentityPolicyResponse = AWS.SES.Model.PutIdentityPolicyResponse.TPutIdentityPolicyResponse;
  TRawMessage = AWS.SES.Model.RawMessage.TRawMessage;
  TReceiptAction = AWS.SES.Model.ReceiptAction.TReceiptAction;
  TReceiptFilter = AWS.SES.Model.ReceiptFilter.TReceiptFilter;
  TReceiptFilterPolicy = AWS.SES.Enums.TReceiptFilterPolicy;
  TReceiptIpFilter = AWS.SES.Model.ReceiptIpFilter.TReceiptIpFilter;
  TReceiptRule = AWS.SES.Model.ReceiptRule.TReceiptRule;
  TReceiptRuleSetMetadata = AWS.SES.Model.ReceiptRuleSetMetadata.TReceiptRuleSetMetadata;
  TRecipientDsnFields = AWS.SES.Model.RecipientDsnFields.TRecipientDsnFields;
  TReorderReceiptRuleSetRequest = AWS.SES.Model.ReorderReceiptRuleSetRequest.TReorderReceiptRuleSetRequest;
  TReorderReceiptRuleSetResponse = AWS.SES.Model.ReorderReceiptRuleSetResponse.TReorderReceiptRuleSetResponse;
  TReputationOptions = AWS.SES.Model.ReputationOptions.TReputationOptions;
  TS3Action = AWS.SES.Model.S3Action.TS3Action;
  TSendBounceRequest = AWS.SES.Model.SendBounceRequest.TSendBounceRequest;
  TSendBounceResponse = AWS.SES.Model.SendBounceResponse.TSendBounceResponse;
  TSendBulkTemplatedEmailRequest = AWS.SES.Model.SendBulkTemplatedEmailRequest.TSendBulkTemplatedEmailRequest;
  TSendBulkTemplatedEmailResponse = AWS.SES.Model.SendBulkTemplatedEmailResponse.TSendBulkTemplatedEmailResponse;
  TSendCustomVerificationEmailRequest = AWS.SES.Model.SendCustomVerificationEmailRequest.TSendCustomVerificationEmailRequest;
  TSendCustomVerificationEmailResponse = AWS.SES.Model.SendCustomVerificationEmailResponse.TSendCustomVerificationEmailResponse;
  TSendDataPoint = AWS.SES.Model.SendDataPoint.TSendDataPoint;
  TSendEmailRequest = AWS.SES.Model.SendEmailRequest.TSendEmailRequest;
  TSendEmailResponse = AWS.SES.Model.SendEmailResponse.TSendEmailResponse;
  TSendRawEmailRequest = AWS.SES.Model.SendRawEmailRequest.TSendRawEmailRequest;
  TSendRawEmailResponse = AWS.SES.Model.SendRawEmailResponse.TSendRawEmailResponse;
  TSendTemplatedEmailRequest = AWS.SES.Model.SendTemplatedEmailRequest.TSendTemplatedEmailRequest;
  TSendTemplatedEmailResponse = AWS.SES.Model.SendTemplatedEmailResponse.TSendTemplatedEmailResponse;
  TSetActiveReceiptRuleSetRequest = AWS.SES.Model.SetActiveReceiptRuleSetRequest.TSetActiveReceiptRuleSetRequest;
  TSetActiveReceiptRuleSetResponse = AWS.SES.Model.SetActiveReceiptRuleSetResponse.TSetActiveReceiptRuleSetResponse;
  TSetIdentityDkimEnabledRequest = AWS.SES.Model.SetIdentityDkimEnabledRequest.TSetIdentityDkimEnabledRequest;
  TSetIdentityDkimEnabledResponse = AWS.SES.Model.SetIdentityDkimEnabledResponse.TSetIdentityDkimEnabledResponse;
  TSetIdentityFeedbackForwardingEnabledRequest = AWS.SES.Model.SetIdentityFeedbackForwardingEnabledRequest.TSetIdentityFeedbackForwardingEnabledRequest;
  TSetIdentityFeedbackForwardingEnabledResponse = AWS.SES.Model.SetIdentityFeedbackForwardingEnabledResponse.TSetIdentityFeedbackForwardingEnabledResponse;
  TSetIdentityHeadersInNotificationsEnabledRequest = AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledRequest.TSetIdentityHeadersInNotificationsEnabledRequest;
  TSetIdentityHeadersInNotificationsEnabledResponse = AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledResponse.TSetIdentityHeadersInNotificationsEnabledResponse;
  TSetIdentityMailFromDomainRequest = AWS.SES.Model.SetIdentityMailFromDomainRequest.TSetIdentityMailFromDomainRequest;
  TSetIdentityMailFromDomainResponse = AWS.SES.Model.SetIdentityMailFromDomainResponse.TSetIdentityMailFromDomainResponse;
  TSetIdentityNotificationTopicRequest = AWS.SES.Model.SetIdentityNotificationTopicRequest.TSetIdentityNotificationTopicRequest;
  TSetIdentityNotificationTopicResponse = AWS.SES.Model.SetIdentityNotificationTopicResponse.TSetIdentityNotificationTopicResponse;
  TSetReceiptRulePositionRequest = AWS.SES.Model.SetReceiptRulePositionRequest.TSetReceiptRulePositionRequest;
  TSetReceiptRulePositionResponse = AWS.SES.Model.SetReceiptRulePositionResponse.TSetReceiptRulePositionResponse;
  TSNSAction = AWS.SES.Model.SNSAction.TSNSAction;
  TSNSActionEncoding = AWS.SES.Enums.TSNSActionEncoding;
  TSNSDestination = AWS.SES.Model.SNSDestination.TSNSDestination;
  TStopAction = AWS.SES.Model.StopAction.TStopAction;
  TStopScope = AWS.SES.Enums.TStopScope;
  TTemplate = AWS.SES.Model.Template.TTemplate;
  TTemplateMetadata = AWS.SES.Model.TemplateMetadata.TTemplateMetadata;
  TTestRenderTemplateRequest = AWS.SES.Model.TestRenderTemplateRequest.TTestRenderTemplateRequest;
  TTestRenderTemplateResponse = AWS.SES.Model.TestRenderTemplateResponse.TTestRenderTemplateResponse;
  TTlsPolicy = AWS.SES.Enums.TTlsPolicy;
  TTrackingOptions = AWS.SES.Model.TrackingOptions.TTrackingOptions;
  TUpdateAccountSendingEnabledRequest = AWS.SES.Model.UpdateAccountSendingEnabledRequest.TUpdateAccountSendingEnabledRequest;
  TUpdateAccountSendingEnabledResponse = AWS.SES.Model.UpdateAccountSendingEnabledResponse.TUpdateAccountSendingEnabledResponse;
  TUpdateConfigurationSetEventDestinationRequest = AWS.SES.Model.UpdateConfigurationSetEventDestinationRequest.TUpdateConfigurationSetEventDestinationRequest;
  TUpdateConfigurationSetEventDestinationResponse = AWS.SES.Model.UpdateConfigurationSetEventDestinationResponse.TUpdateConfigurationSetEventDestinationResponse;
  TUpdateConfigurationSetReputationMetricsEnabledRequest = AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledRequest.TUpdateConfigurationSetReputationMetricsEnabledRequest;
  TUpdateConfigurationSetReputationMetricsEnabledResponse = AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledResponse.TUpdateConfigurationSetReputationMetricsEnabledResponse;
  TUpdateConfigurationSetSendingEnabledRequest = AWS.SES.Model.UpdateConfigurationSetSendingEnabledRequest.TUpdateConfigurationSetSendingEnabledRequest;
  TUpdateConfigurationSetSendingEnabledResponse = AWS.SES.Model.UpdateConfigurationSetSendingEnabledResponse.TUpdateConfigurationSetSendingEnabledResponse;
  TUpdateConfigurationSetTrackingOptionsRequest = AWS.SES.Model.UpdateConfigurationSetTrackingOptionsRequest.TUpdateConfigurationSetTrackingOptionsRequest;
  TUpdateConfigurationSetTrackingOptionsResponse = AWS.SES.Model.UpdateConfigurationSetTrackingOptionsResponse.TUpdateConfigurationSetTrackingOptionsResponse;
  TUpdateCustomVerificationEmailTemplateRequest = AWS.SES.Model.UpdateCustomVerificationEmailTemplateRequest.TUpdateCustomVerificationEmailTemplateRequest;
  TUpdateCustomVerificationEmailTemplateResponse = AWS.SES.Model.UpdateCustomVerificationEmailTemplateResponse.TUpdateCustomVerificationEmailTemplateResponse;
  TUpdateReceiptRuleRequest = AWS.SES.Model.UpdateReceiptRuleRequest.TUpdateReceiptRuleRequest;
  TUpdateReceiptRuleResponse = AWS.SES.Model.UpdateReceiptRuleResponse.TUpdateReceiptRuleResponse;
  TUpdateTemplateRequest = AWS.SES.Model.UpdateTemplateRequest.TUpdateTemplateRequest;
  TUpdateTemplateResponse = AWS.SES.Model.UpdateTemplateResponse.TUpdateTemplateResponse;
  TVerificationStatus = AWS.SES.Enums.TVerificationStatus;
  TVerifyDomainDkimRequest = AWS.SES.Model.VerifyDomainDkimRequest.TVerifyDomainDkimRequest;
  TVerifyDomainDkimResponse = AWS.SES.Model.VerifyDomainDkimResponse.TVerifyDomainDkimResponse;
  TVerifyDomainIdentityRequest = AWS.SES.Model.VerifyDomainIdentityRequest.TVerifyDomainIdentityRequest;
  TVerifyDomainIdentityResponse = AWS.SES.Model.VerifyDomainIdentityResponse.TVerifyDomainIdentityResponse;
  TVerifyEmailAddressRequest = AWS.SES.Model.VerifyEmailAddressRequest.TVerifyEmailAddressRequest;
  TVerifyEmailAddressResponse = AWS.SES.Model.VerifyEmailAddressResponse.TVerifyEmailAddressResponse;
  TVerifyEmailIdentityRequest = AWS.SES.Model.VerifyEmailIdentityRequest.TVerifyEmailIdentityRequest;
  TVerifyEmailIdentityResponse = AWS.SES.Model.VerifyEmailIdentityResponse.TVerifyEmailIdentityResponse;
  TWorkmailAction = AWS.SES.Model.WorkmailAction.TWorkmailAction;
  
implementation

end.
