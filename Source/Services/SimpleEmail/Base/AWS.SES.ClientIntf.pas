unit AWS.SES.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.SES.Model.CloneReceiptRuleSetResponse, 
  AWS.SES.Model.CloneReceiptRuleSetRequest, 
  AWS.SES.Model.CreateConfigurationSetResponse, 
  AWS.SES.Model.CreateConfigurationSetRequest, 
  AWS.SES.Model.CreateConfigurationSetEventDestinationResponse, 
  AWS.SES.Model.CreateConfigurationSetEventDestinationRequest, 
  AWS.SES.Model.CreateConfigurationSetTrackingOptionsResponse, 
  AWS.SES.Model.CreateConfigurationSetTrackingOptionsRequest, 
  AWS.SES.Model.CreateCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.CreateCustomVerificationEmailTemplateRequest, 
  AWS.SES.Model.CreateReceiptFilterResponse, 
  AWS.SES.Model.CreateReceiptFilterRequest, 
  AWS.SES.Model.CreateReceiptRuleResponse, 
  AWS.SES.Model.CreateReceiptRuleRequest, 
  AWS.SES.Model.CreateReceiptRuleSetResponse, 
  AWS.SES.Model.CreateReceiptRuleSetRequest, 
  AWS.SES.Model.CreateTemplateResponse, 
  AWS.SES.Model.CreateTemplateRequest, 
  AWS.SES.Model.DeleteConfigurationSetResponse, 
  AWS.SES.Model.DeleteConfigurationSetRequest, 
  AWS.SES.Model.DeleteConfigurationSetEventDestinationResponse, 
  AWS.SES.Model.DeleteConfigurationSetEventDestinationRequest, 
  AWS.SES.Model.DeleteConfigurationSetTrackingOptionsResponse, 
  AWS.SES.Model.DeleteConfigurationSetTrackingOptionsRequest, 
  AWS.SES.Model.DeleteCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.DeleteCustomVerificationEmailTemplateRequest, 
  AWS.SES.Model.DeleteIdentityResponse, 
  AWS.SES.Model.DeleteIdentityRequest, 
  AWS.SES.Model.DeleteIdentityPolicyResponse, 
  AWS.SES.Model.DeleteIdentityPolicyRequest, 
  AWS.SES.Model.DeleteReceiptFilterResponse, 
  AWS.SES.Model.DeleteReceiptFilterRequest, 
  AWS.SES.Model.DeleteReceiptRuleResponse, 
  AWS.SES.Model.DeleteReceiptRuleRequest, 
  AWS.SES.Model.DeleteReceiptRuleSetResponse, 
  AWS.SES.Model.DeleteReceiptRuleSetRequest, 
  AWS.SES.Model.DeleteTemplateResponse, 
  AWS.SES.Model.DeleteTemplateRequest, 
  AWS.SES.Model.DeleteVerifiedEmailAddressResponse, 
  AWS.SES.Model.DeleteVerifiedEmailAddressRequest, 
  AWS.SES.Model.DescribeActiveReceiptRuleSetResponse, 
  AWS.SES.Model.DescribeActiveReceiptRuleSetRequest, 
  AWS.SES.Model.DescribeConfigurationSetResponse, 
  AWS.SES.Model.DescribeConfigurationSetRequest, 
  AWS.SES.Model.DescribeReceiptRuleResponse, 
  AWS.SES.Model.DescribeReceiptRuleRequest, 
  AWS.SES.Model.DescribeReceiptRuleSetResponse, 
  AWS.SES.Model.DescribeReceiptRuleSetRequest, 
  AWS.SES.Model.GetAccountSendingEnabledResponse, 
  AWS.SES.Model.GetAccountSendingEnabledRequest, 
  AWS.SES.Model.GetCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.GetCustomVerificationEmailTemplateRequest, 
  AWS.SES.Model.GetIdentityDkimAttributesResponse, 
  AWS.SES.Model.GetIdentityDkimAttributesRequest, 
  AWS.SES.Model.GetIdentityMailFromDomainAttributesResponse, 
  AWS.SES.Model.GetIdentityMailFromDomainAttributesRequest, 
  AWS.SES.Model.GetIdentityNotificationAttributesResponse, 
  AWS.SES.Model.GetIdentityNotificationAttributesRequest, 
  AWS.SES.Model.GetIdentityPoliciesResponse, 
  AWS.SES.Model.GetIdentityPoliciesRequest, 
  AWS.SES.Model.GetIdentityVerificationAttributesResponse, 
  AWS.SES.Model.GetIdentityVerificationAttributesRequest, 
  AWS.SES.Model.GetSendQuotaResponse, 
  AWS.SES.Model.GetSendQuotaRequest, 
  AWS.SES.Model.GetSendStatisticsResponse, 
  AWS.SES.Model.GetSendStatisticsRequest, 
  AWS.SES.Model.GetTemplateResponse, 
  AWS.SES.Model.GetTemplateRequest, 
  AWS.SES.Model.ListConfigurationSetsResponse, 
  AWS.SES.Model.ListConfigurationSetsRequest, 
  AWS.SES.Model.ListCustomVerificationEmailTemplatesResponse, 
  AWS.SES.Model.ListCustomVerificationEmailTemplatesRequest, 
  AWS.SES.Model.ListIdentitiesResponse, 
  AWS.SES.Model.ListIdentitiesRequest, 
  AWS.SES.Model.ListIdentityPoliciesResponse, 
  AWS.SES.Model.ListIdentityPoliciesRequest, 
  AWS.SES.Model.ListReceiptFiltersResponse, 
  AWS.SES.Model.ListReceiptFiltersRequest, 
  AWS.SES.Model.ListReceiptRuleSetsResponse, 
  AWS.SES.Model.ListReceiptRuleSetsRequest, 
  AWS.SES.Model.ListTemplatesResponse, 
  AWS.SES.Model.ListTemplatesRequest, 
  AWS.SES.Model.ListVerifiedEmailAddressesResponse, 
  AWS.SES.Model.ListVerifiedEmailAddressesRequest, 
  AWS.SES.Model.PutConfigurationSetDeliveryOptionsResponse, 
  AWS.SES.Model.PutConfigurationSetDeliveryOptionsRequest, 
  AWS.SES.Model.PutIdentityPolicyResponse, 
  AWS.SES.Model.PutIdentityPolicyRequest, 
  AWS.SES.Model.ReorderReceiptRuleSetResponse, 
  AWS.SES.Model.ReorderReceiptRuleSetRequest, 
  AWS.SES.Model.SendBounceResponse, 
  AWS.SES.Model.SendBounceRequest, 
  AWS.SES.Model.SendBulkTemplatedEmailResponse, 
  AWS.SES.Model.SendBulkTemplatedEmailRequest, 
  AWS.SES.Model.SendCustomVerificationEmailResponse, 
  AWS.SES.Model.SendCustomVerificationEmailRequest, 
  AWS.SES.Model.SendEmailResponse, 
  AWS.SES.Model.SendEmailRequest, 
  AWS.SES.Model.SendRawEmailResponse, 
  AWS.SES.Model.SendRawEmailRequest, 
  AWS.SES.Model.SendTemplatedEmailResponse, 
  AWS.SES.Model.SendTemplatedEmailRequest, 
  AWS.SES.Model.SetActiveReceiptRuleSetResponse, 
  AWS.SES.Model.SetActiveReceiptRuleSetRequest, 
  AWS.SES.Model.SetIdentityDkimEnabledResponse, 
  AWS.SES.Model.SetIdentityDkimEnabledRequest, 
  AWS.SES.Model.SetIdentityFeedbackForwardingEnabledResponse, 
  AWS.SES.Model.SetIdentityFeedbackForwardingEnabledRequest, 
  AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledResponse, 
  AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledRequest, 
  AWS.SES.Model.SetIdentityMailFromDomainResponse, 
  AWS.SES.Model.SetIdentityMailFromDomainRequest, 
  AWS.SES.Model.SetIdentityNotificationTopicResponse, 
  AWS.SES.Model.SetIdentityNotificationTopicRequest, 
  AWS.SES.Model.SetReceiptRulePositionResponse, 
  AWS.SES.Model.SetReceiptRulePositionRequest, 
  AWS.SES.Model.TestRenderTemplateResponse, 
  AWS.SES.Model.TestRenderTemplateRequest, 
  AWS.SES.Model.UpdateAccountSendingEnabledResponse, 
  AWS.SES.Model.UpdateAccountSendingEnabledRequest, 
  AWS.SES.Model.UpdateConfigurationSetEventDestinationResponse, 
  AWS.SES.Model.UpdateConfigurationSetEventDestinationRequest, 
  AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledResponse, 
  AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledRequest, 
  AWS.SES.Model.UpdateConfigurationSetSendingEnabledResponse, 
  AWS.SES.Model.UpdateConfigurationSetSendingEnabledRequest, 
  AWS.SES.Model.UpdateConfigurationSetTrackingOptionsResponse, 
  AWS.SES.Model.UpdateConfigurationSetTrackingOptionsRequest, 
  AWS.SES.Model.UpdateCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.UpdateCustomVerificationEmailTemplateRequest, 
  AWS.SES.Model.UpdateReceiptRuleResponse, 
  AWS.SES.Model.UpdateReceiptRuleRequest, 
  AWS.SES.Model.UpdateTemplateResponse, 
  AWS.SES.Model.UpdateTemplateRequest, 
  AWS.SES.Model.VerifyDomainDkimResponse, 
  AWS.SES.Model.VerifyDomainDkimRequest, 
  AWS.SES.Model.VerifyDomainIdentityResponse, 
  AWS.SES.Model.VerifyDomainIdentityRequest, 
  AWS.SES.Model.VerifyEmailAddressResponse, 
  AWS.SES.Model.VerifyEmailAddressRequest, 
  AWS.SES.Model.VerifyEmailIdentityResponse, 
  AWS.SES.Model.VerifyEmailIdentityRequest;

type
  IAmazonSimpleEmailService = interface(IAmazonService)
    function CloneReceiptRuleSet(Request: ICloneReceiptRuleSetRequest): ICloneReceiptRuleSetResponse; overload;
    function CreateConfigurationSet(Request: ICreateConfigurationSetRequest): ICreateConfigurationSetResponse; overload;
    function CreateConfigurationSetEventDestination(Request: ICreateConfigurationSetEventDestinationRequest): ICreateConfigurationSetEventDestinationResponse; overload;
    function CreateConfigurationSetTrackingOptions(Request: ICreateConfigurationSetTrackingOptionsRequest): ICreateConfigurationSetTrackingOptionsResponse; overload;
    function CreateCustomVerificationEmailTemplate(Request: ICreateCustomVerificationEmailTemplateRequest): ICreateCustomVerificationEmailTemplateResponse; overload;
    function CreateReceiptFilter(Request: ICreateReceiptFilterRequest): ICreateReceiptFilterResponse; overload;
    function CreateReceiptRule(Request: ICreateReceiptRuleRequest): ICreateReceiptRuleResponse; overload;
    function CreateReceiptRuleSet(Request: ICreateReceiptRuleSetRequest): ICreateReceiptRuleSetResponse; overload;
    function CreateTemplate(Request: ICreateTemplateRequest): ICreateTemplateResponse; overload;
    function DeleteConfigurationSet(Request: IDeleteConfigurationSetRequest): IDeleteConfigurationSetResponse; overload;
    function DeleteConfigurationSetEventDestination(Request: IDeleteConfigurationSetEventDestinationRequest): IDeleteConfigurationSetEventDestinationResponse; overload;
    function DeleteConfigurationSetTrackingOptions(Request: IDeleteConfigurationSetTrackingOptionsRequest): IDeleteConfigurationSetTrackingOptionsResponse; overload;
    function DeleteCustomVerificationEmailTemplate(Request: IDeleteCustomVerificationEmailTemplateRequest): IDeleteCustomVerificationEmailTemplateResponse; overload;
    function DeleteIdentity(Request: IDeleteIdentityRequest): IDeleteIdentityResponse; overload;
    function DeleteIdentityPolicy(Request: IDeleteIdentityPolicyRequest): IDeleteIdentityPolicyResponse; overload;
    function DeleteReceiptFilter(Request: IDeleteReceiptFilterRequest): IDeleteReceiptFilterResponse; overload;
    function DeleteReceiptRule(Request: IDeleteReceiptRuleRequest): IDeleteReceiptRuleResponse; overload;
    function DeleteReceiptRuleSet(Request: IDeleteReceiptRuleSetRequest): IDeleteReceiptRuleSetResponse; overload;
    function DeleteTemplate(Request: IDeleteTemplateRequest): IDeleteTemplateResponse; overload;
    function DeleteVerifiedEmailAddress(Request: IDeleteVerifiedEmailAddressRequest): IDeleteVerifiedEmailAddressResponse; overload;
    function DescribeActiveReceiptRuleSet(Request: IDescribeActiveReceiptRuleSetRequest): IDescribeActiveReceiptRuleSetResponse; overload;
    function DescribeConfigurationSet(Request: IDescribeConfigurationSetRequest): IDescribeConfigurationSetResponse; overload;
    function DescribeReceiptRule(Request: IDescribeReceiptRuleRequest): IDescribeReceiptRuleResponse; overload;
    function DescribeReceiptRuleSet(Request: IDescribeReceiptRuleSetRequest): IDescribeReceiptRuleSetResponse; overload;
    function GetAccountSendingEnabled(Request: IGetAccountSendingEnabledRequest): IGetAccountSendingEnabledResponse; overload;
    function GetCustomVerificationEmailTemplate(Request: IGetCustomVerificationEmailTemplateRequest): IGetCustomVerificationEmailTemplateResponse; overload;
    function GetIdentityDkimAttributes(Request: IGetIdentityDkimAttributesRequest): IGetIdentityDkimAttributesResponse; overload;
    function GetIdentityMailFromDomainAttributes(Request: IGetIdentityMailFromDomainAttributesRequest): IGetIdentityMailFromDomainAttributesResponse; overload;
    function GetIdentityNotificationAttributes(Request: IGetIdentityNotificationAttributesRequest): IGetIdentityNotificationAttributesResponse; overload;
    function GetIdentityPolicies(Request: IGetIdentityPoliciesRequest): IGetIdentityPoliciesResponse; overload;
    function GetIdentityVerificationAttributes(Request: IGetIdentityVerificationAttributesRequest): IGetIdentityVerificationAttributesResponse; overload;
    function GetSendQuota: IGetSendQuotaResponse; overload;
    function GetSendQuota(Request: IGetSendQuotaRequest): IGetSendQuotaResponse; overload;
    function GetSendStatistics: IGetSendStatisticsResponse; overload;
    function GetSendStatistics(Request: IGetSendStatisticsRequest): IGetSendStatisticsResponse; overload;
    function GetTemplate(Request: IGetTemplateRequest): IGetTemplateResponse; overload;
    function ListConfigurationSets(Request: IListConfigurationSetsRequest): IListConfigurationSetsResponse; overload;
    function ListCustomVerificationEmailTemplates(Request: IListCustomVerificationEmailTemplatesRequest): IListCustomVerificationEmailTemplatesResponse; overload;
    function ListIdentities: IListIdentitiesResponse; overload;
    function ListIdentities(Request: IListIdentitiesRequest): IListIdentitiesResponse; overload;
    function ListIdentityPolicies(Request: IListIdentityPoliciesRequest): IListIdentityPoliciesResponse; overload;
    function ListReceiptFilters(Request: IListReceiptFiltersRequest): IListReceiptFiltersResponse; overload;
    function ListReceiptRuleSets(Request: IListReceiptRuleSetsRequest): IListReceiptRuleSetsResponse; overload;
    function ListTemplates(Request: IListTemplatesRequest): IListTemplatesResponse; overload;
    function ListVerifiedEmailAddresses: IListVerifiedEmailAddressesResponse; overload;
    function ListVerifiedEmailAddresses(Request: IListVerifiedEmailAddressesRequest): IListVerifiedEmailAddressesResponse; overload;
    function PutConfigurationSetDeliveryOptions(Request: IPutConfigurationSetDeliveryOptionsRequest): IPutConfigurationSetDeliveryOptionsResponse; overload;
    function PutIdentityPolicy(Request: IPutIdentityPolicyRequest): IPutIdentityPolicyResponse; overload;
    function ReorderReceiptRuleSet(Request: IReorderReceiptRuleSetRequest): IReorderReceiptRuleSetResponse; overload;
    function SendBounce(Request: ISendBounceRequest): ISendBounceResponse; overload;
    function SendBulkTemplatedEmail(Request: ISendBulkTemplatedEmailRequest): ISendBulkTemplatedEmailResponse; overload;
    function SendCustomVerificationEmail(Request: ISendCustomVerificationEmailRequest): ISendCustomVerificationEmailResponse; overload;
    function SendEmail(Request: ISendEmailRequest): ISendEmailResponse; overload;
    function SendRawEmail(Request: ISendRawEmailRequest): ISendRawEmailResponse; overload;
    function SendTemplatedEmail(Request: ISendTemplatedEmailRequest): ISendTemplatedEmailResponse; overload;
    function SetActiveReceiptRuleSet(Request: ISetActiveReceiptRuleSetRequest): ISetActiveReceiptRuleSetResponse; overload;
    function SetIdentityDkimEnabled(Request: ISetIdentityDkimEnabledRequest): ISetIdentityDkimEnabledResponse; overload;
    function SetIdentityFeedbackForwardingEnabled(Request: ISetIdentityFeedbackForwardingEnabledRequest): ISetIdentityFeedbackForwardingEnabledResponse; overload;
    function SetIdentityHeadersInNotificationsEnabled(Request: ISetIdentityHeadersInNotificationsEnabledRequest): ISetIdentityHeadersInNotificationsEnabledResponse; overload;
    function SetIdentityMailFromDomain(Request: ISetIdentityMailFromDomainRequest): ISetIdentityMailFromDomainResponse; overload;
    function SetIdentityNotificationTopic(Request: ISetIdentityNotificationTopicRequest): ISetIdentityNotificationTopicResponse; overload;
    function SetReceiptRulePosition(Request: ISetReceiptRulePositionRequest): ISetReceiptRulePositionResponse; overload;
    function TestRenderTemplate(Request: ITestRenderTemplateRequest): ITestRenderTemplateResponse; overload;
    function UpdateAccountSendingEnabled(Request: IUpdateAccountSendingEnabledRequest): IUpdateAccountSendingEnabledResponse; overload;
    function UpdateConfigurationSetEventDestination(Request: IUpdateConfigurationSetEventDestinationRequest): IUpdateConfigurationSetEventDestinationResponse; overload;
    function UpdateConfigurationSetReputationMetricsEnabled(Request: IUpdateConfigurationSetReputationMetricsEnabledRequest): IUpdateConfigurationSetReputationMetricsEnabledResponse; overload;
    function UpdateConfigurationSetSendingEnabled(Request: IUpdateConfigurationSetSendingEnabledRequest): IUpdateConfigurationSetSendingEnabledResponse; overload;
    function UpdateConfigurationSetTrackingOptions(Request: IUpdateConfigurationSetTrackingOptionsRequest): IUpdateConfigurationSetTrackingOptionsResponse; overload;
    function UpdateCustomVerificationEmailTemplate(Request: IUpdateCustomVerificationEmailTemplateRequest): IUpdateCustomVerificationEmailTemplateResponse; overload;
    function UpdateReceiptRule(Request: IUpdateReceiptRuleRequest): IUpdateReceiptRuleResponse; overload;
    function UpdateTemplate(Request: IUpdateTemplateRequest): IUpdateTemplateResponse; overload;
    function VerifyDomainDkim(Request: IVerifyDomainDkimRequest): IVerifyDomainDkimResponse; overload;
    function VerifyDomainIdentity(Request: IVerifyDomainIdentityRequest): IVerifyDomainIdentityResponse; overload;
    function VerifyEmailAddress(Request: IVerifyEmailAddressRequest): IVerifyEmailAddressResponse; overload;
    function VerifyEmailIdentity(Request: IVerifyEmailIdentityRequest): IVerifyEmailIdentityResponse; overload;
  end;
  
implementation

end.
