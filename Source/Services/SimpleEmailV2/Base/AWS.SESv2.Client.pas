unit AWS.SESv2.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.SESv2.ClientIntf, 
  AWS.SESv2.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.SESv2.Metadata, 
  AWS.Auth.Signer, 
  AWS.SESv2.Model.CreateConfigurationSetResponse, 
  AWS.SESv2.Model.CreateConfigurationSetRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.SESv2.Transform.CreateConfigurationSetRequestMarshaller, 
  AWS.SESv2.Transform.CreateConfigurationSetResponseUnmarshaller, 
  AWS.SESv2.Model.CreateConfigurationSetEventDestinationResponse, 
  AWS.SESv2.Model.CreateConfigurationSetEventDestinationRequest, 
  AWS.SESv2.Transform.CreateConfigurationSetEventDestinationRequestMarshaller, 
  AWS.SESv2.Transform.CreateConfigurationSetEventDestinationResponseUnmarshaller, 
  AWS.SESv2.Model.CreateContactResponse, 
  AWS.SESv2.Model.CreateContactRequest, 
  AWS.SESv2.Transform.CreateContactRequestMarshaller, 
  AWS.SESv2.Transform.CreateContactResponseUnmarshaller, 
  AWS.SESv2.Model.CreateContactListResponse, 
  AWS.SESv2.Model.CreateContactListRequest, 
  AWS.SESv2.Transform.CreateContactListRequestMarshaller, 
  AWS.SESv2.Transform.CreateContactListResponseUnmarshaller, 
  AWS.SESv2.Model.CreateCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.CreateCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Transform.CreateCustomVerificationEmailTemplateRequestMarshaller, 
  AWS.SESv2.Transform.CreateCustomVerificationEmailTemplateResponseUnmarshaller, 
  AWS.SESv2.Model.CreateDedicatedIpPoolResponse, 
  AWS.SESv2.Model.CreateDedicatedIpPoolRequest, 
  AWS.SESv2.Transform.CreateDedicatedIpPoolRequestMarshaller, 
  AWS.SESv2.Transform.CreateDedicatedIpPoolResponseUnmarshaller, 
  AWS.SESv2.Model.CreateDeliverabilityTestReportResponse, 
  AWS.SESv2.Model.CreateDeliverabilityTestReportRequest, 
  AWS.SESv2.Transform.CreateDeliverabilityTestReportRequestMarshaller, 
  AWS.SESv2.Transform.CreateDeliverabilityTestReportResponseUnmarshaller, 
  AWS.SESv2.Model.CreateEmailIdentityResponse, 
  AWS.SESv2.Model.CreateEmailIdentityRequest, 
  AWS.SESv2.Transform.CreateEmailIdentityRequestMarshaller, 
  AWS.SESv2.Transform.CreateEmailIdentityResponseUnmarshaller, 
  AWS.SESv2.Model.CreateEmailIdentityPolicyResponse, 
  AWS.SESv2.Model.CreateEmailIdentityPolicyRequest, 
  AWS.SESv2.Transform.CreateEmailIdentityPolicyRequestMarshaller, 
  AWS.SESv2.Transform.CreateEmailIdentityPolicyResponseUnmarshaller, 
  AWS.SESv2.Model.CreateEmailTemplateResponse, 
  AWS.SESv2.Model.CreateEmailTemplateRequest, 
  AWS.SESv2.Transform.CreateEmailTemplateRequestMarshaller, 
  AWS.SESv2.Transform.CreateEmailTemplateResponseUnmarshaller, 
  AWS.SESv2.Model.CreateImportJobResponse, 
  AWS.SESv2.Model.CreateImportJobRequest, 
  AWS.SESv2.Transform.CreateImportJobRequestMarshaller, 
  AWS.SESv2.Transform.CreateImportJobResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteConfigurationSetResponse, 
  AWS.SESv2.Model.DeleteConfigurationSetRequest, 
  AWS.SESv2.Transform.DeleteConfigurationSetRequestMarshaller, 
  AWS.SESv2.Transform.DeleteConfigurationSetResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteConfigurationSetEventDestinationResponse, 
  AWS.SESv2.Model.DeleteConfigurationSetEventDestinationRequest, 
  AWS.SESv2.Transform.DeleteConfigurationSetEventDestinationRequestMarshaller, 
  AWS.SESv2.Transform.DeleteConfigurationSetEventDestinationResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteContactResponse, 
  AWS.SESv2.Model.DeleteContactRequest, 
  AWS.SESv2.Transform.DeleteContactRequestMarshaller, 
  AWS.SESv2.Transform.DeleteContactResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteContactListResponse, 
  AWS.SESv2.Model.DeleteContactListRequest, 
  AWS.SESv2.Transform.DeleteContactListRequestMarshaller, 
  AWS.SESv2.Transform.DeleteContactListResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Transform.DeleteCustomVerificationEmailTemplateRequestMarshaller, 
  AWS.SESv2.Transform.DeleteCustomVerificationEmailTemplateResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteDedicatedIpPoolResponse, 
  AWS.SESv2.Model.DeleteDedicatedIpPoolRequest, 
  AWS.SESv2.Transform.DeleteDedicatedIpPoolRequestMarshaller, 
  AWS.SESv2.Transform.DeleteDedicatedIpPoolResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteEmailIdentityResponse, 
  AWS.SESv2.Model.DeleteEmailIdentityRequest, 
  AWS.SESv2.Transform.DeleteEmailIdentityRequestMarshaller, 
  AWS.SESv2.Transform.DeleteEmailIdentityResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteEmailIdentityPolicyResponse, 
  AWS.SESv2.Model.DeleteEmailIdentityPolicyRequest, 
  AWS.SESv2.Transform.DeleteEmailIdentityPolicyRequestMarshaller, 
  AWS.SESv2.Transform.DeleteEmailIdentityPolicyResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteEmailTemplateResponse, 
  AWS.SESv2.Model.DeleteEmailTemplateRequest, 
  AWS.SESv2.Transform.DeleteEmailTemplateRequestMarshaller, 
  AWS.SESv2.Transform.DeleteEmailTemplateResponseUnmarshaller, 
  AWS.SESv2.Model.DeleteSuppressedDestinationResponse, 
  AWS.SESv2.Model.DeleteSuppressedDestinationRequest, 
  AWS.SESv2.Transform.DeleteSuppressedDestinationRequestMarshaller, 
  AWS.SESv2.Transform.DeleteSuppressedDestinationResponseUnmarshaller, 
  AWS.SESv2.Model.GetAccountResponse, 
  AWS.SESv2.Model.GetAccountRequest, 
  AWS.SESv2.Transform.GetAccountRequestMarshaller, 
  AWS.SESv2.Transform.GetAccountResponseUnmarshaller, 
  AWS.SESv2.Model.GetBlacklistReportsResponse, 
  AWS.SESv2.Model.GetBlacklistReportsRequest, 
  AWS.SESv2.Transform.GetBlacklistReportsRequestMarshaller, 
  AWS.SESv2.Transform.GetBlacklistReportsResponseUnmarshaller, 
  AWS.SESv2.Model.GetConfigurationSetResponse, 
  AWS.SESv2.Model.GetConfigurationSetRequest, 
  AWS.SESv2.Transform.GetConfigurationSetRequestMarshaller, 
  AWS.SESv2.Transform.GetConfigurationSetResponseUnmarshaller, 
  AWS.SESv2.Model.GetConfigurationSetEventDestinationsResponse, 
  AWS.SESv2.Model.GetConfigurationSetEventDestinationsRequest, 
  AWS.SESv2.Transform.GetConfigurationSetEventDestinationsRequestMarshaller, 
  AWS.SESv2.Transform.GetConfigurationSetEventDestinationsResponseUnmarshaller, 
  AWS.SESv2.Model.GetContactResponse, 
  AWS.SESv2.Model.GetContactRequest, 
  AWS.SESv2.Transform.GetContactRequestMarshaller, 
  AWS.SESv2.Transform.GetContactResponseUnmarshaller, 
  AWS.SESv2.Model.GetContactListResponse, 
  AWS.SESv2.Model.GetContactListRequest, 
  AWS.SESv2.Transform.GetContactListRequestMarshaller, 
  AWS.SESv2.Transform.GetContactListResponseUnmarshaller, 
  AWS.SESv2.Model.GetCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.GetCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Transform.GetCustomVerificationEmailTemplateRequestMarshaller, 
  AWS.SESv2.Transform.GetCustomVerificationEmailTemplateResponseUnmarshaller, 
  AWS.SESv2.Model.GetDedicatedIpResponse, 
  AWS.SESv2.Model.GetDedicatedIpRequest, 
  AWS.SESv2.Transform.GetDedicatedIpRequestMarshaller, 
  AWS.SESv2.Transform.GetDedicatedIpResponseUnmarshaller, 
  AWS.SESv2.Model.GetDedicatedIpsResponse, 
  AWS.SESv2.Model.GetDedicatedIpsRequest, 
  AWS.SESv2.Transform.GetDedicatedIpsRequestMarshaller, 
  AWS.SESv2.Transform.GetDedicatedIpsResponseUnmarshaller, 
  AWS.SESv2.Model.GetDeliverabilityDashboardOptionsResponse, 
  AWS.SESv2.Model.GetDeliverabilityDashboardOptionsRequest, 
  AWS.SESv2.Transform.GetDeliverabilityDashboardOptionsRequestMarshaller, 
  AWS.SESv2.Transform.GetDeliverabilityDashboardOptionsResponseUnmarshaller, 
  AWS.SESv2.Model.GetDeliverabilityTestReportResponse, 
  AWS.SESv2.Model.GetDeliverabilityTestReportRequest, 
  AWS.SESv2.Transform.GetDeliverabilityTestReportRequestMarshaller, 
  AWS.SESv2.Transform.GetDeliverabilityTestReportResponseUnmarshaller, 
  AWS.SESv2.Model.GetDomainDeliverabilityCampaignResponse, 
  AWS.SESv2.Model.GetDomainDeliverabilityCampaignRequest, 
  AWS.SESv2.Transform.GetDomainDeliverabilityCampaignRequestMarshaller, 
  AWS.SESv2.Transform.GetDomainDeliverabilityCampaignResponseUnmarshaller, 
  AWS.SESv2.Model.GetDomainStatisticsReportResponse, 
  AWS.SESv2.Model.GetDomainStatisticsReportRequest, 
  AWS.SESv2.Transform.GetDomainStatisticsReportRequestMarshaller, 
  AWS.SESv2.Transform.GetDomainStatisticsReportResponseUnmarshaller, 
  AWS.SESv2.Model.GetEmailIdentityResponse, 
  AWS.SESv2.Model.GetEmailIdentityRequest, 
  AWS.SESv2.Transform.GetEmailIdentityRequestMarshaller, 
  AWS.SESv2.Transform.GetEmailIdentityResponseUnmarshaller, 
  AWS.SESv2.Model.GetEmailIdentityPoliciesResponse, 
  AWS.SESv2.Model.GetEmailIdentityPoliciesRequest, 
  AWS.SESv2.Transform.GetEmailIdentityPoliciesRequestMarshaller, 
  AWS.SESv2.Transform.GetEmailIdentityPoliciesResponseUnmarshaller, 
  AWS.SESv2.Model.GetEmailTemplateResponse, 
  AWS.SESv2.Model.GetEmailTemplateRequest, 
  AWS.SESv2.Transform.GetEmailTemplateRequestMarshaller, 
  AWS.SESv2.Transform.GetEmailTemplateResponseUnmarshaller, 
  AWS.SESv2.Model.GetImportJobResponse, 
  AWS.SESv2.Model.GetImportJobRequest, 
  AWS.SESv2.Transform.GetImportJobRequestMarshaller, 
  AWS.SESv2.Transform.GetImportJobResponseUnmarshaller, 
  AWS.SESv2.Model.GetSuppressedDestinationResponse, 
  AWS.SESv2.Model.GetSuppressedDestinationRequest, 
  AWS.SESv2.Transform.GetSuppressedDestinationRequestMarshaller, 
  AWS.SESv2.Transform.GetSuppressedDestinationResponseUnmarshaller, 
  AWS.SESv2.Model.ListConfigurationSetsResponse, 
  AWS.SESv2.Model.ListConfigurationSetsRequest, 
  AWS.SESv2.Transform.ListConfigurationSetsRequestMarshaller, 
  AWS.SESv2.Transform.ListConfigurationSetsResponseUnmarshaller, 
  AWS.SESv2.Model.ListContactListsResponse, 
  AWS.SESv2.Model.ListContactListsRequest, 
  AWS.SESv2.Transform.ListContactListsRequestMarshaller, 
  AWS.SESv2.Transform.ListContactListsResponseUnmarshaller, 
  AWS.SESv2.Model.ListContactsResponse, 
  AWS.SESv2.Model.ListContactsRequest, 
  AWS.SESv2.Transform.ListContactsRequestMarshaller, 
  AWS.SESv2.Transform.ListContactsResponseUnmarshaller, 
  AWS.SESv2.Model.ListCustomVerificationEmailTemplatesResponse, 
  AWS.SESv2.Model.ListCustomVerificationEmailTemplatesRequest, 
  AWS.SESv2.Transform.ListCustomVerificationEmailTemplatesRequestMarshaller, 
  AWS.SESv2.Transform.ListCustomVerificationEmailTemplatesResponseUnmarshaller, 
  AWS.SESv2.Model.ListDedicatedIpPoolsResponse, 
  AWS.SESv2.Model.ListDedicatedIpPoolsRequest, 
  AWS.SESv2.Transform.ListDedicatedIpPoolsRequestMarshaller, 
  AWS.SESv2.Transform.ListDedicatedIpPoolsResponseUnmarshaller, 
  AWS.SESv2.Model.ListDeliverabilityTestReportsResponse, 
  AWS.SESv2.Model.ListDeliverabilityTestReportsRequest, 
  AWS.SESv2.Transform.ListDeliverabilityTestReportsRequestMarshaller, 
  AWS.SESv2.Transform.ListDeliverabilityTestReportsResponseUnmarshaller, 
  AWS.SESv2.Model.ListDomainDeliverabilityCampaignsResponse, 
  AWS.SESv2.Model.ListDomainDeliverabilityCampaignsRequest, 
  AWS.SESv2.Transform.ListDomainDeliverabilityCampaignsRequestMarshaller, 
  AWS.SESv2.Transform.ListDomainDeliverabilityCampaignsResponseUnmarshaller, 
  AWS.SESv2.Model.ListEmailIdentitiesResponse, 
  AWS.SESv2.Model.ListEmailIdentitiesRequest, 
  AWS.SESv2.Transform.ListEmailIdentitiesRequestMarshaller, 
  AWS.SESv2.Transform.ListEmailIdentitiesResponseUnmarshaller, 
  AWS.SESv2.Model.ListEmailTemplatesResponse, 
  AWS.SESv2.Model.ListEmailTemplatesRequest, 
  AWS.SESv2.Transform.ListEmailTemplatesRequestMarshaller, 
  AWS.SESv2.Transform.ListEmailTemplatesResponseUnmarshaller, 
  AWS.SESv2.Model.ListImportJobsResponse, 
  AWS.SESv2.Model.ListImportJobsRequest, 
  AWS.SESv2.Transform.ListImportJobsRequestMarshaller, 
  AWS.SESv2.Transform.ListImportJobsResponseUnmarshaller, 
  AWS.SESv2.Model.ListSuppressedDestinationsResponse, 
  AWS.SESv2.Model.ListSuppressedDestinationsRequest, 
  AWS.SESv2.Transform.ListSuppressedDestinationsRequestMarshaller, 
  AWS.SESv2.Transform.ListSuppressedDestinationsResponseUnmarshaller, 
  AWS.SESv2.Model.ListTagsForResourceResponse, 
  AWS.SESv2.Model.ListTagsForResourceRequest, 
  AWS.SESv2.Transform.ListTagsForResourceRequestMarshaller, 
  AWS.SESv2.Transform.ListTagsForResourceResponseUnmarshaller, 
  AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesResponse, 
  AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesRequest, 
  AWS.SESv2.Transform.PutAccountDedicatedIpWarmupAttributesRequestMarshaller, 
  AWS.SESv2.Transform.PutAccountDedicatedIpWarmupAttributesResponseUnmarshaller, 
  AWS.SESv2.Model.PutAccountDetailsResponse, 
  AWS.SESv2.Model.PutAccountDetailsRequest, 
  AWS.SESv2.Transform.PutAccountDetailsRequestMarshaller, 
  AWS.SESv2.Transform.PutAccountDetailsResponseUnmarshaller, 
  AWS.SESv2.Model.PutAccountSendingAttributesResponse, 
  AWS.SESv2.Model.PutAccountSendingAttributesRequest, 
  AWS.SESv2.Transform.PutAccountSendingAttributesRequestMarshaller, 
  AWS.SESv2.Transform.PutAccountSendingAttributesResponseUnmarshaller, 
  AWS.SESv2.Model.PutAccountSuppressionAttributesResponse, 
  AWS.SESv2.Model.PutAccountSuppressionAttributesRequest, 
  AWS.SESv2.Transform.PutAccountSuppressionAttributesRequestMarshaller, 
  AWS.SESv2.Transform.PutAccountSuppressionAttributesResponseUnmarshaller, 
  AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsRequest, 
  AWS.SESv2.Transform.PutConfigurationSetDeliveryOptionsRequestMarshaller, 
  AWS.SESv2.Transform.PutConfigurationSetDeliveryOptionsResponseUnmarshaller, 
  AWS.SESv2.Model.PutConfigurationSetReputationOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetReputationOptionsRequest, 
  AWS.SESv2.Transform.PutConfigurationSetReputationOptionsRequestMarshaller, 
  AWS.SESv2.Transform.PutConfigurationSetReputationOptionsResponseUnmarshaller, 
  AWS.SESv2.Model.PutConfigurationSetSendingOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetSendingOptionsRequest, 
  AWS.SESv2.Transform.PutConfigurationSetSendingOptionsRequestMarshaller, 
  AWS.SESv2.Transform.PutConfigurationSetSendingOptionsResponseUnmarshaller, 
  AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsRequest, 
  AWS.SESv2.Transform.PutConfigurationSetSuppressionOptionsRequestMarshaller, 
  AWS.SESv2.Transform.PutConfigurationSetSuppressionOptionsResponseUnmarshaller, 
  AWS.SESv2.Model.PutConfigurationSetTrackingOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetTrackingOptionsRequest, 
  AWS.SESv2.Transform.PutConfigurationSetTrackingOptionsRequestMarshaller, 
  AWS.SESv2.Transform.PutConfigurationSetTrackingOptionsResponseUnmarshaller, 
  AWS.SESv2.Model.PutDedicatedIpInPoolResponse, 
  AWS.SESv2.Model.PutDedicatedIpInPoolRequest, 
  AWS.SESv2.Transform.PutDedicatedIpInPoolRequestMarshaller, 
  AWS.SESv2.Transform.PutDedicatedIpInPoolResponseUnmarshaller, 
  AWS.SESv2.Model.PutDedicatedIpWarmupAttributesResponse, 
  AWS.SESv2.Model.PutDedicatedIpWarmupAttributesRequest, 
  AWS.SESv2.Transform.PutDedicatedIpWarmupAttributesRequestMarshaller, 
  AWS.SESv2.Transform.PutDedicatedIpWarmupAttributesResponseUnmarshaller, 
  AWS.SESv2.Model.PutDeliverabilityDashboardOptionResponse, 
  AWS.SESv2.Model.PutDeliverabilityDashboardOptionRequest, 
  AWS.SESv2.Transform.PutDeliverabilityDashboardOptionRequestMarshaller, 
  AWS.SESv2.Transform.PutDeliverabilityDashboardOptionResponseUnmarshaller, 
  AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesRequest, 
  AWS.SESv2.Transform.PutEmailIdentityConfigurationSetAttributesRequestMarshaller, 
  AWS.SESv2.Transform.PutEmailIdentityConfigurationSetAttributesResponseUnmarshaller, 
  AWS.SESv2.Model.PutEmailIdentityDkimAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityDkimAttributesRequest, 
  AWS.SESv2.Transform.PutEmailIdentityDkimAttributesRequestMarshaller, 
  AWS.SESv2.Transform.PutEmailIdentityDkimAttributesResponseUnmarshaller, 
  AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesRequest, 
  AWS.SESv2.Transform.PutEmailIdentityDkimSigningAttributesRequestMarshaller, 
  AWS.SESv2.Transform.PutEmailIdentityDkimSigningAttributesResponseUnmarshaller, 
  AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesRequest, 
  AWS.SESv2.Transform.PutEmailIdentityFeedbackAttributesRequestMarshaller, 
  AWS.SESv2.Transform.PutEmailIdentityFeedbackAttributesResponseUnmarshaller, 
  AWS.SESv2.Model.PutEmailIdentityMailFromAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityMailFromAttributesRequest, 
  AWS.SESv2.Transform.PutEmailIdentityMailFromAttributesRequestMarshaller, 
  AWS.SESv2.Transform.PutEmailIdentityMailFromAttributesResponseUnmarshaller, 
  AWS.SESv2.Model.PutSuppressedDestinationResponse, 
  AWS.SESv2.Model.PutSuppressedDestinationRequest, 
  AWS.SESv2.Transform.PutSuppressedDestinationRequestMarshaller, 
  AWS.SESv2.Transform.PutSuppressedDestinationResponseUnmarshaller, 
  AWS.SESv2.Model.SendBulkEmailResponse, 
  AWS.SESv2.Model.SendBulkEmailRequest, 
  AWS.SESv2.Transform.SendBulkEmailRequestMarshaller, 
  AWS.SESv2.Transform.SendBulkEmailResponseUnmarshaller, 
  AWS.SESv2.Model.SendCustomVerificationEmailResponse, 
  AWS.SESv2.Model.SendCustomVerificationEmailRequest, 
  AWS.SESv2.Transform.SendCustomVerificationEmailRequestMarshaller, 
  AWS.SESv2.Transform.SendCustomVerificationEmailResponseUnmarshaller, 
  AWS.SESv2.Model.SendEmailResponse, 
  AWS.SESv2.Model.SendEmailRequest, 
  AWS.SESv2.Transform.SendEmailRequestMarshaller, 
  AWS.SESv2.Transform.SendEmailResponseUnmarshaller, 
  AWS.SESv2.Model.TagResourceResponse, 
  AWS.SESv2.Model.TagResourceRequest, 
  AWS.SESv2.Transform.TagResourceRequestMarshaller, 
  AWS.SESv2.Transform.TagResourceResponseUnmarshaller, 
  AWS.SESv2.Model.TestRenderEmailTemplateResponse, 
  AWS.SESv2.Model.TestRenderEmailTemplateRequest, 
  AWS.SESv2.Transform.TestRenderEmailTemplateRequestMarshaller, 
  AWS.SESv2.Transform.TestRenderEmailTemplateResponseUnmarshaller, 
  AWS.SESv2.Model.UntagResourceResponse, 
  AWS.SESv2.Model.UntagResourceRequest, 
  AWS.SESv2.Transform.UntagResourceRequestMarshaller, 
  AWS.SESv2.Transform.UntagResourceResponseUnmarshaller, 
  AWS.SESv2.Model.UpdateConfigurationSetEventDestinationResponse, 
  AWS.SESv2.Model.UpdateConfigurationSetEventDestinationRequest, 
  AWS.SESv2.Transform.UpdateConfigurationSetEventDestinationRequestMarshaller, 
  AWS.SESv2.Transform.UpdateConfigurationSetEventDestinationResponseUnmarshaller, 
  AWS.SESv2.Model.UpdateContactResponse, 
  AWS.SESv2.Model.UpdateContactRequest, 
  AWS.SESv2.Transform.UpdateContactRequestMarshaller, 
  AWS.SESv2.Transform.UpdateContactResponseUnmarshaller, 
  AWS.SESv2.Model.UpdateContactListResponse, 
  AWS.SESv2.Model.UpdateContactListRequest, 
  AWS.SESv2.Transform.UpdateContactListRequestMarshaller, 
  AWS.SESv2.Transform.UpdateContactListResponseUnmarshaller, 
  AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Transform.UpdateCustomVerificationEmailTemplateRequestMarshaller, 
  AWS.SESv2.Transform.UpdateCustomVerificationEmailTemplateResponseUnmarshaller, 
  AWS.SESv2.Model.UpdateEmailIdentityPolicyResponse, 
  AWS.SESv2.Model.UpdateEmailIdentityPolicyRequest, 
  AWS.SESv2.Transform.UpdateEmailIdentityPolicyRequestMarshaller, 
  AWS.SESv2.Transform.UpdateEmailIdentityPolicyResponseUnmarshaller, 
  AWS.SESv2.Model.UpdateEmailTemplateResponse, 
  AWS.SESv2.Model.UpdateEmailTemplateRequest, 
  AWS.SESv2.Transform.UpdateEmailTemplateRequestMarshaller, 
  AWS.SESv2.Transform.UpdateEmailTemplateResponseUnmarshaller;

type
  TAmazonSimpleEmailServiceV2Client = class(TAmazonServiceClient, IAmazonSimpleEmailServiceV2)
  strict private
    class var FServiceMetadata: IServiceMetadata;
  private
    class constructor Create;
  strict protected
    function GetServiceMetadata: IServiceMetadata; override;
    function CreateSigner: TAbstractAWSSigner; override;
  public
    constructor Create; reintroduce; overload;
    constructor Create(Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(Config: IClientConfig); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials; Config: IClientConfig); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig); reintroduce; overload;
    function CreateConfigurationSet(Request: ICreateConfigurationSetRequest): ICreateConfigurationSetResponse; overload;
    function CreateConfigurationSetEventDestination(Request: ICreateConfigurationSetEventDestinationRequest): ICreateConfigurationSetEventDestinationResponse; overload;
    function CreateContact(Request: ICreateContactRequest): ICreateContactResponse; overload;
    function CreateContactList(Request: ICreateContactListRequest): ICreateContactListResponse; overload;
    function CreateCustomVerificationEmailTemplate(Request: ICreateCustomVerificationEmailTemplateRequest): ICreateCustomVerificationEmailTemplateResponse; overload;
    function CreateDedicatedIpPool(Request: ICreateDedicatedIpPoolRequest): ICreateDedicatedIpPoolResponse; overload;
    function CreateDeliverabilityTestReport(Request: ICreateDeliverabilityTestReportRequest): ICreateDeliverabilityTestReportResponse; overload;
    function CreateEmailIdentity(Request: ICreateEmailIdentityRequest): ICreateEmailIdentityResponse; overload;
    function CreateEmailIdentityPolicy(Request: ICreateEmailIdentityPolicyRequest): ICreateEmailIdentityPolicyResponse; overload;
    function CreateEmailTemplate(Request: ICreateEmailTemplateRequest): ICreateEmailTemplateResponse; overload;
    function CreateImportJob(Request: ICreateImportJobRequest): ICreateImportJobResponse; overload;
    function DeleteConfigurationSet(Request: IDeleteConfigurationSetRequest): IDeleteConfigurationSetResponse; overload;
    function DeleteConfigurationSetEventDestination(Request: IDeleteConfigurationSetEventDestinationRequest): IDeleteConfigurationSetEventDestinationResponse; overload;
    function DeleteContact(Request: IDeleteContactRequest): IDeleteContactResponse; overload;
    function DeleteContactList(Request: IDeleteContactListRequest): IDeleteContactListResponse; overload;
    function DeleteCustomVerificationEmailTemplate(Request: IDeleteCustomVerificationEmailTemplateRequest): IDeleteCustomVerificationEmailTemplateResponse; overload;
    function DeleteDedicatedIpPool(Request: IDeleteDedicatedIpPoolRequest): IDeleteDedicatedIpPoolResponse; overload;
    function DeleteEmailIdentity(Request: IDeleteEmailIdentityRequest): IDeleteEmailIdentityResponse; overload;
    function DeleteEmailIdentityPolicy(Request: IDeleteEmailIdentityPolicyRequest): IDeleteEmailIdentityPolicyResponse; overload;
    function DeleteEmailTemplate(Request: IDeleteEmailTemplateRequest): IDeleteEmailTemplateResponse; overload;
    function DeleteSuppressedDestination(Request: IDeleteSuppressedDestinationRequest): IDeleteSuppressedDestinationResponse; overload;
    function GetAccount(Request: IGetAccountRequest): IGetAccountResponse; overload;
    function GetBlacklistReports(Request: IGetBlacklistReportsRequest): IGetBlacklistReportsResponse; overload;
    function GetConfigurationSet(Request: IGetConfigurationSetRequest): IGetConfigurationSetResponse; overload;
    function GetConfigurationSetEventDestinations(Request: IGetConfigurationSetEventDestinationsRequest): IGetConfigurationSetEventDestinationsResponse; overload;
    function GetContact(Request: IGetContactRequest): IGetContactResponse; overload;
    function GetContactList(Request: IGetContactListRequest): IGetContactListResponse; overload;
    function GetCustomVerificationEmailTemplate(Request: IGetCustomVerificationEmailTemplateRequest): IGetCustomVerificationEmailTemplateResponse; overload;
    function GetDedicatedIp(Request: IGetDedicatedIpRequest): IGetDedicatedIpResponse; overload;
    function GetDedicatedIps(Request: IGetDedicatedIpsRequest): IGetDedicatedIpsResponse; overload;
    function GetDeliverabilityDashboardOptions(Request: IGetDeliverabilityDashboardOptionsRequest): IGetDeliverabilityDashboardOptionsResponse; overload;
    function GetDeliverabilityTestReport(Request: IGetDeliverabilityTestReportRequest): IGetDeliverabilityTestReportResponse; overload;
    function GetDomainDeliverabilityCampaign(Request: IGetDomainDeliverabilityCampaignRequest): IGetDomainDeliverabilityCampaignResponse; overload;
    function GetDomainStatisticsReport(Request: IGetDomainStatisticsReportRequest): IGetDomainStatisticsReportResponse; overload;
    function GetEmailIdentity(Request: IGetEmailIdentityRequest): IGetEmailIdentityResponse; overload;
    function GetEmailIdentityPolicies(Request: IGetEmailIdentityPoliciesRequest): IGetEmailIdentityPoliciesResponse; overload;
    function GetEmailTemplate(Request: IGetEmailTemplateRequest): IGetEmailTemplateResponse; overload;
    function GetImportJob(Request: IGetImportJobRequest): IGetImportJobResponse; overload;
    function GetSuppressedDestination(Request: IGetSuppressedDestinationRequest): IGetSuppressedDestinationResponse; overload;
    function ListConfigurationSets(Request: IListConfigurationSetsRequest): IListConfigurationSetsResponse; overload;
    function ListContactLists(Request: IListContactListsRequest): IListContactListsResponse; overload;
    function ListContacts(Request: IListContactsRequest): IListContactsResponse; overload;
    function ListCustomVerificationEmailTemplates(Request: IListCustomVerificationEmailTemplatesRequest): IListCustomVerificationEmailTemplatesResponse; overload;
    function ListDedicatedIpPools(Request: IListDedicatedIpPoolsRequest): IListDedicatedIpPoolsResponse; overload;
    function ListDeliverabilityTestReports(Request: IListDeliverabilityTestReportsRequest): IListDeliverabilityTestReportsResponse; overload;
    function ListDomainDeliverabilityCampaigns(Request: IListDomainDeliverabilityCampaignsRequest): IListDomainDeliverabilityCampaignsResponse; overload;
    function ListEmailIdentities(Request: IListEmailIdentitiesRequest): IListEmailIdentitiesResponse; overload;
    function ListEmailTemplates(Request: IListEmailTemplatesRequest): IListEmailTemplatesResponse; overload;
    function ListImportJobs(Request: IListImportJobsRequest): IListImportJobsResponse; overload;
    function ListSuppressedDestinations(Request: IListSuppressedDestinationsRequest): IListSuppressedDestinationsResponse; overload;
    function ListTagsForResource(Request: IListTagsForResourceRequest): IListTagsForResourceResponse; overload;
    function PutAccountDedicatedIpWarmupAttributes(Request: IPutAccountDedicatedIpWarmupAttributesRequest): IPutAccountDedicatedIpWarmupAttributesResponse; overload;
    function PutAccountDetails(Request: IPutAccountDetailsRequest): IPutAccountDetailsResponse; overload;
    function PutAccountSendingAttributes(Request: IPutAccountSendingAttributesRequest): IPutAccountSendingAttributesResponse; overload;
    function PutAccountSuppressionAttributes(Request: IPutAccountSuppressionAttributesRequest): IPutAccountSuppressionAttributesResponse; overload;
    function PutConfigurationSetDeliveryOptions(Request: IPutConfigurationSetDeliveryOptionsRequest): IPutConfigurationSetDeliveryOptionsResponse; overload;
    function PutConfigurationSetReputationOptions(Request: IPutConfigurationSetReputationOptionsRequest): IPutConfigurationSetReputationOptionsResponse; overload;
    function PutConfigurationSetSendingOptions(Request: IPutConfigurationSetSendingOptionsRequest): IPutConfigurationSetSendingOptionsResponse; overload;
    function PutConfigurationSetSuppressionOptions(Request: IPutConfigurationSetSuppressionOptionsRequest): IPutConfigurationSetSuppressionOptionsResponse; overload;
    function PutConfigurationSetTrackingOptions(Request: IPutConfigurationSetTrackingOptionsRequest): IPutConfigurationSetTrackingOptionsResponse; overload;
    function PutDedicatedIpInPool(Request: IPutDedicatedIpInPoolRequest): IPutDedicatedIpInPoolResponse; overload;
    function PutDedicatedIpWarmupAttributes(Request: IPutDedicatedIpWarmupAttributesRequest): IPutDedicatedIpWarmupAttributesResponse; overload;
    function PutDeliverabilityDashboardOption(Request: IPutDeliverabilityDashboardOptionRequest): IPutDeliverabilityDashboardOptionResponse; overload;
    function PutEmailIdentityConfigurationSetAttributes(Request: IPutEmailIdentityConfigurationSetAttributesRequest): IPutEmailIdentityConfigurationSetAttributesResponse; overload;
    function PutEmailIdentityDkimAttributes(Request: IPutEmailIdentityDkimAttributesRequest): IPutEmailIdentityDkimAttributesResponse; overload;
    function PutEmailIdentityDkimSigningAttributes(Request: IPutEmailIdentityDkimSigningAttributesRequest): IPutEmailIdentityDkimSigningAttributesResponse; overload;
    function PutEmailIdentityFeedbackAttributes(Request: IPutEmailIdentityFeedbackAttributesRequest): IPutEmailIdentityFeedbackAttributesResponse; overload;
    function PutEmailIdentityMailFromAttributes(Request: IPutEmailIdentityMailFromAttributesRequest): IPutEmailIdentityMailFromAttributesResponse; overload;
    function PutSuppressedDestination(Request: IPutSuppressedDestinationRequest): IPutSuppressedDestinationResponse; overload;
    function SendBulkEmail(Request: ISendBulkEmailRequest): ISendBulkEmailResponse; overload;
    function SendCustomVerificationEmail(Request: ISendCustomVerificationEmailRequest): ISendCustomVerificationEmailResponse; overload;
    function SendEmail(Request: ISendEmailRequest): ISendEmailResponse; overload;
    function TagResource(Request: ITagResourceRequest): ITagResourceResponse; overload;
    function TestRenderEmailTemplate(Request: ITestRenderEmailTemplateRequest): ITestRenderEmailTemplateResponse; overload;
    function UntagResource(Request: IUntagResourceRequest): IUntagResourceResponse; overload;
    function UpdateConfigurationSetEventDestination(Request: IUpdateConfigurationSetEventDestinationRequest): IUpdateConfigurationSetEventDestinationResponse; overload;
    function UpdateContact(Request: IUpdateContactRequest): IUpdateContactResponse; overload;
    function UpdateContactList(Request: IUpdateContactListRequest): IUpdateContactListResponse; overload;
    function UpdateCustomVerificationEmailTemplate(Request: IUpdateCustomVerificationEmailTemplateRequest): IUpdateCustomVerificationEmailTemplateResponse; overload;
    function UpdateEmailIdentityPolicy(Request: IUpdateEmailIdentityPolicyRequest): IUpdateEmailIdentityPolicyResponse; overload;
    function UpdateEmailTemplate(Request: IUpdateEmailTemplateRequest): IUpdateEmailTemplateResponse; overload;
  end;
  
implementation

{ TAmazonSimpleEmailServiceV2Client }

constructor TAmazonSimpleEmailServiceV2Client.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSimpleEmailServiceV2Config.Create);
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSimpleEmailServiceV2Config.Create(Region));
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonSimpleEmailServiceV2Config.Create);
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonSimpleEmailServiceV2Config.Create(Region));
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSimpleEmailServiceV2Config.Create);
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSimpleEmailServiceV2Config.Create(Region));
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSimpleEmailServiceV2Config.Create);
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSimpleEmailServiceV2Config.Create(Region));
end;

constructor TAmazonSimpleEmailServiceV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonSimpleEmailServiceV2Client.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonSimpleEmailServiceV2Client.Create;
begin
  FServiceMetadata := TAmazonSimpleEmailServiceV2Metadata.Create;
end;

function TAmazonSimpleEmailServiceV2Client.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonSimpleEmailServiceV2Client.CreateConfigurationSet(Request: ICreateConfigurationSetRequest): ICreateConfigurationSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateConfigurationSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateConfigurationSetResponseUnmarshaller.Instance;
    Result := Invoke<TCreateConfigurationSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateConfigurationSetEventDestination(Request: ICreateConfigurationSetEventDestinationRequest): ICreateConfigurationSetEventDestinationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateConfigurationSetEventDestinationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateConfigurationSetEventDestinationResponseUnmarshaller.Instance;
    Result := Invoke<TCreateConfigurationSetEventDestinationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateContact(Request: ICreateContactRequest): ICreateContactResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateContactRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateContactResponseUnmarshaller.Instance;
    Result := Invoke<TCreateContactResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateContactList(Request: ICreateContactListRequest): ICreateContactListResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateContactListRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateContactListResponseUnmarshaller.Instance;
    Result := Invoke<TCreateContactListResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateCustomVerificationEmailTemplate(Request: ICreateCustomVerificationEmailTemplateRequest): ICreateCustomVerificationEmailTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateCustomVerificationEmailTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateCustomVerificationEmailTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TCreateCustomVerificationEmailTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateDedicatedIpPool(Request: ICreateDedicatedIpPoolRequest): ICreateDedicatedIpPoolResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateDedicatedIpPoolRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateDedicatedIpPoolResponseUnmarshaller.Instance;
    Result := Invoke<TCreateDedicatedIpPoolResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateDeliverabilityTestReport(Request: ICreateDeliverabilityTestReportRequest): ICreateDeliverabilityTestReportResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateDeliverabilityTestReportRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateDeliverabilityTestReportResponseUnmarshaller.Instance;
    Result := Invoke<TCreateDeliverabilityTestReportResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateEmailIdentity(Request: ICreateEmailIdentityRequest): ICreateEmailIdentityResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateEmailIdentityRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateEmailIdentityResponseUnmarshaller.Instance;
    Result := Invoke<TCreateEmailIdentityResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateEmailIdentityPolicy(Request: ICreateEmailIdentityPolicyRequest): ICreateEmailIdentityPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateEmailIdentityPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateEmailIdentityPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TCreateEmailIdentityPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateEmailTemplate(Request: ICreateEmailTemplateRequest): ICreateEmailTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateEmailTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateEmailTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TCreateEmailTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.CreateImportJob(Request: ICreateImportJobRequest): ICreateImportJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateImportJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateImportJobResponseUnmarshaller.Instance;
    Result := Invoke<TCreateImportJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteConfigurationSet(Request: IDeleteConfigurationSetRequest): IDeleteConfigurationSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteConfigurationSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteConfigurationSetResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteConfigurationSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteConfigurationSetEventDestination(Request: IDeleteConfigurationSetEventDestinationRequest): IDeleteConfigurationSetEventDestinationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteConfigurationSetEventDestinationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteConfigurationSetEventDestinationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteConfigurationSetEventDestinationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteContact(Request: IDeleteContactRequest): IDeleteContactResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteContactRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteContactResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteContactResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteContactList(Request: IDeleteContactListRequest): IDeleteContactListResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteContactListRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteContactListResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteContactListResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteCustomVerificationEmailTemplate(Request: IDeleteCustomVerificationEmailTemplateRequest): IDeleteCustomVerificationEmailTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteCustomVerificationEmailTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteCustomVerificationEmailTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteCustomVerificationEmailTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteDedicatedIpPool(Request: IDeleteDedicatedIpPoolRequest): IDeleteDedicatedIpPoolResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteDedicatedIpPoolRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteDedicatedIpPoolResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteDedicatedIpPoolResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteEmailIdentity(Request: IDeleteEmailIdentityRequest): IDeleteEmailIdentityResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteEmailIdentityRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteEmailIdentityResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteEmailIdentityResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteEmailIdentityPolicy(Request: IDeleteEmailIdentityPolicyRequest): IDeleteEmailIdentityPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteEmailIdentityPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteEmailIdentityPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteEmailIdentityPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteEmailTemplate(Request: IDeleteEmailTemplateRequest): IDeleteEmailTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteEmailTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteEmailTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteEmailTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.DeleteSuppressedDestination(Request: IDeleteSuppressedDestinationRequest): IDeleteSuppressedDestinationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteSuppressedDestinationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteSuppressedDestinationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteSuppressedDestinationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetAccount(Request: IGetAccountRequest): IGetAccountResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAccountRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAccountResponseUnmarshaller.Instance;
    Result := Invoke<TGetAccountResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetBlacklistReports(Request: IGetBlacklistReportsRequest): IGetBlacklistReportsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBlacklistReportsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBlacklistReportsResponseUnmarshaller.Instance;
    Result := Invoke<TGetBlacklistReportsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetConfigurationSet(Request: IGetConfigurationSetRequest): IGetConfigurationSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetConfigurationSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetConfigurationSetResponseUnmarshaller.Instance;
    Result := Invoke<TGetConfigurationSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetConfigurationSetEventDestinations(Request: IGetConfigurationSetEventDestinationsRequest): IGetConfigurationSetEventDestinationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetConfigurationSetEventDestinationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetConfigurationSetEventDestinationsResponseUnmarshaller.Instance;
    Result := Invoke<TGetConfigurationSetEventDestinationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetContact(Request: IGetContactRequest): IGetContactResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetContactRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetContactResponseUnmarshaller.Instance;
    Result := Invoke<TGetContactResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetContactList(Request: IGetContactListRequest): IGetContactListResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetContactListRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetContactListResponseUnmarshaller.Instance;
    Result := Invoke<TGetContactListResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetCustomVerificationEmailTemplate(Request: IGetCustomVerificationEmailTemplateRequest): IGetCustomVerificationEmailTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetCustomVerificationEmailTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetCustomVerificationEmailTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TGetCustomVerificationEmailTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetDedicatedIp(Request: IGetDedicatedIpRequest): IGetDedicatedIpResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDedicatedIpRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDedicatedIpResponseUnmarshaller.Instance;
    Result := Invoke<TGetDedicatedIpResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetDedicatedIps(Request: IGetDedicatedIpsRequest): IGetDedicatedIpsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDedicatedIpsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDedicatedIpsResponseUnmarshaller.Instance;
    Result := Invoke<TGetDedicatedIpsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetDeliverabilityDashboardOptions(Request: IGetDeliverabilityDashboardOptionsRequest): IGetDeliverabilityDashboardOptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDeliverabilityDashboardOptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDeliverabilityDashboardOptionsResponseUnmarshaller.Instance;
    Result := Invoke<TGetDeliverabilityDashboardOptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetDeliverabilityTestReport(Request: IGetDeliverabilityTestReportRequest): IGetDeliverabilityTestReportResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDeliverabilityTestReportRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDeliverabilityTestReportResponseUnmarshaller.Instance;
    Result := Invoke<TGetDeliverabilityTestReportResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetDomainDeliverabilityCampaign(Request: IGetDomainDeliverabilityCampaignRequest): IGetDomainDeliverabilityCampaignResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDomainDeliverabilityCampaignRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDomainDeliverabilityCampaignResponseUnmarshaller.Instance;
    Result := Invoke<TGetDomainDeliverabilityCampaignResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetDomainStatisticsReport(Request: IGetDomainStatisticsReportRequest): IGetDomainStatisticsReportResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDomainStatisticsReportRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDomainStatisticsReportResponseUnmarshaller.Instance;
    Result := Invoke<TGetDomainStatisticsReportResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetEmailIdentity(Request: IGetEmailIdentityRequest): IGetEmailIdentityResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetEmailIdentityRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetEmailIdentityResponseUnmarshaller.Instance;
    Result := Invoke<TGetEmailIdentityResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetEmailIdentityPolicies(Request: IGetEmailIdentityPoliciesRequest): IGetEmailIdentityPoliciesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetEmailIdentityPoliciesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetEmailIdentityPoliciesResponseUnmarshaller.Instance;
    Result := Invoke<TGetEmailIdentityPoliciesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetEmailTemplate(Request: IGetEmailTemplateRequest): IGetEmailTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetEmailTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetEmailTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TGetEmailTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetImportJob(Request: IGetImportJobRequest): IGetImportJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetImportJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetImportJobResponseUnmarshaller.Instance;
    Result := Invoke<TGetImportJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.GetSuppressedDestination(Request: IGetSuppressedDestinationRequest): IGetSuppressedDestinationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetSuppressedDestinationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetSuppressedDestinationResponseUnmarshaller.Instance;
    Result := Invoke<TGetSuppressedDestinationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListConfigurationSets(Request: IListConfigurationSetsRequest): IListConfigurationSetsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListConfigurationSetsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListConfigurationSetsResponseUnmarshaller.Instance;
    Result := Invoke<TListConfigurationSetsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListContactLists(Request: IListContactListsRequest): IListContactListsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListContactListsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListContactListsResponseUnmarshaller.Instance;
    Result := Invoke<TListContactListsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListContacts(Request: IListContactsRequest): IListContactsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListContactsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListContactsResponseUnmarshaller.Instance;
    Result := Invoke<TListContactsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListCustomVerificationEmailTemplates(Request: IListCustomVerificationEmailTemplatesRequest): IListCustomVerificationEmailTemplatesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListCustomVerificationEmailTemplatesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListCustomVerificationEmailTemplatesResponseUnmarshaller.Instance;
    Result := Invoke<TListCustomVerificationEmailTemplatesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListDedicatedIpPools(Request: IListDedicatedIpPoolsRequest): IListDedicatedIpPoolsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListDedicatedIpPoolsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListDedicatedIpPoolsResponseUnmarshaller.Instance;
    Result := Invoke<TListDedicatedIpPoolsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListDeliverabilityTestReports(Request: IListDeliverabilityTestReportsRequest): IListDeliverabilityTestReportsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListDeliverabilityTestReportsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListDeliverabilityTestReportsResponseUnmarshaller.Instance;
    Result := Invoke<TListDeliverabilityTestReportsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListDomainDeliverabilityCampaigns(Request: IListDomainDeliverabilityCampaignsRequest): IListDomainDeliverabilityCampaignsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListDomainDeliverabilityCampaignsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListDomainDeliverabilityCampaignsResponseUnmarshaller.Instance;
    Result := Invoke<TListDomainDeliverabilityCampaignsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListEmailIdentities(Request: IListEmailIdentitiesRequest): IListEmailIdentitiesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListEmailIdentitiesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListEmailIdentitiesResponseUnmarshaller.Instance;
    Result := Invoke<TListEmailIdentitiesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListEmailTemplates(Request: IListEmailTemplatesRequest): IListEmailTemplatesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListEmailTemplatesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListEmailTemplatesResponseUnmarshaller.Instance;
    Result := Invoke<TListEmailTemplatesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListImportJobs(Request: IListImportJobsRequest): IListImportJobsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListImportJobsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListImportJobsResponseUnmarshaller.Instance;
    Result := Invoke<TListImportJobsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListSuppressedDestinations(Request: IListSuppressedDestinationsRequest): IListSuppressedDestinationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListSuppressedDestinationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListSuppressedDestinationsResponseUnmarshaller.Instance;
    Result := Invoke<TListSuppressedDestinationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.ListTagsForResource(Request: IListTagsForResourceRequest): IListTagsForResourceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListTagsForResourceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListTagsForResourceResponseUnmarshaller.Instance;
    Result := Invoke<TListTagsForResourceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutAccountDedicatedIpWarmupAttributes(Request: IPutAccountDedicatedIpWarmupAttributesRequest): IPutAccountDedicatedIpWarmupAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutAccountDedicatedIpWarmupAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutAccountDedicatedIpWarmupAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TPutAccountDedicatedIpWarmupAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutAccountDetails(Request: IPutAccountDetailsRequest): IPutAccountDetailsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutAccountDetailsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutAccountDetailsResponseUnmarshaller.Instance;
    Result := Invoke<TPutAccountDetailsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutAccountSendingAttributes(Request: IPutAccountSendingAttributesRequest): IPutAccountSendingAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutAccountSendingAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutAccountSendingAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TPutAccountSendingAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutAccountSuppressionAttributes(Request: IPutAccountSuppressionAttributesRequest): IPutAccountSuppressionAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutAccountSuppressionAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutAccountSuppressionAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TPutAccountSuppressionAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutConfigurationSetDeliveryOptions(Request: IPutConfigurationSetDeliveryOptionsRequest): IPutConfigurationSetDeliveryOptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutConfigurationSetDeliveryOptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutConfigurationSetDeliveryOptionsResponseUnmarshaller.Instance;
    Result := Invoke<TPutConfigurationSetDeliveryOptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutConfigurationSetReputationOptions(Request: IPutConfigurationSetReputationOptionsRequest): IPutConfigurationSetReputationOptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutConfigurationSetReputationOptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutConfigurationSetReputationOptionsResponseUnmarshaller.Instance;
    Result := Invoke<TPutConfigurationSetReputationOptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutConfigurationSetSendingOptions(Request: IPutConfigurationSetSendingOptionsRequest): IPutConfigurationSetSendingOptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutConfigurationSetSendingOptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutConfigurationSetSendingOptionsResponseUnmarshaller.Instance;
    Result := Invoke<TPutConfigurationSetSendingOptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutConfigurationSetSuppressionOptions(Request: IPutConfigurationSetSuppressionOptionsRequest): IPutConfigurationSetSuppressionOptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutConfigurationSetSuppressionOptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutConfigurationSetSuppressionOptionsResponseUnmarshaller.Instance;
    Result := Invoke<TPutConfigurationSetSuppressionOptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutConfigurationSetTrackingOptions(Request: IPutConfigurationSetTrackingOptionsRequest): IPutConfigurationSetTrackingOptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutConfigurationSetTrackingOptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutConfigurationSetTrackingOptionsResponseUnmarshaller.Instance;
    Result := Invoke<TPutConfigurationSetTrackingOptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutDedicatedIpInPool(Request: IPutDedicatedIpInPoolRequest): IPutDedicatedIpInPoolResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutDedicatedIpInPoolRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutDedicatedIpInPoolResponseUnmarshaller.Instance;
    Result := Invoke<TPutDedicatedIpInPoolResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutDedicatedIpWarmupAttributes(Request: IPutDedicatedIpWarmupAttributesRequest): IPutDedicatedIpWarmupAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutDedicatedIpWarmupAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutDedicatedIpWarmupAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TPutDedicatedIpWarmupAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutDeliverabilityDashboardOption(Request: IPutDeliverabilityDashboardOptionRequest): IPutDeliverabilityDashboardOptionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutDeliverabilityDashboardOptionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutDeliverabilityDashboardOptionResponseUnmarshaller.Instance;
    Result := Invoke<TPutDeliverabilityDashboardOptionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutEmailIdentityConfigurationSetAttributes(Request: IPutEmailIdentityConfigurationSetAttributesRequest): IPutEmailIdentityConfigurationSetAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutEmailIdentityConfigurationSetAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutEmailIdentityConfigurationSetAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TPutEmailIdentityConfigurationSetAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutEmailIdentityDkimAttributes(Request: IPutEmailIdentityDkimAttributesRequest): IPutEmailIdentityDkimAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutEmailIdentityDkimAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutEmailIdentityDkimAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TPutEmailIdentityDkimAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutEmailIdentityDkimSigningAttributes(Request: IPutEmailIdentityDkimSigningAttributesRequest): IPutEmailIdentityDkimSigningAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutEmailIdentityDkimSigningAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutEmailIdentityDkimSigningAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TPutEmailIdentityDkimSigningAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutEmailIdentityFeedbackAttributes(Request: IPutEmailIdentityFeedbackAttributesRequest): IPutEmailIdentityFeedbackAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutEmailIdentityFeedbackAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutEmailIdentityFeedbackAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TPutEmailIdentityFeedbackAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutEmailIdentityMailFromAttributes(Request: IPutEmailIdentityMailFromAttributesRequest): IPutEmailIdentityMailFromAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutEmailIdentityMailFromAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutEmailIdentityMailFromAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TPutEmailIdentityMailFromAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.PutSuppressedDestination(Request: IPutSuppressedDestinationRequest): IPutSuppressedDestinationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutSuppressedDestinationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutSuppressedDestinationResponseUnmarshaller.Instance;
    Result := Invoke<TPutSuppressedDestinationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.SendBulkEmail(Request: ISendBulkEmailRequest): ISendBulkEmailResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendBulkEmailRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendBulkEmailResponseUnmarshaller.Instance;
    Result := Invoke<TSendBulkEmailResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.SendCustomVerificationEmail(Request: ISendCustomVerificationEmailRequest): ISendCustomVerificationEmailResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendCustomVerificationEmailRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendCustomVerificationEmailResponseUnmarshaller.Instance;
    Result := Invoke<TSendCustomVerificationEmailResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.SendEmail(Request: ISendEmailRequest): ISendEmailResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendEmailRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendEmailResponseUnmarshaller.Instance;
    Result := Invoke<TSendEmailResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.TagResource(Request: ITagResourceRequest): ITagResourceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TTagResourceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TTagResourceResponseUnmarshaller.Instance;
    Result := Invoke<TTagResourceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.TestRenderEmailTemplate(Request: ITestRenderEmailTemplateRequest): ITestRenderEmailTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TTestRenderEmailTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TTestRenderEmailTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TTestRenderEmailTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.UntagResource(Request: IUntagResourceRequest): IUntagResourceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUntagResourceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUntagResourceResponseUnmarshaller.Instance;
    Result := Invoke<TUntagResourceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.UpdateConfigurationSetEventDestination(Request: IUpdateConfigurationSetEventDestinationRequest): IUpdateConfigurationSetEventDestinationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateConfigurationSetEventDestinationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateConfigurationSetEventDestinationResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateConfigurationSetEventDestinationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.UpdateContact(Request: IUpdateContactRequest): IUpdateContactResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateContactRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateContactResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateContactResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.UpdateContactList(Request: IUpdateContactListRequest): IUpdateContactListResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateContactListRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateContactListResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateContactListResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.UpdateCustomVerificationEmailTemplate(Request: IUpdateCustomVerificationEmailTemplateRequest): IUpdateCustomVerificationEmailTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateCustomVerificationEmailTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateCustomVerificationEmailTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateCustomVerificationEmailTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.UpdateEmailIdentityPolicy(Request: IUpdateEmailIdentityPolicyRequest): IUpdateEmailIdentityPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateEmailIdentityPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateEmailIdentityPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateEmailIdentityPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceV2Client.UpdateEmailTemplate(Request: IUpdateEmailTemplateRequest): IUpdateEmailTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateEmailTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateEmailTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateEmailTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
