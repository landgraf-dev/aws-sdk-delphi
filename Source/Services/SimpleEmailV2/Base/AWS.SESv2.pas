unit AWS.SESv2;

interface

uses
  AWS.SESv2.Client, 
  AWS.SESv2.ClientIntf, 
  AWS.SESv2.Config, 
  AWS.SESv2.Enums, 
  AWS.SESv2.Exception, 
  AWS.SESv2.Metadata, 
  AWS.SESv2.Model.AccountDetails, 
  AWS.SESv2.Model.AccountSuspendedException, 
  AWS.SESv2.Model.AlreadyExistsException, 
  AWS.SESv2.Model.BadRequestException, 
  AWS.SESv2.Model.BlacklistEntry, 
  AWS.SESv2.Model.Body, 
  AWS.SESv2.Model.BulkEmailContent, 
  AWS.SESv2.Model.BulkEmailEntry, 
  AWS.SESv2.Model.BulkEmailEntryResult, 
  AWS.SESv2.Model.CloudWatchDestination, 
  AWS.SESv2.Model.CloudWatchDimensionConfiguration, 
  AWS.SESv2.Model.ConcurrentModificationException, 
  AWS.SESv2.Model.ConflictException, 
  AWS.SESv2.Model.Contact, 
  AWS.SESv2.Model.ContactList, 
  AWS.SESv2.Model.ContactListDestination, 
  AWS.SESv2.Model.Content, 
  AWS.SESv2.Model.CreateConfigurationSetEventDestinationRequest, 
  AWS.SESv2.Model.CreateConfigurationSetEventDestinationResponse, 
  AWS.SESv2.Model.CreateConfigurationSetRequest, 
  AWS.SESv2.Model.CreateConfigurationSetResponse, 
  AWS.SESv2.Model.CreateContactListRequest, 
  AWS.SESv2.Model.CreateContactListResponse, 
  AWS.SESv2.Model.CreateContactRequest, 
  AWS.SESv2.Model.CreateContactResponse, 
  AWS.SESv2.Model.CreateCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Model.CreateCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.CreateDedicatedIpPoolRequest, 
  AWS.SESv2.Model.CreateDedicatedIpPoolResponse, 
  AWS.SESv2.Model.CreateDeliverabilityTestReportRequest, 
  AWS.SESv2.Model.CreateDeliverabilityTestReportResponse, 
  AWS.SESv2.Model.CreateEmailIdentityPolicyRequest, 
  AWS.SESv2.Model.CreateEmailIdentityPolicyResponse, 
  AWS.SESv2.Model.CreateEmailIdentityRequest, 
  AWS.SESv2.Model.CreateEmailIdentityResponse, 
  AWS.SESv2.Model.CreateEmailTemplateRequest, 
  AWS.SESv2.Model.CreateEmailTemplateResponse, 
  AWS.SESv2.Model.CreateImportJobRequest, 
  AWS.SESv2.Model.CreateImportJobResponse, 
  AWS.SESv2.Model.CustomVerificationEmailTemplateMetadata, 
  AWS.SESv2.Model.DailyVolume, 
  AWS.SESv2.Model.DedicatedIp, 
  AWS.SESv2.Model.DeleteConfigurationSetEventDestinationRequest, 
  AWS.SESv2.Model.DeleteConfigurationSetEventDestinationResponse, 
  AWS.SESv2.Model.DeleteConfigurationSetRequest, 
  AWS.SESv2.Model.DeleteConfigurationSetResponse, 
  AWS.SESv2.Model.DeleteContactListRequest, 
  AWS.SESv2.Model.DeleteContactListResponse, 
  AWS.SESv2.Model.DeleteContactRequest, 
  AWS.SESv2.Model.DeleteContactResponse, 
  AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.DeleteDedicatedIpPoolRequest, 
  AWS.SESv2.Model.DeleteDedicatedIpPoolResponse, 
  AWS.SESv2.Model.DeleteEmailIdentityPolicyRequest, 
  AWS.SESv2.Model.DeleteEmailIdentityPolicyResponse, 
  AWS.SESv2.Model.DeleteEmailIdentityRequest, 
  AWS.SESv2.Model.DeleteEmailIdentityResponse, 
  AWS.SESv2.Model.DeleteEmailTemplateRequest, 
  AWS.SESv2.Model.DeleteEmailTemplateResponse, 
  AWS.SESv2.Model.DeleteSuppressedDestinationRequest, 
  AWS.SESv2.Model.DeleteSuppressedDestinationResponse, 
  AWS.SESv2.Model.DeliverabilityTestReport, 
  AWS.SESv2.Model.DeliveryOptions, 
  AWS.SESv2.Model.Destination, 
  AWS.SESv2.Model.DkimAttributes, 
  AWS.SESv2.Model.DkimSigningAttributes, 
  AWS.SESv2.Model.DomainDeliverabilityCampaign, 
  AWS.SESv2.Model.DomainDeliverabilityTrackingOption, 
  AWS.SESv2.Model.DomainIspPlacement, 
  AWS.SESv2.Model.EmailContent, 
  AWS.SESv2.Model.EmailTemplateContent, 
  AWS.SESv2.Model.EmailTemplateMetadata, 
  AWS.SESv2.Model.EventDestination, 
  AWS.SESv2.Model.EventDestinationDefinition, 
  AWS.SESv2.Model.FailureInfo, 
  AWS.SESv2.Model.GetAccountRequest, 
  AWS.SESv2.Model.GetAccountResponse, 
  AWS.SESv2.Model.GetBlacklistReportsRequest, 
  AWS.SESv2.Model.GetBlacklistReportsResponse, 
  AWS.SESv2.Model.GetConfigurationSetEventDestinationsRequest, 
  AWS.SESv2.Model.GetConfigurationSetEventDestinationsResponse, 
  AWS.SESv2.Model.GetConfigurationSetRequest, 
  AWS.SESv2.Model.GetConfigurationSetResponse, 
  AWS.SESv2.Model.GetContactListRequest, 
  AWS.SESv2.Model.GetContactListResponse, 
  AWS.SESv2.Model.GetContactRequest, 
  AWS.SESv2.Model.GetContactResponse, 
  AWS.SESv2.Model.GetCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Model.GetCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.GetDedicatedIpRequest, 
  AWS.SESv2.Model.GetDedicatedIpResponse, 
  AWS.SESv2.Model.GetDedicatedIpsRequest, 
  AWS.SESv2.Model.GetDedicatedIpsResponse, 
  AWS.SESv2.Model.GetDeliverabilityDashboardOptionsRequest, 
  AWS.SESv2.Model.GetDeliverabilityDashboardOptionsResponse, 
  AWS.SESv2.Model.GetDeliverabilityTestReportRequest, 
  AWS.SESv2.Model.GetDeliverabilityTestReportResponse, 
  AWS.SESv2.Model.GetDomainDeliverabilityCampaignRequest, 
  AWS.SESv2.Model.GetDomainDeliverabilityCampaignResponse, 
  AWS.SESv2.Model.GetDomainStatisticsReportRequest, 
  AWS.SESv2.Model.GetDomainStatisticsReportResponse, 
  AWS.SESv2.Model.GetEmailIdentityPoliciesRequest, 
  AWS.SESv2.Model.GetEmailIdentityPoliciesResponse, 
  AWS.SESv2.Model.GetEmailIdentityRequest, 
  AWS.SESv2.Model.GetEmailIdentityResponse, 
  AWS.SESv2.Model.GetEmailTemplateRequest, 
  AWS.SESv2.Model.GetEmailTemplateResponse, 
  AWS.SESv2.Model.GetImportJobRequest, 
  AWS.SESv2.Model.GetImportJobResponse, 
  AWS.SESv2.Model.GetSuppressedDestinationRequest, 
  AWS.SESv2.Model.GetSuppressedDestinationResponse, 
  AWS.SESv2.Model.IdentityInfo, 
  AWS.SESv2.Model.ImportDataSource, 
  AWS.SESv2.Model.ImportDestination, 
  AWS.SESv2.Model.ImportJobSummary, 
  AWS.SESv2.Model.InboxPlacementTrackingOption, 
  AWS.SESv2.Model.InvalidNextTokenException, 
  AWS.SESv2.Model.IspPlacement, 
  AWS.SESv2.Model.KinesisFirehoseDestination, 
  AWS.SESv2.Model.LimitExceededException, 
  AWS.SESv2.Model.ListConfigurationSetsRequest, 
  AWS.SESv2.Model.ListConfigurationSetsResponse, 
  AWS.SESv2.Model.ListContactListsRequest, 
  AWS.SESv2.Model.ListContactListsResponse, 
  AWS.SESv2.Model.ListContactsFilter, 
  AWS.SESv2.Model.ListContactsRequest, 
  AWS.SESv2.Model.ListContactsResponse, 
  AWS.SESv2.Model.ListCustomVerificationEmailTemplatesRequest, 
  AWS.SESv2.Model.ListCustomVerificationEmailTemplatesResponse, 
  AWS.SESv2.Model.ListDedicatedIpPoolsRequest, 
  AWS.SESv2.Model.ListDedicatedIpPoolsResponse, 
  AWS.SESv2.Model.ListDeliverabilityTestReportsRequest, 
  AWS.SESv2.Model.ListDeliverabilityTestReportsResponse, 
  AWS.SESv2.Model.ListDomainDeliverabilityCampaignsRequest, 
  AWS.SESv2.Model.ListDomainDeliverabilityCampaignsResponse, 
  AWS.SESv2.Model.ListEmailIdentitiesRequest, 
  AWS.SESv2.Model.ListEmailIdentitiesResponse, 
  AWS.SESv2.Model.ListEmailTemplatesRequest, 
  AWS.SESv2.Model.ListEmailTemplatesResponse, 
  AWS.SESv2.Model.ListImportJobsRequest, 
  AWS.SESv2.Model.ListImportJobsResponse, 
  AWS.SESv2.Model.ListManagementOptions, 
  AWS.SESv2.Model.ListSuppressedDestinationsRequest, 
  AWS.SESv2.Model.ListSuppressedDestinationsResponse, 
  AWS.SESv2.Model.ListTagsForResourceRequest, 
  AWS.SESv2.Model.ListTagsForResourceResponse, 
  AWS.SESv2.Model.MailFromAttributes, 
  AWS.SESv2.Model.MailFromDomainNotVerifiedException, 
  AWS.SESv2.Model.Message, 
  AWS.SESv2.Model.MessageRejectedException, 
  AWS.SESv2.Model.MessageTag, 
  AWS.SESv2.Model.NotFoundException, 
  AWS.SESv2.Model.OverallVolume, 
  AWS.SESv2.Model.PinpointDestination, 
  AWS.SESv2.Model.PlacementStatistics, 
  AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesRequest, 
  AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesResponse, 
  AWS.SESv2.Model.PutAccountDetailsRequest, 
  AWS.SESv2.Model.PutAccountDetailsResponse, 
  AWS.SESv2.Model.PutAccountSendingAttributesRequest, 
  AWS.SESv2.Model.PutAccountSendingAttributesResponse, 
  AWS.SESv2.Model.PutAccountSuppressionAttributesRequest, 
  AWS.SESv2.Model.PutAccountSuppressionAttributesResponse, 
  AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsRequest, 
  AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetReputationOptionsRequest, 
  AWS.SESv2.Model.PutConfigurationSetReputationOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetSendingOptionsRequest, 
  AWS.SESv2.Model.PutConfigurationSetSendingOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsRequest, 
  AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetTrackingOptionsRequest, 
  AWS.SESv2.Model.PutConfigurationSetTrackingOptionsResponse, 
  AWS.SESv2.Model.PutDedicatedIpInPoolRequest, 
  AWS.SESv2.Model.PutDedicatedIpInPoolResponse, 
  AWS.SESv2.Model.PutDedicatedIpWarmupAttributesRequest, 
  AWS.SESv2.Model.PutDedicatedIpWarmupAttributesResponse, 
  AWS.SESv2.Model.PutDeliverabilityDashboardOptionRequest, 
  AWS.SESv2.Model.PutDeliverabilityDashboardOptionResponse, 
  AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesRequest, 
  AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityDkimAttributesRequest, 
  AWS.SESv2.Model.PutEmailIdentityDkimAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesRequest, 
  AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesRequest, 
  AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityMailFromAttributesRequest, 
  AWS.SESv2.Model.PutEmailIdentityMailFromAttributesResponse, 
  AWS.SESv2.Model.PutSuppressedDestinationRequest, 
  AWS.SESv2.Model.PutSuppressedDestinationResponse, 
  AWS.SESv2.Model.RawMessage, 
  AWS.SESv2.Model.ReplacementEmailContent, 
  AWS.SESv2.Model.ReplacementTemplate, 
  AWS.SESv2.Model.ReputationOptions, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Model.ReviewDetails, 
  AWS.SESv2.Model.SendBulkEmailRequest, 
  AWS.SESv2.Model.SendBulkEmailResponse, 
  AWS.SESv2.Model.SendCustomVerificationEmailRequest, 
  AWS.SESv2.Model.SendCustomVerificationEmailResponse, 
  AWS.SESv2.Model.SendEmailRequest, 
  AWS.SESv2.Model.SendEmailResponse, 
  AWS.SESv2.Model.SendingOptions, 
  AWS.SESv2.Model.SendingPausedException, 
  AWS.SESv2.Model.SendQuota, 
  AWS.SESv2.Model.SnsDestination, 
  AWS.SESv2.Model.SuppressedDestination, 
  AWS.SESv2.Model.SuppressedDestinationAttributes, 
  AWS.SESv2.Model.SuppressedDestinationSummary, 
  AWS.SESv2.Model.SuppressionAttributes, 
  AWS.SESv2.Model.SuppressionListDestination, 
  AWS.SESv2.Model.SuppressionOptions, 
  AWS.SESv2.Model.Tag, 
  AWS.SESv2.Model.TagResourceRequest, 
  AWS.SESv2.Model.TagResourceResponse, 
  AWS.SESv2.Model.Template, 
  AWS.SESv2.Model.TestRenderEmailTemplateRequest, 
  AWS.SESv2.Model.TestRenderEmailTemplateResponse, 
  AWS.SESv2.Model.TooManyRequestsException, 
  AWS.SESv2.Model.Topic, 
  AWS.SESv2.Model.TopicFilter, 
  AWS.SESv2.Model.TopicPreference, 
  AWS.SESv2.Model.TrackingOptions, 
  AWS.SESv2.Model.UntagResourceRequest, 
  AWS.SESv2.Model.UntagResourceResponse, 
  AWS.SESv2.Model.UpdateConfigurationSetEventDestinationRequest, 
  AWS.SESv2.Model.UpdateConfigurationSetEventDestinationResponse, 
  AWS.SESv2.Model.UpdateContactListRequest, 
  AWS.SESv2.Model.UpdateContactListResponse, 
  AWS.SESv2.Model.UpdateContactRequest, 
  AWS.SESv2.Model.UpdateContactResponse, 
  AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.UpdateEmailIdentityPolicyRequest, 
  AWS.SESv2.Model.UpdateEmailIdentityPolicyResponse, 
  AWS.SESv2.Model.UpdateEmailTemplateRequest, 
  AWS.SESv2.Model.UpdateEmailTemplateResponse, 
  AWS.SESv2.Model.VolumeStatistics;

type
  EAccountSuspendedException = AWS.SESv2.Model.AccountSuspendedException.EAccountSuspendedException;
  EAlreadyExistsException = AWS.SESv2.Model.AlreadyExistsException.EAlreadyExistsException;
  EAmazonSimpleEmailServiceV2Exception = AWS.SESv2.Exception.EAmazonSimpleEmailServiceV2Exception;
  EBadRequestException = AWS.SESv2.Model.BadRequestException.EBadRequestException;
  EConcurrentModificationException = AWS.SESv2.Model.ConcurrentModificationException.EConcurrentModificationException;
  EConflictException = AWS.SESv2.Model.ConflictException.EConflictException;
  EInvalidNextTokenException = AWS.SESv2.Model.InvalidNextTokenException.EInvalidNextTokenException;
  ELimitExceededException = AWS.SESv2.Model.LimitExceededException.ELimitExceededException;
  EMailFromDomainNotVerifiedException = AWS.SESv2.Model.MailFromDomainNotVerifiedException.EMailFromDomainNotVerifiedException;
  EMessageRejectedException = AWS.SESv2.Model.MessageRejectedException.EMessageRejectedException;
  ENotFoundException = AWS.SESv2.Model.NotFoundException.ENotFoundException;
  ESendingPausedException = AWS.SESv2.Model.SendingPausedException.ESendingPausedException;
  ETooManyRequestsException = AWS.SESv2.Model.TooManyRequestsException.ETooManyRequestsException;
  IAccountDetails = AWS.SESv2.Model.AccountDetails.IAccountDetails;
  IAmazonSimpleEmailServiceV2 = AWS.SESv2.ClientIntf.IAmazonSimpleEmailServiceV2;
  IBlacklistEntry = AWS.SESv2.Model.BlacklistEntry.IBlacklistEntry;
  IBody = AWS.SESv2.Model.Body.IBody;
  IBulkEmailContent = AWS.SESv2.Model.BulkEmailContent.IBulkEmailContent;
  IBulkEmailEntry = AWS.SESv2.Model.BulkEmailEntry.IBulkEmailEntry;
  IBulkEmailEntryResult = AWS.SESv2.Model.BulkEmailEntryResult.IBulkEmailEntryResult;
  ICloudWatchDestination = AWS.SESv2.Model.CloudWatchDestination.ICloudWatchDestination;
  ICloudWatchDimensionConfiguration = AWS.SESv2.Model.CloudWatchDimensionConfiguration.ICloudWatchDimensionConfiguration;
  IContact = AWS.SESv2.Model.Contact.IContact;
  IContactList = AWS.SESv2.Model.ContactList.IContactList;
  IContactListDestination = AWS.SESv2.Model.ContactListDestination.IContactListDestination;
  IContent = AWS.SESv2.Model.Content.IContent;
  ICreateConfigurationSetEventDestinationRequest = AWS.SESv2.Model.CreateConfigurationSetEventDestinationRequest.ICreateConfigurationSetEventDestinationRequest;
  ICreateConfigurationSetEventDestinationResponse = AWS.SESv2.Model.CreateConfigurationSetEventDestinationResponse.ICreateConfigurationSetEventDestinationResponse;
  ICreateConfigurationSetRequest = AWS.SESv2.Model.CreateConfigurationSetRequest.ICreateConfigurationSetRequest;
  ICreateConfigurationSetResponse = AWS.SESv2.Model.CreateConfigurationSetResponse.ICreateConfigurationSetResponse;
  ICreateContactListRequest = AWS.SESv2.Model.CreateContactListRequest.ICreateContactListRequest;
  ICreateContactListResponse = AWS.SESv2.Model.CreateContactListResponse.ICreateContactListResponse;
  ICreateContactRequest = AWS.SESv2.Model.CreateContactRequest.ICreateContactRequest;
  ICreateContactResponse = AWS.SESv2.Model.CreateContactResponse.ICreateContactResponse;
  ICreateCustomVerificationEmailTemplateRequest = AWS.SESv2.Model.CreateCustomVerificationEmailTemplateRequest.ICreateCustomVerificationEmailTemplateRequest;
  ICreateCustomVerificationEmailTemplateResponse = AWS.SESv2.Model.CreateCustomVerificationEmailTemplateResponse.ICreateCustomVerificationEmailTemplateResponse;
  ICreateDedicatedIpPoolRequest = AWS.SESv2.Model.CreateDedicatedIpPoolRequest.ICreateDedicatedIpPoolRequest;
  ICreateDedicatedIpPoolResponse = AWS.SESv2.Model.CreateDedicatedIpPoolResponse.ICreateDedicatedIpPoolResponse;
  ICreateDeliverabilityTestReportRequest = AWS.SESv2.Model.CreateDeliverabilityTestReportRequest.ICreateDeliverabilityTestReportRequest;
  ICreateDeliverabilityTestReportResponse = AWS.SESv2.Model.CreateDeliverabilityTestReportResponse.ICreateDeliverabilityTestReportResponse;
  ICreateEmailIdentityPolicyRequest = AWS.SESv2.Model.CreateEmailIdentityPolicyRequest.ICreateEmailIdentityPolicyRequest;
  ICreateEmailIdentityPolicyResponse = AWS.SESv2.Model.CreateEmailIdentityPolicyResponse.ICreateEmailIdentityPolicyResponse;
  ICreateEmailIdentityRequest = AWS.SESv2.Model.CreateEmailIdentityRequest.ICreateEmailIdentityRequest;
  ICreateEmailIdentityResponse = AWS.SESv2.Model.CreateEmailIdentityResponse.ICreateEmailIdentityResponse;
  ICreateEmailTemplateRequest = AWS.SESv2.Model.CreateEmailTemplateRequest.ICreateEmailTemplateRequest;
  ICreateEmailTemplateResponse = AWS.SESv2.Model.CreateEmailTemplateResponse.ICreateEmailTemplateResponse;
  ICreateImportJobRequest = AWS.SESv2.Model.CreateImportJobRequest.ICreateImportJobRequest;
  ICreateImportJobResponse = AWS.SESv2.Model.CreateImportJobResponse.ICreateImportJobResponse;
  ICustomVerificationEmailTemplateMetadata = AWS.SESv2.Model.CustomVerificationEmailTemplateMetadata.ICustomVerificationEmailTemplateMetadata;
  IDailyVolume = AWS.SESv2.Model.DailyVolume.IDailyVolume;
  IDedicatedIp = AWS.SESv2.Model.DedicatedIp.IDedicatedIp;
  IDeleteConfigurationSetEventDestinationRequest = AWS.SESv2.Model.DeleteConfigurationSetEventDestinationRequest.IDeleteConfigurationSetEventDestinationRequest;
  IDeleteConfigurationSetEventDestinationResponse = AWS.SESv2.Model.DeleteConfigurationSetEventDestinationResponse.IDeleteConfigurationSetEventDestinationResponse;
  IDeleteConfigurationSetRequest = AWS.SESv2.Model.DeleteConfigurationSetRequest.IDeleteConfigurationSetRequest;
  IDeleteConfigurationSetResponse = AWS.SESv2.Model.DeleteConfigurationSetResponse.IDeleteConfigurationSetResponse;
  IDeleteContactListRequest = AWS.SESv2.Model.DeleteContactListRequest.IDeleteContactListRequest;
  IDeleteContactListResponse = AWS.SESv2.Model.DeleteContactListResponse.IDeleteContactListResponse;
  IDeleteContactRequest = AWS.SESv2.Model.DeleteContactRequest.IDeleteContactRequest;
  IDeleteContactResponse = AWS.SESv2.Model.DeleteContactResponse.IDeleteContactResponse;
  IDeleteCustomVerificationEmailTemplateRequest = AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateRequest.IDeleteCustomVerificationEmailTemplateRequest;
  IDeleteCustomVerificationEmailTemplateResponse = AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateResponse.IDeleteCustomVerificationEmailTemplateResponse;
  IDeleteDedicatedIpPoolRequest = AWS.SESv2.Model.DeleteDedicatedIpPoolRequest.IDeleteDedicatedIpPoolRequest;
  IDeleteDedicatedIpPoolResponse = AWS.SESv2.Model.DeleteDedicatedIpPoolResponse.IDeleteDedicatedIpPoolResponse;
  IDeleteEmailIdentityPolicyRequest = AWS.SESv2.Model.DeleteEmailIdentityPolicyRequest.IDeleteEmailIdentityPolicyRequest;
  IDeleteEmailIdentityPolicyResponse = AWS.SESv2.Model.DeleteEmailIdentityPolicyResponse.IDeleteEmailIdentityPolicyResponse;
  IDeleteEmailIdentityRequest = AWS.SESv2.Model.DeleteEmailIdentityRequest.IDeleteEmailIdentityRequest;
  IDeleteEmailIdentityResponse = AWS.SESv2.Model.DeleteEmailIdentityResponse.IDeleteEmailIdentityResponse;
  IDeleteEmailTemplateRequest = AWS.SESv2.Model.DeleteEmailTemplateRequest.IDeleteEmailTemplateRequest;
  IDeleteEmailTemplateResponse = AWS.SESv2.Model.DeleteEmailTemplateResponse.IDeleteEmailTemplateResponse;
  IDeleteSuppressedDestinationRequest = AWS.SESv2.Model.DeleteSuppressedDestinationRequest.IDeleteSuppressedDestinationRequest;
  IDeleteSuppressedDestinationResponse = AWS.SESv2.Model.DeleteSuppressedDestinationResponse.IDeleteSuppressedDestinationResponse;
  IDeliverabilityTestReport = AWS.SESv2.Model.DeliverabilityTestReport.IDeliverabilityTestReport;
  IDeliveryOptions = AWS.SESv2.Model.DeliveryOptions.IDeliveryOptions;
  IDestination = AWS.SESv2.Model.Destination.IDestination;
  IDkimAttributes = AWS.SESv2.Model.DkimAttributes.IDkimAttributes;
  IDkimSigningAttributes = AWS.SESv2.Model.DkimSigningAttributes.IDkimSigningAttributes;
  IDomainDeliverabilityCampaign = AWS.SESv2.Model.DomainDeliverabilityCampaign.IDomainDeliverabilityCampaign;
  IDomainDeliverabilityTrackingOption = AWS.SESv2.Model.DomainDeliverabilityTrackingOption.IDomainDeliverabilityTrackingOption;
  IDomainIspPlacement = AWS.SESv2.Model.DomainIspPlacement.IDomainIspPlacement;
  IEmailContent = AWS.SESv2.Model.EmailContent.IEmailContent;
  IEmailTemplateContent = AWS.SESv2.Model.EmailTemplateContent.IEmailTemplateContent;
  IEmailTemplateMetadata = AWS.SESv2.Model.EmailTemplateMetadata.IEmailTemplateMetadata;
  IEventDestination = AWS.SESv2.Model.EventDestination.IEventDestination;
  IEventDestinationDefinition = AWS.SESv2.Model.EventDestinationDefinition.IEventDestinationDefinition;
  IFailureInfo = AWS.SESv2.Model.FailureInfo.IFailureInfo;
  IGetAccountRequest = AWS.SESv2.Model.GetAccountRequest.IGetAccountRequest;
  IGetAccountResponse = AWS.SESv2.Model.GetAccountResponse.IGetAccountResponse;
  IGetBlacklistReportsRequest = AWS.SESv2.Model.GetBlacklistReportsRequest.IGetBlacklistReportsRequest;
  IGetBlacklistReportsResponse = AWS.SESv2.Model.GetBlacklistReportsResponse.IGetBlacklistReportsResponse;
  IGetConfigurationSetEventDestinationsRequest = AWS.SESv2.Model.GetConfigurationSetEventDestinationsRequest.IGetConfigurationSetEventDestinationsRequest;
  IGetConfigurationSetEventDestinationsResponse = AWS.SESv2.Model.GetConfigurationSetEventDestinationsResponse.IGetConfigurationSetEventDestinationsResponse;
  IGetConfigurationSetRequest = AWS.SESv2.Model.GetConfigurationSetRequest.IGetConfigurationSetRequest;
  IGetConfigurationSetResponse = AWS.SESv2.Model.GetConfigurationSetResponse.IGetConfigurationSetResponse;
  IGetContactListRequest = AWS.SESv2.Model.GetContactListRequest.IGetContactListRequest;
  IGetContactListResponse = AWS.SESv2.Model.GetContactListResponse.IGetContactListResponse;
  IGetContactRequest = AWS.SESv2.Model.GetContactRequest.IGetContactRequest;
  IGetContactResponse = AWS.SESv2.Model.GetContactResponse.IGetContactResponse;
  IGetCustomVerificationEmailTemplateRequest = AWS.SESv2.Model.GetCustomVerificationEmailTemplateRequest.IGetCustomVerificationEmailTemplateRequest;
  IGetCustomVerificationEmailTemplateResponse = AWS.SESv2.Model.GetCustomVerificationEmailTemplateResponse.IGetCustomVerificationEmailTemplateResponse;
  IGetDedicatedIpRequest = AWS.SESv2.Model.GetDedicatedIpRequest.IGetDedicatedIpRequest;
  IGetDedicatedIpResponse = AWS.SESv2.Model.GetDedicatedIpResponse.IGetDedicatedIpResponse;
  IGetDedicatedIpsRequest = AWS.SESv2.Model.GetDedicatedIpsRequest.IGetDedicatedIpsRequest;
  IGetDedicatedIpsResponse = AWS.SESv2.Model.GetDedicatedIpsResponse.IGetDedicatedIpsResponse;
  IGetDeliverabilityDashboardOptionsRequest = AWS.SESv2.Model.GetDeliverabilityDashboardOptionsRequest.IGetDeliverabilityDashboardOptionsRequest;
  IGetDeliverabilityDashboardOptionsResponse = AWS.SESv2.Model.GetDeliverabilityDashboardOptionsResponse.IGetDeliverabilityDashboardOptionsResponse;
  IGetDeliverabilityTestReportRequest = AWS.SESv2.Model.GetDeliverabilityTestReportRequest.IGetDeliverabilityTestReportRequest;
  IGetDeliverabilityTestReportResponse = AWS.SESv2.Model.GetDeliverabilityTestReportResponse.IGetDeliverabilityTestReportResponse;
  IGetDomainDeliverabilityCampaignRequest = AWS.SESv2.Model.GetDomainDeliverabilityCampaignRequest.IGetDomainDeliverabilityCampaignRequest;
  IGetDomainDeliverabilityCampaignResponse = AWS.SESv2.Model.GetDomainDeliverabilityCampaignResponse.IGetDomainDeliverabilityCampaignResponse;
  IGetDomainStatisticsReportRequest = AWS.SESv2.Model.GetDomainStatisticsReportRequest.IGetDomainStatisticsReportRequest;
  IGetDomainStatisticsReportResponse = AWS.SESv2.Model.GetDomainStatisticsReportResponse.IGetDomainStatisticsReportResponse;
  IGetEmailIdentityPoliciesRequest = AWS.SESv2.Model.GetEmailIdentityPoliciesRequest.IGetEmailIdentityPoliciesRequest;
  IGetEmailIdentityPoliciesResponse = AWS.SESv2.Model.GetEmailIdentityPoliciesResponse.IGetEmailIdentityPoliciesResponse;
  IGetEmailIdentityRequest = AWS.SESv2.Model.GetEmailIdentityRequest.IGetEmailIdentityRequest;
  IGetEmailIdentityResponse = AWS.SESv2.Model.GetEmailIdentityResponse.IGetEmailIdentityResponse;
  IGetEmailTemplateRequest = AWS.SESv2.Model.GetEmailTemplateRequest.IGetEmailTemplateRequest;
  IGetEmailTemplateResponse = AWS.SESv2.Model.GetEmailTemplateResponse.IGetEmailTemplateResponse;
  IGetImportJobRequest = AWS.SESv2.Model.GetImportJobRequest.IGetImportJobRequest;
  IGetImportJobResponse = AWS.SESv2.Model.GetImportJobResponse.IGetImportJobResponse;
  IGetSuppressedDestinationRequest = AWS.SESv2.Model.GetSuppressedDestinationRequest.IGetSuppressedDestinationRequest;
  IGetSuppressedDestinationResponse = AWS.SESv2.Model.GetSuppressedDestinationResponse.IGetSuppressedDestinationResponse;
  IIdentityInfo = AWS.SESv2.Model.IdentityInfo.IIdentityInfo;
  IImportDataSource = AWS.SESv2.Model.ImportDataSource.IImportDataSource;
  IImportDestination = AWS.SESv2.Model.ImportDestination.IImportDestination;
  IImportJobSummary = AWS.SESv2.Model.ImportJobSummary.IImportJobSummary;
  IInboxPlacementTrackingOption = AWS.SESv2.Model.InboxPlacementTrackingOption.IInboxPlacementTrackingOption;
  IIspPlacement = AWS.SESv2.Model.IspPlacement.IIspPlacement;
  IKinesisFirehoseDestination = AWS.SESv2.Model.KinesisFirehoseDestination.IKinesisFirehoseDestination;
  IListConfigurationSetsRequest = AWS.SESv2.Model.ListConfigurationSetsRequest.IListConfigurationSetsRequest;
  IListConfigurationSetsResponse = AWS.SESv2.Model.ListConfigurationSetsResponse.IListConfigurationSetsResponse;
  IListContactListsRequest = AWS.SESv2.Model.ListContactListsRequest.IListContactListsRequest;
  IListContactListsResponse = AWS.SESv2.Model.ListContactListsResponse.IListContactListsResponse;
  IListContactsFilter = AWS.SESv2.Model.ListContactsFilter.IListContactsFilter;
  IListContactsRequest = AWS.SESv2.Model.ListContactsRequest.IListContactsRequest;
  IListContactsResponse = AWS.SESv2.Model.ListContactsResponse.IListContactsResponse;
  IListCustomVerificationEmailTemplatesRequest = AWS.SESv2.Model.ListCustomVerificationEmailTemplatesRequest.IListCustomVerificationEmailTemplatesRequest;
  IListCustomVerificationEmailTemplatesResponse = AWS.SESv2.Model.ListCustomVerificationEmailTemplatesResponse.IListCustomVerificationEmailTemplatesResponse;
  IListDedicatedIpPoolsRequest = AWS.SESv2.Model.ListDedicatedIpPoolsRequest.IListDedicatedIpPoolsRequest;
  IListDedicatedIpPoolsResponse = AWS.SESv2.Model.ListDedicatedIpPoolsResponse.IListDedicatedIpPoolsResponse;
  IListDeliverabilityTestReportsRequest = AWS.SESv2.Model.ListDeliverabilityTestReportsRequest.IListDeliverabilityTestReportsRequest;
  IListDeliverabilityTestReportsResponse = AWS.SESv2.Model.ListDeliverabilityTestReportsResponse.IListDeliverabilityTestReportsResponse;
  IListDomainDeliverabilityCampaignsRequest = AWS.SESv2.Model.ListDomainDeliverabilityCampaignsRequest.IListDomainDeliverabilityCampaignsRequest;
  IListDomainDeliverabilityCampaignsResponse = AWS.SESv2.Model.ListDomainDeliverabilityCampaignsResponse.IListDomainDeliverabilityCampaignsResponse;
  IListEmailIdentitiesRequest = AWS.SESv2.Model.ListEmailIdentitiesRequest.IListEmailIdentitiesRequest;
  IListEmailIdentitiesResponse = AWS.SESv2.Model.ListEmailIdentitiesResponse.IListEmailIdentitiesResponse;
  IListEmailTemplatesRequest = AWS.SESv2.Model.ListEmailTemplatesRequest.IListEmailTemplatesRequest;
  IListEmailTemplatesResponse = AWS.SESv2.Model.ListEmailTemplatesResponse.IListEmailTemplatesResponse;
  IListImportJobsRequest = AWS.SESv2.Model.ListImportJobsRequest.IListImportJobsRequest;
  IListImportJobsResponse = AWS.SESv2.Model.ListImportJobsResponse.IListImportJobsResponse;
  IListManagementOptions = AWS.SESv2.Model.ListManagementOptions.IListManagementOptions;
  IListSuppressedDestinationsRequest = AWS.SESv2.Model.ListSuppressedDestinationsRequest.IListSuppressedDestinationsRequest;
  IListSuppressedDestinationsResponse = AWS.SESv2.Model.ListSuppressedDestinationsResponse.IListSuppressedDestinationsResponse;
  IListTagsForResourceRequest = AWS.SESv2.Model.ListTagsForResourceRequest.IListTagsForResourceRequest;
  IListTagsForResourceResponse = AWS.SESv2.Model.ListTagsForResourceResponse.IListTagsForResourceResponse;
  IMailFromAttributes = AWS.SESv2.Model.MailFromAttributes.IMailFromAttributes;
  IMessage = AWS.SESv2.Model.Message.IMessage;
  IMessageTag = AWS.SESv2.Model.MessageTag.IMessageTag;
  IOverallVolume = AWS.SESv2.Model.OverallVolume.IOverallVolume;
  IPinpointDestination = AWS.SESv2.Model.PinpointDestination.IPinpointDestination;
  IPlacementStatistics = AWS.SESv2.Model.PlacementStatistics.IPlacementStatistics;
  IPutAccountDedicatedIpWarmupAttributesRequest = AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesRequest.IPutAccountDedicatedIpWarmupAttributesRequest;
  IPutAccountDedicatedIpWarmupAttributesResponse = AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesResponse.IPutAccountDedicatedIpWarmupAttributesResponse;
  IPutAccountDetailsRequest = AWS.SESv2.Model.PutAccountDetailsRequest.IPutAccountDetailsRequest;
  IPutAccountDetailsResponse = AWS.SESv2.Model.PutAccountDetailsResponse.IPutAccountDetailsResponse;
  IPutAccountSendingAttributesRequest = AWS.SESv2.Model.PutAccountSendingAttributesRequest.IPutAccountSendingAttributesRequest;
  IPutAccountSendingAttributesResponse = AWS.SESv2.Model.PutAccountSendingAttributesResponse.IPutAccountSendingAttributesResponse;
  IPutAccountSuppressionAttributesRequest = AWS.SESv2.Model.PutAccountSuppressionAttributesRequest.IPutAccountSuppressionAttributesRequest;
  IPutAccountSuppressionAttributesResponse = AWS.SESv2.Model.PutAccountSuppressionAttributesResponse.IPutAccountSuppressionAttributesResponse;
  IPutConfigurationSetDeliveryOptionsRequest = AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsRequest.IPutConfigurationSetDeliveryOptionsRequest;
  IPutConfigurationSetDeliveryOptionsResponse = AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsResponse.IPutConfigurationSetDeliveryOptionsResponse;
  IPutConfigurationSetReputationOptionsRequest = AWS.SESv2.Model.PutConfigurationSetReputationOptionsRequest.IPutConfigurationSetReputationOptionsRequest;
  IPutConfigurationSetReputationOptionsResponse = AWS.SESv2.Model.PutConfigurationSetReputationOptionsResponse.IPutConfigurationSetReputationOptionsResponse;
  IPutConfigurationSetSendingOptionsRequest = AWS.SESv2.Model.PutConfigurationSetSendingOptionsRequest.IPutConfigurationSetSendingOptionsRequest;
  IPutConfigurationSetSendingOptionsResponse = AWS.SESv2.Model.PutConfigurationSetSendingOptionsResponse.IPutConfigurationSetSendingOptionsResponse;
  IPutConfigurationSetSuppressionOptionsRequest = AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsRequest.IPutConfigurationSetSuppressionOptionsRequest;
  IPutConfigurationSetSuppressionOptionsResponse = AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsResponse.IPutConfigurationSetSuppressionOptionsResponse;
  IPutConfigurationSetTrackingOptionsRequest = AWS.SESv2.Model.PutConfigurationSetTrackingOptionsRequest.IPutConfigurationSetTrackingOptionsRequest;
  IPutConfigurationSetTrackingOptionsResponse = AWS.SESv2.Model.PutConfigurationSetTrackingOptionsResponse.IPutConfigurationSetTrackingOptionsResponse;
  IPutDedicatedIpInPoolRequest = AWS.SESv2.Model.PutDedicatedIpInPoolRequest.IPutDedicatedIpInPoolRequest;
  IPutDedicatedIpInPoolResponse = AWS.SESv2.Model.PutDedicatedIpInPoolResponse.IPutDedicatedIpInPoolResponse;
  IPutDedicatedIpWarmupAttributesRequest = AWS.SESv2.Model.PutDedicatedIpWarmupAttributesRequest.IPutDedicatedIpWarmupAttributesRequest;
  IPutDedicatedIpWarmupAttributesResponse = AWS.SESv2.Model.PutDedicatedIpWarmupAttributesResponse.IPutDedicatedIpWarmupAttributesResponse;
  IPutDeliverabilityDashboardOptionRequest = AWS.SESv2.Model.PutDeliverabilityDashboardOptionRequest.IPutDeliverabilityDashboardOptionRequest;
  IPutDeliverabilityDashboardOptionResponse = AWS.SESv2.Model.PutDeliverabilityDashboardOptionResponse.IPutDeliverabilityDashboardOptionResponse;
  IPutEmailIdentityConfigurationSetAttributesRequest = AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesRequest.IPutEmailIdentityConfigurationSetAttributesRequest;
  IPutEmailIdentityConfigurationSetAttributesResponse = AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesResponse.IPutEmailIdentityConfigurationSetAttributesResponse;
  IPutEmailIdentityDkimAttributesRequest = AWS.SESv2.Model.PutEmailIdentityDkimAttributesRequest.IPutEmailIdentityDkimAttributesRequest;
  IPutEmailIdentityDkimAttributesResponse = AWS.SESv2.Model.PutEmailIdentityDkimAttributesResponse.IPutEmailIdentityDkimAttributesResponse;
  IPutEmailIdentityDkimSigningAttributesRequest = AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesRequest.IPutEmailIdentityDkimSigningAttributesRequest;
  IPutEmailIdentityDkimSigningAttributesResponse = AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesResponse.IPutEmailIdentityDkimSigningAttributesResponse;
  IPutEmailIdentityFeedbackAttributesRequest = AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesRequest.IPutEmailIdentityFeedbackAttributesRequest;
  IPutEmailIdentityFeedbackAttributesResponse = AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesResponse.IPutEmailIdentityFeedbackAttributesResponse;
  IPutEmailIdentityMailFromAttributesRequest = AWS.SESv2.Model.PutEmailIdentityMailFromAttributesRequest.IPutEmailIdentityMailFromAttributesRequest;
  IPutEmailIdentityMailFromAttributesResponse = AWS.SESv2.Model.PutEmailIdentityMailFromAttributesResponse.IPutEmailIdentityMailFromAttributesResponse;
  IPutSuppressedDestinationRequest = AWS.SESv2.Model.PutSuppressedDestinationRequest.IPutSuppressedDestinationRequest;
  IPutSuppressedDestinationResponse = AWS.SESv2.Model.PutSuppressedDestinationResponse.IPutSuppressedDestinationResponse;
  IRawMessage = AWS.SESv2.Model.RawMessage.IRawMessage;
  IReplacementEmailContent = AWS.SESv2.Model.ReplacementEmailContent.IReplacementEmailContent;
  IReplacementTemplate = AWS.SESv2.Model.ReplacementTemplate.IReplacementTemplate;
  IReputationOptions = AWS.SESv2.Model.ReputationOptions.IReputationOptions;
  IReviewDetails = AWS.SESv2.Model.ReviewDetails.IReviewDetails;
  ISendBulkEmailRequest = AWS.SESv2.Model.SendBulkEmailRequest.ISendBulkEmailRequest;
  ISendBulkEmailResponse = AWS.SESv2.Model.SendBulkEmailResponse.ISendBulkEmailResponse;
  ISendCustomVerificationEmailRequest = AWS.SESv2.Model.SendCustomVerificationEmailRequest.ISendCustomVerificationEmailRequest;
  ISendCustomVerificationEmailResponse = AWS.SESv2.Model.SendCustomVerificationEmailResponse.ISendCustomVerificationEmailResponse;
  ISendEmailRequest = AWS.SESv2.Model.SendEmailRequest.ISendEmailRequest;
  ISendEmailResponse = AWS.SESv2.Model.SendEmailResponse.ISendEmailResponse;
  ISendingOptions = AWS.SESv2.Model.SendingOptions.ISendingOptions;
  ISendQuota = AWS.SESv2.Model.SendQuota.ISendQuota;
  ISnsDestination = AWS.SESv2.Model.SnsDestination.ISnsDestination;
  ISuppressedDestination = AWS.SESv2.Model.SuppressedDestination.ISuppressedDestination;
  ISuppressedDestinationAttributes = AWS.SESv2.Model.SuppressedDestinationAttributes.ISuppressedDestinationAttributes;
  ISuppressedDestinationSummary = AWS.SESv2.Model.SuppressedDestinationSummary.ISuppressedDestinationSummary;
  ISuppressionAttributes = AWS.SESv2.Model.SuppressionAttributes.ISuppressionAttributes;
  ISuppressionListDestination = AWS.SESv2.Model.SuppressionListDestination.ISuppressionListDestination;
  ISuppressionOptions = AWS.SESv2.Model.SuppressionOptions.ISuppressionOptions;
  ITag = AWS.SESv2.Model.Tag.ITag;
  ITagResourceRequest = AWS.SESv2.Model.TagResourceRequest.ITagResourceRequest;
  ITagResourceResponse = AWS.SESv2.Model.TagResourceResponse.ITagResourceResponse;
  ITemplate = AWS.SESv2.Model.Template.ITemplate;
  ITestRenderEmailTemplateRequest = AWS.SESv2.Model.TestRenderEmailTemplateRequest.ITestRenderEmailTemplateRequest;
  ITestRenderEmailTemplateResponse = AWS.SESv2.Model.TestRenderEmailTemplateResponse.ITestRenderEmailTemplateResponse;
  ITopic = AWS.SESv2.Model.Topic.ITopic;
  ITopicFilter = AWS.SESv2.Model.TopicFilter.ITopicFilter;
  ITopicPreference = AWS.SESv2.Model.TopicPreference.ITopicPreference;
  ITrackingOptions = AWS.SESv2.Model.TrackingOptions.ITrackingOptions;
  IUntagResourceRequest = AWS.SESv2.Model.UntagResourceRequest.IUntagResourceRequest;
  IUntagResourceResponse = AWS.SESv2.Model.UntagResourceResponse.IUntagResourceResponse;
  IUpdateConfigurationSetEventDestinationRequest = AWS.SESv2.Model.UpdateConfigurationSetEventDestinationRequest.IUpdateConfigurationSetEventDestinationRequest;
  IUpdateConfigurationSetEventDestinationResponse = AWS.SESv2.Model.UpdateConfigurationSetEventDestinationResponse.IUpdateConfigurationSetEventDestinationResponse;
  IUpdateContactListRequest = AWS.SESv2.Model.UpdateContactListRequest.IUpdateContactListRequest;
  IUpdateContactListResponse = AWS.SESv2.Model.UpdateContactListResponse.IUpdateContactListResponse;
  IUpdateContactRequest = AWS.SESv2.Model.UpdateContactRequest.IUpdateContactRequest;
  IUpdateContactResponse = AWS.SESv2.Model.UpdateContactResponse.IUpdateContactResponse;
  IUpdateCustomVerificationEmailTemplateRequest = AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateRequest.IUpdateCustomVerificationEmailTemplateRequest;
  IUpdateCustomVerificationEmailTemplateResponse = AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateResponse.IUpdateCustomVerificationEmailTemplateResponse;
  IUpdateEmailIdentityPolicyRequest = AWS.SESv2.Model.UpdateEmailIdentityPolicyRequest.IUpdateEmailIdentityPolicyRequest;
  IUpdateEmailIdentityPolicyResponse = AWS.SESv2.Model.UpdateEmailIdentityPolicyResponse.IUpdateEmailIdentityPolicyResponse;
  IUpdateEmailTemplateRequest = AWS.SESv2.Model.UpdateEmailTemplateRequest.IUpdateEmailTemplateRequest;
  IUpdateEmailTemplateResponse = AWS.SESv2.Model.UpdateEmailTemplateResponse.IUpdateEmailTemplateResponse;
  IVolumeStatistics = AWS.SESv2.Model.VolumeStatistics.IVolumeStatistics;
  TAccountDetails = AWS.SESv2.Model.AccountDetails.TAccountDetails;
  TAmazonSimpleEmailServiceV2Client = AWS.SESv2.Client.TAmazonSimpleEmailServiceV2Client;
  TAmazonSimpleEmailServiceV2Config = AWS.SESv2.Config.TAmazonSimpleEmailServiceV2Config;
  TAmazonSimpleEmailServiceV2Metadata = AWS.SESv2.Metadata.TAmazonSimpleEmailServiceV2Metadata;
  TAmazonSimpleEmailServiceV2Request = AWS.SESv2.Model.Request.TAmazonSimpleEmailServiceV2Request;
  TBehaviorOnMxFailure = AWS.SESv2.Enums.TBehaviorOnMxFailure;
  TBlacklistEntry = AWS.SESv2.Model.BlacklistEntry.TBlacklistEntry;
  TBody = AWS.SESv2.Model.Body.TBody;
  TBulkEmailContent = AWS.SESv2.Model.BulkEmailContent.TBulkEmailContent;
  TBulkEmailEntry = AWS.SESv2.Model.BulkEmailEntry.TBulkEmailEntry;
  TBulkEmailEntryResult = AWS.SESv2.Model.BulkEmailEntryResult.TBulkEmailEntryResult;
  TBulkEmailStatus = AWS.SESv2.Enums.TBulkEmailStatus;
  TCloudWatchDestination = AWS.SESv2.Model.CloudWatchDestination.TCloudWatchDestination;
  TCloudWatchDimensionConfiguration = AWS.SESv2.Model.CloudWatchDimensionConfiguration.TCloudWatchDimensionConfiguration;
  TContact = AWS.SESv2.Model.Contact.TContact;
  TContactLanguage = AWS.SESv2.Enums.TContactLanguage;
  TContactList = AWS.SESv2.Model.ContactList.TContactList;
  TContactListDestination = AWS.SESv2.Model.ContactListDestination.TContactListDestination;
  TContactListImportAction = AWS.SESv2.Enums.TContactListImportAction;
  TContent = AWS.SESv2.Model.Content.TContent;
  TCreateConfigurationSetEventDestinationRequest = AWS.SESv2.Model.CreateConfigurationSetEventDestinationRequest.TCreateConfigurationSetEventDestinationRequest;
  TCreateConfigurationSetEventDestinationResponse = AWS.SESv2.Model.CreateConfigurationSetEventDestinationResponse.TCreateConfigurationSetEventDestinationResponse;
  TCreateConfigurationSetRequest = AWS.SESv2.Model.CreateConfigurationSetRequest.TCreateConfigurationSetRequest;
  TCreateConfigurationSetResponse = AWS.SESv2.Model.CreateConfigurationSetResponse.TCreateConfigurationSetResponse;
  TCreateContactListRequest = AWS.SESv2.Model.CreateContactListRequest.TCreateContactListRequest;
  TCreateContactListResponse = AWS.SESv2.Model.CreateContactListResponse.TCreateContactListResponse;
  TCreateContactRequest = AWS.SESv2.Model.CreateContactRequest.TCreateContactRequest;
  TCreateContactResponse = AWS.SESv2.Model.CreateContactResponse.TCreateContactResponse;
  TCreateCustomVerificationEmailTemplateRequest = AWS.SESv2.Model.CreateCustomVerificationEmailTemplateRequest.TCreateCustomVerificationEmailTemplateRequest;
  TCreateCustomVerificationEmailTemplateResponse = AWS.SESv2.Model.CreateCustomVerificationEmailTemplateResponse.TCreateCustomVerificationEmailTemplateResponse;
  TCreateDedicatedIpPoolRequest = AWS.SESv2.Model.CreateDedicatedIpPoolRequest.TCreateDedicatedIpPoolRequest;
  TCreateDedicatedIpPoolResponse = AWS.SESv2.Model.CreateDedicatedIpPoolResponse.TCreateDedicatedIpPoolResponse;
  TCreateDeliverabilityTestReportRequest = AWS.SESv2.Model.CreateDeliverabilityTestReportRequest.TCreateDeliverabilityTestReportRequest;
  TCreateDeliverabilityTestReportResponse = AWS.SESv2.Model.CreateDeliverabilityTestReportResponse.TCreateDeliverabilityTestReportResponse;
  TCreateEmailIdentityPolicyRequest = AWS.SESv2.Model.CreateEmailIdentityPolicyRequest.TCreateEmailIdentityPolicyRequest;
  TCreateEmailIdentityPolicyResponse = AWS.SESv2.Model.CreateEmailIdentityPolicyResponse.TCreateEmailIdentityPolicyResponse;
  TCreateEmailIdentityRequest = AWS.SESv2.Model.CreateEmailIdentityRequest.TCreateEmailIdentityRequest;
  TCreateEmailIdentityResponse = AWS.SESv2.Model.CreateEmailIdentityResponse.TCreateEmailIdentityResponse;
  TCreateEmailTemplateRequest = AWS.SESv2.Model.CreateEmailTemplateRequest.TCreateEmailTemplateRequest;
  TCreateEmailTemplateResponse = AWS.SESv2.Model.CreateEmailTemplateResponse.TCreateEmailTemplateResponse;
  TCreateImportJobRequest = AWS.SESv2.Model.CreateImportJobRequest.TCreateImportJobRequest;
  TCreateImportJobResponse = AWS.SESv2.Model.CreateImportJobResponse.TCreateImportJobResponse;
  TCustomVerificationEmailTemplateMetadata = AWS.SESv2.Model.CustomVerificationEmailTemplateMetadata.TCustomVerificationEmailTemplateMetadata;
  TDailyVolume = AWS.SESv2.Model.DailyVolume.TDailyVolume;
  TDataFormat = AWS.SESv2.Enums.TDataFormat;
  TDedicatedIp = AWS.SESv2.Model.DedicatedIp.TDedicatedIp;
  TDeleteConfigurationSetEventDestinationRequest = AWS.SESv2.Model.DeleteConfigurationSetEventDestinationRequest.TDeleteConfigurationSetEventDestinationRequest;
  TDeleteConfigurationSetEventDestinationResponse = AWS.SESv2.Model.DeleteConfigurationSetEventDestinationResponse.TDeleteConfigurationSetEventDestinationResponse;
  TDeleteConfigurationSetRequest = AWS.SESv2.Model.DeleteConfigurationSetRequest.TDeleteConfigurationSetRequest;
  TDeleteConfigurationSetResponse = AWS.SESv2.Model.DeleteConfigurationSetResponse.TDeleteConfigurationSetResponse;
  TDeleteContactListRequest = AWS.SESv2.Model.DeleteContactListRequest.TDeleteContactListRequest;
  TDeleteContactListResponse = AWS.SESv2.Model.DeleteContactListResponse.TDeleteContactListResponse;
  TDeleteContactRequest = AWS.SESv2.Model.DeleteContactRequest.TDeleteContactRequest;
  TDeleteContactResponse = AWS.SESv2.Model.DeleteContactResponse.TDeleteContactResponse;
  TDeleteCustomVerificationEmailTemplateRequest = AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateRequest.TDeleteCustomVerificationEmailTemplateRequest;
  TDeleteCustomVerificationEmailTemplateResponse = AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateResponse.TDeleteCustomVerificationEmailTemplateResponse;
  TDeleteDedicatedIpPoolRequest = AWS.SESv2.Model.DeleteDedicatedIpPoolRequest.TDeleteDedicatedIpPoolRequest;
  TDeleteDedicatedIpPoolResponse = AWS.SESv2.Model.DeleteDedicatedIpPoolResponse.TDeleteDedicatedIpPoolResponse;
  TDeleteEmailIdentityPolicyRequest = AWS.SESv2.Model.DeleteEmailIdentityPolicyRequest.TDeleteEmailIdentityPolicyRequest;
  TDeleteEmailIdentityPolicyResponse = AWS.SESv2.Model.DeleteEmailIdentityPolicyResponse.TDeleteEmailIdentityPolicyResponse;
  TDeleteEmailIdentityRequest = AWS.SESv2.Model.DeleteEmailIdentityRequest.TDeleteEmailIdentityRequest;
  TDeleteEmailIdentityResponse = AWS.SESv2.Model.DeleteEmailIdentityResponse.TDeleteEmailIdentityResponse;
  TDeleteEmailTemplateRequest = AWS.SESv2.Model.DeleteEmailTemplateRequest.TDeleteEmailTemplateRequest;
  TDeleteEmailTemplateResponse = AWS.SESv2.Model.DeleteEmailTemplateResponse.TDeleteEmailTemplateResponse;
  TDeleteSuppressedDestinationRequest = AWS.SESv2.Model.DeleteSuppressedDestinationRequest.TDeleteSuppressedDestinationRequest;
  TDeleteSuppressedDestinationResponse = AWS.SESv2.Model.DeleteSuppressedDestinationResponse.TDeleteSuppressedDestinationResponse;
  TDeliverabilityDashboardAccountStatus = AWS.SESv2.Enums.TDeliverabilityDashboardAccountStatus;
  TDeliverabilityTestReport = AWS.SESv2.Model.DeliverabilityTestReport.TDeliverabilityTestReport;
  TDeliverabilityTestStatus = AWS.SESv2.Enums.TDeliverabilityTestStatus;
  TDeliveryOptions = AWS.SESv2.Model.DeliveryOptions.TDeliveryOptions;
  TDestination = AWS.SESv2.Model.Destination.TDestination;
  TDimensionValueSource = AWS.SESv2.Enums.TDimensionValueSource;
  TDkimAttributes = AWS.SESv2.Model.DkimAttributes.TDkimAttributes;
  TDkimSigningAttributes = AWS.SESv2.Model.DkimSigningAttributes.TDkimSigningAttributes;
  TDkimSigningAttributesOrigin = AWS.SESv2.Enums.TDkimSigningAttributesOrigin;
  TDkimStatus = AWS.SESv2.Enums.TDkimStatus;
  TDomainDeliverabilityCampaign = AWS.SESv2.Model.DomainDeliverabilityCampaign.TDomainDeliverabilityCampaign;
  TDomainDeliverabilityTrackingOption = AWS.SESv2.Model.DomainDeliverabilityTrackingOption.TDomainDeliverabilityTrackingOption;
  TDomainIspPlacement = AWS.SESv2.Model.DomainIspPlacement.TDomainIspPlacement;
  TEmailContent = AWS.SESv2.Model.EmailContent.TEmailContent;
  TEmailTemplateContent = AWS.SESv2.Model.EmailTemplateContent.TEmailTemplateContent;
  TEmailTemplateMetadata = AWS.SESv2.Model.EmailTemplateMetadata.TEmailTemplateMetadata;
  TEventDestination = AWS.SESv2.Model.EventDestination.TEventDestination;
  TEventDestinationDefinition = AWS.SESv2.Model.EventDestinationDefinition.TEventDestinationDefinition;
  TEventType = AWS.SESv2.Enums.TEventType;
  TFailureInfo = AWS.SESv2.Model.FailureInfo.TFailureInfo;
  TGetAccountRequest = AWS.SESv2.Model.GetAccountRequest.TGetAccountRequest;
  TGetAccountResponse = AWS.SESv2.Model.GetAccountResponse.TGetAccountResponse;
  TGetBlacklistReportsRequest = AWS.SESv2.Model.GetBlacklistReportsRequest.TGetBlacklistReportsRequest;
  TGetBlacklistReportsResponse = AWS.SESv2.Model.GetBlacklistReportsResponse.TGetBlacklistReportsResponse;
  TGetConfigurationSetEventDestinationsRequest = AWS.SESv2.Model.GetConfigurationSetEventDestinationsRequest.TGetConfigurationSetEventDestinationsRequest;
  TGetConfigurationSetEventDestinationsResponse = AWS.SESv2.Model.GetConfigurationSetEventDestinationsResponse.TGetConfigurationSetEventDestinationsResponse;
  TGetConfigurationSetRequest = AWS.SESv2.Model.GetConfigurationSetRequest.TGetConfigurationSetRequest;
  TGetConfigurationSetResponse = AWS.SESv2.Model.GetConfigurationSetResponse.TGetConfigurationSetResponse;
  TGetContactListRequest = AWS.SESv2.Model.GetContactListRequest.TGetContactListRequest;
  TGetContactListResponse = AWS.SESv2.Model.GetContactListResponse.TGetContactListResponse;
  TGetContactRequest = AWS.SESv2.Model.GetContactRequest.TGetContactRequest;
  TGetContactResponse = AWS.SESv2.Model.GetContactResponse.TGetContactResponse;
  TGetCustomVerificationEmailTemplateRequest = AWS.SESv2.Model.GetCustomVerificationEmailTemplateRequest.TGetCustomVerificationEmailTemplateRequest;
  TGetCustomVerificationEmailTemplateResponse = AWS.SESv2.Model.GetCustomVerificationEmailTemplateResponse.TGetCustomVerificationEmailTemplateResponse;
  TGetDedicatedIpRequest = AWS.SESv2.Model.GetDedicatedIpRequest.TGetDedicatedIpRequest;
  TGetDedicatedIpResponse = AWS.SESv2.Model.GetDedicatedIpResponse.TGetDedicatedIpResponse;
  TGetDedicatedIpsRequest = AWS.SESv2.Model.GetDedicatedIpsRequest.TGetDedicatedIpsRequest;
  TGetDedicatedIpsResponse = AWS.SESv2.Model.GetDedicatedIpsResponse.TGetDedicatedIpsResponse;
  TGetDeliverabilityDashboardOptionsRequest = AWS.SESv2.Model.GetDeliverabilityDashboardOptionsRequest.TGetDeliverabilityDashboardOptionsRequest;
  TGetDeliverabilityDashboardOptionsResponse = AWS.SESv2.Model.GetDeliverabilityDashboardOptionsResponse.TGetDeliverabilityDashboardOptionsResponse;
  TGetDeliverabilityTestReportRequest = AWS.SESv2.Model.GetDeliverabilityTestReportRequest.TGetDeliverabilityTestReportRequest;
  TGetDeliverabilityTestReportResponse = AWS.SESv2.Model.GetDeliverabilityTestReportResponse.TGetDeliverabilityTestReportResponse;
  TGetDomainDeliverabilityCampaignRequest = AWS.SESv2.Model.GetDomainDeliverabilityCampaignRequest.TGetDomainDeliverabilityCampaignRequest;
  TGetDomainDeliverabilityCampaignResponse = AWS.SESv2.Model.GetDomainDeliverabilityCampaignResponse.TGetDomainDeliverabilityCampaignResponse;
  TGetDomainStatisticsReportRequest = AWS.SESv2.Model.GetDomainStatisticsReportRequest.TGetDomainStatisticsReportRequest;
  TGetDomainStatisticsReportResponse = AWS.SESv2.Model.GetDomainStatisticsReportResponse.TGetDomainStatisticsReportResponse;
  TGetEmailIdentityPoliciesRequest = AWS.SESv2.Model.GetEmailIdentityPoliciesRequest.TGetEmailIdentityPoliciesRequest;
  TGetEmailIdentityPoliciesResponse = AWS.SESv2.Model.GetEmailIdentityPoliciesResponse.TGetEmailIdentityPoliciesResponse;
  TGetEmailIdentityRequest = AWS.SESv2.Model.GetEmailIdentityRequest.TGetEmailIdentityRequest;
  TGetEmailIdentityResponse = AWS.SESv2.Model.GetEmailIdentityResponse.TGetEmailIdentityResponse;
  TGetEmailTemplateRequest = AWS.SESv2.Model.GetEmailTemplateRequest.TGetEmailTemplateRequest;
  TGetEmailTemplateResponse = AWS.SESv2.Model.GetEmailTemplateResponse.TGetEmailTemplateResponse;
  TGetImportJobRequest = AWS.SESv2.Model.GetImportJobRequest.TGetImportJobRequest;
  TGetImportJobResponse = AWS.SESv2.Model.GetImportJobResponse.TGetImportJobResponse;
  TGetSuppressedDestinationRequest = AWS.SESv2.Model.GetSuppressedDestinationRequest.TGetSuppressedDestinationRequest;
  TGetSuppressedDestinationResponse = AWS.SESv2.Model.GetSuppressedDestinationResponse.TGetSuppressedDestinationResponse;
  TIdentityInfo = AWS.SESv2.Model.IdentityInfo.TIdentityInfo;
  TIdentityType = AWS.SESv2.Enums.TIdentityType;
  TImportDataSource = AWS.SESv2.Model.ImportDataSource.TImportDataSource;
  TImportDestination = AWS.SESv2.Model.ImportDestination.TImportDestination;
  TImportDestinationType = AWS.SESv2.Enums.TImportDestinationType;
  TImportJobSummary = AWS.SESv2.Model.ImportJobSummary.TImportJobSummary;
  TInboxPlacementTrackingOption = AWS.SESv2.Model.InboxPlacementTrackingOption.TInboxPlacementTrackingOption;
  TIspPlacement = AWS.SESv2.Model.IspPlacement.TIspPlacement;
  TJobStatus = AWS.SESv2.Enums.TJobStatus;
  TKinesisFirehoseDestination = AWS.SESv2.Model.KinesisFirehoseDestination.TKinesisFirehoseDestination;
  TListConfigurationSetsRequest = AWS.SESv2.Model.ListConfigurationSetsRequest.TListConfigurationSetsRequest;
  TListConfigurationSetsResponse = AWS.SESv2.Model.ListConfigurationSetsResponse.TListConfigurationSetsResponse;
  TListContactListsRequest = AWS.SESv2.Model.ListContactListsRequest.TListContactListsRequest;
  TListContactListsResponse = AWS.SESv2.Model.ListContactListsResponse.TListContactListsResponse;
  TListContactsFilter = AWS.SESv2.Model.ListContactsFilter.TListContactsFilter;
  TListContactsRequest = AWS.SESv2.Model.ListContactsRequest.TListContactsRequest;
  TListContactsResponse = AWS.SESv2.Model.ListContactsResponse.TListContactsResponse;
  TListCustomVerificationEmailTemplatesRequest = AWS.SESv2.Model.ListCustomVerificationEmailTemplatesRequest.TListCustomVerificationEmailTemplatesRequest;
  TListCustomVerificationEmailTemplatesResponse = AWS.SESv2.Model.ListCustomVerificationEmailTemplatesResponse.TListCustomVerificationEmailTemplatesResponse;
  TListDedicatedIpPoolsRequest = AWS.SESv2.Model.ListDedicatedIpPoolsRequest.TListDedicatedIpPoolsRequest;
  TListDedicatedIpPoolsResponse = AWS.SESv2.Model.ListDedicatedIpPoolsResponse.TListDedicatedIpPoolsResponse;
  TListDeliverabilityTestReportsRequest = AWS.SESv2.Model.ListDeliverabilityTestReportsRequest.TListDeliverabilityTestReportsRequest;
  TListDeliverabilityTestReportsResponse = AWS.SESv2.Model.ListDeliverabilityTestReportsResponse.TListDeliverabilityTestReportsResponse;
  TListDomainDeliverabilityCampaignsRequest = AWS.SESv2.Model.ListDomainDeliverabilityCampaignsRequest.TListDomainDeliverabilityCampaignsRequest;
  TListDomainDeliverabilityCampaignsResponse = AWS.SESv2.Model.ListDomainDeliverabilityCampaignsResponse.TListDomainDeliverabilityCampaignsResponse;
  TListEmailIdentitiesRequest = AWS.SESv2.Model.ListEmailIdentitiesRequest.TListEmailIdentitiesRequest;
  TListEmailIdentitiesResponse = AWS.SESv2.Model.ListEmailIdentitiesResponse.TListEmailIdentitiesResponse;
  TListEmailTemplatesRequest = AWS.SESv2.Model.ListEmailTemplatesRequest.TListEmailTemplatesRequest;
  TListEmailTemplatesResponse = AWS.SESv2.Model.ListEmailTemplatesResponse.TListEmailTemplatesResponse;
  TListImportJobsRequest = AWS.SESv2.Model.ListImportJobsRequest.TListImportJobsRequest;
  TListImportJobsResponse = AWS.SESv2.Model.ListImportJobsResponse.TListImportJobsResponse;
  TListManagementOptions = AWS.SESv2.Model.ListManagementOptions.TListManagementOptions;
  TListSuppressedDestinationsRequest = AWS.SESv2.Model.ListSuppressedDestinationsRequest.TListSuppressedDestinationsRequest;
  TListSuppressedDestinationsResponse = AWS.SESv2.Model.ListSuppressedDestinationsResponse.TListSuppressedDestinationsResponse;
  TListTagsForResourceRequest = AWS.SESv2.Model.ListTagsForResourceRequest.TListTagsForResourceRequest;
  TListTagsForResourceResponse = AWS.SESv2.Model.ListTagsForResourceResponse.TListTagsForResourceResponse;
  TMailFromAttributes = AWS.SESv2.Model.MailFromAttributes.TMailFromAttributes;
  TMailFromDomainStatus = AWS.SESv2.Enums.TMailFromDomainStatus;
  TMailType = AWS.SESv2.Enums.TMailType;
  TMessage = AWS.SESv2.Model.Message.TMessage;
  TMessageTag = AWS.SESv2.Model.MessageTag.TMessageTag;
  TOverallVolume = AWS.SESv2.Model.OverallVolume.TOverallVolume;
  TPinpointDestination = AWS.SESv2.Model.PinpointDestination.TPinpointDestination;
  TPlacementStatistics = AWS.SESv2.Model.PlacementStatistics.TPlacementStatistics;
  TPutAccountDedicatedIpWarmupAttributesRequest = AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesRequest.TPutAccountDedicatedIpWarmupAttributesRequest;
  TPutAccountDedicatedIpWarmupAttributesResponse = AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesResponse.TPutAccountDedicatedIpWarmupAttributesResponse;
  TPutAccountDetailsRequest = AWS.SESv2.Model.PutAccountDetailsRequest.TPutAccountDetailsRequest;
  TPutAccountDetailsResponse = AWS.SESv2.Model.PutAccountDetailsResponse.TPutAccountDetailsResponse;
  TPutAccountSendingAttributesRequest = AWS.SESv2.Model.PutAccountSendingAttributesRequest.TPutAccountSendingAttributesRequest;
  TPutAccountSendingAttributesResponse = AWS.SESv2.Model.PutAccountSendingAttributesResponse.TPutAccountSendingAttributesResponse;
  TPutAccountSuppressionAttributesRequest = AWS.SESv2.Model.PutAccountSuppressionAttributesRequest.TPutAccountSuppressionAttributesRequest;
  TPutAccountSuppressionAttributesResponse = AWS.SESv2.Model.PutAccountSuppressionAttributesResponse.TPutAccountSuppressionAttributesResponse;
  TPutConfigurationSetDeliveryOptionsRequest = AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsRequest.TPutConfigurationSetDeliveryOptionsRequest;
  TPutConfigurationSetDeliveryOptionsResponse = AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsResponse.TPutConfigurationSetDeliveryOptionsResponse;
  TPutConfigurationSetReputationOptionsRequest = AWS.SESv2.Model.PutConfigurationSetReputationOptionsRequest.TPutConfigurationSetReputationOptionsRequest;
  TPutConfigurationSetReputationOptionsResponse = AWS.SESv2.Model.PutConfigurationSetReputationOptionsResponse.TPutConfigurationSetReputationOptionsResponse;
  TPutConfigurationSetSendingOptionsRequest = AWS.SESv2.Model.PutConfigurationSetSendingOptionsRequest.TPutConfigurationSetSendingOptionsRequest;
  TPutConfigurationSetSendingOptionsResponse = AWS.SESv2.Model.PutConfigurationSetSendingOptionsResponse.TPutConfigurationSetSendingOptionsResponse;
  TPutConfigurationSetSuppressionOptionsRequest = AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsRequest.TPutConfigurationSetSuppressionOptionsRequest;
  TPutConfigurationSetSuppressionOptionsResponse = AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsResponse.TPutConfigurationSetSuppressionOptionsResponse;
  TPutConfigurationSetTrackingOptionsRequest = AWS.SESv2.Model.PutConfigurationSetTrackingOptionsRequest.TPutConfigurationSetTrackingOptionsRequest;
  TPutConfigurationSetTrackingOptionsResponse = AWS.SESv2.Model.PutConfigurationSetTrackingOptionsResponse.TPutConfigurationSetTrackingOptionsResponse;
  TPutDedicatedIpInPoolRequest = AWS.SESv2.Model.PutDedicatedIpInPoolRequest.TPutDedicatedIpInPoolRequest;
  TPutDedicatedIpInPoolResponse = AWS.SESv2.Model.PutDedicatedIpInPoolResponse.TPutDedicatedIpInPoolResponse;
  TPutDedicatedIpWarmupAttributesRequest = AWS.SESv2.Model.PutDedicatedIpWarmupAttributesRequest.TPutDedicatedIpWarmupAttributesRequest;
  TPutDedicatedIpWarmupAttributesResponse = AWS.SESv2.Model.PutDedicatedIpWarmupAttributesResponse.TPutDedicatedIpWarmupAttributesResponse;
  TPutDeliverabilityDashboardOptionRequest = AWS.SESv2.Model.PutDeliverabilityDashboardOptionRequest.TPutDeliverabilityDashboardOptionRequest;
  TPutDeliverabilityDashboardOptionResponse = AWS.SESv2.Model.PutDeliverabilityDashboardOptionResponse.TPutDeliverabilityDashboardOptionResponse;
  TPutEmailIdentityConfigurationSetAttributesRequest = AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesRequest.TPutEmailIdentityConfigurationSetAttributesRequest;
  TPutEmailIdentityConfigurationSetAttributesResponse = AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesResponse.TPutEmailIdentityConfigurationSetAttributesResponse;
  TPutEmailIdentityDkimAttributesRequest = AWS.SESv2.Model.PutEmailIdentityDkimAttributesRequest.TPutEmailIdentityDkimAttributesRequest;
  TPutEmailIdentityDkimAttributesResponse = AWS.SESv2.Model.PutEmailIdentityDkimAttributesResponse.TPutEmailIdentityDkimAttributesResponse;
  TPutEmailIdentityDkimSigningAttributesRequest = AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesRequest.TPutEmailIdentityDkimSigningAttributesRequest;
  TPutEmailIdentityDkimSigningAttributesResponse = AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesResponse.TPutEmailIdentityDkimSigningAttributesResponse;
  TPutEmailIdentityFeedbackAttributesRequest = AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesRequest.TPutEmailIdentityFeedbackAttributesRequest;
  TPutEmailIdentityFeedbackAttributesResponse = AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesResponse.TPutEmailIdentityFeedbackAttributesResponse;
  TPutEmailIdentityMailFromAttributesRequest = AWS.SESv2.Model.PutEmailIdentityMailFromAttributesRequest.TPutEmailIdentityMailFromAttributesRequest;
  TPutEmailIdentityMailFromAttributesResponse = AWS.SESv2.Model.PutEmailIdentityMailFromAttributesResponse.TPutEmailIdentityMailFromAttributesResponse;
  TPutSuppressedDestinationRequest = AWS.SESv2.Model.PutSuppressedDestinationRequest.TPutSuppressedDestinationRequest;
  TPutSuppressedDestinationResponse = AWS.SESv2.Model.PutSuppressedDestinationResponse.TPutSuppressedDestinationResponse;
  TRawMessage = AWS.SESv2.Model.RawMessage.TRawMessage;
  TReplacementEmailContent = AWS.SESv2.Model.ReplacementEmailContent.TReplacementEmailContent;
  TReplacementTemplate = AWS.SESv2.Model.ReplacementTemplate.TReplacementTemplate;
  TReputationOptions = AWS.SESv2.Model.ReputationOptions.TReputationOptions;
  TReviewDetails = AWS.SESv2.Model.ReviewDetails.TReviewDetails;
  TReviewStatus = AWS.SESv2.Enums.TReviewStatus;
  TSendBulkEmailRequest = AWS.SESv2.Model.SendBulkEmailRequest.TSendBulkEmailRequest;
  TSendBulkEmailResponse = AWS.SESv2.Model.SendBulkEmailResponse.TSendBulkEmailResponse;
  TSendCustomVerificationEmailRequest = AWS.SESv2.Model.SendCustomVerificationEmailRequest.TSendCustomVerificationEmailRequest;
  TSendCustomVerificationEmailResponse = AWS.SESv2.Model.SendCustomVerificationEmailResponse.TSendCustomVerificationEmailResponse;
  TSendEmailRequest = AWS.SESv2.Model.SendEmailRequest.TSendEmailRequest;
  TSendEmailResponse = AWS.SESv2.Model.SendEmailResponse.TSendEmailResponse;
  TSendingOptions = AWS.SESv2.Model.SendingOptions.TSendingOptions;
  TSendQuota = AWS.SESv2.Model.SendQuota.TSendQuota;
  TSnsDestination = AWS.SESv2.Model.SnsDestination.TSnsDestination;
  TSubscriptionStatus = AWS.SESv2.Enums.TSubscriptionStatus;
  TSuppressedDestination = AWS.SESv2.Model.SuppressedDestination.TSuppressedDestination;
  TSuppressedDestinationAttributes = AWS.SESv2.Model.SuppressedDestinationAttributes.TSuppressedDestinationAttributes;
  TSuppressedDestinationSummary = AWS.SESv2.Model.SuppressedDestinationSummary.TSuppressedDestinationSummary;
  TSuppressionAttributes = AWS.SESv2.Model.SuppressionAttributes.TSuppressionAttributes;
  TSuppressionListDestination = AWS.SESv2.Model.SuppressionListDestination.TSuppressionListDestination;
  TSuppressionListImportAction = AWS.SESv2.Enums.TSuppressionListImportAction;
  TSuppressionListReason = AWS.SESv2.Enums.TSuppressionListReason;
  TSuppressionOptions = AWS.SESv2.Model.SuppressionOptions.TSuppressionOptions;
  TTag = AWS.SESv2.Model.Tag.TTag;
  TTagResourceRequest = AWS.SESv2.Model.TagResourceRequest.TTagResourceRequest;
  TTagResourceResponse = AWS.SESv2.Model.TagResourceResponse.TTagResourceResponse;
  TTemplate = AWS.SESv2.Model.Template.TTemplate;
  TTestRenderEmailTemplateRequest = AWS.SESv2.Model.TestRenderEmailTemplateRequest.TTestRenderEmailTemplateRequest;
  TTestRenderEmailTemplateResponse = AWS.SESv2.Model.TestRenderEmailTemplateResponse.TTestRenderEmailTemplateResponse;
  TTlsPolicy = AWS.SESv2.Enums.TTlsPolicy;
  TTopic = AWS.SESv2.Model.Topic.TTopic;
  TTopicFilter = AWS.SESv2.Model.TopicFilter.TTopicFilter;
  TTopicPreference = AWS.SESv2.Model.TopicPreference.TTopicPreference;
  TTrackingOptions = AWS.SESv2.Model.TrackingOptions.TTrackingOptions;
  TUntagResourceRequest = AWS.SESv2.Model.UntagResourceRequest.TUntagResourceRequest;
  TUntagResourceResponse = AWS.SESv2.Model.UntagResourceResponse.TUntagResourceResponse;
  TUpdateConfigurationSetEventDestinationRequest = AWS.SESv2.Model.UpdateConfigurationSetEventDestinationRequest.TUpdateConfigurationSetEventDestinationRequest;
  TUpdateConfigurationSetEventDestinationResponse = AWS.SESv2.Model.UpdateConfigurationSetEventDestinationResponse.TUpdateConfigurationSetEventDestinationResponse;
  TUpdateContactListRequest = AWS.SESv2.Model.UpdateContactListRequest.TUpdateContactListRequest;
  TUpdateContactListResponse = AWS.SESv2.Model.UpdateContactListResponse.TUpdateContactListResponse;
  TUpdateContactRequest = AWS.SESv2.Model.UpdateContactRequest.TUpdateContactRequest;
  TUpdateContactResponse = AWS.SESv2.Model.UpdateContactResponse.TUpdateContactResponse;
  TUpdateCustomVerificationEmailTemplateRequest = AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateRequest.TUpdateCustomVerificationEmailTemplateRequest;
  TUpdateCustomVerificationEmailTemplateResponse = AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateResponse.TUpdateCustomVerificationEmailTemplateResponse;
  TUpdateEmailIdentityPolicyRequest = AWS.SESv2.Model.UpdateEmailIdentityPolicyRequest.TUpdateEmailIdentityPolicyRequest;
  TUpdateEmailIdentityPolicyResponse = AWS.SESv2.Model.UpdateEmailIdentityPolicyResponse.TUpdateEmailIdentityPolicyResponse;
  TUpdateEmailTemplateRequest = AWS.SESv2.Model.UpdateEmailTemplateRequest.TUpdateEmailTemplateRequest;
  TUpdateEmailTemplateResponse = AWS.SESv2.Model.UpdateEmailTemplateResponse.TUpdateEmailTemplateResponse;
  TVolumeStatistics = AWS.SESv2.Model.VolumeStatistics.TVolumeStatistics;
  TWarmupStatus = AWS.SESv2.Enums.TWarmupStatus;
  
implementation

end.
