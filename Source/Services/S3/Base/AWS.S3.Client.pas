unit AWS.S3.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.S3.ClientIntf, 
  AWS.S3.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.S3.Metadata, 
  AWS.Auth.Signer, 
  AWS.S3.InternalS3Signer, 
  AWS.Internal.RuntimePipeline, 
  AWS.Pipeline.Marshaller, 
  AWS.S3.Pipeline.PreMarshallHandler, 
  AWS.S3.Pipeline.PostMarshallHandler, 
  AWS.Pipeline.EndpointResolver, 
  AWS.S3.Pipeline.KmsHandler, 
  AWS.Pipeline.Unmarshaller, 
  AWS.S3.Pipeline.ResponseHandler, 
  AWS.Pipeline.ErrorCallbackHandler, 
  AWS.S3.Pipeline.ExceptionHandler, 
  AWS.S3.Pipeline.RedirectHandler, 
  AWS.Pipeline.RetryHandler, 
  AWS.S3.Model.CopyObjectResponse, 
  AWS.S3.Model.CopyObjectRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.S3.Transform.CopyObjectRequestMarshaller, 
  AWS.S3.Transform.CopyObjectResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketResponse, 
  AWS.S3.Model.DeleteBucketRequest, 
  AWS.S3.Transform.DeleteBucketRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketAnalyticsConfigurationResponse, 
  AWS.S3.Model.DeleteBucketAnalyticsConfigurationRequest, 
  AWS.S3.Transform.DeleteBucketAnalyticsConfigurationRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketAnalyticsConfigurationResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketEncryptionResponse, 
  AWS.S3.Model.DeleteBucketEncryptionRequest, 
  AWS.S3.Transform.DeleteBucketEncryptionRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketEncryptionResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationResponse, 
  AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationRequest, 
  AWS.S3.Transform.DeleteBucketIntelligentTieringConfigurationRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketIntelligentTieringConfigurationResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketInventoryConfigurationResponse, 
  AWS.S3.Model.DeleteBucketInventoryConfigurationRequest, 
  AWS.S3.Transform.DeleteBucketInventoryConfigurationRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketInventoryConfigurationResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketMetricsConfigurationResponse, 
  AWS.S3.Model.DeleteBucketMetricsConfigurationRequest, 
  AWS.S3.Transform.DeleteBucketMetricsConfigurationRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketMetricsConfigurationResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketOwnershipControlsResponse, 
  AWS.S3.Model.DeleteBucketOwnershipControlsRequest, 
  AWS.S3.Transform.DeleteBucketOwnershipControlsRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketOwnershipControlsResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketPolicyResponse, 
  AWS.S3.Model.DeleteBucketPolicyRequest, 
  AWS.S3.Transform.DeleteBucketPolicyRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketPolicyResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketReplicationResponse, 
  AWS.S3.Model.DeleteBucketReplicationRequest, 
  AWS.S3.Transform.DeleteBucketReplicationRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketReplicationResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketTaggingResponse, 
  AWS.S3.Model.DeleteBucketTaggingRequest, 
  AWS.S3.Transform.DeleteBucketTaggingRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketTaggingResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketWebsiteResponse, 
  AWS.S3.Model.DeleteBucketWebsiteRequest, 
  AWS.S3.Transform.DeleteBucketWebsiteRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketWebsiteResponseUnmarshaller, 
  AWS.S3.Model.DeleteCORSConfigurationResponse, 
  AWS.S3.Model.DeleteCORSConfigurationRequest, 
  AWS.S3.Transform.DeleteCORSConfigurationRequestMarshaller, 
  AWS.S3.Transform.DeleteCORSConfigurationResponseUnmarshaller, 
  AWS.S3.Model.DeleteLifecycleConfigurationResponse, 
  AWS.S3.Model.DeleteLifecycleConfigurationRequest, 
  AWS.S3.Transform.DeleteLifecycleConfigurationRequestMarshaller, 
  AWS.S3.Transform.DeleteLifecycleConfigurationResponseUnmarshaller, 
  AWS.S3.Model.DeleteObjectResponse, 
  AWS.S3.Model.DeleteObjectRequest, 
  AWS.S3.Transform.DeleteObjectRequestMarshaller, 
  AWS.S3.Transform.DeleteObjectResponseUnmarshaller, 
  AWS.S3.Model.DeleteObjectTaggingResponse, 
  AWS.S3.Model.DeleteObjectTaggingRequest, 
  AWS.S3.Transform.DeleteObjectTaggingRequestMarshaller, 
  AWS.S3.Transform.DeleteObjectTaggingResponseUnmarshaller, 
  AWS.S3.Model.DeletePublicAccessBlockResponse, 
  AWS.S3.Model.DeletePublicAccessBlockRequest, 
  AWS.S3.Transform.DeletePublicAccessBlockRequestMarshaller, 
  AWS.S3.Transform.DeletePublicAccessBlockResponseUnmarshaller, 
  AWS.S3.Model.HeadBucketResponse, 
  AWS.S3.Model.HeadBucketRequest, 
  AWS.S3.Transform.HeadBucketRequestMarshaller, 
  AWS.S3.Transform.HeadBucketResponseUnmarshaller, 
  AWS.S3.Model.ListBucketAnalyticsConfigurationsResponse, 
  AWS.S3.Model.ListBucketAnalyticsConfigurationsRequest, 
  AWS.S3.Transform.ListBucketAnalyticsConfigurationsRequestMarshaller, 
  AWS.S3.Transform.ListBucketAnalyticsConfigurationsResponseUnmarshaller, 
  AWS.S3.Model.ListBucketIntelligentTieringConfigurationsResponse, 
  AWS.S3.Model.ListBucketIntelligentTieringConfigurationsRequest, 
  AWS.S3.Transform.ListBucketIntelligentTieringConfigurationsRequestMarshaller, 
  AWS.S3.Transform.ListBucketIntelligentTieringConfigurationsResponseUnmarshaller, 
  AWS.S3.Model.ListBucketInventoryConfigurationsResponse, 
  AWS.S3.Model.ListBucketInventoryConfigurationsRequest, 
  AWS.S3.Transform.ListBucketInventoryConfigurationsRequestMarshaller, 
  AWS.S3.Transform.ListBucketInventoryConfigurationsResponseUnmarshaller, 
  AWS.S3.Model.ListBucketMetricsConfigurationsResponse, 
  AWS.S3.Model.ListBucketMetricsConfigurationsRequest, 
  AWS.S3.Transform.ListBucketMetricsConfigurationsRequestMarshaller, 
  AWS.S3.Transform.ListBucketMetricsConfigurationsResponseUnmarshaller, 
  AWS.S3.Model.ListBucketsResponse, 
  AWS.S3.Model.ListBucketsRequest, 
  AWS.S3.Transform.ListBucketsRequestMarshaller, 
  AWS.S3.Transform.ListBucketsResponseUnmarshaller, 
  AWS.S3.Model.ListObjectsResponse, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Transform.ListObjectsRequestMarshaller, 
  AWS.S3.Transform.ListObjectsResponseUnmarshaller, 
  AWS.S3.Model.ListObjectsV2Response, 
  AWS.S3.Model.ListObjectsV2Request, 
  AWS.S3.Transform.ListObjectsV2RequestMarshaller, 
  AWS.S3.Transform.ListObjectsV2ResponseUnmarshaller, 
  AWS.S3.Model.ListVersionsResponse, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.S3.Transform.ListVersionsRequestMarshaller, 
  AWS.S3.Transform.ListVersionsResponseUnmarshaller, 
  AWS.S3.Model.SelectObjectContentResponse, 
  AWS.S3.Model.SelectObjectContentRequest, 
  AWS.S3.Transform.SelectObjectContentRequestMarshaller, 
  AWS.S3.Transform.SelectObjectContentResponseUnmarshaller;

type
  TAmazonS3Client = class(TAmazonServiceClient, IAmazonS3)
  strict private
    class var FServiceMetadata: IServiceMetadata;
  private
    class constructor Create;
  strict protected
    function GetServiceMetadata: IServiceMetadata; override;
    function CreateSigner: TAbstractAWSSigner; override;
    procedure CustomizeRuntimePipeline(Pipeline: TRuntimePipeline); override;
  protected
    function HeadBucket(Request: IHeadBucketRequest): IHeadBucketResponse; overload;
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
    function CopyObject(const ASourceBucket: string; const ASourceKey: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse; overload;
    function CopyObject(const ASourceBucket: string; const ASourceKey: string; const ASourceVersionId: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse; overload;
    function CopyObject(Request: ICopyObjectRequest): ICopyObjectResponse; overload;
    function DeleteBucket(const ABucketName: string): IDeleteBucketResponse; overload;
    function DeleteBucket(Request: IDeleteBucketRequest): IDeleteBucketResponse; overload;
    function DeleteBucketAnalyticsConfiguration(Request: IDeleteBucketAnalyticsConfigurationRequest): IDeleteBucketAnalyticsConfigurationResponse; overload;
    function DeleteBucketEncryption(Request: IDeleteBucketEncryptionRequest): IDeleteBucketEncryptionResponse; overload;
    function DeleteBucketIntelligentTieringConfiguration(Request: IDeleteBucketIntelligentTieringConfigurationRequest): IDeleteBucketIntelligentTieringConfigurationResponse; overload;
    function DeleteBucketInventoryConfiguration(Request: IDeleteBucketInventoryConfigurationRequest): IDeleteBucketInventoryConfigurationResponse; overload;
    function DeleteBucketMetricsConfiguration(Request: IDeleteBucketMetricsConfigurationRequest): IDeleteBucketMetricsConfigurationResponse; overload;
    function DeleteBucketOwnershipControls(Request: IDeleteBucketOwnershipControlsRequest): IDeleteBucketOwnershipControlsResponse; overload;
    function DeleteBucketPolicy(const ABucketName: string): IDeleteBucketPolicyResponse; overload;
    function DeleteBucketPolicy(Request: IDeleteBucketPolicyRequest): IDeleteBucketPolicyResponse; overload;
    function DeleteBucketReplication(Request: IDeleteBucketReplicationRequest): IDeleteBucketReplicationResponse; overload;
    function DeleteBucketTagging(const ABucketName: string): IDeleteBucketTaggingResponse; overload;
    function DeleteBucketTagging(Request: IDeleteBucketTaggingRequest): IDeleteBucketTaggingResponse; overload;
    function DeleteBucketWebsite(const ABucketName: string): IDeleteBucketWebsiteResponse; overload;
    function DeleteBucketWebsite(Request: IDeleteBucketWebsiteRequest): IDeleteBucketWebsiteResponse; overload;
    function DeleteCORSConfiguration(const ABucketName: string): IDeleteCORSConfigurationResponse; overload;
    function DeleteCORSConfiguration(Request: IDeleteCORSConfigurationRequest): IDeleteCORSConfigurationResponse; overload;
    function DeleteLifecycleConfiguration(const ABucketName: string): IDeleteLifecycleConfigurationResponse; overload;
    function DeleteLifecycleConfiguration(Request: IDeleteLifecycleConfigurationRequest): IDeleteLifecycleConfigurationResponse; overload;
    function DeleteObject(const ABucketName: string; const AKey: string): IDeleteObjectResponse; overload;
    function DeleteObject(const ABucketName: string; const AKey: string; const AVersionId: string): IDeleteObjectResponse; overload;
    function DeleteObject(Request: IDeleteObjectRequest): IDeleteObjectResponse; overload;
    function DeleteObjectTagging(Request: IDeleteObjectTaggingRequest): IDeleteObjectTaggingResponse; overload;
    function DeletePublicAccessBlock(Request: IDeletePublicAccessBlockRequest): IDeletePublicAccessBlockResponse; overload;
    function ListBucketAnalyticsConfigurations(Request: IListBucketAnalyticsConfigurationsRequest): IListBucketAnalyticsConfigurationsResponse; overload;
    function ListBucketIntelligentTieringConfigurations(Request: IListBucketIntelligentTieringConfigurationsRequest): IListBucketIntelligentTieringConfigurationsResponse; overload;
    function ListBucketInventoryConfigurations(Request: IListBucketInventoryConfigurationsRequest): IListBucketInventoryConfigurationsResponse; overload;
    function ListBucketMetricsConfigurations(Request: IListBucketMetricsConfigurationsRequest): IListBucketMetricsConfigurationsResponse; overload;
    function ListBuckets: IListBucketsResponse; overload;
    function ListBuckets(Request: IListBucketsRequest): IListBucketsResponse; overload;
    function ListObjects(const ABucketName: string): IListObjectsResponse; overload;
    function ListObjects(const ABucketName: string; const APrefix: string): IListObjectsResponse; overload;
    function ListObjects(Request: IListObjectsRequest): IListObjectsResponse; overload;
    function ListObjectsV2(Request: IListObjectsV2Request): IListObjectsV2Response; overload;
    function ListVersions(const ABucketName: string): IListVersionsResponse; overload;
    function ListVersions(const ABucketName: string; const APrefix: string): IListVersionsResponse; overload;
    function ListVersions(Request: IListVersionsRequest): IListVersionsResponse; overload;
    function SelectObjectContent(Request: ISelectObjectContentRequest): ISelectObjectContentResponse; overload;
  end;
  
implementation

{ TAmazonS3Client }

constructor TAmazonS3Client.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonS3Client.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonS3Client.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonS3Client.Create;
begin
  FServiceMetadata := TAmazonS3Metadata.Create;
end;

function TAmazonS3Client.CreateSigner: TAbstractAWSSigner;
begin
  Result := TInternalS3Signer.Create;
end;

procedure TAmazonS3Client.CustomizeRuntimePipeline(Pipeline: TRuntimePipeline);
begin
  Pipeline.AddHandlerBefore<TMarshaller>(TAmazonS3PreMarshallHandler.Create());
  Pipeline.AddHandlerAfter<TMarshaller>(TAmazonS3PostMarshallHandler.Create());
  Pipeline.AddHandlerAfter<TEndpointResolver>(TAmazonS3KmsHandler.Create());
  Pipeline.AddHandlerBefore<TUnmarshaller>(TAmazonS3ResponseHandler.Create());
  Pipeline.AddHandlerAfter<TErrorCallbackHandler>(TAmazonS3ExceptionHandler.Create());
  Pipeline.AddHandlerAfter<TUnmarshaller>(TAmazonS3RedirectHandler.Create());
  if this.Config.RetryMode == RequestRetryMode.Legacy then
    Pipeline.ReplaceHandler<TRetryHandler>(TRetryHandler.Create(new Amazon.S3.Internal.AmazonS3RetryPolicy(this.Config)));
  if this.Config.RetryMode == RequestRetryMode.Standard then
    Pipeline.ReplaceHandler<TRetryHandler>(TRetryHandler.Create(new Amazon.S3.Internal.AmazonS3StandardRetryPolicy(this.Config)));
  if this.Config.RetryMode == RequestRetryMode.Adaptive then
    Pipeline.ReplaceHandler<TRetryHandler>(TRetryHandler.Create(new Amazon.S3.Internal.AmazonS3AdaptiveRetryPolicy(this.Config)));
end;

function TAmazonS3Client.CopyObject(const ASourceBucket: string; const ASourceKey: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse;
var
  Request: ICopyObjectRequest;
begin
  Request := TCopyObjectRequest.Create;
  Request.SourceBucket := ASourceBucket;
  Request.SourceKey := ASourceKey;
  Request.DestinationBucket := ADestinationBucket;
  Request.DestinationKey := ADestinationKey;
  Result := CopyObject(Request);
end;

function TAmazonS3Client.CopyObject(const ASourceBucket: string; const ASourceKey: string; const ASourceVersionId: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse;
var
  Request: ICopyObjectRequest;
begin
  Request := TCopyObjectRequest.Create;
  Request.SourceBucket := ASourceBucket;
  Request.SourceKey := ASourceKey;
  Request.SourceVersionId := ASourceVersionId;
  Request.DestinationBucket := ADestinationBucket;
  Request.DestinationKey := ADestinationKey;
  Result := CopyObject(Request);
end;

function TAmazonS3Client.CopyObject(Request: ICopyObjectRequest): ICopyObjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCopyObjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCopyObjectResponseUnmarshaller.Instance;
    Result := Invoke<TCopyObjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucket(const ABucketName: string): IDeleteBucketResponse;
var
  Request: IDeleteBucketRequest;
begin
  Request := TDeleteBucketRequest.Create;
  Request.BucketName := ABucketName;
  Result := DeleteBucket(Request);
end;

function TAmazonS3Client.DeleteBucket(Request: IDeleteBucketRequest): IDeleteBucketResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketAnalyticsConfiguration(Request: IDeleteBucketAnalyticsConfigurationRequest): IDeleteBucketAnalyticsConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketAnalyticsConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketAnalyticsConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketAnalyticsConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketEncryption(Request: IDeleteBucketEncryptionRequest): IDeleteBucketEncryptionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketEncryptionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketEncryptionResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketEncryptionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketIntelligentTieringConfiguration(Request: IDeleteBucketIntelligentTieringConfigurationRequest): IDeleteBucketIntelligentTieringConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketIntelligentTieringConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketIntelligentTieringConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketIntelligentTieringConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketInventoryConfiguration(Request: IDeleteBucketInventoryConfigurationRequest): IDeleteBucketInventoryConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketInventoryConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketInventoryConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketInventoryConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketMetricsConfiguration(Request: IDeleteBucketMetricsConfigurationRequest): IDeleteBucketMetricsConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketMetricsConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketMetricsConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketMetricsConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketOwnershipControls(Request: IDeleteBucketOwnershipControlsRequest): IDeleteBucketOwnershipControlsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketOwnershipControlsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketOwnershipControlsResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketOwnershipControlsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketPolicy(const ABucketName: string): IDeleteBucketPolicyResponse;
var
  Request: IDeleteBucketPolicyRequest;
begin
  Request := TDeleteBucketPolicyRequest.Create;
  Request.BucketName := ABucketName;
  Result := DeleteBucketPolicy(Request);
end;

function TAmazonS3Client.DeleteBucketPolicy(Request: IDeleteBucketPolicyRequest): IDeleteBucketPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketReplication(Request: IDeleteBucketReplicationRequest): IDeleteBucketReplicationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketReplicationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketReplicationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketReplicationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketTagging(const ABucketName: string): IDeleteBucketTaggingResponse;
var
  Request: IDeleteBucketTaggingRequest;
begin
  Request := TDeleteBucketTaggingRequest.Create;
  Request.BucketName := ABucketName;
  Result := DeleteBucketTagging(Request);
end;

function TAmazonS3Client.DeleteBucketTagging(Request: IDeleteBucketTaggingRequest): IDeleteBucketTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucketWebsite(const ABucketName: string): IDeleteBucketWebsiteResponse;
var
  Request: IDeleteBucketWebsiteRequest;
begin
  Request := TDeleteBucketWebsiteRequest.Create;
  Request.BucketName := ABucketName;
  Result := DeleteBucketWebsite(Request);
end;

function TAmazonS3Client.DeleteBucketWebsite(Request: IDeleteBucketWebsiteRequest): IDeleteBucketWebsiteResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketWebsiteRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketWebsiteResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketWebsiteResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteCORSConfiguration(const ABucketName: string): IDeleteCORSConfigurationResponse;
var
  Request: IDeleteCORSConfigurationRequest;
begin
  Request := TDeleteCORSConfigurationRequest.Create;
  Request.BucketName := ABucketName;
  Result := DeleteCORSConfiguration(Request);
end;

function TAmazonS3Client.DeleteCORSConfiguration(Request: IDeleteCORSConfigurationRequest): IDeleteCORSConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteCORSConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteCORSConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteCORSConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteLifecycleConfiguration(const ABucketName: string): IDeleteLifecycleConfigurationResponse;
var
  Request: IDeleteLifecycleConfigurationRequest;
begin
  Request := TDeleteLifecycleConfigurationRequest.Create;
  Request.BucketName := ABucketName;
  Result := DeleteLifecycleConfiguration(Request);
end;

function TAmazonS3Client.DeleteLifecycleConfiguration(Request: IDeleteLifecycleConfigurationRequest): IDeleteLifecycleConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteLifecycleConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteLifecycleConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteLifecycleConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteObject(const ABucketName: string; const AKey: string): IDeleteObjectResponse;
var
  Request: IDeleteObjectRequest;
begin
  Request := TDeleteObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := DeleteObject(Request);
end;

function TAmazonS3Client.DeleteObject(const ABucketName: string; const AKey: string; const AVersionId: string): IDeleteObjectResponse;
var
  Request: IDeleteObjectRequest;
begin
  Request := TDeleteObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.VersionId := AVersionId;
  Result := DeleteObject(Request);
end;

function TAmazonS3Client.DeleteObject(Request: IDeleteObjectRequest): IDeleteObjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteObjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteObjectResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteObjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteObjectTagging(Request: IDeleteObjectTaggingRequest): IDeleteObjectTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteObjectTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteObjectTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteObjectTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeletePublicAccessBlock(Request: IDeletePublicAccessBlockRequest): IDeletePublicAccessBlockResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeletePublicAccessBlockRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeletePublicAccessBlockResponseUnmarshaller.Instance;
    Result := Invoke<TDeletePublicAccessBlockResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.HeadBucket(Request: IHeadBucketRequest): IHeadBucketResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := THeadBucketRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := THeadBucketResponseUnmarshaller.Instance;
    Result := Invoke<THeadBucketResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListBucketAnalyticsConfigurations(Request: IListBucketAnalyticsConfigurationsRequest): IListBucketAnalyticsConfigurationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListBucketAnalyticsConfigurationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListBucketAnalyticsConfigurationsResponseUnmarshaller.Instance;
    Result := Invoke<TListBucketAnalyticsConfigurationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListBucketIntelligentTieringConfigurations(Request: IListBucketIntelligentTieringConfigurationsRequest): IListBucketIntelligentTieringConfigurationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListBucketIntelligentTieringConfigurationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListBucketIntelligentTieringConfigurationsResponseUnmarshaller.Instance;
    Result := Invoke<TListBucketIntelligentTieringConfigurationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListBucketInventoryConfigurations(Request: IListBucketInventoryConfigurationsRequest): IListBucketInventoryConfigurationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListBucketInventoryConfigurationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListBucketInventoryConfigurationsResponseUnmarshaller.Instance;
    Result := Invoke<TListBucketInventoryConfigurationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListBucketMetricsConfigurations(Request: IListBucketMetricsConfigurationsRequest): IListBucketMetricsConfigurationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListBucketMetricsConfigurationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListBucketMetricsConfigurationsResponseUnmarshaller.Instance;
    Result := Invoke<TListBucketMetricsConfigurationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListBuckets: IListBucketsResponse;
begin
  Result := TListBucketsResponse.Create;
end;

function TAmazonS3Client.ListBuckets(Request: IListBucketsRequest): IListBucketsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListBucketsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListBucketsResponseUnmarshaller.Instance;
    Result := Invoke<TListBucketsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListObjects(const ABucketName: string): IListObjectsResponse;
var
  Request: IListObjectsRequest;
begin
  Request := TListObjectsRequest.Create;
  Request.BucketName := ABucketName;
  Result := ListObjects(Request);
end;

function TAmazonS3Client.ListObjects(const ABucketName: string; const APrefix: string): IListObjectsResponse;
var
  Request: IListObjectsRequest;
begin
  Request := TListObjectsRequest.Create;
  Request.BucketName := ABucketName;
  Request.Prefix := APrefix;
  Result := ListObjects(Request);
end;

function TAmazonS3Client.ListObjects(Request: IListObjectsRequest): IListObjectsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListObjectsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListObjectsResponseUnmarshaller.Instance;
    Result := Invoke<TListObjectsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListObjectsV2(Request: IListObjectsV2Request): IListObjectsV2Response;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListObjectsV2RequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListObjectsV2ResponseUnmarshaller.Instance;
    Result := Invoke<TListObjectsV2Response>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListVersions(const ABucketName: string): IListVersionsResponse;
var
  Request: IListVersionsRequest;
begin
  Request := TListVersionsRequest.Create;
  Request.BucketName := ABucketName;
  Result := ListVersions(Request);
end;

function TAmazonS3Client.ListVersions(const ABucketName: string; const APrefix: string): IListVersionsResponse;
var
  Request: IListVersionsRequest;
begin
  Request := TListVersionsRequest.Create;
  Request.BucketName := ABucketName;
  Request.Prefix := APrefix;
  Result := ListVersions(Request);
end;

function TAmazonS3Client.ListVersions(Request: IListVersionsRequest): IListVersionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListVersionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListVersionsResponseUnmarshaller.Instance;
    Result := Invoke<TListVersionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.SelectObjectContent(Request: ISelectObjectContentRequest): ISelectObjectContentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSelectObjectContentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSelectObjectContentResponseUnmarshaller.Instance;
    Result := Invoke<TSelectObjectContentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
