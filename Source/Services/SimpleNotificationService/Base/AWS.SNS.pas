unit AWS.SNS;

interface

uses
  AWS.SNS.Client, 
  AWS.SNS.ClientIntf, 
  AWS.SNS.Config, 
  AWS.SNS.Enums, 
  AWS.SNS.Exception, 
  AWS.SNS.Metadata, 
  AWS.SNS.Model.AddPermissionRequest, 
  AWS.SNS.Model.AddPermissionResponse, 
  AWS.SNS.Model.AuthorizationErrorException, 
  AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutRequest, 
  AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutResponse, 
  AWS.SNS.Model.ConcurrentAccessException, 
  AWS.SNS.Model.ConfirmSubscriptionRequest, 
  AWS.SNS.Model.ConfirmSubscriptionResponse, 
  AWS.SNS.Model.CreatePlatformApplicationRequest, 
  AWS.SNS.Model.CreatePlatformApplicationResponse, 
  AWS.SNS.Model.CreatePlatformEndpointRequest, 
  AWS.SNS.Model.CreatePlatformEndpointResponse, 
  AWS.SNS.Model.CreateSMSSandboxPhoneNumberRequest, 
  AWS.SNS.Model.CreateSMSSandboxPhoneNumberResponse, 
  AWS.SNS.Model.CreateTopicRequest, 
  AWS.SNS.Model.CreateTopicResponse, 
  AWS.SNS.Model.DeleteEndpointRequest, 
  AWS.SNS.Model.DeleteEndpointResponse, 
  AWS.SNS.Model.DeletePlatformApplicationRequest, 
  AWS.SNS.Model.DeletePlatformApplicationResponse, 
  AWS.SNS.Model.DeleteSMSSandboxPhoneNumberRequest, 
  AWS.SNS.Model.DeleteSMSSandboxPhoneNumberResponse, 
  AWS.SNS.Model.DeleteTopicRequest, 
  AWS.SNS.Model.DeleteTopicResponse, 
  AWS.SNS.Model.Endpoint, 
  AWS.SNS.Model.EndpointDisabledException, 
  AWS.SNS.Model.FilterPolicyLimitExceededException, 
  AWS.SNS.Model.GetEndpointAttributesRequest, 
  AWS.SNS.Model.GetEndpointAttributesResponse, 
  AWS.SNS.Model.GetPlatformApplicationAttributesRequest, 
  AWS.SNS.Model.GetPlatformApplicationAttributesResponse, 
  AWS.SNS.Model.GetSMSAttributesRequest, 
  AWS.SNS.Model.GetSMSAttributesResponse, 
  AWS.SNS.Model.GetSMSSandboxAccountStatusRequest, 
  AWS.SNS.Model.GetSMSSandboxAccountStatusResponse, 
  AWS.SNS.Model.GetSubscriptionAttributesRequest, 
  AWS.SNS.Model.GetSubscriptionAttributesResponse, 
  AWS.SNS.Model.GetTopicAttributesRequest, 
  AWS.SNS.Model.GetTopicAttributesResponse, 
  AWS.SNS.Model.InternalErrorException, 
  AWS.SNS.Model.InvalidParameterException, 
  AWS.SNS.Model.InvalidParameterValueException, 
  AWS.SNS.Model.InvalidSecurityException, 
  AWS.SNS.Model.KMSAccessDeniedException, 
  AWS.SNS.Model.KMSDisabledException, 
  AWS.SNS.Model.KMSInvalidStateException, 
  AWS.SNS.Model.KMSNotFoundException, 
  AWS.SNS.Model.KMSOptInRequiredException, 
  AWS.SNS.Model.KMSThrottlingException, 
  AWS.SNS.Model.ListEndpointsByPlatformApplicationRequest, 
  AWS.SNS.Model.ListEndpointsByPlatformApplicationResponse, 
  AWS.SNS.Model.ListOriginationNumbersRequest, 
  AWS.SNS.Model.ListOriginationNumbersResponse, 
  AWS.SNS.Model.ListPhoneNumbersOptedOutRequest, 
  AWS.SNS.Model.ListPhoneNumbersOptedOutResponse, 
  AWS.SNS.Model.ListPlatformApplicationsRequest, 
  AWS.SNS.Model.ListPlatformApplicationsResponse, 
  AWS.SNS.Model.ListSMSSandboxPhoneNumbersRequest, 
  AWS.SNS.Model.ListSMSSandboxPhoneNumbersResponse, 
  AWS.SNS.Model.ListSubscriptionsByTopicRequest, 
  AWS.SNS.Model.ListSubscriptionsByTopicResponse, 
  AWS.SNS.Model.ListSubscriptionsRequest, 
  AWS.SNS.Model.ListSubscriptionsResponse, 
  AWS.SNS.Model.ListTagsForResourceRequest, 
  AWS.SNS.Model.ListTagsForResourceResponse, 
  AWS.SNS.Model.ListTopicsRequest, 
  AWS.SNS.Model.ListTopicsResponse, 
  AWS.SNS.Model.MessageAttributeValue, 
  AWS.SNS.Model.NotFoundException, 
  AWS.SNS.Model.OptedOutException, 
  AWS.SNS.Model.OptInPhoneNumberRequest, 
  AWS.SNS.Model.OptInPhoneNumberResponse, 
  AWS.SNS.Model.PhoneNumberInformation, 
  AWS.SNS.Model.PlatformApplication, 
  AWS.SNS.Model.PlatformApplicationDisabledException, 
  AWS.SNS.Model.PublishRequest, 
  AWS.SNS.Model.PublishResponse, 
  AWS.SNS.Model.RemovePermissionRequest, 
  AWS.SNS.Model.RemovePermissionResponse, 
  AWS.SNS.Model.Request, 
  AWS.SNS.Model.ResourceNotFoundException, 
  AWS.SNS.Model.SetEndpointAttributesRequest, 
  AWS.SNS.Model.SetEndpointAttributesResponse, 
  AWS.SNS.Model.SetPlatformApplicationAttributesRequest, 
  AWS.SNS.Model.SetPlatformApplicationAttributesResponse, 
  AWS.SNS.Model.SetSMSAttributesRequest, 
  AWS.SNS.Model.SetSMSAttributesResponse, 
  AWS.SNS.Model.SetSubscriptionAttributesRequest, 
  AWS.SNS.Model.SetSubscriptionAttributesResponse, 
  AWS.SNS.Model.SetTopicAttributesRequest, 
  AWS.SNS.Model.SetTopicAttributesResponse, 
  AWS.SNS.Model.SMSSandboxPhoneNumber, 
  AWS.SNS.Model.StaleTagException, 
  AWS.SNS.Model.SubscribeRequest, 
  AWS.SNS.Model.SubscribeResponse, 
  AWS.SNS.Model.Subscription, 
  AWS.SNS.Model.SubscriptionLimitExceededException, 
  AWS.SNS.Model.Tag, 
  AWS.SNS.Model.TagLimitExceededException, 
  AWS.SNS.Model.TagPolicyException, 
  AWS.SNS.Model.TagResourceRequest, 
  AWS.SNS.Model.TagResourceResponse, 
  AWS.SNS.Model.ThrottledException, 
  AWS.SNS.Model.Topic, 
  AWS.SNS.Model.TopicLimitExceededException, 
  AWS.SNS.Model.UnsubscribeRequest, 
  AWS.SNS.Model.UnsubscribeResponse, 
  AWS.SNS.Model.UntagResourceRequest, 
  AWS.SNS.Model.UntagResourceResponse, 
  AWS.SNS.Model.UserErrorException, 
  AWS.SNS.Model.ValidationException, 
  AWS.SNS.Model.VerificationException, 
  AWS.SNS.Model.VerifySMSSandboxPhoneNumberRequest, 
  AWS.SNS.Model.VerifySMSSandboxPhoneNumberResponse;

type
  EAmazonSimpleNotificationServiceException = AWS.SNS.Exception.EAmazonSimpleNotificationServiceException;
  EAuthorizationErrorException = AWS.SNS.Model.AuthorizationErrorException.EAuthorizationErrorException;
  EConcurrentAccessException = AWS.SNS.Model.ConcurrentAccessException.EConcurrentAccessException;
  EEndpointDisabledException = AWS.SNS.Model.EndpointDisabledException.EEndpointDisabledException;
  EFilterPolicyLimitExceededException = AWS.SNS.Model.FilterPolicyLimitExceededException.EFilterPolicyLimitExceededException;
  EInternalErrorException = AWS.SNS.Model.InternalErrorException.EInternalErrorException;
  EInvalidParameterException = AWS.SNS.Model.InvalidParameterException.EInvalidParameterException;
  EInvalidParameterValueException = AWS.SNS.Model.InvalidParameterValueException.EInvalidParameterValueException;
  EInvalidSecurityException = AWS.SNS.Model.InvalidSecurityException.EInvalidSecurityException;
  EKMSAccessDeniedException = AWS.SNS.Model.KMSAccessDeniedException.EKMSAccessDeniedException;
  EKMSDisabledException = AWS.SNS.Model.KMSDisabledException.EKMSDisabledException;
  EKMSInvalidStateException = AWS.SNS.Model.KMSInvalidStateException.EKMSInvalidStateException;
  EKMSNotFoundException = AWS.SNS.Model.KMSNotFoundException.EKMSNotFoundException;
  EKMSOptInRequiredException = AWS.SNS.Model.KMSOptInRequiredException.EKMSOptInRequiredException;
  EKMSThrottlingException = AWS.SNS.Model.KMSThrottlingException.EKMSThrottlingException;
  ENotFoundException = AWS.SNS.Model.NotFoundException.ENotFoundException;
  EOptedOutException = AWS.SNS.Model.OptedOutException.EOptedOutException;
  EPlatformApplicationDisabledException = AWS.SNS.Model.PlatformApplicationDisabledException.EPlatformApplicationDisabledException;
  EResourceNotFoundException = AWS.SNS.Model.ResourceNotFoundException.EResourceNotFoundException;
  EStaleTagException = AWS.SNS.Model.StaleTagException.EStaleTagException;
  ESubscriptionLimitExceededException = AWS.SNS.Model.SubscriptionLimitExceededException.ESubscriptionLimitExceededException;
  ETagLimitExceededException = AWS.SNS.Model.TagLimitExceededException.ETagLimitExceededException;
  ETagPolicyException = AWS.SNS.Model.TagPolicyException.ETagPolicyException;
  EThrottledException = AWS.SNS.Model.ThrottledException.EThrottledException;
  ETopicLimitExceededException = AWS.SNS.Model.TopicLimitExceededException.ETopicLimitExceededException;
  EUserErrorException = AWS.SNS.Model.UserErrorException.EUserErrorException;
  EValidationException = AWS.SNS.Model.ValidationException.EValidationException;
  EVerificationException = AWS.SNS.Model.VerificationException.EVerificationException;
  IAddPermissionRequest = AWS.SNS.Model.AddPermissionRequest.IAddPermissionRequest;
  IAddPermissionResponse = AWS.SNS.Model.AddPermissionResponse.IAddPermissionResponse;
  IAmazonSimpleNotificationService = AWS.SNS.ClientIntf.IAmazonSimpleNotificationService;
  ICheckIfPhoneNumberIsOptedOutRequest = AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutRequest.ICheckIfPhoneNumberIsOptedOutRequest;
  ICheckIfPhoneNumberIsOptedOutResponse = AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutResponse.ICheckIfPhoneNumberIsOptedOutResponse;
  IConfirmSubscriptionRequest = AWS.SNS.Model.ConfirmSubscriptionRequest.IConfirmSubscriptionRequest;
  IConfirmSubscriptionResponse = AWS.SNS.Model.ConfirmSubscriptionResponse.IConfirmSubscriptionResponse;
  ICreatePlatformApplicationRequest = AWS.SNS.Model.CreatePlatformApplicationRequest.ICreatePlatformApplicationRequest;
  ICreatePlatformApplicationResponse = AWS.SNS.Model.CreatePlatformApplicationResponse.ICreatePlatformApplicationResponse;
  ICreatePlatformEndpointRequest = AWS.SNS.Model.CreatePlatformEndpointRequest.ICreatePlatformEndpointRequest;
  ICreatePlatformEndpointResponse = AWS.SNS.Model.CreatePlatformEndpointResponse.ICreatePlatformEndpointResponse;
  ICreateSMSSandboxPhoneNumberRequest = AWS.SNS.Model.CreateSMSSandboxPhoneNumberRequest.ICreateSMSSandboxPhoneNumberRequest;
  ICreateSMSSandboxPhoneNumberResponse = AWS.SNS.Model.CreateSMSSandboxPhoneNumberResponse.ICreateSMSSandboxPhoneNumberResponse;
  ICreateTopicRequest = AWS.SNS.Model.CreateTopicRequest.ICreateTopicRequest;
  ICreateTopicResponse = AWS.SNS.Model.CreateTopicResponse.ICreateTopicResponse;
  IDeleteEndpointRequest = AWS.SNS.Model.DeleteEndpointRequest.IDeleteEndpointRequest;
  IDeleteEndpointResponse = AWS.SNS.Model.DeleteEndpointResponse.IDeleteEndpointResponse;
  IDeletePlatformApplicationRequest = AWS.SNS.Model.DeletePlatformApplicationRequest.IDeletePlatformApplicationRequest;
  IDeletePlatformApplicationResponse = AWS.SNS.Model.DeletePlatformApplicationResponse.IDeletePlatformApplicationResponse;
  IDeleteSMSSandboxPhoneNumberRequest = AWS.SNS.Model.DeleteSMSSandboxPhoneNumberRequest.IDeleteSMSSandboxPhoneNumberRequest;
  IDeleteSMSSandboxPhoneNumberResponse = AWS.SNS.Model.DeleteSMSSandboxPhoneNumberResponse.IDeleteSMSSandboxPhoneNumberResponse;
  IDeleteTopicRequest = AWS.SNS.Model.DeleteTopicRequest.IDeleteTopicRequest;
  IDeleteTopicResponse = AWS.SNS.Model.DeleteTopicResponse.IDeleteTopicResponse;
  IEndpoint = AWS.SNS.Model.Endpoint.IEndpoint;
  IGetEndpointAttributesRequest = AWS.SNS.Model.GetEndpointAttributesRequest.IGetEndpointAttributesRequest;
  IGetEndpointAttributesResponse = AWS.SNS.Model.GetEndpointAttributesResponse.IGetEndpointAttributesResponse;
  IGetPlatformApplicationAttributesRequest = AWS.SNS.Model.GetPlatformApplicationAttributesRequest.IGetPlatformApplicationAttributesRequest;
  IGetPlatformApplicationAttributesResponse = AWS.SNS.Model.GetPlatformApplicationAttributesResponse.IGetPlatformApplicationAttributesResponse;
  IGetSMSAttributesRequest = AWS.SNS.Model.GetSMSAttributesRequest.IGetSMSAttributesRequest;
  IGetSMSAttributesResponse = AWS.SNS.Model.GetSMSAttributesResponse.IGetSMSAttributesResponse;
  IGetSMSSandboxAccountStatusRequest = AWS.SNS.Model.GetSMSSandboxAccountStatusRequest.IGetSMSSandboxAccountStatusRequest;
  IGetSMSSandboxAccountStatusResponse = AWS.SNS.Model.GetSMSSandboxAccountStatusResponse.IGetSMSSandboxAccountStatusResponse;
  IGetSubscriptionAttributesRequest = AWS.SNS.Model.GetSubscriptionAttributesRequest.IGetSubscriptionAttributesRequest;
  IGetSubscriptionAttributesResponse = AWS.SNS.Model.GetSubscriptionAttributesResponse.IGetSubscriptionAttributesResponse;
  IGetTopicAttributesRequest = AWS.SNS.Model.GetTopicAttributesRequest.IGetTopicAttributesRequest;
  IGetTopicAttributesResponse = AWS.SNS.Model.GetTopicAttributesResponse.IGetTopicAttributesResponse;
  IListEndpointsByPlatformApplicationRequest = AWS.SNS.Model.ListEndpointsByPlatformApplicationRequest.IListEndpointsByPlatformApplicationRequest;
  IListEndpointsByPlatformApplicationResponse = AWS.SNS.Model.ListEndpointsByPlatformApplicationResponse.IListEndpointsByPlatformApplicationResponse;
  IListOriginationNumbersRequest = AWS.SNS.Model.ListOriginationNumbersRequest.IListOriginationNumbersRequest;
  IListOriginationNumbersResponse = AWS.SNS.Model.ListOriginationNumbersResponse.IListOriginationNumbersResponse;
  IListPhoneNumbersOptedOutRequest = AWS.SNS.Model.ListPhoneNumbersOptedOutRequest.IListPhoneNumbersOptedOutRequest;
  IListPhoneNumbersOptedOutResponse = AWS.SNS.Model.ListPhoneNumbersOptedOutResponse.IListPhoneNumbersOptedOutResponse;
  IListPlatformApplicationsRequest = AWS.SNS.Model.ListPlatformApplicationsRequest.IListPlatformApplicationsRequest;
  IListPlatformApplicationsResponse = AWS.SNS.Model.ListPlatformApplicationsResponse.IListPlatformApplicationsResponse;
  IListSMSSandboxPhoneNumbersRequest = AWS.SNS.Model.ListSMSSandboxPhoneNumbersRequest.IListSMSSandboxPhoneNumbersRequest;
  IListSMSSandboxPhoneNumbersResponse = AWS.SNS.Model.ListSMSSandboxPhoneNumbersResponse.IListSMSSandboxPhoneNumbersResponse;
  IListSubscriptionsByTopicRequest = AWS.SNS.Model.ListSubscriptionsByTopicRequest.IListSubscriptionsByTopicRequest;
  IListSubscriptionsByTopicResponse = AWS.SNS.Model.ListSubscriptionsByTopicResponse.IListSubscriptionsByTopicResponse;
  IListSubscriptionsRequest = AWS.SNS.Model.ListSubscriptionsRequest.IListSubscriptionsRequest;
  IListSubscriptionsResponse = AWS.SNS.Model.ListSubscriptionsResponse.IListSubscriptionsResponse;
  IListTagsForResourceRequest = AWS.SNS.Model.ListTagsForResourceRequest.IListTagsForResourceRequest;
  IListTagsForResourceResponse = AWS.SNS.Model.ListTagsForResourceResponse.IListTagsForResourceResponse;
  IListTopicsRequest = AWS.SNS.Model.ListTopicsRequest.IListTopicsRequest;
  IListTopicsResponse = AWS.SNS.Model.ListTopicsResponse.IListTopicsResponse;
  IMessageAttributeValue = AWS.SNS.Model.MessageAttributeValue.IMessageAttributeValue;
  IOptInPhoneNumberRequest = AWS.SNS.Model.OptInPhoneNumberRequest.IOptInPhoneNumberRequest;
  IOptInPhoneNumberResponse = AWS.SNS.Model.OptInPhoneNumberResponse.IOptInPhoneNumberResponse;
  IPhoneNumberInformation = AWS.SNS.Model.PhoneNumberInformation.IPhoneNumberInformation;
  IPlatformApplication = AWS.SNS.Model.PlatformApplication.IPlatformApplication;
  IPublishRequest = AWS.SNS.Model.PublishRequest.IPublishRequest;
  IPublishResponse = AWS.SNS.Model.PublishResponse.IPublishResponse;
  IRemovePermissionRequest = AWS.SNS.Model.RemovePermissionRequest.IRemovePermissionRequest;
  IRemovePermissionResponse = AWS.SNS.Model.RemovePermissionResponse.IRemovePermissionResponse;
  ISetEndpointAttributesRequest = AWS.SNS.Model.SetEndpointAttributesRequest.ISetEndpointAttributesRequest;
  ISetEndpointAttributesResponse = AWS.SNS.Model.SetEndpointAttributesResponse.ISetEndpointAttributesResponse;
  ISetPlatformApplicationAttributesRequest = AWS.SNS.Model.SetPlatformApplicationAttributesRequest.ISetPlatformApplicationAttributesRequest;
  ISetPlatformApplicationAttributesResponse = AWS.SNS.Model.SetPlatformApplicationAttributesResponse.ISetPlatformApplicationAttributesResponse;
  ISetSMSAttributesRequest = AWS.SNS.Model.SetSMSAttributesRequest.ISetSMSAttributesRequest;
  ISetSMSAttributesResponse = AWS.SNS.Model.SetSMSAttributesResponse.ISetSMSAttributesResponse;
  ISetSubscriptionAttributesRequest = AWS.SNS.Model.SetSubscriptionAttributesRequest.ISetSubscriptionAttributesRequest;
  ISetSubscriptionAttributesResponse = AWS.SNS.Model.SetSubscriptionAttributesResponse.ISetSubscriptionAttributesResponse;
  ISetTopicAttributesRequest = AWS.SNS.Model.SetTopicAttributesRequest.ISetTopicAttributesRequest;
  ISetTopicAttributesResponse = AWS.SNS.Model.SetTopicAttributesResponse.ISetTopicAttributesResponse;
  ISMSSandboxPhoneNumber = AWS.SNS.Model.SMSSandboxPhoneNumber.ISMSSandboxPhoneNumber;
  ISubscribeRequest = AWS.SNS.Model.SubscribeRequest.ISubscribeRequest;
  ISubscribeResponse = AWS.SNS.Model.SubscribeResponse.ISubscribeResponse;
  ISubscription = AWS.SNS.Model.Subscription.ISubscription;
  ITag = AWS.SNS.Model.Tag.ITag;
  ITagResourceRequest = AWS.SNS.Model.TagResourceRequest.ITagResourceRequest;
  ITagResourceResponse = AWS.SNS.Model.TagResourceResponse.ITagResourceResponse;
  ITopic = AWS.SNS.Model.Topic.ITopic;
  IUnsubscribeRequest = AWS.SNS.Model.UnsubscribeRequest.IUnsubscribeRequest;
  IUnsubscribeResponse = AWS.SNS.Model.UnsubscribeResponse.IUnsubscribeResponse;
  IUntagResourceRequest = AWS.SNS.Model.UntagResourceRequest.IUntagResourceRequest;
  IUntagResourceResponse = AWS.SNS.Model.UntagResourceResponse.IUntagResourceResponse;
  IVerifySMSSandboxPhoneNumberRequest = AWS.SNS.Model.VerifySMSSandboxPhoneNumberRequest.IVerifySMSSandboxPhoneNumberRequest;
  IVerifySMSSandboxPhoneNumberResponse = AWS.SNS.Model.VerifySMSSandboxPhoneNumberResponse.IVerifySMSSandboxPhoneNumberResponse;
  TAddPermissionRequest = AWS.SNS.Model.AddPermissionRequest.TAddPermissionRequest;
  TAddPermissionResponse = AWS.SNS.Model.AddPermissionResponse.TAddPermissionResponse;
  TAmazonSimpleNotificationServiceClient = AWS.SNS.Client.TAmazonSimpleNotificationServiceClient;
  TAmazonSimpleNotificationServiceConfig = AWS.SNS.Config.TAmazonSimpleNotificationServiceConfig;
  TAmazonSimpleNotificationServiceMetadata = AWS.SNS.Metadata.TAmazonSimpleNotificationServiceMetadata;
  TAmazonSimpleNotificationServiceRequest = AWS.SNS.Model.Request.TAmazonSimpleNotificationServiceRequest;
  TCheckIfPhoneNumberIsOptedOutRequest = AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutRequest.TCheckIfPhoneNumberIsOptedOutRequest;
  TCheckIfPhoneNumberIsOptedOutResponse = AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutResponse.TCheckIfPhoneNumberIsOptedOutResponse;
  TConfirmSubscriptionRequest = AWS.SNS.Model.ConfirmSubscriptionRequest.TConfirmSubscriptionRequest;
  TConfirmSubscriptionResponse = AWS.SNS.Model.ConfirmSubscriptionResponse.TConfirmSubscriptionResponse;
  TCreatePlatformApplicationRequest = AWS.SNS.Model.CreatePlatformApplicationRequest.TCreatePlatformApplicationRequest;
  TCreatePlatformApplicationResponse = AWS.SNS.Model.CreatePlatformApplicationResponse.TCreatePlatformApplicationResponse;
  TCreatePlatformEndpointRequest = AWS.SNS.Model.CreatePlatformEndpointRequest.TCreatePlatformEndpointRequest;
  TCreatePlatformEndpointResponse = AWS.SNS.Model.CreatePlatformEndpointResponse.TCreatePlatformEndpointResponse;
  TCreateSMSSandboxPhoneNumberRequest = AWS.SNS.Model.CreateSMSSandboxPhoneNumberRequest.TCreateSMSSandboxPhoneNumberRequest;
  TCreateSMSSandboxPhoneNumberResponse = AWS.SNS.Model.CreateSMSSandboxPhoneNumberResponse.TCreateSMSSandboxPhoneNumberResponse;
  TCreateTopicRequest = AWS.SNS.Model.CreateTopicRequest.TCreateTopicRequest;
  TCreateTopicResponse = AWS.SNS.Model.CreateTopicResponse.TCreateTopicResponse;
  TDeleteEndpointRequest = AWS.SNS.Model.DeleteEndpointRequest.TDeleteEndpointRequest;
  TDeleteEndpointResponse = AWS.SNS.Model.DeleteEndpointResponse.TDeleteEndpointResponse;
  TDeletePlatformApplicationRequest = AWS.SNS.Model.DeletePlatformApplicationRequest.TDeletePlatformApplicationRequest;
  TDeletePlatformApplicationResponse = AWS.SNS.Model.DeletePlatformApplicationResponse.TDeletePlatformApplicationResponse;
  TDeleteSMSSandboxPhoneNumberRequest = AWS.SNS.Model.DeleteSMSSandboxPhoneNumberRequest.TDeleteSMSSandboxPhoneNumberRequest;
  TDeleteSMSSandboxPhoneNumberResponse = AWS.SNS.Model.DeleteSMSSandboxPhoneNumberResponse.TDeleteSMSSandboxPhoneNumberResponse;
  TDeleteTopicRequest = AWS.SNS.Model.DeleteTopicRequest.TDeleteTopicRequest;
  TDeleteTopicResponse = AWS.SNS.Model.DeleteTopicResponse.TDeleteTopicResponse;
  TEndpoint = AWS.SNS.Model.Endpoint.TEndpoint;
  TGetEndpointAttributesRequest = AWS.SNS.Model.GetEndpointAttributesRequest.TGetEndpointAttributesRequest;
  TGetEndpointAttributesResponse = AWS.SNS.Model.GetEndpointAttributesResponse.TGetEndpointAttributesResponse;
  TGetPlatformApplicationAttributesRequest = AWS.SNS.Model.GetPlatformApplicationAttributesRequest.TGetPlatformApplicationAttributesRequest;
  TGetPlatformApplicationAttributesResponse = AWS.SNS.Model.GetPlatformApplicationAttributesResponse.TGetPlatformApplicationAttributesResponse;
  TGetSMSAttributesRequest = AWS.SNS.Model.GetSMSAttributesRequest.TGetSMSAttributesRequest;
  TGetSMSAttributesResponse = AWS.SNS.Model.GetSMSAttributesResponse.TGetSMSAttributesResponse;
  TGetSMSSandboxAccountStatusRequest = AWS.SNS.Model.GetSMSSandboxAccountStatusRequest.TGetSMSSandboxAccountStatusRequest;
  TGetSMSSandboxAccountStatusResponse = AWS.SNS.Model.GetSMSSandboxAccountStatusResponse.TGetSMSSandboxAccountStatusResponse;
  TGetSubscriptionAttributesRequest = AWS.SNS.Model.GetSubscriptionAttributesRequest.TGetSubscriptionAttributesRequest;
  TGetSubscriptionAttributesResponse = AWS.SNS.Model.GetSubscriptionAttributesResponse.TGetSubscriptionAttributesResponse;
  TGetTopicAttributesRequest = AWS.SNS.Model.GetTopicAttributesRequest.TGetTopicAttributesRequest;
  TGetTopicAttributesResponse = AWS.SNS.Model.GetTopicAttributesResponse.TGetTopicAttributesResponse;
  TLanguageCodeString = AWS.SNS.Enums.TLanguageCodeString;
  TListEndpointsByPlatformApplicationRequest = AWS.SNS.Model.ListEndpointsByPlatformApplicationRequest.TListEndpointsByPlatformApplicationRequest;
  TListEndpointsByPlatformApplicationResponse = AWS.SNS.Model.ListEndpointsByPlatformApplicationResponse.TListEndpointsByPlatformApplicationResponse;
  TListOriginationNumbersRequest = AWS.SNS.Model.ListOriginationNumbersRequest.TListOriginationNumbersRequest;
  TListOriginationNumbersResponse = AWS.SNS.Model.ListOriginationNumbersResponse.TListOriginationNumbersResponse;
  TListPhoneNumbersOptedOutRequest = AWS.SNS.Model.ListPhoneNumbersOptedOutRequest.TListPhoneNumbersOptedOutRequest;
  TListPhoneNumbersOptedOutResponse = AWS.SNS.Model.ListPhoneNumbersOptedOutResponse.TListPhoneNumbersOptedOutResponse;
  TListPlatformApplicationsRequest = AWS.SNS.Model.ListPlatformApplicationsRequest.TListPlatformApplicationsRequest;
  TListPlatformApplicationsResponse = AWS.SNS.Model.ListPlatformApplicationsResponse.TListPlatformApplicationsResponse;
  TListSMSSandboxPhoneNumbersRequest = AWS.SNS.Model.ListSMSSandboxPhoneNumbersRequest.TListSMSSandboxPhoneNumbersRequest;
  TListSMSSandboxPhoneNumbersResponse = AWS.SNS.Model.ListSMSSandboxPhoneNumbersResponse.TListSMSSandboxPhoneNumbersResponse;
  TListSubscriptionsByTopicRequest = AWS.SNS.Model.ListSubscriptionsByTopicRequest.TListSubscriptionsByTopicRequest;
  TListSubscriptionsByTopicResponse = AWS.SNS.Model.ListSubscriptionsByTopicResponse.TListSubscriptionsByTopicResponse;
  TListSubscriptionsRequest = AWS.SNS.Model.ListSubscriptionsRequest.TListSubscriptionsRequest;
  TListSubscriptionsResponse = AWS.SNS.Model.ListSubscriptionsResponse.TListSubscriptionsResponse;
  TListTagsForResourceRequest = AWS.SNS.Model.ListTagsForResourceRequest.TListTagsForResourceRequest;
  TListTagsForResourceResponse = AWS.SNS.Model.ListTagsForResourceResponse.TListTagsForResourceResponse;
  TListTopicsRequest = AWS.SNS.Model.ListTopicsRequest.TListTopicsRequest;
  TListTopicsResponse = AWS.SNS.Model.ListTopicsResponse.TListTopicsResponse;
  TMessageAttributeValue = AWS.SNS.Model.MessageAttributeValue.TMessageAttributeValue;
  TNumberCapability = AWS.SNS.Enums.TNumberCapability;
  TOptInPhoneNumberRequest = AWS.SNS.Model.OptInPhoneNumberRequest.TOptInPhoneNumberRequest;
  TOptInPhoneNumberResponse = AWS.SNS.Model.OptInPhoneNumberResponse.TOptInPhoneNumberResponse;
  TPhoneNumberInformation = AWS.SNS.Model.PhoneNumberInformation.TPhoneNumberInformation;
  TPlatformApplication = AWS.SNS.Model.PlatformApplication.TPlatformApplication;
  TPublishRequest = AWS.SNS.Model.PublishRequest.TPublishRequest;
  TPublishResponse = AWS.SNS.Model.PublishResponse.TPublishResponse;
  TRemovePermissionRequest = AWS.SNS.Model.RemovePermissionRequest.TRemovePermissionRequest;
  TRemovePermissionResponse = AWS.SNS.Model.RemovePermissionResponse.TRemovePermissionResponse;
  TRouteType = AWS.SNS.Enums.TRouteType;
  TSetEndpointAttributesRequest = AWS.SNS.Model.SetEndpointAttributesRequest.TSetEndpointAttributesRequest;
  TSetEndpointAttributesResponse = AWS.SNS.Model.SetEndpointAttributesResponse.TSetEndpointAttributesResponse;
  TSetPlatformApplicationAttributesRequest = AWS.SNS.Model.SetPlatformApplicationAttributesRequest.TSetPlatformApplicationAttributesRequest;
  TSetPlatformApplicationAttributesResponse = AWS.SNS.Model.SetPlatformApplicationAttributesResponse.TSetPlatformApplicationAttributesResponse;
  TSetSMSAttributesRequest = AWS.SNS.Model.SetSMSAttributesRequest.TSetSMSAttributesRequest;
  TSetSMSAttributesResponse = AWS.SNS.Model.SetSMSAttributesResponse.TSetSMSAttributesResponse;
  TSetSubscriptionAttributesRequest = AWS.SNS.Model.SetSubscriptionAttributesRequest.TSetSubscriptionAttributesRequest;
  TSetSubscriptionAttributesResponse = AWS.SNS.Model.SetSubscriptionAttributesResponse.TSetSubscriptionAttributesResponse;
  TSetTopicAttributesRequest = AWS.SNS.Model.SetTopicAttributesRequest.TSetTopicAttributesRequest;
  TSetTopicAttributesResponse = AWS.SNS.Model.SetTopicAttributesResponse.TSetTopicAttributesResponse;
  TSMSSandboxPhoneNumber = AWS.SNS.Model.SMSSandboxPhoneNumber.TSMSSandboxPhoneNumber;
  TSMSSandboxPhoneNumberVerificationStatus = AWS.SNS.Enums.TSMSSandboxPhoneNumberVerificationStatus;
  TSubscribeRequest = AWS.SNS.Model.SubscribeRequest.TSubscribeRequest;
  TSubscribeResponse = AWS.SNS.Model.SubscribeResponse.TSubscribeResponse;
  TSubscription = AWS.SNS.Model.Subscription.TSubscription;
  TTag = AWS.SNS.Model.Tag.TTag;
  TTagResourceRequest = AWS.SNS.Model.TagResourceRequest.TTagResourceRequest;
  TTagResourceResponse = AWS.SNS.Model.TagResourceResponse.TTagResourceResponse;
  TTopic = AWS.SNS.Model.Topic.TTopic;
  TUnsubscribeRequest = AWS.SNS.Model.UnsubscribeRequest.TUnsubscribeRequest;
  TUnsubscribeResponse = AWS.SNS.Model.UnsubscribeResponse.TUnsubscribeResponse;
  TUntagResourceRequest = AWS.SNS.Model.UntagResourceRequest.TUntagResourceRequest;
  TUntagResourceResponse = AWS.SNS.Model.UntagResourceResponse.TUntagResourceResponse;
  TVerifySMSSandboxPhoneNumberRequest = AWS.SNS.Model.VerifySMSSandboxPhoneNumberRequest.TVerifySMSSandboxPhoneNumberRequest;
  TVerifySMSSandboxPhoneNumberResponse = AWS.SNS.Model.VerifySMSSandboxPhoneNumberResponse.TVerifySMSSandboxPhoneNumberResponse;
  
implementation

end.
