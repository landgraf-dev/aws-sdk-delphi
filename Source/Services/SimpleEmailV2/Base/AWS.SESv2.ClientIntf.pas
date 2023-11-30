unit AWS.SESv2.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.SESv2.Model.CreateConfigurationSetResponse, 
  AWS.SESv2.Model.CreateConfigurationSetRequest, 
  AWS.SESv2.Model.CreateConfigurationSetEventDestinationResponse, 
  AWS.SESv2.Model.CreateConfigurationSetEventDestinationRequest, 
  AWS.SESv2.Model.CreateContactResponse, 
  AWS.SESv2.Model.CreateContactRequest, 
  AWS.SESv2.Model.CreateContactListResponse, 
  AWS.SESv2.Model.CreateContactListRequest, 
  AWS.SESv2.Model.CreateCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.CreateCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Model.CreateDedicatedIpPoolResponse, 
  AWS.SESv2.Model.CreateDedicatedIpPoolRequest, 
  AWS.SESv2.Model.CreateDeliverabilityTestReportResponse, 
  AWS.SESv2.Model.CreateDeliverabilityTestReportRequest, 
  AWS.SESv2.Model.CreateEmailIdentityResponse, 
  AWS.SESv2.Model.CreateEmailIdentityRequest, 
  AWS.SESv2.Model.CreateEmailIdentityPolicyResponse, 
  AWS.SESv2.Model.CreateEmailIdentityPolicyRequest, 
  AWS.SESv2.Model.CreateEmailTemplateResponse, 
  AWS.SESv2.Model.CreateEmailTemplateRequest, 
  AWS.SESv2.Model.CreateImportJobResponse, 
  AWS.SESv2.Model.CreateImportJobRequest, 
  AWS.SESv2.Model.DeleteConfigurationSetResponse, 
  AWS.SESv2.Model.DeleteConfigurationSetRequest, 
  AWS.SESv2.Model.DeleteConfigurationSetEventDestinationResponse, 
  AWS.SESv2.Model.DeleteConfigurationSetEventDestinationRequest, 
  AWS.SESv2.Model.DeleteContactResponse, 
  AWS.SESv2.Model.DeleteContactRequest, 
  AWS.SESv2.Model.DeleteContactListResponse, 
  AWS.SESv2.Model.DeleteContactListRequest, 
  AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.DeleteCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Model.DeleteDedicatedIpPoolResponse, 
  AWS.SESv2.Model.DeleteDedicatedIpPoolRequest, 
  AWS.SESv2.Model.DeleteEmailIdentityResponse, 
  AWS.SESv2.Model.DeleteEmailIdentityRequest, 
  AWS.SESv2.Model.DeleteEmailIdentityPolicyResponse, 
  AWS.SESv2.Model.DeleteEmailIdentityPolicyRequest, 
  AWS.SESv2.Model.DeleteEmailTemplateResponse, 
  AWS.SESv2.Model.DeleteEmailTemplateRequest, 
  AWS.SESv2.Model.DeleteSuppressedDestinationResponse, 
  AWS.SESv2.Model.DeleteSuppressedDestinationRequest, 
  AWS.SESv2.Model.GetAccountResponse, 
  AWS.SESv2.Model.GetAccountRequest, 
  AWS.SESv2.Model.GetBlacklistReportsResponse, 
  AWS.SESv2.Model.GetBlacklistReportsRequest, 
  AWS.SESv2.Model.GetConfigurationSetResponse, 
  AWS.SESv2.Model.GetConfigurationSetRequest, 
  AWS.SESv2.Model.GetConfigurationSetEventDestinationsResponse, 
  AWS.SESv2.Model.GetConfigurationSetEventDestinationsRequest, 
  AWS.SESv2.Model.GetContactResponse, 
  AWS.SESv2.Model.GetContactRequest, 
  AWS.SESv2.Model.GetContactListResponse, 
  AWS.SESv2.Model.GetContactListRequest, 
  AWS.SESv2.Model.GetCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.GetCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Model.GetDedicatedIpResponse, 
  AWS.SESv2.Model.GetDedicatedIpRequest, 
  AWS.SESv2.Model.GetDedicatedIpsResponse, 
  AWS.SESv2.Model.GetDedicatedIpsRequest, 
  AWS.SESv2.Model.GetDeliverabilityDashboardOptionsResponse, 
  AWS.SESv2.Model.GetDeliverabilityDashboardOptionsRequest, 
  AWS.SESv2.Model.GetDeliverabilityTestReportResponse, 
  AWS.SESv2.Model.GetDeliverabilityTestReportRequest, 
  AWS.SESv2.Model.GetDomainDeliverabilityCampaignResponse, 
  AWS.SESv2.Model.GetDomainDeliverabilityCampaignRequest, 
  AWS.SESv2.Model.GetDomainStatisticsReportResponse, 
  AWS.SESv2.Model.GetDomainStatisticsReportRequest, 
  AWS.SESv2.Model.GetEmailIdentityResponse, 
  AWS.SESv2.Model.GetEmailIdentityRequest, 
  AWS.SESv2.Model.GetEmailIdentityPoliciesResponse, 
  AWS.SESv2.Model.GetEmailIdentityPoliciesRequest, 
  AWS.SESv2.Model.GetEmailTemplateResponse, 
  AWS.SESv2.Model.GetEmailTemplateRequest, 
  AWS.SESv2.Model.GetImportJobResponse, 
  AWS.SESv2.Model.GetImportJobRequest, 
  AWS.SESv2.Model.GetSuppressedDestinationResponse, 
  AWS.SESv2.Model.GetSuppressedDestinationRequest, 
  AWS.SESv2.Model.ListConfigurationSetsResponse, 
  AWS.SESv2.Model.ListConfigurationSetsRequest, 
  AWS.SESv2.Model.ListContactListsResponse, 
  AWS.SESv2.Model.ListContactListsRequest, 
  AWS.SESv2.Model.ListContactsResponse, 
  AWS.SESv2.Model.ListContactsRequest, 
  AWS.SESv2.Model.ListCustomVerificationEmailTemplatesResponse, 
  AWS.SESv2.Model.ListCustomVerificationEmailTemplatesRequest, 
  AWS.SESv2.Model.ListDedicatedIpPoolsResponse, 
  AWS.SESv2.Model.ListDedicatedIpPoolsRequest, 
  AWS.SESv2.Model.ListDeliverabilityTestReportsResponse, 
  AWS.SESv2.Model.ListDeliverabilityTestReportsRequest, 
  AWS.SESv2.Model.ListDomainDeliverabilityCampaignsResponse, 
  AWS.SESv2.Model.ListDomainDeliverabilityCampaignsRequest, 
  AWS.SESv2.Model.ListEmailIdentitiesResponse, 
  AWS.SESv2.Model.ListEmailIdentitiesRequest, 
  AWS.SESv2.Model.ListEmailTemplatesResponse, 
  AWS.SESv2.Model.ListEmailTemplatesRequest, 
  AWS.SESv2.Model.ListImportJobsResponse, 
  AWS.SESv2.Model.ListImportJobsRequest, 
  AWS.SESv2.Model.ListSuppressedDestinationsResponse, 
  AWS.SESv2.Model.ListSuppressedDestinationsRequest, 
  AWS.SESv2.Model.ListTagsForResourceResponse, 
  AWS.SESv2.Model.ListTagsForResourceRequest, 
  AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesResponse, 
  AWS.SESv2.Model.PutAccountDedicatedIpWarmupAttributesRequest, 
  AWS.SESv2.Model.PutAccountDetailsResponse, 
  AWS.SESv2.Model.PutAccountDetailsRequest, 
  AWS.SESv2.Model.PutAccountSendingAttributesResponse, 
  AWS.SESv2.Model.PutAccountSendingAttributesRequest, 
  AWS.SESv2.Model.PutAccountSuppressionAttributesResponse, 
  AWS.SESv2.Model.PutAccountSuppressionAttributesRequest, 
  AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetDeliveryOptionsRequest, 
  AWS.SESv2.Model.PutConfigurationSetReputationOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetReputationOptionsRequest, 
  AWS.SESv2.Model.PutConfigurationSetSendingOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetSendingOptionsRequest, 
  AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetSuppressionOptionsRequest, 
  AWS.SESv2.Model.PutConfigurationSetTrackingOptionsResponse, 
  AWS.SESv2.Model.PutConfigurationSetTrackingOptionsRequest, 
  AWS.SESv2.Model.PutDedicatedIpInPoolResponse, 
  AWS.SESv2.Model.PutDedicatedIpInPoolRequest, 
  AWS.SESv2.Model.PutDedicatedIpWarmupAttributesResponse, 
  AWS.SESv2.Model.PutDedicatedIpWarmupAttributesRequest, 
  AWS.SESv2.Model.PutDeliverabilityDashboardOptionResponse, 
  AWS.SESv2.Model.PutDeliverabilityDashboardOptionRequest, 
  AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityConfigurationSetAttributesRequest, 
  AWS.SESv2.Model.PutEmailIdentityDkimAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityDkimAttributesRequest, 
  AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityDkimSigningAttributesRequest, 
  AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityFeedbackAttributesRequest, 
  AWS.SESv2.Model.PutEmailIdentityMailFromAttributesResponse, 
  AWS.SESv2.Model.PutEmailIdentityMailFromAttributesRequest, 
  AWS.SESv2.Model.PutSuppressedDestinationResponse, 
  AWS.SESv2.Model.PutSuppressedDestinationRequest, 
  AWS.SESv2.Model.SendBulkEmailResponse, 
  AWS.SESv2.Model.SendBulkEmailRequest, 
  AWS.SESv2.Model.SendCustomVerificationEmailResponse, 
  AWS.SESv2.Model.SendCustomVerificationEmailRequest, 
  AWS.SESv2.Model.SendEmailResponse, 
  AWS.SESv2.Model.SendEmailRequest, 
  AWS.SESv2.Model.TagResourceResponse, 
  AWS.SESv2.Model.TagResourceRequest, 
  AWS.SESv2.Model.TestRenderEmailTemplateResponse, 
  AWS.SESv2.Model.TestRenderEmailTemplateRequest, 
  AWS.SESv2.Model.UntagResourceResponse, 
  AWS.SESv2.Model.UntagResourceRequest, 
  AWS.SESv2.Model.UpdateConfigurationSetEventDestinationResponse, 
  AWS.SESv2.Model.UpdateConfigurationSetEventDestinationRequest, 
  AWS.SESv2.Model.UpdateContactResponse, 
  AWS.SESv2.Model.UpdateContactRequest, 
  AWS.SESv2.Model.UpdateContactListResponse, 
  AWS.SESv2.Model.UpdateContactListRequest, 
  AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateResponse, 
  AWS.SESv2.Model.UpdateCustomVerificationEmailTemplateRequest, 
  AWS.SESv2.Model.UpdateEmailIdentityPolicyResponse, 
  AWS.SESv2.Model.UpdateEmailIdentityPolicyRequest, 
  AWS.SESv2.Model.UpdateEmailTemplateResponse, 
  AWS.SESv2.Model.UpdateEmailTemplateRequest;

type
  IAmazonSimpleEmailServiceV2 = interface(IAmazonService)
    ['{7A280F3C-4AA5-4B78-A937-EC5E9425724D}']
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

end.
