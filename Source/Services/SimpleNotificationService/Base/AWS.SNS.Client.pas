unit AWS.SNS.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.SNS.ClientIntf, 
  AWS.SNS.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.SNS.Metadata, 
  AWS.Auth.Signer, 
  AWS.SNS.Model.AddPermissionResponse, 
  AWS.SNS.Model.AddPermissionRequest, 
  System.Generics.Collections, 
  AWS.Internal.InvokeOptions, 
  AWS.SNS.Transform.AddPermissionRequestMarshaller, 
  AWS.SNS.Transform.AddPermissionResponseUnmarshaller, 
  AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutResponse, 
  AWS.SNS.Model.CheckIfPhoneNumberIsOptedOutRequest, 
  AWS.SNS.Transform.CheckIfPhoneNumberIsOptedOutRequestMarshaller, 
  AWS.SNS.Transform.CheckIfPhoneNumberIsOptedOutResponseUnmarshaller, 
  AWS.SNS.Model.ConfirmSubscriptionResponse, 
  AWS.SNS.Model.ConfirmSubscriptionRequest, 
  AWS.SNS.Transform.ConfirmSubscriptionRequestMarshaller, 
  AWS.SNS.Transform.ConfirmSubscriptionResponseUnmarshaller, 
  AWS.SNS.Model.CreatePlatformApplicationResponse, 
  AWS.SNS.Model.CreatePlatformApplicationRequest, 
  AWS.SNS.Transform.CreatePlatformApplicationRequestMarshaller, 
  AWS.SNS.Transform.CreatePlatformApplicationResponseUnmarshaller, 
  AWS.SNS.Model.CreatePlatformEndpointResponse, 
  AWS.SNS.Model.CreatePlatformEndpointRequest, 
  AWS.SNS.Transform.CreatePlatformEndpointRequestMarshaller, 
  AWS.SNS.Transform.CreatePlatformEndpointResponseUnmarshaller, 
  AWS.SNS.Model.CreateSMSSandboxPhoneNumberResponse, 
  AWS.SNS.Model.CreateSMSSandboxPhoneNumberRequest, 
  AWS.SNS.Transform.CreateSMSSandboxPhoneNumberRequestMarshaller, 
  AWS.SNS.Transform.CreateSMSSandboxPhoneNumberResponseUnmarshaller, 
  AWS.SNS.Model.CreateTopicResponse, 
  AWS.SNS.Model.CreateTopicRequest, 
  AWS.SNS.Transform.CreateTopicRequestMarshaller, 
  AWS.SNS.Transform.CreateTopicResponseUnmarshaller, 
  AWS.SNS.Model.DeleteEndpointResponse, 
  AWS.SNS.Model.DeleteEndpointRequest, 
  AWS.SNS.Transform.DeleteEndpointRequestMarshaller, 
  AWS.SNS.Transform.DeleteEndpointResponseUnmarshaller, 
  AWS.SNS.Model.DeletePlatformApplicationResponse, 
  AWS.SNS.Model.DeletePlatformApplicationRequest, 
  AWS.SNS.Transform.DeletePlatformApplicationRequestMarshaller, 
  AWS.SNS.Transform.DeletePlatformApplicationResponseUnmarshaller, 
  AWS.SNS.Model.DeleteSMSSandboxPhoneNumberResponse, 
  AWS.SNS.Model.DeleteSMSSandboxPhoneNumberRequest, 
  AWS.SNS.Transform.DeleteSMSSandboxPhoneNumberRequestMarshaller, 
  AWS.SNS.Transform.DeleteSMSSandboxPhoneNumberResponseUnmarshaller, 
  AWS.SNS.Model.DeleteTopicResponse, 
  AWS.SNS.Model.DeleteTopicRequest, 
  AWS.SNS.Transform.DeleteTopicRequestMarshaller, 
  AWS.SNS.Transform.DeleteTopicResponseUnmarshaller, 
  AWS.SNS.Model.GetEndpointAttributesResponse, 
  AWS.SNS.Model.GetEndpointAttributesRequest, 
  AWS.SNS.Transform.GetEndpointAttributesRequestMarshaller, 
  AWS.SNS.Transform.GetEndpointAttributesResponseUnmarshaller, 
  AWS.SNS.Model.GetPlatformApplicationAttributesResponse, 
  AWS.SNS.Model.GetPlatformApplicationAttributesRequest, 
  AWS.SNS.Transform.GetPlatformApplicationAttributesRequestMarshaller, 
  AWS.SNS.Transform.GetPlatformApplicationAttributesResponseUnmarshaller, 
  AWS.SNS.Model.GetSMSAttributesResponse, 
  AWS.SNS.Model.GetSMSAttributesRequest, 
  AWS.SNS.Transform.GetSMSAttributesRequestMarshaller, 
  AWS.SNS.Transform.GetSMSAttributesResponseUnmarshaller, 
  AWS.SNS.Model.GetSMSSandboxAccountStatusResponse, 
  AWS.SNS.Model.GetSMSSandboxAccountStatusRequest, 
  AWS.SNS.Transform.GetSMSSandboxAccountStatusRequestMarshaller, 
  AWS.SNS.Transform.GetSMSSandboxAccountStatusResponseUnmarshaller, 
  AWS.SNS.Model.GetSubscriptionAttributesResponse, 
  AWS.SNS.Model.GetSubscriptionAttributesRequest, 
  AWS.SNS.Transform.GetSubscriptionAttributesRequestMarshaller, 
  AWS.SNS.Transform.GetSubscriptionAttributesResponseUnmarshaller, 
  AWS.SNS.Model.GetTopicAttributesResponse, 
  AWS.SNS.Model.GetTopicAttributesRequest, 
  AWS.SNS.Transform.GetTopicAttributesRequestMarshaller, 
  AWS.SNS.Transform.GetTopicAttributesResponseUnmarshaller, 
  AWS.SNS.Model.ListEndpointsByPlatformApplicationResponse, 
  AWS.SNS.Model.ListEndpointsByPlatformApplicationRequest, 
  AWS.SNS.Transform.ListEndpointsByPlatformApplicationRequestMarshaller, 
  AWS.SNS.Transform.ListEndpointsByPlatformApplicationResponseUnmarshaller, 
  AWS.SNS.Model.ListOriginationNumbersResponse, 
  AWS.SNS.Model.ListOriginationNumbersRequest, 
  AWS.SNS.Transform.ListOriginationNumbersRequestMarshaller, 
  AWS.SNS.Transform.ListOriginationNumbersResponseUnmarshaller, 
  AWS.SNS.Model.ListPhoneNumbersOptedOutResponse, 
  AWS.SNS.Model.ListPhoneNumbersOptedOutRequest, 
  AWS.SNS.Transform.ListPhoneNumbersOptedOutRequestMarshaller, 
  AWS.SNS.Transform.ListPhoneNumbersOptedOutResponseUnmarshaller, 
  AWS.SNS.Model.ListPlatformApplicationsResponse, 
  AWS.SNS.Model.ListPlatformApplicationsRequest, 
  AWS.SNS.Transform.ListPlatformApplicationsRequestMarshaller, 
  AWS.SNS.Transform.ListPlatformApplicationsResponseUnmarshaller, 
  AWS.SNS.Model.ListSMSSandboxPhoneNumbersResponse, 
  AWS.SNS.Model.ListSMSSandboxPhoneNumbersRequest, 
  AWS.SNS.Transform.ListSMSSandboxPhoneNumbersRequestMarshaller, 
  AWS.SNS.Transform.ListSMSSandboxPhoneNumbersResponseUnmarshaller, 
  AWS.SNS.Model.ListSubscriptionsResponse, 
  AWS.SNS.Model.ListSubscriptionsRequest, 
  AWS.SNS.Transform.ListSubscriptionsRequestMarshaller, 
  AWS.SNS.Transform.ListSubscriptionsResponseUnmarshaller, 
  AWS.SNS.Model.ListSubscriptionsByTopicResponse, 
  AWS.SNS.Model.ListSubscriptionsByTopicRequest, 
  AWS.SNS.Transform.ListSubscriptionsByTopicRequestMarshaller, 
  AWS.SNS.Transform.ListSubscriptionsByTopicResponseUnmarshaller, 
  AWS.SNS.Model.ListTagsForResourceResponse, 
  AWS.SNS.Model.ListTagsForResourceRequest, 
  AWS.SNS.Transform.ListTagsForResourceRequestMarshaller, 
  AWS.SNS.Transform.ListTagsForResourceResponseUnmarshaller, 
  AWS.SNS.Model.ListTopicsResponse, 
  AWS.SNS.Model.ListTopicsRequest, 
  AWS.SNS.Transform.ListTopicsRequestMarshaller, 
  AWS.SNS.Transform.ListTopicsResponseUnmarshaller, 
  AWS.SNS.Model.OptInPhoneNumberResponse, 
  AWS.SNS.Model.OptInPhoneNumberRequest, 
  AWS.SNS.Transform.OptInPhoneNumberRequestMarshaller, 
  AWS.SNS.Transform.OptInPhoneNumberResponseUnmarshaller, 
  AWS.SNS.Model.PublishResponse, 
  AWS.SNS.Model.PublishRequest, 
  AWS.SNS.Transform.PublishRequestMarshaller, 
  AWS.SNS.Transform.PublishResponseUnmarshaller, 
  AWS.SNS.Model.PublishBatchResponse, 
  AWS.SNS.Model.PublishBatchRequest, 
  AWS.SNS.Transform.PublishBatchRequestMarshaller, 
  AWS.SNS.Transform.PublishBatchResponseUnmarshaller, 
  AWS.SNS.Model.RemovePermissionResponse, 
  AWS.SNS.Model.RemovePermissionRequest, 
  AWS.SNS.Transform.RemovePermissionRequestMarshaller, 
  AWS.SNS.Transform.RemovePermissionResponseUnmarshaller, 
  AWS.SNS.Model.SetEndpointAttributesResponse, 
  AWS.SNS.Model.SetEndpointAttributesRequest, 
  AWS.SNS.Transform.SetEndpointAttributesRequestMarshaller, 
  AWS.SNS.Transform.SetEndpointAttributesResponseUnmarshaller, 
  AWS.SNS.Model.SetPlatformApplicationAttributesResponse, 
  AWS.SNS.Model.SetPlatformApplicationAttributesRequest, 
  AWS.SNS.Transform.SetPlatformApplicationAttributesRequestMarshaller, 
  AWS.SNS.Transform.SetPlatformApplicationAttributesResponseUnmarshaller, 
  AWS.SNS.Model.SetSMSAttributesResponse, 
  AWS.SNS.Model.SetSMSAttributesRequest, 
  AWS.SNS.Transform.SetSMSAttributesRequestMarshaller, 
  AWS.SNS.Transform.SetSMSAttributesResponseUnmarshaller, 
  AWS.SNS.Model.SetSubscriptionAttributesResponse, 
  AWS.SNS.Model.SetSubscriptionAttributesRequest, 
  AWS.SNS.Transform.SetSubscriptionAttributesRequestMarshaller, 
  AWS.SNS.Transform.SetSubscriptionAttributesResponseUnmarshaller, 
  AWS.SNS.Model.SetTopicAttributesResponse, 
  AWS.SNS.Model.SetTopicAttributesRequest, 
  AWS.SNS.Transform.SetTopicAttributesRequestMarshaller, 
  AWS.SNS.Transform.SetTopicAttributesResponseUnmarshaller, 
  AWS.SNS.Model.SubscribeResponse, 
  AWS.SNS.Model.SubscribeRequest, 
  AWS.SNS.Transform.SubscribeRequestMarshaller, 
  AWS.SNS.Transform.SubscribeResponseUnmarshaller, 
  AWS.SNS.Model.TagResourceResponse, 
  AWS.SNS.Model.TagResourceRequest, 
  AWS.SNS.Transform.TagResourceRequestMarshaller, 
  AWS.SNS.Transform.TagResourceResponseUnmarshaller, 
  AWS.SNS.Model.UnsubscribeResponse, 
  AWS.SNS.Model.UnsubscribeRequest, 
  AWS.SNS.Transform.UnsubscribeRequestMarshaller, 
  AWS.SNS.Transform.UnsubscribeResponseUnmarshaller, 
  AWS.SNS.Model.UntagResourceResponse, 
  AWS.SNS.Model.UntagResourceRequest, 
  AWS.SNS.Transform.UntagResourceRequestMarshaller, 
  AWS.SNS.Transform.UntagResourceResponseUnmarshaller, 
  AWS.SNS.Model.VerifySMSSandboxPhoneNumberResponse, 
  AWS.SNS.Model.VerifySMSSandboxPhoneNumberRequest, 
  AWS.SNS.Transform.VerifySMSSandboxPhoneNumberRequestMarshaller, 
  AWS.SNS.Transform.VerifySMSSandboxPhoneNumberResponseUnmarshaller;

type
  TAmazonSimpleNotificationServiceClient = class(TAmazonServiceClient, IAmazonSimpleNotificationService)
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

{ TAmazonSimpleNotificationServiceClient }

constructor TAmazonSimpleNotificationServiceClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSimpleNotificationServiceConfig.Create);
end;

constructor TAmazonSimpleNotificationServiceClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSimpleNotificationServiceConfig.Create(Region));
end;

constructor TAmazonSimpleNotificationServiceClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonSimpleNotificationServiceClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonSimpleNotificationServiceConfig.Create);
end;

constructor TAmazonSimpleNotificationServiceClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonSimpleNotificationServiceConfig.Create(Region));
end;

constructor TAmazonSimpleNotificationServiceClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonSimpleNotificationServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSimpleNotificationServiceConfig.Create);
end;

constructor TAmazonSimpleNotificationServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSimpleNotificationServiceConfig.Create(Region));
end;

constructor TAmazonSimpleNotificationServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonSimpleNotificationServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSimpleNotificationServiceConfig.Create);
end;

constructor TAmazonSimpleNotificationServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSimpleNotificationServiceConfig.Create(Region));
end;

constructor TAmazonSimpleNotificationServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonSimpleNotificationServiceClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonSimpleNotificationServiceClient.Create;
begin
  FServiceMetadata := TAmazonSimpleNotificationServiceMetadata.Create;
end;

function TAmazonSimpleNotificationServiceClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonSimpleNotificationServiceClient.AddPermission(const ATopicArn: string; const ALabel: string; const AAWSAccountId: TList<string>; const AActionName: TList<string>): IAddPermissionResponse;
var
  Request: IAddPermissionRequest;
begin
  Request := TAddPermissionRequest.Create;
  Request.TopicArn := ATopicArn;
  Request.&Label := ALabel;
  Request.AWSAccountId := AAWSAccountId;
  Request.ActionName := AActionName;
  Result := AddPermission(Request);
end;

function TAmazonSimpleNotificationServiceClient.AddPermission(Request: IAddPermissionRequest): IAddPermissionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TAddPermissionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TAddPermissionResponseUnmarshaller.Instance;
    Result := Invoke<TAddPermissionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.CheckIfPhoneNumberIsOptedOut(Request: ICheckIfPhoneNumberIsOptedOutRequest): ICheckIfPhoneNumberIsOptedOutResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCheckIfPhoneNumberIsOptedOutRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCheckIfPhoneNumberIsOptedOutResponseUnmarshaller.Instance;
    Result := Invoke<TCheckIfPhoneNumberIsOptedOutResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.ConfirmSubscription(const ATopicArn: string; const AToken: string; const AAuthenticateOnUnsubscribe: string): IConfirmSubscriptionResponse;
var
  Request: IConfirmSubscriptionRequest;
begin
  Request := TConfirmSubscriptionRequest.Create;
  Request.TopicArn := ATopicArn;
  Request.Token := AToken;
  Request.AuthenticateOnUnsubscribe := AAuthenticateOnUnsubscribe;
  Result := ConfirmSubscription(Request);
end;

function TAmazonSimpleNotificationServiceClient.ConfirmSubscription(const ATopicArn: string; const AToken: string): IConfirmSubscriptionResponse;
var
  Request: IConfirmSubscriptionRequest;
begin
  Request := TConfirmSubscriptionRequest.Create;
  Request.TopicArn := ATopicArn;
  Request.Token := AToken;
  Result := ConfirmSubscription(Request);
end;

function TAmazonSimpleNotificationServiceClient.ConfirmSubscription(Request: IConfirmSubscriptionRequest): IConfirmSubscriptionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TConfirmSubscriptionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TConfirmSubscriptionResponseUnmarshaller.Instance;
    Result := Invoke<TConfirmSubscriptionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.CreatePlatformApplication(Request: ICreatePlatformApplicationRequest): ICreatePlatformApplicationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreatePlatformApplicationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreatePlatformApplicationResponseUnmarshaller.Instance;
    Result := Invoke<TCreatePlatformApplicationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.CreatePlatformEndpoint(Request: ICreatePlatformEndpointRequest): ICreatePlatformEndpointResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreatePlatformEndpointRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreatePlatformEndpointResponseUnmarshaller.Instance;
    Result := Invoke<TCreatePlatformEndpointResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.CreateSMSSandboxPhoneNumber(Request: ICreateSMSSandboxPhoneNumberRequest): ICreateSMSSandboxPhoneNumberResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateSMSSandboxPhoneNumberRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateSMSSandboxPhoneNumberResponseUnmarshaller.Instance;
    Result := Invoke<TCreateSMSSandboxPhoneNumberResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.CreateTopic(const AName: string): ICreateTopicResponse;
var
  Request: ICreateTopicRequest;
begin
  Request := TCreateTopicRequest.Create;
  Request.Name := AName;
  Result := CreateTopic(Request);
end;

function TAmazonSimpleNotificationServiceClient.CreateTopic(Request: ICreateTopicRequest): ICreateTopicResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateTopicRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateTopicResponseUnmarshaller.Instance;
    Result := Invoke<TCreateTopicResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.DeleteEndpoint(Request: IDeleteEndpointRequest): IDeleteEndpointResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteEndpointRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteEndpointResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteEndpointResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.DeletePlatformApplication(Request: IDeletePlatformApplicationRequest): IDeletePlatformApplicationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeletePlatformApplicationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeletePlatformApplicationResponseUnmarshaller.Instance;
    Result := Invoke<TDeletePlatformApplicationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.DeleteSMSSandboxPhoneNumber(Request: IDeleteSMSSandboxPhoneNumberRequest): IDeleteSMSSandboxPhoneNumberResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteSMSSandboxPhoneNumberRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteSMSSandboxPhoneNumberResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteSMSSandboxPhoneNumberResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.DeleteTopic(const ATopicArn: string): IDeleteTopicResponse;
var
  Request: IDeleteTopicRequest;
begin
  Request := TDeleteTopicRequest.Create;
  Request.TopicArn := ATopicArn;
  Result := DeleteTopic(Request);
end;

function TAmazonSimpleNotificationServiceClient.DeleteTopic(Request: IDeleteTopicRequest): IDeleteTopicResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteTopicRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteTopicResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteTopicResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.GetEndpointAttributes(Request: IGetEndpointAttributesRequest): IGetEndpointAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetEndpointAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetEndpointAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetEndpointAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.GetPlatformApplicationAttributes(Request: IGetPlatformApplicationAttributesRequest): IGetPlatformApplicationAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetPlatformApplicationAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetPlatformApplicationAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetPlatformApplicationAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.GetSMSAttributes(Request: IGetSMSAttributesRequest): IGetSMSAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetSMSAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetSMSAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetSMSAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.GetSMSSandboxAccountStatus(Request: IGetSMSSandboxAccountStatusRequest): IGetSMSSandboxAccountStatusResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetSMSSandboxAccountStatusRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetSMSSandboxAccountStatusResponseUnmarshaller.Instance;
    Result := Invoke<TGetSMSSandboxAccountStatusResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.GetSubscriptionAttributes(const ASubscriptionArn: string): IGetSubscriptionAttributesResponse;
var
  Request: IGetSubscriptionAttributesRequest;
begin
  Request := TGetSubscriptionAttributesRequest.Create;
  Request.SubscriptionArn := ASubscriptionArn;
  Result := GetSubscriptionAttributes(Request);
end;

function TAmazonSimpleNotificationServiceClient.GetSubscriptionAttributes(Request: IGetSubscriptionAttributesRequest): IGetSubscriptionAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetSubscriptionAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetSubscriptionAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetSubscriptionAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.GetTopicAttributes(const ATopicArn: string): IGetTopicAttributesResponse;
var
  Request: IGetTopicAttributesRequest;
begin
  Request := TGetTopicAttributesRequest.Create;
  Request.TopicArn := ATopicArn;
  Result := GetTopicAttributes(Request);
end;

function TAmazonSimpleNotificationServiceClient.GetTopicAttributes(Request: IGetTopicAttributesRequest): IGetTopicAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetTopicAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetTopicAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetTopicAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.ListEndpointsByPlatformApplication(Request: IListEndpointsByPlatformApplicationRequest): IListEndpointsByPlatformApplicationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListEndpointsByPlatformApplicationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListEndpointsByPlatformApplicationResponseUnmarshaller.Instance;
    Result := Invoke<TListEndpointsByPlatformApplicationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.ListOriginationNumbers(Request: IListOriginationNumbersRequest): IListOriginationNumbersResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListOriginationNumbersRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListOriginationNumbersResponseUnmarshaller.Instance;
    Result := Invoke<TListOriginationNumbersResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.ListPhoneNumbersOptedOut(Request: IListPhoneNumbersOptedOutRequest): IListPhoneNumbersOptedOutResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListPhoneNumbersOptedOutRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListPhoneNumbersOptedOutResponseUnmarshaller.Instance;
    Result := Invoke<TListPhoneNumbersOptedOutResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.ListPlatformApplications: IListPlatformApplicationsResponse;
begin
  Result := ListPlatformApplications(IListPlatformApplicationsRequest(TListPlatformApplicationsRequest.Create));
end;

function TAmazonSimpleNotificationServiceClient.ListPlatformApplications(Request: IListPlatformApplicationsRequest): IListPlatformApplicationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListPlatformApplicationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListPlatformApplicationsResponseUnmarshaller.Instance;
    Result := Invoke<TListPlatformApplicationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.ListSMSSandboxPhoneNumbers(Request: IListSMSSandboxPhoneNumbersRequest): IListSMSSandboxPhoneNumbersResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListSMSSandboxPhoneNumbersRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListSMSSandboxPhoneNumbersResponseUnmarshaller.Instance;
    Result := Invoke<TListSMSSandboxPhoneNumbersResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.ListSubscriptions: IListSubscriptionsResponse;
begin
  Result := ListSubscriptions(IListSubscriptionsRequest(TListSubscriptionsRequest.Create));
end;

function TAmazonSimpleNotificationServiceClient.ListSubscriptions(const ANextToken: string): IListSubscriptionsResponse;
var
  Request: IListSubscriptionsRequest;
begin
  Request := TListSubscriptionsRequest.Create;
  Request.NextToken := ANextToken;
  Result := ListSubscriptions(Request);
end;

function TAmazonSimpleNotificationServiceClient.ListSubscriptions(Request: IListSubscriptionsRequest): IListSubscriptionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListSubscriptionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListSubscriptionsResponseUnmarshaller.Instance;
    Result := Invoke<TListSubscriptionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.ListSubscriptionsByTopic(const ATopicArn: string; const ANextToken: string): IListSubscriptionsByTopicResponse;
var
  Request: IListSubscriptionsByTopicRequest;
begin
  Request := TListSubscriptionsByTopicRequest.Create;
  Request.TopicArn := ATopicArn;
  Request.NextToken := ANextToken;
  Result := ListSubscriptionsByTopic(Request);
end;

function TAmazonSimpleNotificationServiceClient.ListSubscriptionsByTopic(const ATopicArn: string): IListSubscriptionsByTopicResponse;
var
  Request: IListSubscriptionsByTopicRequest;
begin
  Request := TListSubscriptionsByTopicRequest.Create;
  Request.TopicArn := ATopicArn;
  Result := ListSubscriptionsByTopic(Request);
end;

function TAmazonSimpleNotificationServiceClient.ListSubscriptionsByTopic(Request: IListSubscriptionsByTopicRequest): IListSubscriptionsByTopicResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListSubscriptionsByTopicRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListSubscriptionsByTopicResponseUnmarshaller.Instance;
    Result := Invoke<TListSubscriptionsByTopicResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.ListTagsForResource(Request: IListTagsForResourceRequest): IListTagsForResourceResponse;
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

function TAmazonSimpleNotificationServiceClient.ListTopics: IListTopicsResponse;
begin
  Result := ListTopics(IListTopicsRequest(TListTopicsRequest.Create));
end;

function TAmazonSimpleNotificationServiceClient.ListTopics(const ANextToken: string): IListTopicsResponse;
var
  Request: IListTopicsRequest;
begin
  Request := TListTopicsRequest.Create;
  Request.NextToken := ANextToken;
  Result := ListTopics(Request);
end;

function TAmazonSimpleNotificationServiceClient.ListTopics(Request: IListTopicsRequest): IListTopicsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListTopicsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListTopicsResponseUnmarshaller.Instance;
    Result := Invoke<TListTopicsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.OptInPhoneNumber(Request: IOptInPhoneNumberRequest): IOptInPhoneNumberResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TOptInPhoneNumberRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TOptInPhoneNumberResponseUnmarshaller.Instance;
    Result := Invoke<TOptInPhoneNumberResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.Publish(const ATopicArn: string; const AMessage: string): IPublishResponse;
var
  Request: IPublishRequest;
begin
  Request := TPublishRequest.Create;
  Request.TopicArn := ATopicArn;
  Request.Message := AMessage;
  Result := Publish(Request);
end;

function TAmazonSimpleNotificationServiceClient.Publish(const ATopicArn: string; const AMessage: string; const ASubject: string): IPublishResponse;
var
  Request: IPublishRequest;
begin
  Request := TPublishRequest.Create;
  Request.TopicArn := ATopicArn;
  Request.Message := AMessage;
  Request.Subject := ASubject;
  Result := Publish(Request);
end;

function TAmazonSimpleNotificationServiceClient.Publish(Request: IPublishRequest): IPublishResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPublishRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPublishResponseUnmarshaller.Instance;
    Result := Invoke<TPublishResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.PublishBatch(Request: IPublishBatchRequest): IPublishBatchResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPublishBatchRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPublishBatchResponseUnmarshaller.Instance;
    Result := Invoke<TPublishBatchResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.RemovePermission(const ATopicArn: string; const ALabel: string): IRemovePermissionResponse;
var
  Request: IRemovePermissionRequest;
begin
  Request := TRemovePermissionRequest.Create;
  Request.TopicArn := ATopicArn;
  Request.&Label := ALabel;
  Result := RemovePermission(Request);
end;

function TAmazonSimpleNotificationServiceClient.RemovePermission(Request: IRemovePermissionRequest): IRemovePermissionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRemovePermissionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRemovePermissionResponseUnmarshaller.Instance;
    Result := Invoke<TRemovePermissionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.SetEndpointAttributes(Request: ISetEndpointAttributesRequest): ISetEndpointAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetEndpointAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetEndpointAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TSetEndpointAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.SetPlatformApplicationAttributes(Request: ISetPlatformApplicationAttributesRequest): ISetPlatformApplicationAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetPlatformApplicationAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetPlatformApplicationAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TSetPlatformApplicationAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.SetSMSAttributes(Request: ISetSMSAttributesRequest): ISetSMSAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetSMSAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetSMSAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TSetSMSAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.SetSubscriptionAttributes(const ASubscriptionArn: string; const AAttributeName: string; const AAttributeValue: string): ISetSubscriptionAttributesResponse;
var
  Request: ISetSubscriptionAttributesRequest;
begin
  Request := TSetSubscriptionAttributesRequest.Create;
  Request.SubscriptionArn := ASubscriptionArn;
  Request.AttributeName := AAttributeName;
  Request.AttributeValue := AAttributeValue;
  Result := SetSubscriptionAttributes(Request);
end;

function TAmazonSimpleNotificationServiceClient.SetSubscriptionAttributes(Request: ISetSubscriptionAttributesRequest): ISetSubscriptionAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetSubscriptionAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetSubscriptionAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TSetSubscriptionAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.SetTopicAttributes(const ATopicArn: string; const AAttributeName: string; const AAttributeValue: string): ISetTopicAttributesResponse;
var
  Request: ISetTopicAttributesRequest;
begin
  Request := TSetTopicAttributesRequest.Create;
  Request.TopicArn := ATopicArn;
  Request.AttributeName := AAttributeName;
  Request.AttributeValue := AAttributeValue;
  Result := SetTopicAttributes(Request);
end;

function TAmazonSimpleNotificationServiceClient.SetTopicAttributes(Request: ISetTopicAttributesRequest): ISetTopicAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetTopicAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetTopicAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TSetTopicAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.Subscribe(const ATopicArn: string; const AProtocol: string; const AEndpoint: string): ISubscribeResponse;
var
  Request: ISubscribeRequest;
begin
  Request := TSubscribeRequest.Create;
  Request.TopicArn := ATopicArn;
  Request.Protocol := AProtocol;
  Request.Endpoint := AEndpoint;
  Result := Subscribe(Request);
end;

function TAmazonSimpleNotificationServiceClient.Subscribe(Request: ISubscribeRequest): ISubscribeResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSubscribeRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSubscribeResponseUnmarshaller.Instance;
    Result := Invoke<TSubscribeResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.TagResource(Request: ITagResourceRequest): ITagResourceResponse;
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

function TAmazonSimpleNotificationServiceClient.Unsubscribe(const ASubscriptionArn: string): IUnsubscribeResponse;
var
  Request: IUnsubscribeRequest;
begin
  Request := TUnsubscribeRequest.Create;
  Request.SubscriptionArn := ASubscriptionArn;
  Result := Unsubscribe(Request);
end;

function TAmazonSimpleNotificationServiceClient.Unsubscribe(Request: IUnsubscribeRequest): IUnsubscribeResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUnsubscribeRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUnsubscribeResponseUnmarshaller.Instance;
    Result := Invoke<TUnsubscribeResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSimpleNotificationServiceClient.UntagResource(Request: IUntagResourceRequest): IUntagResourceResponse;
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

function TAmazonSimpleNotificationServiceClient.VerifySMSSandboxPhoneNumber(Request: IVerifySMSSandboxPhoneNumberRequest): IVerifySMSSandboxPhoneNumberResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TVerifySMSSandboxPhoneNumberRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TVerifySMSSandboxPhoneNumberResponseUnmarshaller.Instance;
    Result := Invoke<TVerifySMSSandboxPhoneNumberResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
