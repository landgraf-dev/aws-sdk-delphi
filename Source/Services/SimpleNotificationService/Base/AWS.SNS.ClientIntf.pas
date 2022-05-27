unit AWS.SNS.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.SNS.Model.AddPermissionResponse, 
  AWS.SNS.Model.AddPermissionRequest, 
  System.Generics.Collections, 
  AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutResponse, 
  AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutRequest, 
  AWS.SNS.Model.ConfirmSubscriptionResponse, 
  AWS.SNS.Model.ConfirmSubscriptionRequest, 
  AWS.SNS.Model.CreatePlatformApplicationResponse, 
  AWS.SNS.Model.CreatePlatformApplicationRequest, 
  AWS.SNS.Model.CreatePlatformEndpointResponse, 
  AWS.SNS.Model.CreatePlatformEndpointRequest, 
  AWS.SNS.Model.CreateSMSSandboxPhoneNumberResponse, 
  AWS.SNS.Model.CreateSMSSandboxPhoneNumberRequest, 
  AWS.SNS.Model.CreateTopicResponse, 
  AWS.SNS.Model.CreateTopicRequest, 
  AWS.SNS.Model.DeleteEndpointResponse, 
  AWS.SNS.Model.DeleteEndpointRequest, 
  AWS.SNS.Model.DeletePlatformApplicationResponse, 
  AWS.SNS.Model.DeletePlatformApplicationRequest, 
  AWS.SNS.Model.DeleteSMSSandboxPhoneNumberResponse, 
  AWS.SNS.Model.DeleteSMSSandboxPhoneNumberRequest, 
  AWS.SNS.Model.DeleteTopicResponse, 
  AWS.SNS.Model.DeleteTopicRequest, 
  AWS.SNS.Model.GetEndpointAttributesResponse, 
  AWS.SNS.Model.GetEndpointAttributesRequest, 
  AWS.SNS.Model.GetPlatformApplicationAttributesResponse, 
  AWS.SNS.Model.GetPlatformApplicationAttributesRequest, 
  AWS.SNS.Model.GetSMSAttributesResponse, 
  AWS.SNS.Model.GetSMSAttributesRequest, 
  AWS.SNS.Model.GetSMSSandboxAccountStatusResponse, 
  AWS.SNS.Model.GetSMSSandboxAccountStatusRequest, 
  AWS.SNS.Model.GetSubscriptionAttributesResponse, 
  AWS.SNS.Model.GetSubscriptionAttributesRequest, 
  AWS.SNS.Model.GetTopicAttributesResponse, 
  AWS.SNS.Model.GetTopicAttributesRequest, 
  AWS.SNS.Model.ListEndpointsByPlatformApplicationResponse, 
  AWS.SNS.Model.ListEndpointsByPlatformApplicationRequest, 
  AWS.SNS.Model.ListOriginationNumbersResponse, 
  AWS.SNS.Model.ListOriginationNumbersRequest, 
  AWS.SNS.Model.ListPhoneNumbersOptedOutResponse, 
  AWS.SNS.Model.ListPhoneNumbersOptedOutRequest, 
  AWS.SNS.Model.ListPlatformApplicationsResponse, 
  AWS.SNS.Model.ListPlatformApplicationsRequest, 
  AWS.SNS.Model.ListSMSSandboxPhoneNumbersResponse, 
  AWS.SNS.Model.ListSMSSandboxPhoneNumbersRequest, 
  AWS.SNS.Model.ListSubscriptionsResponse, 
  AWS.SNS.Model.ListSubscriptionsRequest, 
  AWS.SNS.Model.ListSubscriptionsByTopicResponse, 
  AWS.SNS.Model.ListSubscriptionsByTopicRequest, 
  AWS.SNS.Model.ListTagsForResourceResponse, 
  AWS.SNS.Model.ListTagsForResourceRequest, 
  AWS.SNS.Model.ListTopicsResponse, 
  AWS.SNS.Model.ListTopicsRequest, 
  AWS.SNS.Model.OptInPhoneNumberResponse, 
  AWS.SNS.Model.OptInPhoneNumberRequest, 
  AWS.SNS.Model.PublishResponse, 
  AWS.SNS.Model.PublishRequest, 
  AWS.SNS.Model.PublishBatchResponse, 
  AWS.SNS.Model.PublishBatchRequest, 
  AWS.SNS.Model.RemovePermissionResponse, 
  AWS.SNS.Model.RemovePermissionRequest, 
  AWS.SNS.Model.SetEndpointAttributesResponse, 
  AWS.SNS.Model.SetEndpointAttributesRequest, 
  AWS.SNS.Model.SetPlatformApplicationAttributesResponse, 
  AWS.SNS.Model.SetPlatformApplicationAttributesRequest, 
  AWS.SNS.Model.SetSMSAttributesResponse, 
  AWS.SNS.Model.SetSMSAttributesRequest, 
  AWS.SNS.Model.SetSubscriptionAttributesResponse, 
  AWS.SNS.Model.SetSubscriptionAttributesRequest, 
  AWS.SNS.Model.SetTopicAttributesResponse, 
  AWS.SNS.Model.SetTopicAttributesRequest, 
  AWS.SNS.Model.SubscribeResponse, 
  AWS.SNS.Model.SubscribeRequest, 
  AWS.SNS.Model.TagResourceResponse, 
  AWS.SNS.Model.TagResourceRequest, 
  AWS.SNS.Model.UnsubscribeResponse, 
  AWS.SNS.Model.UnsubscribeRequest, 
  AWS.SNS.Model.UntagResourceResponse, 
  AWS.SNS.Model.UntagResourceRequest, 
  AWS.SNS.Model.VerifySMSSandboxPhoneNumberResponse, 
  AWS.SNS.Model.VerifySMSSandboxPhoneNumberRequest;

type
  IAmazonSimpleNotificationService = interface(IAmazonService)
    function AddPermission(const ATopicArn: string; const ALabel: string; const AAWSAccountId: TList<string>; const AActionName: TList<string>): IAddPermissionResponse; overload;
    function AddPermission(Request: IAddPermissionRequest): IAddPermissionResponse; overload;
    function CheckIfPhoneNumberIsOptedOut(Request: ICheckIfPhoneNumberIsOptedOutRequest): ICheckIfPhoneNumberIsOptedOutResponse; overload;
    function ConfirmSubscription(const ATopicArn: string; const AToken: string; const AAuthenticateOnUnsubscribe: string): IConfirmSubscriptionResponse; overload;
    function ConfirmSubscription(const ATopicArn: string; const AToken: string): IConfirmSubscriptionResponse; overload;
    function ConfirmSubscription(Request: IConfirmSubscriptionRequest): IConfirmSubscriptionResponse; overload;
    function CreatePlatformApplication(Request: ICreatePlatformApplicationRequest): ICreatePlatformApplicationResponse; overload;
    function CreatePlatformEndpoint(Request: ICreatePlatformEndpointRequest): ICreatePlatformEndpointResponse; overload;
    function CreateSMSSandboxPhoneNumber(Request: ICreateSMSSandboxPhoneNumberRequest): ICreateSMSSandboxPhoneNumberResponse; overload;
    function CreateTopic(const AName: string): ICreateTopicResponse; overload;
    function CreateTopic(Request: ICreateTopicRequest): ICreateTopicResponse; overload;
    function DeleteEndpoint(Request: IDeleteEndpointRequest): IDeleteEndpointResponse; overload;
    function DeletePlatformApplication(Request: IDeletePlatformApplicationRequest): IDeletePlatformApplicationResponse; overload;
    function DeleteSMSSandboxPhoneNumber(Request: IDeleteSMSSandboxPhoneNumberRequest): IDeleteSMSSandboxPhoneNumberResponse; overload;
    function DeleteTopic(const ATopicArn: string): IDeleteTopicResponse; overload;
    function DeleteTopic(Request: IDeleteTopicRequest): IDeleteTopicResponse; overload;
    function GetEndpointAttributes(Request: IGetEndpointAttributesRequest): IGetEndpointAttributesResponse; overload;
    function GetPlatformApplicationAttributes(Request: IGetPlatformApplicationAttributesRequest): IGetPlatformApplicationAttributesResponse; overload;
    function GetSMSAttributes(Request: IGetSMSAttributesRequest): IGetSMSAttributesResponse; overload;
    function GetSMSSandboxAccountStatus(Request: IGetSMSSandboxAccountStatusRequest): IGetSMSSandboxAccountStatusResponse; overload;
    function GetSubscriptionAttributes(const ASubscriptionArn: string): IGetSubscriptionAttributesResponse; overload;
    function GetSubscriptionAttributes(Request: IGetSubscriptionAttributesRequest): IGetSubscriptionAttributesResponse; overload;
    function GetTopicAttributes(const ATopicArn: string): IGetTopicAttributesResponse; overload;
    function GetTopicAttributes(Request: IGetTopicAttributesRequest): IGetTopicAttributesResponse; overload;
    function ListEndpointsByPlatformApplication(Request: IListEndpointsByPlatformApplicationRequest): IListEndpointsByPlatformApplicationResponse; overload;
    function ListOriginationNumbers(Request: IListOriginationNumbersRequest): IListOriginationNumbersResponse; overload;
    function ListPhoneNumbersOptedOut(Request: IListPhoneNumbersOptedOutRequest): IListPhoneNumbersOptedOutResponse; overload;
    function ListPlatformApplications: IListPlatformApplicationsResponse; overload;
    function ListPlatformApplications(Request: IListPlatformApplicationsRequest): IListPlatformApplicationsResponse; overload;
    function ListSMSSandboxPhoneNumbers(Request: IListSMSSandboxPhoneNumbersRequest): IListSMSSandboxPhoneNumbersResponse; overload;
    function ListSubscriptions: IListSubscriptionsResponse; overload;
    function ListSubscriptions(const ANextToken: string): IListSubscriptionsResponse; overload;
    function ListSubscriptions(Request: IListSubscriptionsRequest): IListSubscriptionsResponse; overload;
    function ListSubscriptionsByTopic(const ATopicArn: string; const ANextToken: string): IListSubscriptionsByTopicResponse; overload;
    function ListSubscriptionsByTopic(const ATopicArn: string): IListSubscriptionsByTopicResponse; overload;
    function ListSubscriptionsByTopic(Request: IListSubscriptionsByTopicRequest): IListSubscriptionsByTopicResponse; overload;
    function ListTagsForResource(Request: IListTagsForResourceRequest): IListTagsForResourceResponse; overload;
    function ListTopics: IListTopicsResponse; overload;
    function ListTopics(const ANextToken: string): IListTopicsResponse; overload;
    function ListTopics(Request: IListTopicsRequest): IListTopicsResponse; overload;
    function OptInPhoneNumber(Request: IOptInPhoneNumberRequest): IOptInPhoneNumberResponse; overload;
    function Publish(const ATopicArn: string; const AMessage: string): IPublishResponse; overload;
    function Publish(const ATopicArn: string; const AMessage: string; const ASubject: string): IPublishResponse; overload;
    function Publish(Request: IPublishRequest): IPublishResponse; overload;
    function PublishBatch(Request: IPublishBatchRequest): IPublishBatchResponse; overload;
    function RemovePermission(const ATopicArn: string; const ALabel: string): IRemovePermissionResponse; overload;
    function RemovePermission(Request: IRemovePermissionRequest): IRemovePermissionResponse; overload;
    function SetEndpointAttributes(Request: ISetEndpointAttributesRequest): ISetEndpointAttributesResponse; overload;
    function SetPlatformApplicationAttributes(Request: ISetPlatformApplicationAttributesRequest): ISetPlatformApplicationAttributesResponse; overload;
    function SetSMSAttributes(Request: ISetSMSAttributesRequest): ISetSMSAttributesResponse; overload;
    function SetSubscriptionAttributes(const ASubscriptionArn: string; const AAttributeName: string; const AAttributeValue: string): ISetSubscriptionAttributesResponse; overload;
    function SetSubscriptionAttributes(Request: ISetSubscriptionAttributesRequest): ISetSubscriptionAttributesResponse; overload;
    function SetTopicAttributes(const ATopicArn: string; const AAttributeName: string; const AAttributeValue: string): ISetTopicAttributesResponse; overload;
    function SetTopicAttributes(Request: ISetTopicAttributesRequest): ISetTopicAttributesResponse; overload;
    function Subscribe(const ATopicArn: string; const AProtocol: string; const AEndpoint: string): ISubscribeResponse; overload;
    function Subscribe(Request: ISubscribeRequest): ISubscribeResponse; overload;
    function TagResource(Request: ITagResourceRequest): ITagResourceResponse; overload;
    function Unsubscribe(const ASubscriptionArn: string): IUnsubscribeResponse; overload;
    function Unsubscribe(Request: IUnsubscribeRequest): IUnsubscribeResponse; overload;
    function UntagResource(Request: IUntagResourceRequest): IUntagResourceResponse; overload;
    function VerifySMSSandboxPhoneNumber(Request: IVerifySMSSandboxPhoneNumberRequest): IVerifySMSSandboxPhoneNumberResponse; overload;
  end;
  
implementation

end.
