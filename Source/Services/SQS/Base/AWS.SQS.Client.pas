unit AWS.SQS.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.SQS.ClientIntf, 
  AWS.SQS.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.SQS.Metadata, 
  AWS.Auth.Signer, 
  AWS.Internal.RuntimePipeline, 
  AWS.Pipeline.Marshaller, 
  AWS.SQS.Pipeline.ProcessRequestHandler, 
  AWS.Pipeline.Unmarshaller, 
  AWS.SQS.Pipeline.ValidationResponseHandler, 
  AWS.SQS.Model.AddPermissionResponse, 
  AWS.SQS.Model.AddPermissionRequest, 
  System.Generics.Collections, 
  AWS.Internal.InvokeOptions, 
  AWS.SQS.Transform.AddPermissionRequestMarshaller, 
  AWS.SQS.Transform.AddPermissionResponseUnmarshaller, 
  AWS.SQS.Model.ChangeMessageVisibilityResponse, 
  AWS.SQS.Model.ChangeMessageVisibilityRequest, 
  AWS.SQS.Transform.ChangeMessageVisibilityRequestMarshaller, 
  AWS.SQS.Transform.ChangeMessageVisibilityResponseUnmarshaller, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchResponse, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchRequest, 
  AWS.SQS.Model.ChangeMessageVisibilityBatchRequestEntry, 
  AWS.SQS.Transform.ChangeMessageVisibilityBatchRequestMarshaller, 
  AWS.SQS.Transform.ChangeMessageVisibilityBatchResponseUnmarshaller, 
  AWS.SQS.Model.CreateQueueResponse, 
  AWS.SQS.Model.CreateQueueRequest, 
  AWS.SQS.Transform.CreateQueueRequestMarshaller, 
  AWS.SQS.Transform.CreateQueueResponseUnmarshaller, 
  AWS.SQS.Model.DeleteMessageResponse, 
  AWS.SQS.Model.DeleteMessageRequest, 
  AWS.SQS.Transform.DeleteMessageRequestMarshaller, 
  AWS.SQS.Transform.DeleteMessageResponseUnmarshaller, 
  AWS.SQS.Model.DeleteMessageBatchResponse, 
  AWS.SQS.Model.DeleteMessageBatchRequest, 
  AWS.SQS.Model.DeleteMessageBatchRequestEntry, 
  AWS.SQS.Transform.DeleteMessageBatchRequestMarshaller, 
  AWS.SQS.Transform.DeleteMessageBatchResponseUnmarshaller, 
  AWS.SQS.Model.DeleteQueueResponse, 
  AWS.SQS.Model.DeleteQueueRequest, 
  AWS.SQS.Transform.DeleteQueueRequestMarshaller, 
  AWS.SQS.Transform.DeleteQueueResponseUnmarshaller, 
  AWS.SQS.Model.GetQueueAttributesResponse, 
  AWS.SQS.Model.GetQueueAttributesRequest, 
  AWS.SQS.Transform.GetQueueAttributesRequestMarshaller, 
  AWS.SQS.Transform.GetQueueAttributesResponseUnmarshaller, 
  AWS.SQS.Model.GetQueueUrlResponse, 
  AWS.SQS.Model.GetQueueUrlRequest, 
  AWS.SQS.Transform.GetQueueUrlRequestMarshaller, 
  AWS.SQS.Transform.GetQueueUrlResponseUnmarshaller, 
  AWS.SQS.Model.ListDeadLetterSourceQueuesResponse, 
  AWS.SQS.Model.ListDeadLetterSourceQueuesRequest, 
  AWS.SQS.Transform.ListDeadLetterSourceQueuesRequestMarshaller, 
  AWS.SQS.Transform.ListDeadLetterSourceQueuesResponseUnmarshaller, 
  AWS.SQS.Model.ListQueueTagsResponse, 
  AWS.SQS.Model.ListQueueTagsRequest, 
  AWS.SQS.Transform.ListQueueTagsRequestMarshaller, 
  AWS.SQS.Transform.ListQueueTagsResponseUnmarshaller, 
  AWS.SQS.Model.ListQueuesResponse, 
  AWS.SQS.Model.ListQueuesRequest, 
  AWS.SQS.Transform.ListQueuesRequestMarshaller, 
  AWS.SQS.Transform.ListQueuesResponseUnmarshaller, 
  AWS.SQS.Model.PurgeQueueResponse, 
  AWS.SQS.Model.PurgeQueueRequest, 
  AWS.SQS.Transform.PurgeQueueRequestMarshaller, 
  AWS.SQS.Transform.PurgeQueueResponseUnmarshaller, 
  AWS.SQS.Model.ReceiveMessageResponse, 
  AWS.SQS.Model.ReceiveMessageRequest, 
  AWS.SQS.Transform.ReceiveMessageRequestMarshaller, 
  AWS.SQS.Transform.ReceiveMessageResponseUnmarshaller, 
  AWS.SQS.Model.RemovePermissionResponse, 
  AWS.SQS.Model.RemovePermissionRequest, 
  AWS.SQS.Transform.RemovePermissionRequestMarshaller, 
  AWS.SQS.Transform.RemovePermissionResponseUnmarshaller, 
  AWS.SQS.Model.SendMessageResponse, 
  AWS.SQS.Model.SendMessageRequest, 
  AWS.SQS.Transform.SendMessageRequestMarshaller, 
  AWS.SQS.Transform.SendMessageResponseUnmarshaller, 
  AWS.SQS.Model.SendMessageBatchResponse, 
  AWS.SQS.Model.SendMessageBatchRequest, 
  AWS.SQS.Model.SendMessageBatchRequestEntry, 
  AWS.SQS.Transform.SendMessageBatchRequestMarshaller, 
  AWS.SQS.Transform.SendMessageBatchResponseUnmarshaller, 
  AWS.SQS.Model.SetQueueAttributesResponse, 
  AWS.SQS.Model.SetQueueAttributesRequest, 
  AWS.SQS.Transform.SetQueueAttributesRequestMarshaller, 
  AWS.SQS.Transform.SetQueueAttributesResponseUnmarshaller, 
  AWS.SQS.Model.TagQueueResponse, 
  AWS.SQS.Model.TagQueueRequest, 
  AWS.SQS.Transform.TagQueueRequestMarshaller, 
  AWS.SQS.Transform.TagQueueResponseUnmarshaller, 
  AWS.SQS.Model.UntagQueueResponse, 
  AWS.SQS.Model.UntagQueueRequest, 
  AWS.SQS.Transform.UntagQueueRequestMarshaller, 
  AWS.SQS.Transform.UntagQueueResponseUnmarshaller;

type
  TAmazonSQSClient = class(TAmazonServiceClient, IAmazonSQS)
  strict private
    class var FServiceMetadata: IServiceMetadata;
  private
    class constructor Create;
  strict protected
    function GetServiceMetadata: IServiceMetadata; override;
    function CreateSigner: TAbstractAWSSigner; override;
    procedure CustomizeRuntimePipeline(Pipeline: TRuntimePipeline); override;
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
    function AddPermission(const AQueueUrl: string; const ALabel: string; const AAWSAccountIds: TList<string>; const AActions: TList<string>): IAddPermissionResponse; overload;
    function AddPermission(Request: IAddPermissionRequest): IAddPermissionResponse; overload;
    function ChangeMessageVisibility(const AQueueUrl: string; const AReceiptHandle: string; const AVisibilityTimeout: Integer): IChangeMessageVisibilityResponse; overload;
    function ChangeMessageVisibility(Request: IChangeMessageVisibilityRequest): IChangeMessageVisibilityResponse; overload;
    function ChangeMessageVisibilityBatch(const AQueueUrl: string; const AEntries: TObjectList<TChangeMessageVisibilityBatchRequestEntry>): IChangeMessageVisibilityBatchResponse; overload;
    function ChangeMessageVisibilityBatch(Request: IChangeMessageVisibilityBatchRequest): IChangeMessageVisibilityBatchResponse; overload;
    function CreateQueue(const AQueueName: string): ICreateQueueResponse; overload;
    function CreateQueue(Request: ICreateQueueRequest): ICreateQueueResponse; overload;
    function DeleteMessage(const AQueueUrl: string; const AReceiptHandle: string): IDeleteMessageResponse; overload;
    function DeleteMessage(Request: IDeleteMessageRequest): IDeleteMessageResponse; overload;
    function DeleteMessageBatch(const AQueueUrl: string; const AEntries: TObjectList<TDeleteMessageBatchRequestEntry>): IDeleteMessageBatchResponse; overload;
    function DeleteMessageBatch(Request: IDeleteMessageBatchRequest): IDeleteMessageBatchResponse; overload;
    function DeleteQueue(const AQueueUrl: string): IDeleteQueueResponse; overload;
    function DeleteQueue(Request: IDeleteQueueRequest): IDeleteQueueResponse; overload;
    function GetQueueAttributes(const AQueueUrl: string; const AAttributeNames: TList<string>): IGetQueueAttributesResponse; overload;
    function GetQueueAttributes(Request: IGetQueueAttributesRequest): IGetQueueAttributesResponse; overload;
    function GetQueueUrl(const AQueueName: string): IGetQueueUrlResponse; overload;
    function GetQueueUrl(Request: IGetQueueUrlRequest): IGetQueueUrlResponse; overload;
    function ListDeadLetterSourceQueues(Request: IListDeadLetterSourceQueuesRequest): IListDeadLetterSourceQueuesResponse; overload;
    function ListQueueTags(Request: IListQueueTagsRequest): IListQueueTagsResponse; overload;
    function ListQueues(const AQueueNamePrefix: string): IListQueuesResponse; overload;
    function ListQueues(Request: IListQueuesRequest): IListQueuesResponse; overload;
    function PurgeQueue(const AQueueUrl: string): IPurgeQueueResponse; overload;
    function PurgeQueue(Request: IPurgeQueueRequest): IPurgeQueueResponse; overload;
    function ReceiveMessage(const AQueueUrl: string): IReceiveMessageResponse; overload;
    function ReceiveMessage(Request: IReceiveMessageRequest): IReceiveMessageResponse; overload;
    function RemovePermission(const AQueueUrl: string; const ALabel: string): IRemovePermissionResponse; overload;
    function RemovePermission(Request: IRemovePermissionRequest): IRemovePermissionResponse; overload;
    function SendMessage(const AQueueUrl: string; const AMessageBody: string): ISendMessageResponse; overload;
    function SendMessage(Request: ISendMessageRequest): ISendMessageResponse; overload;
    function SendMessageBatch(const AQueueUrl: string; const AEntries: TObjectList<TSendMessageBatchRequestEntry>): ISendMessageBatchResponse; overload;
    function SendMessageBatch(Request: ISendMessageBatchRequest): ISendMessageBatchResponse; overload;
    function SetQueueAttributes(const AQueueUrl: string; const AAttributes: TDictionary<string, string>): ISetQueueAttributesResponse; overload;
    function SetQueueAttributes(Request: ISetQueueAttributesRequest): ISetQueueAttributesResponse; overload;
    function TagQueue(Request: ITagQueueRequest): ITagQueueResponse; overload;
    function UntagQueue(Request: IUntagQueueRequest): IUntagQueueResponse; overload;
  end;
  
implementation

{ TAmazonSQSClient }

constructor TAmazonSQSClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSQSConfig.Create);
end;

constructor TAmazonSQSClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonSQSConfig.Create(Region));
end;

constructor TAmazonSQSClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonSQSClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonSQSConfig.Create);
end;

constructor TAmazonSQSClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonSQSConfig.Create(Region));
end;

constructor TAmazonSQSClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonSQSClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSQSConfig.Create);
end;

constructor TAmazonSQSClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonSQSConfig.Create(Region));
end;

constructor TAmazonSQSClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonSQSClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSQSConfig.Create);
end;

constructor TAmazonSQSClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonSQSConfig.Create(Region));
end;

constructor TAmazonSQSClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonSQSClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonSQSClient.Create;
begin
  FServiceMetadata := TAmazonSQSMetadata.Create;
end;

function TAmazonSQSClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

procedure TAmazonSQSClient.CustomizeRuntimePipeline(Pipeline: TRuntimePipeline);
begin
  Pipeline.AddHandlerAfter<TMarshaller>(TProcessRequestHandler.Create());
  Pipeline.AddHandlerBefore<TUnmarshaller>(TValidationResponseHandler.Create());
end;

function TAmazonSQSClient.AddPermission(const AQueueUrl: string; const ALabel: string; const AAWSAccountIds: TList<string>; const AActions: TList<string>): IAddPermissionResponse;
var
  Request: IAddPermissionRequest;
begin
  Request := TAddPermissionRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.&Label := ALabel;
  Request.AWSAccountIds := AAWSAccountIds;
  Request.Actions := AActions;
  Result := AddPermission(Request);
end;

function TAmazonSQSClient.AddPermission(Request: IAddPermissionRequest): IAddPermissionResponse;
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

function TAmazonSQSClient.ChangeMessageVisibility(const AQueueUrl: string; const AReceiptHandle: string; const AVisibilityTimeout: Integer): IChangeMessageVisibilityResponse;
var
  Request: IChangeMessageVisibilityRequest;
begin
  Request := TChangeMessageVisibilityRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.ReceiptHandle := AReceiptHandle;
  Request.VisibilityTimeout := AVisibilityTimeout;
  Result := ChangeMessageVisibility(Request);
end;

function TAmazonSQSClient.ChangeMessageVisibility(Request: IChangeMessageVisibilityRequest): IChangeMessageVisibilityResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TChangeMessageVisibilityRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TChangeMessageVisibilityResponseUnmarshaller.Instance;
    Result := Invoke<TChangeMessageVisibilityResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.ChangeMessageVisibilityBatch(const AQueueUrl: string; const AEntries: TObjectList<TChangeMessageVisibilityBatchRequestEntry>): IChangeMessageVisibilityBatchResponse;
var
  Request: IChangeMessageVisibilityBatchRequest;
begin
  Request := TChangeMessageVisibilityBatchRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.Entries := AEntries;
  Result := ChangeMessageVisibilityBatch(Request);
end;

function TAmazonSQSClient.ChangeMessageVisibilityBatch(Request: IChangeMessageVisibilityBatchRequest): IChangeMessageVisibilityBatchResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TChangeMessageVisibilityBatchRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TChangeMessageVisibilityBatchResponseUnmarshaller.Instance;
    Result := Invoke<TChangeMessageVisibilityBatchResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.CreateQueue(const AQueueName: string): ICreateQueueResponse;
var
  Request: ICreateQueueRequest;
begin
  Request := TCreateQueueRequest.Create;
  Request.QueueName := AQueueName;
  Result := CreateQueue(Request);
end;

function TAmazonSQSClient.CreateQueue(Request: ICreateQueueRequest): ICreateQueueResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateQueueRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateQueueResponseUnmarshaller.Instance;
    Result := Invoke<TCreateQueueResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.DeleteMessage(const AQueueUrl: string; const AReceiptHandle: string): IDeleteMessageResponse;
var
  Request: IDeleteMessageRequest;
begin
  Request := TDeleteMessageRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.ReceiptHandle := AReceiptHandle;
  Result := DeleteMessage(Request);
end;

function TAmazonSQSClient.DeleteMessage(Request: IDeleteMessageRequest): IDeleteMessageResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteMessageRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteMessageResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteMessageResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.DeleteMessageBatch(const AQueueUrl: string; const AEntries: TObjectList<TDeleteMessageBatchRequestEntry>): IDeleteMessageBatchResponse;
var
  Request: IDeleteMessageBatchRequest;
begin
  Request := TDeleteMessageBatchRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.Entries := AEntries;
  Result := DeleteMessageBatch(Request);
end;

function TAmazonSQSClient.DeleteMessageBatch(Request: IDeleteMessageBatchRequest): IDeleteMessageBatchResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteMessageBatchRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteMessageBatchResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteMessageBatchResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.DeleteQueue(const AQueueUrl: string): IDeleteQueueResponse;
var
  Request: IDeleteQueueRequest;
begin
  Request := TDeleteQueueRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Result := DeleteQueue(Request);
end;

function TAmazonSQSClient.DeleteQueue(Request: IDeleteQueueRequest): IDeleteQueueResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteQueueRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteQueueResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteQueueResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.GetQueueAttributes(const AQueueUrl: string; const AAttributeNames: TList<string>): IGetQueueAttributesResponse;
var
  Request: IGetQueueAttributesRequest;
begin
  Request := TGetQueueAttributesRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.AttributeNames := AAttributeNames;
  Result := GetQueueAttributes(Request);
end;

function TAmazonSQSClient.GetQueueAttributes(Request: IGetQueueAttributesRequest): IGetQueueAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetQueueAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetQueueAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TGetQueueAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.GetQueueUrl(const AQueueName: string): IGetQueueUrlResponse;
var
  Request: IGetQueueUrlRequest;
begin
  Request := TGetQueueUrlRequest.Create;
  Request.QueueName := AQueueName;
  Result := GetQueueUrl(Request);
end;

function TAmazonSQSClient.GetQueueUrl(Request: IGetQueueUrlRequest): IGetQueueUrlResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetQueueUrlRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetQueueUrlResponseUnmarshaller.Instance;
    Result := Invoke<TGetQueueUrlResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.ListDeadLetterSourceQueues(Request: IListDeadLetterSourceQueuesRequest): IListDeadLetterSourceQueuesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListDeadLetterSourceQueuesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListDeadLetterSourceQueuesResponseUnmarshaller.Instance;
    Result := Invoke<TListDeadLetterSourceQueuesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.ListQueueTags(Request: IListQueueTagsRequest): IListQueueTagsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListQueueTagsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListQueueTagsResponseUnmarshaller.Instance;
    Result := Invoke<TListQueueTagsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.ListQueues(const AQueueNamePrefix: string): IListQueuesResponse;
var
  Request: IListQueuesRequest;
begin
  Request := TListQueuesRequest.Create;
  Request.QueueNamePrefix := AQueueNamePrefix;
  Result := ListQueues(Request);
end;

function TAmazonSQSClient.ListQueues(Request: IListQueuesRequest): IListQueuesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListQueuesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListQueuesResponseUnmarshaller.Instance;
    Result := Invoke<TListQueuesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.PurgeQueue(const AQueueUrl: string): IPurgeQueueResponse;
var
  Request: IPurgeQueueRequest;
begin
  Request := TPurgeQueueRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Result := PurgeQueue(Request);
end;

function TAmazonSQSClient.PurgeQueue(Request: IPurgeQueueRequest): IPurgeQueueResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPurgeQueueRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPurgeQueueResponseUnmarshaller.Instance;
    Result := Invoke<TPurgeQueueResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.ReceiveMessage(const AQueueUrl: string): IReceiveMessageResponse;
var
  Request: IReceiveMessageRequest;
begin
  Request := TReceiveMessageRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Result := ReceiveMessage(Request);
end;

function TAmazonSQSClient.ReceiveMessage(Request: IReceiveMessageRequest): IReceiveMessageResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TReceiveMessageRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TReceiveMessageResponseUnmarshaller.Instance;
    Result := Invoke<TReceiveMessageResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.RemovePermission(const AQueueUrl: string; const ALabel: string): IRemovePermissionResponse;
var
  Request: IRemovePermissionRequest;
begin
  Request := TRemovePermissionRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.&Label := ALabel;
  Result := RemovePermission(Request);
end;

function TAmazonSQSClient.RemovePermission(Request: IRemovePermissionRequest): IRemovePermissionResponse;
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

function TAmazonSQSClient.SendMessage(const AQueueUrl: string; const AMessageBody: string): ISendMessageResponse;
var
  Request: ISendMessageRequest;
begin
  Request := TSendMessageRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.MessageBody := AMessageBody;
  Result := SendMessage(Request);
end;

function TAmazonSQSClient.SendMessage(Request: ISendMessageRequest): ISendMessageResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendMessageRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendMessageResponseUnmarshaller.Instance;
    Result := Invoke<TSendMessageResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.SendMessageBatch(const AQueueUrl: string; const AEntries: TObjectList<TSendMessageBatchRequestEntry>): ISendMessageBatchResponse;
var
  Request: ISendMessageBatchRequest;
begin
  Request := TSendMessageBatchRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.Entries := AEntries;
  Result := SendMessageBatch(Request);
end;

function TAmazonSQSClient.SendMessageBatch(Request: ISendMessageBatchRequest): ISendMessageBatchResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSendMessageBatchRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSendMessageBatchResponseUnmarshaller.Instance;
    Result := Invoke<TSendMessageBatchResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.SetQueueAttributes(const AQueueUrl: string; const AAttributes: TDictionary<string, string>): ISetQueueAttributesResponse;
var
  Request: ISetQueueAttributesRequest;
begin
  Request := TSetQueueAttributesRequest.Create;
  Request.QueueUrl := AQueueUrl;
  Request.Attributes := AAttributes;
  Result := SetQueueAttributes(Request);
end;

function TAmazonSQSClient.SetQueueAttributes(Request: ISetQueueAttributesRequest): ISetQueueAttributesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSetQueueAttributesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSetQueueAttributesResponseUnmarshaller.Instance;
    Result := Invoke<TSetQueueAttributesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.TagQueue(Request: ITagQueueRequest): ITagQueueResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TTagQueueRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TTagQueueResponseUnmarshaller.Instance;
    Result := Invoke<TTagQueueResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonSQSClient.UntagQueue(Request: IUntagQueueRequest): IUntagQueueResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUntagQueueRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUntagQueueResponseUnmarshaller.Instance;
    Result := Invoke<TUntagQueueResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
