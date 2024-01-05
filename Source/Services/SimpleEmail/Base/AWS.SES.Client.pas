unit AWS.SES.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.SES.ClientIntf, 
  AWS.SES.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.SES.Metadata, 
  AWS.Auth.Signer, 
  AWS.SES.Model.CloneReceiptRuleSetResponse, 
  AWS.SES.Model.CloneReceiptRuleSetRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.SES.Transform.CloneReceiptRuleSetRequestMarshaller, 
  AWS.SES.Transform.CloneReceiptRuleSetResponseUnmarshaller, 
  AWS.SES.Model.CreateConfigurationSetResponse, 
  AWS.SES.Model.CreateConfigurationSetRequest, 
  AWS.SES.Transform.CreateConfigurationSetRequestMarshaller, 
  AWS.SES.Transform.CreateConfigurationSetResponseUnmarshaller, 
  AWS.SES.Model.CreateConfigurationSetEventDestinationResponse, 
  AWS.SES.Model.CreateConfigurationSetEventDestinationRequest, 
  AWS.SES.Transform.CreateConfigurationSetEventDestinationRequestMarshaller, 
  AWS.SES.Transform.CreateConfigurationSetEventDestinationResponseUnmarshaller, 
  AWS.SES.Model.CreateConfigurationSetTrackingOptionsResponse, 
  AWS.SES.Model.CreateConfigurationSetTrackingOptionsRequest, 
  AWS.SES.Transform.CreateConfigurationSetTrackingOptionsRequestMarshaller, 
  AWS.SES.Transform.CreateConfigurationSetTrackingOptionsResponseUnmarshaller, 
  AWS.SES.Model.CreateCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.CreateCustomVerificationEmailTemplateRequest, 
  AWS.SES.Transform.CreateCustomVerificationEmailTemplateRequestMarshaller, 
  AWS.SES.Transform.CreateCustomVerificationEmailTemplateResponseUnmarshaller, 
  AWS.SES.Model.CreateReceiptFilterResponse, 
  AWS.SES.Model.CreateReceiptFilterRequest, 
  AWS.SES.Transform.CreateReceiptFilterRequestMarshaller, 
  AWS.SES.Transform.CreateReceiptFilterResponseUnmarshaller, 
  AWS.SES.Model.CreateReceiptRuleResponse, 
  AWS.SES.Model.CreateReceiptRuleRequest, 
  AWS.SES.Transform.CreateReceiptRuleRequestMarshaller, 
  AWS.SES.Transform.CreateReceiptRuleResponseUnmarshaller, 
  AWS.SES.Model.CreateReceiptRuleSetResponse, 
  AWS.SES.Model.CreateReceiptRuleSetRequest, 
  AWS.SES.Transform.CreateReceiptRuleSetRequestMarshaller, 
  AWS.SES.Transform.CreateReceiptRuleSetResponseUnmarshaller, 
  AWS.SES.Model.CreateTemplateResponse, 
  AWS.SES.Model.CreateTemplateRequest, 
  AWS.SES.Transform.CreateTemplateRequestMarshaller, 
  AWS.SES.Transform.CreateTemplateResponseUnmarshaller, 
  AWS.SES.Model.DeleteConfigurationSetResponse, 
  AWS.SES.Model.DeleteConfigurationSetRequest, 
  AWS.SES.Transform.DeleteConfigurationSetRequestMarshaller, 
  AWS.SES.Transform.DeleteConfigurationSetResponseUnmarshaller, 
  AWS.SES.Model.DeleteConfigurationSetEventDestinationResponse, 
  AWS.SES.Model.DeleteConfigurationSetEventDestinationRequest, 
  AWS.SES.Transform.DeleteConfigurationSetEventDestinationRequestMarshaller, 
  AWS.SES.Transform.DeleteConfigurationSetEventDestinationResponseUnmarshaller, 
  AWS.SES.Model.DeleteConfigurationSetTrackingOptionsResponse, 
  AWS.SES.Model.DeleteConfigurationSetTrackingOptionsRequest, 
  AWS.SES.Transform.DeleteConfigurationSetTrackingOptionsRequestMarshaller, 
  AWS.SES.Transform.DeleteConfigurationSetTrackingOptionsResponseUnmarshaller, 
  AWS.SES.Model.DeleteCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.DeleteCustomVerificationEmailTemplateRequest, 
  AWS.SES.Transform.DeleteCustomVerificationEmailTemplateRequestMarshaller, 
  AWS.SES.Transform.DeleteCustomVerificationEmailTemplateResponseUnmarshaller, 
  AWS.SES.Model.DeleteIdentityResponse, 
  AWS.SES.Model.DeleteIdentityRequest, 
  AWS.SES.Transform.DeleteIdentityRequestMarshaller, 
  AWS.SES.Transform.DeleteIdentityResponseUnmarshaller, 
  AWS.SES.Model.DeleteIdentityPolicyResponse, 
  AWS.SES.Model.DeleteIdentityPolicyRequest, 
  AWS.SES.Transform.DeleteIdentityPolicyRequestMarshaller, 
  AWS.SES.Transform.DeleteIdentityPolicyResponseUnmarshaller, 
  AWS.SES.Model.DeleteReceiptFilterResponse, 
  AWS.SES.Model.DeleteReceiptFilterRequest, 
  AWS.SES.Transform.DeleteReceiptFilterRequestMarshaller, 
  AWS.SES.Transform.DeleteReceiptFilterResponseUnmarshaller, 
  AWS.SES.Model.DeleteReceiptRuleResponse, 
  AWS.SES.Model.DeleteReceiptRuleRequest, 
  AWS.SES.Transform.DeleteReceiptRuleRequestMarshaller, 
  AWS.SES.Transform.DeleteReceiptRuleResponseUnmarshaller, 
  AWS.SES.Model.DeleteReceiptRuleSetResponse, 
  AWS.SES.Model.DeleteReceiptRuleSetRequest, 
  AWS.SES.Transform.DeleteReceiptRuleSetRequestMarshaller, 
  AWS.SES.Transform.DeleteReceiptRuleSetResponseUnmarshaller, 
  AWS.SES.Model.DeleteTemplateResponse, 
  AWS.SES.Model.DeleteTemplateRequest, 
  AWS.SES.Transform.DeleteTemplateRequestMarshaller, 
  AWS.SES.Transform.DeleteTemplateResponseUnmarshaller, 
  AWS.SES.Model.DeleteVerifiedEmailAddressResponse, 
  AWS.SES.Model.DeleteVerifiedEmailAddressRequest, 
  AWS.SES.Transform.DeleteVerifiedEmailAddressRequestMarshaller, 
  AWS.SES.Transform.DeleteVerifiedEmailAddressResponseUnmarshaller, 
  AWS.SES.Model.DescribeActiveReceiptRuleSetResponse, 
  AWS.SES.Model.DescribeActiveReceiptRuleSetRequest, 
  AWS.SES.Transform.DescribeActiveReceiptRuleSetRequestMarshaller, 
  AWS.SES.Transform.DescribeActiveReceiptRuleSetResponseUnmarshaller, 
  AWS.SES.Model.DescribeConfigurationSetResponse, 
  AWS.SES.Model.DescribeConfigurationSetRequest, 
  AWS.SES.Transform.DescribeConfigurationSetRequestMarshaller, 
  AWS.SES.Transform.DescribeConfigurationSetResponseUnmarshaller, 
  AWS.SES.Model.DescribeReceiptRuleResponse, 
  AWS.SES.Model.DescribeReceiptRuleRequest, 
  AWS.SES.Transform.DescribeReceiptRuleRequestMarshaller, 
  AWS.SES.Transform.DescribeReceiptRuleResponseUnmarshaller, 
  AWS.SES.Model.DescribeReceiptRuleSetResponse, 
  AWS.SES.Model.DescribeReceiptRuleSetRequest, 
  AWS.SES.Transform.DescribeReceiptRuleSetRequestMarshaller, 
  AWS.SES.Transform.DescribeReceiptRuleSetResponseUnmarshaller, 
  AWS.SES.Model.GetAccountSendingEnabledResponse, 
  AWS.SES.Model.GetAccountSendingEnabledRequest, 
  AWS.SES.Transform.GetAccountSendingEnabledRequestMarshaller, 
  AWS.SES.Transform.GetAccountSendingEnabledResponseUnmarshaller, 
  AWS.SES.Model.GetCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.GetCustomVerificationEmailTemplateRequest, 
  AWS.SES.Transform.GetCustomVerificationEmailTemplateRequestMarshaller, 
  AWS.SES.Transform.GetCustomVerificationEmailTemplateResponseUnmarshaller, 
  AWS.SES.Model.GetIdentityDkimAttributesResponse, 
  AWS.SES.Model.GetIdentityDkimAttributesRequest, 
  AWS.SES.Transform.GetIdentityDkimAttributesRequestMarshaller, 
  AWS.SES.Transform.GetIdentityDkimAttributesResponseUnmarshaller, 
  AWS.SES.Model.GetIdentityMailFromDomainAttributesResponse, 
  AWS.SES.Model.GetIdentityMailFromDomainAttributesRequest, 
  AWS.SES.Transform.GetIdentityMailFromDomainAttributesRequestMarshaller, 
  AWS.SES.Transform.GetIdentityMailFromDomainAttributesResponseUnmarshaller, 
  AWS.SES.Model.GetIdentityNotificationAttributesResponse, 
  AWS.SES.Model.GetIdentityNotificationAttributesRequest, 
  AWS.SES.Transform.GetIdentityNotificationAttributesRequestMarshaller, 
  AWS.SES.Transform.GetIdentityNotificationAttributesResponseUnmarshaller, 
  AWS.SES.Model.GetIdentityPoliciesResponse, 
  AWS.SES.Model.GetIdentityPoliciesRequest, 
  AWS.SES.Transform.GetIdentityPoliciesRequestMarshaller, 
  AWS.SES.Transform.GetIdentityPoliciesResponseUnmarshaller, 
  AWS.SES.Model.GetIdentityVerificationAttributesResponse, 
  AWS.SES.Model.GetIdentityVerificationAttributesRequest, 
  AWS.SES.Transform.GetIdentityVerificationAttributesRequestMarshaller, 
  AWS.SES.Transform.GetIdentityVerificationAttributesResponseUnmarshaller, 
  AWS.SES.Model.GetSendQuotaResponse, 
  AWS.SES.Model.GetSendQuotaRequest, 
  AWS.SES.Transform.GetSendQuotaRequestMarshaller, 
  AWS.SES.Transform.GetSendQuotaResponseUnmarshaller, 
  AWS.SES.Model.GetSendStatisticsResponse, 
  AWS.SES.Model.GetSendStatisticsRequest, 
  AWS.SES.Transform.GetSendStatisticsRequestMarshaller, 
  AWS.SES.Transform.GetSendStatisticsResponseUnmarshaller, 
  AWS.SES.Model.GetTemplateResponse, 
  AWS.SES.Model.GetTemplateRequest, 
  AWS.SES.Transform.GetTemplateRequestMarshaller, 
  AWS.SES.Transform.GetTemplateResponseUnmarshaller, 
  AWS.SES.Model.ListConfigurationSetsResponse, 
  AWS.SES.Model.ListConfigurationSetsRequest, 
  AWS.SES.Transform.ListConfigurationSetsRequestMarshaller, 
  AWS.SES.Transform.ListConfigurationSetsResponseUnmarshaller, 
  AWS.SES.Model.ListCustomVerificationEmailTemplatesResponse, 
  AWS.SES.Model.ListCustomVerificationEmailTemplatesRequest, 
  AWS.SES.Transform.ListCustomVerificationEmailTemplatesRequestMarshaller, 
  AWS.SES.Transform.ListCustomVerificationEmailTemplatesResponseUnmarshaller, 
  AWS.SES.Model.ListIdentitiesResponse, 
  AWS.SES.Model.ListIdentitiesRequest, 
  AWS.SES.Transform.ListIdentitiesRequestMarshaller, 
  AWS.SES.Transform.ListIdentitiesResponseUnmarshaller, 
  AWS.SES.Model.ListIdentityPoliciesResponse, 
  AWS.SES.Model.ListIdentityPoliciesRequest, 
  AWS.SES.Transform.ListIdentityPoliciesRequestMarshaller, 
  AWS.SES.Transform.ListIdentityPoliciesResponseUnmarshaller, 
  AWS.SES.Model.ListReceiptFiltersResponse, 
  AWS.SES.Model.ListReceiptFiltersRequest, 
  AWS.SES.Transform.ListReceiptFiltersRequestMarshaller, 
  AWS.SES.Transform.ListReceiptFiltersResponseUnmarshaller, 
  AWS.SES.Model.ListReceiptRuleSetsResponse, 
  AWS.SES.Model.ListReceiptRuleSetsRequest, 
  AWS.SES.Transform.ListReceiptRuleSetsRequestMarshaller, 
  AWS.SES.Transform.ListReceiptRuleSetsResponseUnmarshaller, 
  AWS.SES.Model.ListTemplatesResponse, 
  AWS.SES.Model.ListTemplatesRequest, 
  AWS.SES.Transform.ListTemplatesRequestMarshaller, 
  AWS.SES.Transform.ListTemplatesResponseUnmarshaller, 
  AWS.SES.Model.ListVerifiedEmailAddressesResponse, 
  AWS.SES.Model.ListVerifiedEmailAddressesRequest, 
  AWS.SES.Transform.ListVerifiedEmailAddressesRequestMarshaller, 
  AWS.SES.Transform.ListVerifiedEmailAddressesResponseUnmarshaller, 
  AWS.SES.Model.PutConfigurationSetDeliveryOptionsResponse, 
  AWS.SES.Model.PutConfigurationSetDeliveryOptionsRequest, 
  AWS.SES.Transform.PutConfigurationSetDeliveryOptionsRequestMarshaller, 
  AWS.SES.Transform.PutConfigurationSetDeliveryOptionsResponseUnmarshaller, 
  AWS.SES.Model.PutIdentityPolicyResponse, 
  AWS.SES.Model.PutIdentityPolicyRequest, 
  AWS.SES.Transform.PutIdentityPolicyRequestMarshaller, 
  AWS.SES.Transform.PutIdentityPolicyResponseUnmarshaller, 
  AWS.SES.Model.ReorderReceiptRuleSetResponse, 
  AWS.SES.Model.ReorderReceiptRuleSetRequest, 
  AWS.SES.Transform.ReorderReceiptRuleSetRequestMarshaller, 
  AWS.SES.Transform.ReorderReceiptRuleSetResponseUnmarshaller, 
  AWS.SES.Model.SendBounceResponse, 
  AWS.SES.Model.SendBounceRequest, 
  AWS.SES.Transform.SendBounceRequestMarshaller, 
  AWS.SES.Transform.SendBounceResponseUnmarshaller, 
  AWS.SES.Model.SendBulkTemplatedEmailResponse, 
  AWS.SES.Model.SendBulkTemplatedEmailRequest, 
  AWS.SES.Transform.SendBulkTemplatedEmailRequestMarshaller, 
  AWS.SES.Transform.SendBulkTemplatedEmailResponseUnmarshaller, 
  AWS.SES.Model.SendCustomVerificationEmailResponse, 
  AWS.SES.Model.SendCustomVerificationEmailRequest, 
  AWS.SES.Transform.SendCustomVerificationEmailRequestMarshaller, 
  AWS.SES.Transform.SendCustomVerificationEmailResponseUnmarshaller, 
  AWS.SES.Model.SendEmailResponse, 
  AWS.SES.Model.SendEmailRequest, 
  AWS.SES.Transform.SendEmailRequestMarshaller, 
  AWS.SES.Transform.SendEmailResponseUnmarshaller, 
  AWS.SES.Model.SendRawEmailResponse, 
  AWS.SES.Model.SendRawEmailRequest, 
  AWS.SES.Transform.SendRawEmailRequestMarshaller, 
  AWS.SES.Transform.SendRawEmailResponseUnmarshaller, 
  AWS.SES.Model.SendTemplatedEmailResponse, 
  AWS.SES.Model.SendTemplatedEmailRequest, 
  AWS.SES.Transform.SendTemplatedEmailRequestMarshaller, 
  AWS.SES.Transform.SendTemplatedEmailResponseUnmarshaller, 
  AWS.SES.Model.SetActiveReceiptRuleSetResponse, 
  AWS.SES.Model.SetActiveReceiptRuleSetRequest, 
  AWS.SES.Transform.SetActiveReceiptRuleSetRequestMarshaller, 
  AWS.SES.Transform.SetActiveReceiptRuleSetResponseUnmarshaller, 
  AWS.SES.Model.SetIdentityDkimEnabledResponse, 
  AWS.SES.Model.SetIdentityDkimEnabledRequest, 
  AWS.SES.Transform.SetIdentityDkimEnabledRequestMarshaller, 
  AWS.SES.Transform.SetIdentityDkimEnabledResponseUnmarshaller, 
  AWS.SES.Model.SetIdentityFeedbackForwardingEnabledResponse, 
  AWS.SES.Model.SetIdentityFeedbackForwardingEnabledRequest, 
  AWS.SES.Transform.SetIdentityFeedbackForwardingEnabledRequestMarshaller, 
  AWS.SES.Transform.SetIdentityFeedbackForwardingEnabledResponseUnmarshaller, 
  AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledResponse, 
  AWS.SES.Model.SetIdentityHeadersInNotificationsEnabledRequest, 
  AWS.SES.Transform.SetIdentityHeadersInNotificationsEnabledRequestMarshaller, 
  AWS.SES.Transform.SetIdentityHeadersInNotificationsEnabledResponseUnmarshaller, 
  AWS.SES.Model.SetIdentityMailFromDomainResponse, 
  AWS.SES.Model.SetIdentityMailFromDomainRequest, 
  AWS.SES.Transform.SetIdentityMailFromDomainRequestMarshaller, 
  AWS.SES.Transform.SetIdentityMailFromDomainResponseUnmarshaller, 
  AWS.SES.Model.SetIdentityNotificationTopicResponse, 
  AWS.SES.Model.SetIdentityNotificationTopicRequest, 
  AWS.SES.Transform.SetIdentityNotificationTopicRequestMarshaller, 
  AWS.SES.Transform.SetIdentityNotificationTopicResponseUnmarshaller, 
  AWS.SES.Model.SetReceiptRulePositionResponse, 
  AWS.SES.Model.SetReceiptRulePositionRequest, 
  AWS.SES.Transform.SetReceiptRulePositionRequestMarshaller, 
  AWS.SES.Transform.SetReceiptRulePositionResponseUnmarshaller, 
  AWS.SES.Model.TestRenderTemplateResponse, 
  AWS.SES.Model.TestRenderTemplateRequest, 
  AWS.SES.Transform.TestRenderTemplateRequestMarshaller, 
  AWS.SES.Transform.TestRenderTemplateResponseUnmarshaller, 
  AWS.SES.Model.UpdateAccountSendingEnabledResponse, 
  AWS.SES.Model.UpdateAccountSendingEnabledRequest, 
  AWS.SES.Transform.UpdateAccountSendingEnabledRequestMarshaller, 
  AWS.SES.Transform.UpdateAccountSendingEnabledResponseUnmarshaller, 
  AWS.SES.Model.UpdateConfigurationSetEventDestinationResponse, 
  AWS.SES.Model.UpdateConfigurationSetEventDestinationRequest, 
  AWS.SES.Transform.UpdateConfigurationSetEventDestinationRequestMarshaller, 
  AWS.SES.Transform.UpdateConfigurationSetEventDestinationResponseUnmarshaller, 
  AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledResponse, 
  AWS.SES.Model.UpdateConfigurationSetReputationMetricsEnabledRequest, 
  AWS.SES.Transform.UpdateConfigurationSetReputationMetricsEnabledRequestMarshaller, 
  AWS.SES.Transform.UpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller, 
  AWS.SES.Model.UpdateConfigurationSetSendingEnabledResponse, 
  AWS.SES.Model.UpdateConfigurationSetSendingEnabledRequest, 
  AWS.SES.Transform.UpdateConfigurationSetSendingEnabledRequestMarshaller, 
  AWS.SES.Transform.UpdateConfigurationSetSendingEnabledResponseUnmarshaller, 
  AWS.SES.Model.UpdateConfigurationSetTrackingOptionsResponse, 
  AWS.SES.Model.UpdateConfigurationSetTrackingOptionsRequest, 
  AWS.SES.Transform.UpdateConfigurationSetTrackingOptionsRequestMarshaller, 
  AWS.SES.Transform.UpdateConfigurationSetTrackingOptionsResponseUnmarshaller, 
  AWS.SES.Model.UpdateCustomVerificationEmailTemplateResponse, 
  AWS.SES.Model.UpdateCustomVerificationEmailTemplateRequest, 
  AWS.SES.Transform.UpdateCustomVerificationEmailTemplateRequestMarshaller, 
  AWS.SES.Transform.UpdateCustomVerificationEmailTemplateResponseUnmarshaller, 
  AWS.SES.Model.UpdateReceiptRuleResponse, 
  AWS.SES.Model.UpdateReceiptRuleRequest, 
  AWS.SES.Transform.UpdateReceiptRuleRequestMarshaller, 
  AWS.SES.Transform.UpdateReceiptRuleResponseUnmarshaller, 
  AWS.SES.Model.UpdateTemplateResponse, 
  AWS.SES.Model.UpdateTemplateRequest, 
  AWS.SES.Transform.UpdateTemplateRequestMarshaller, 
  AWS.SES.Transform.UpdateTemplateResponseUnmarshaller, 
  AWS.SES.Model.VerifyDomainDkimResponse, 
  AWS.SES.Model.VerifyDomainDkimRequest, 
  AWS.SES.Transform.VerifyDomainDkimRequestMarshaller, 
  AWS.SES.Transform.VerifyDomainDkimResponseUnmarshaller, 
  AWS.SES.Model.VerifyDomainIdentityResponse, 
  AWS.SES.Model.VerifyDomainIdentityRequest, 
  AWS.SES.Transform.VerifyDomainIdentityRequestMarshaller, 
  AWS.SES.Transform.VerifyDomainIdentityResponseUnmarshaller, 
  AWS.SES.Model.VerifyEmailAddressResponse, 
  AWS.SES.Model.VerifyEmailAddressRequest, 
  AWS.SES.Transform.VerifyEmailAddressRequestMarshaller, 
  AWS.SES.Transform.VerifyEmailAddressResponseUnmarshaller, 
  AWS.SES.Model.VerifyEmailIdentityResponse, 
  AWS.SES.Model.VerifyEmailIdentityRequest, 
  AWS.SES.Transform.VerifyEmailIdentityRequestMarshaller, 
  AWS.SES.Transform.VerifyEmailIdentityResponseUnmarshaller;

type
  TAmazonSimpleEmailServiceClient = class(TAmazonServiceClient, IAmazonSimpleEmailService)
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

{ TAmazonSimpleEmailServiceClient }

constructor TAmazonSimpleEmailServiceClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSimpleEmailServiceConfig.Create);
end;

constructor TAmazonSimpleEmailServiceClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSimpleEmailServiceConfig.Create(Region));
end;

constructor TAmazonSimpleEmailServiceClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonSimpleEmailServiceClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonSimpleEmailServiceConfig.Create);
end;

constructor TAmazonSimpleEmailServiceClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonSimpleEmailServiceConfig.Create(Region));
end;

constructor TAmazonSimpleEmailServiceClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonSimpleEmailServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSimpleEmailServiceConfig.Create);
end;

constructor TAmazonSimpleEmailServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSimpleEmailServiceConfig.Create(Region));
end;

constructor TAmazonSimpleEmailServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonSimpleEmailServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSimpleEmailServiceConfig.Create);
end;

constructor TAmazonSimpleEmailServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSimpleEmailServiceConfig.Create(Region));
end;

constructor TAmazonSimpleEmailServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonSimpleEmailServiceClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonSimpleEmailServiceClient.Create;
begin
  FServiceMetadata := TAmazonSimpleEmailServiceMetadata.Create;
end;

function TAmazonSimpleEmailServiceClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonSimpleEmailServiceClient.CloneReceiptRuleSet(Request: ICloneReceiptRuleSetRequest): ICloneReceiptRuleSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCloneReceiptRuleSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCloneReceiptRuleSetResponseUnmarshaller.Instance;
    Result := Invoke<TCloneReceiptRuleSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.CreateConfigurationSet(Request: ICreateConfigurationSetRequest): ICreateConfigurationSetResponse;
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

function TAmazonSimpleEmailServiceClient.CreateConfigurationSetEventDestination(Request: ICreateConfigurationSetEventDestinationRequest): ICreateConfigurationSetEventDestinationResponse;
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

function TAmazonSimpleEmailServiceClient.CreateConfigurationSetTrackingOptions(Request: ICreateConfigurationSetTrackingOptionsRequest): ICreateConfigurationSetTrackingOptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateConfigurationSetTrackingOptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateConfigurationSetTrackingOptionsResponseUnmarshaller.Instance;
    Result := Invoke<TCreateConfigurationSetTrackingOptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.CreateCustomVerificationEmailTemplate(Request: ICreateCustomVerificationEmailTemplateRequest): ICreateCustomVerificationEmailTemplateResponse;
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

function TAmazonSimpleEmailServiceClient.CreateReceiptFilter(Request: ICreateReceiptFilterRequest): ICreateReceiptFilterResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateReceiptFilterRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateReceiptFilterResponseUnmarshaller.Instance;
    Result := Invoke<TCreateReceiptFilterResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.CreateReceiptRule(Request: ICreateReceiptRuleRequest): ICreateReceiptRuleResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateReceiptRuleRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateReceiptRuleResponseUnmarshaller.Instance;
    Result := Invoke<TCreateReceiptRuleResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.CreateReceiptRuleSet(Request: ICreateReceiptRuleSetRequest): ICreateReceiptRuleSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateReceiptRuleSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateReceiptRuleSetResponseUnmarshaller.Instance;
    Result := Invoke<TCreateReceiptRuleSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.CreateTemplate(Request: ICreateTemplateRequest): ICreateTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TCreateTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DeleteConfigurationSet(Request: IDeleteConfigurationSetRequest): IDeleteConfigurationSetResponse;
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

function TAmazonSimpleEmailServiceClient.DeleteConfigurationSetEventDestination(Request: IDeleteConfigurationSetEventDestinationRequest): IDeleteConfigurationSetEventDestinationResponse;
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

function TAmazonSimpleEmailServiceClient.DeleteConfigurationSetTrackingOptions(Request: IDeleteConfigurationSetTrackingOptionsRequest): IDeleteConfigurationSetTrackingOptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteConfigurationSetTrackingOptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteConfigurationSetTrackingOptionsResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteConfigurationSetTrackingOptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DeleteCustomVerificationEmailTemplate(Request: IDeleteCustomVerificationEmailTemplateRequest): IDeleteCustomVerificationEmailTemplateResponse;
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

function TAmazonSimpleEmailServiceClient.DeleteIdentity(Request: IDeleteIdentityRequest): IDeleteIdentityResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteIdentityRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteIdentityResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteIdentityResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DeleteIdentityPolicy(Request: IDeleteIdentityPolicyRequest): IDeleteIdentityPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteIdentityPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteIdentityPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteIdentityPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DeleteReceiptFilter(Request: IDeleteReceiptFilterRequest): IDeleteReceiptFilterResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteReceiptFilterRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteReceiptFilterResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteReceiptFilterResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DeleteReceiptRule(Request: IDeleteReceiptRuleRequest): IDeleteReceiptRuleResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteReceiptRuleRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteReceiptRuleResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteReceiptRuleResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DeleteReceiptRuleSet(Request: IDeleteReceiptRuleSetRequest): IDeleteReceiptRuleSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteReceiptRuleSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteReceiptRuleSetResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteReceiptRuleSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DeleteTemplate(Request: IDeleteTemplateRequest): IDeleteTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DeleteVerifiedEmailAddress(Request: IDeleteVerifiedEmailAddressRequest): IDeleteVerifiedEmailAddressResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteVerifiedEmailAddressRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteVerifiedEmailAddressResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteVerifiedEmailAddressResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DescribeActiveReceiptRuleSet(Request: IDescribeActiveReceiptRuleSetRequest): IDescribeActiveReceiptRuleSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeActiveReceiptRuleSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeActiveReceiptRuleSetResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeActiveReceiptRuleSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DescribeConfigurationSet(Request: IDescribeConfigurationSetRequest): IDescribeConfigurationSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeConfigurationSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeConfigurationSetResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeConfigurationSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DescribeReceiptRule(Request: IDescribeReceiptRuleRequest): IDescribeReceiptRuleResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeReceiptRuleRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeReceiptRuleResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeReceiptRuleResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.DescribeReceiptRuleSet(Request: IDescribeReceiptRuleSetRequest): IDescribeReceiptRuleSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeReceiptRuleSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeReceiptRuleSetResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeReceiptRuleSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.GetAccountSendingEnabled(Request: IGetAccountSendingEnabledRequest): IGetAccountSendingEnabledResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAccountSendingEnabledRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAccountSendingEnabledResponseUnmarshaller.Instance;
    Result := Invoke<TGetAccountSendingEnabledResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.GetCustomVerificationEmailTemplate(Request: IGetCustomVerificationEmailTemplateRequest): IGetCustomVerificationEmailTemplateResponse;
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

function TAmazonSimpleEmailServiceClient.GetIdentityDkimAttributes(Request: IGetIdentityDkimAttributesRequest): IGetIdentityDkimAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetIdentityDkimAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetIdentityDkimAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetIdentityDkimAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.GetIdentityMailFromDomainAttributes(Request: IGetIdentityMailFromDomainAttributesRequest): IGetIdentityMailFromDomainAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetIdentityMailFromDomainAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetIdentityMailFromDomainAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetIdentityMailFromDomainAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.GetIdentityNotificationAttributes(Request: IGetIdentityNotificationAttributesRequest): IGetIdentityNotificationAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetIdentityNotificationAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetIdentityNotificationAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetIdentityNotificationAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.GetIdentityPolicies(Request: IGetIdentityPoliciesRequest): IGetIdentityPoliciesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetIdentityPoliciesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetIdentityPoliciesResponseUnmarshaller.Instance;
    Result := Invoke<TGetIdentityPoliciesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.GetIdentityVerificationAttributes(Request: IGetIdentityVerificationAttributesRequest): IGetIdentityVerificationAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetIdentityVerificationAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetIdentityVerificationAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetIdentityVerificationAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.GetSendQuota: IGetSendQuotaResponse;
begin
  Result := GetSendQuota(IGetSendQuotaRequest(TGetSendQuotaRequest.Create));
end;

function TAmazonSimpleEmailServiceClient.GetSendQuota(Request: IGetSendQuotaRequest): IGetSendQuotaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetSendQuotaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetSendQuotaResponseUnmarshaller.Instance;
    Result := Invoke<TGetSendQuotaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.GetSendStatistics: IGetSendStatisticsResponse;
begin
  Result := GetSendStatistics(IGetSendStatisticsRequest(TGetSendStatisticsRequest.Create));
end;

function TAmazonSimpleEmailServiceClient.GetSendStatistics(Request: IGetSendStatisticsRequest): IGetSendStatisticsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetSendStatisticsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetSendStatisticsResponseUnmarshaller.Instance;
    Result := Invoke<TGetSendStatisticsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.GetTemplate(Request: IGetTemplateRequest): IGetTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TGetTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.ListConfigurationSets(Request: IListConfigurationSetsRequest): IListConfigurationSetsResponse;
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

function TAmazonSimpleEmailServiceClient.ListCustomVerificationEmailTemplates(Request: IListCustomVerificationEmailTemplatesRequest): IListCustomVerificationEmailTemplatesResponse;
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

function TAmazonSimpleEmailServiceClient.ListIdentities: IListIdentitiesResponse;
begin
  Result := ListIdentities(IListIdentitiesRequest(TListIdentitiesRequest.Create));
end;

function TAmazonSimpleEmailServiceClient.ListIdentities(Request: IListIdentitiesRequest): IListIdentitiesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListIdentitiesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListIdentitiesResponseUnmarshaller.Instance;
    Result := Invoke<TListIdentitiesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.ListIdentityPolicies(Request: IListIdentityPoliciesRequest): IListIdentityPoliciesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListIdentityPoliciesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListIdentityPoliciesResponseUnmarshaller.Instance;
    Result := Invoke<TListIdentityPoliciesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.ListReceiptFilters(Request: IListReceiptFiltersRequest): IListReceiptFiltersResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListReceiptFiltersRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListReceiptFiltersResponseUnmarshaller.Instance;
    Result := Invoke<TListReceiptFiltersResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.ListReceiptRuleSets(Request: IListReceiptRuleSetsRequest): IListReceiptRuleSetsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListReceiptRuleSetsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListReceiptRuleSetsResponseUnmarshaller.Instance;
    Result := Invoke<TListReceiptRuleSetsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.ListTemplates(Request: IListTemplatesRequest): IListTemplatesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListTemplatesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListTemplatesResponseUnmarshaller.Instance;
    Result := Invoke<TListTemplatesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.ListVerifiedEmailAddresses: IListVerifiedEmailAddressesResponse;
begin
  Result := ListVerifiedEmailAddresses(IListVerifiedEmailAddressesRequest(TListVerifiedEmailAddressesRequest.Create));
end;

function TAmazonSimpleEmailServiceClient.ListVerifiedEmailAddresses(Request: IListVerifiedEmailAddressesRequest): IListVerifiedEmailAddressesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListVerifiedEmailAddressesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListVerifiedEmailAddressesResponseUnmarshaller.Instance;
    Result := Invoke<TListVerifiedEmailAddressesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.PutConfigurationSetDeliveryOptions(Request: IPutConfigurationSetDeliveryOptionsRequest): IPutConfigurationSetDeliveryOptionsResponse;
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

function TAmazonSimpleEmailServiceClient.PutIdentityPolicy(Request: IPutIdentityPolicyRequest): IPutIdentityPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutIdentityPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutIdentityPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TPutIdentityPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.ReorderReceiptRuleSet(Request: IReorderReceiptRuleSetRequest): IReorderReceiptRuleSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TReorderReceiptRuleSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TReorderReceiptRuleSetResponseUnmarshaller.Instance;
    Result := Invoke<TReorderReceiptRuleSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SendBounce(Request: ISendBounceRequest): ISendBounceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendBounceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendBounceResponseUnmarshaller.Instance;
    Result := Invoke<TSendBounceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SendBulkTemplatedEmail(Request: ISendBulkTemplatedEmailRequest): ISendBulkTemplatedEmailResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendBulkTemplatedEmailRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendBulkTemplatedEmailResponseUnmarshaller.Instance;
    Result := Invoke<TSendBulkTemplatedEmailResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SendCustomVerificationEmail(Request: ISendCustomVerificationEmailRequest): ISendCustomVerificationEmailResponse;
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

function TAmazonSimpleEmailServiceClient.SendEmail(Request: ISendEmailRequest): ISendEmailResponse;
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

function TAmazonSimpleEmailServiceClient.SendRawEmail(Request: ISendRawEmailRequest): ISendRawEmailResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendRawEmailRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendRawEmailResponseUnmarshaller.Instance;
    Result := Invoke<TSendRawEmailResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SendTemplatedEmail(Request: ISendTemplatedEmailRequest): ISendTemplatedEmailResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendTemplatedEmailRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendTemplatedEmailResponseUnmarshaller.Instance;
    Result := Invoke<TSendTemplatedEmailResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SetActiveReceiptRuleSet(Request: ISetActiveReceiptRuleSetRequest): ISetActiveReceiptRuleSetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetActiveReceiptRuleSetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetActiveReceiptRuleSetResponseUnmarshaller.Instance;
    Result := Invoke<TSetActiveReceiptRuleSetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SetIdentityDkimEnabled(Request: ISetIdentityDkimEnabledRequest): ISetIdentityDkimEnabledResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetIdentityDkimEnabledRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetIdentityDkimEnabledResponseUnmarshaller.Instance;
    Result := Invoke<TSetIdentityDkimEnabledResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SetIdentityFeedbackForwardingEnabled(Request: ISetIdentityFeedbackForwardingEnabledRequest): ISetIdentityFeedbackForwardingEnabledResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetIdentityFeedbackForwardingEnabledRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetIdentityFeedbackForwardingEnabledResponseUnmarshaller.Instance;
    Result := Invoke<TSetIdentityFeedbackForwardingEnabledResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SetIdentityHeadersInNotificationsEnabled(Request: ISetIdentityHeadersInNotificationsEnabledRequest): ISetIdentityHeadersInNotificationsEnabledResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetIdentityHeadersInNotificationsEnabledRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetIdentityHeadersInNotificationsEnabledResponseUnmarshaller.Instance;
    Result := Invoke<TSetIdentityHeadersInNotificationsEnabledResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SetIdentityMailFromDomain(Request: ISetIdentityMailFromDomainRequest): ISetIdentityMailFromDomainResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetIdentityMailFromDomainRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetIdentityMailFromDomainResponseUnmarshaller.Instance;
    Result := Invoke<TSetIdentityMailFromDomainResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SetIdentityNotificationTopic(Request: ISetIdentityNotificationTopicRequest): ISetIdentityNotificationTopicResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetIdentityNotificationTopicRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetIdentityNotificationTopicResponseUnmarshaller.Instance;
    Result := Invoke<TSetIdentityNotificationTopicResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.SetReceiptRulePosition(Request: ISetReceiptRulePositionRequest): ISetReceiptRulePositionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetReceiptRulePositionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetReceiptRulePositionResponseUnmarshaller.Instance;
    Result := Invoke<TSetReceiptRulePositionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.TestRenderTemplate(Request: ITestRenderTemplateRequest): ITestRenderTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TTestRenderTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TTestRenderTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TTestRenderTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.UpdateAccountSendingEnabled(Request: IUpdateAccountSendingEnabledRequest): IUpdateAccountSendingEnabledResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateAccountSendingEnabledRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateAccountSendingEnabledResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateAccountSendingEnabledResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.UpdateConfigurationSetEventDestination(Request: IUpdateConfigurationSetEventDestinationRequest): IUpdateConfigurationSetEventDestinationResponse;
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

function TAmazonSimpleEmailServiceClient.UpdateConfigurationSetReputationMetricsEnabled(Request: IUpdateConfigurationSetReputationMetricsEnabledRequest): IUpdateConfigurationSetReputationMetricsEnabledResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateConfigurationSetReputationMetricsEnabledRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateConfigurationSetReputationMetricsEnabledResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateConfigurationSetReputationMetricsEnabledResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.UpdateConfigurationSetSendingEnabled(Request: IUpdateConfigurationSetSendingEnabledRequest): IUpdateConfigurationSetSendingEnabledResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateConfigurationSetSendingEnabledRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateConfigurationSetSendingEnabledResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateConfigurationSetSendingEnabledResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.UpdateConfigurationSetTrackingOptions(Request: IUpdateConfigurationSetTrackingOptionsRequest): IUpdateConfigurationSetTrackingOptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateConfigurationSetTrackingOptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateConfigurationSetTrackingOptionsResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateConfigurationSetTrackingOptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.UpdateCustomVerificationEmailTemplate(Request: IUpdateCustomVerificationEmailTemplateRequest): IUpdateCustomVerificationEmailTemplateResponse;
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

function TAmazonSimpleEmailServiceClient.UpdateReceiptRule(Request: IUpdateReceiptRuleRequest): IUpdateReceiptRuleResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateReceiptRuleRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateReceiptRuleResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateReceiptRuleResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.UpdateTemplate(Request: IUpdateTemplateRequest): IUpdateTemplateResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateTemplateRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateTemplateResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateTemplateResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.VerifyDomainDkim(Request: IVerifyDomainDkimRequest): IVerifyDomainDkimResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TVerifyDomainDkimRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TVerifyDomainDkimResponseUnmarshaller.Instance;
    Result := Invoke<TVerifyDomainDkimResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.VerifyDomainIdentity(Request: IVerifyDomainIdentityRequest): IVerifyDomainIdentityResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TVerifyDomainIdentityRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TVerifyDomainIdentityResponseUnmarshaller.Instance;
    Result := Invoke<TVerifyDomainIdentityResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.VerifyEmailAddress(Request: IVerifyEmailAddressRequest): IVerifyEmailAddressResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TVerifyEmailAddressRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TVerifyEmailAddressResponseUnmarshaller.Instance;
    Result := Invoke<TVerifyEmailAddressResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleEmailServiceClient.VerifyEmailIdentity(Request: IVerifyEmailIdentityRequest): IVerifyEmailIdentityResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TVerifyEmailIdentityRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TVerifyEmailIdentityResponseUnmarshaller.Instance;
    Result := Invoke<TVerifyEmailIdentityResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
