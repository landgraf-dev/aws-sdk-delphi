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
  AWS.S3.Internal.S3Signer, 
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
  AWS.S3.Model.AbortMultipartUploadResponse, 
  AWS.S3.Model.AbortMultipartUploadRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.S3.Transform.AbortMultipartUploadRequestMarshaller, 
  AWS.S3.Transform.AbortMultipartUploadResponseUnmarshaller, 
  AWS.S3.Model.CompleteMultipartUploadResponse, 
  AWS.S3.Model.CompleteMultipartUploadRequest, 
  AWS.S3.Transform.CompleteMultipartUploadRequestMarshaller, 
  AWS.S3.Transform.CompleteMultipartUploadResponseUnmarshaller, 
  AWS.S3.Model.CopyObjectResponse, 
  AWS.S3.Model.CopyObjectRequest, 
  AWS.S3.Transform.CopyObjectRequestMarshaller, 
  AWS.S3.Transform.CopyObjectResponseUnmarshaller, 
  AWS.S3.Model.CopyPartResponse, 
  AWS.S3.Model.CopyPartRequest, 
  AWS.S3.Transform.CopyPartRequestMarshaller, 
  AWS.S3.Transform.CopyPartResponseUnmarshaller, 
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
  AWS.S3.Model.DeleteObjectsResponse, 
  AWS.S3.Model.DeleteObjectsRequest, 
  AWS.S3.Transform.DeleteObjectsRequestMarshaller, 
  AWS.S3.Transform.DeleteObjectsResponseUnmarshaller, 
  AWS.S3.Model.DeletePublicAccessBlockResponse, 
  AWS.S3.Model.DeletePublicAccessBlockRequest, 
  AWS.S3.Transform.DeletePublicAccessBlockRequestMarshaller, 
  AWS.S3.Transform.DeletePublicAccessBlockResponseUnmarshaller, 
  AWS.S3.Model.GetACLResponse, 
  AWS.S3.Model.GetACLRequest, 
  AWS.S3.Transform.GetACLRequestMarshaller, 
  AWS.S3.Transform.GetACLResponseUnmarshaller, 
  AWS.S3.Model.GetBucketAccelerateConfigurationResponse, 
  AWS.S3.Model.GetBucketAccelerateConfigurationRequest, 
  AWS.S3.Transform.GetBucketAccelerateConfigurationRequestMarshaller, 
  AWS.S3.Transform.GetBucketAccelerateConfigurationResponseUnmarshaller, 
  AWS.S3.Model.GetBucketAnalyticsConfigurationResponse, 
  AWS.S3.Model.GetBucketAnalyticsConfigurationRequest, 
  AWS.S3.Transform.GetBucketAnalyticsConfigurationRequestMarshaller, 
  AWS.S3.Transform.GetBucketAnalyticsConfigurationResponseUnmarshaller, 
  AWS.S3.Model.GetBucketEncryptionResponse, 
  AWS.S3.Model.GetBucketEncryptionRequest, 
  AWS.S3.Transform.GetBucketEncryptionRequestMarshaller, 
  AWS.S3.Transform.GetBucketEncryptionResponseUnmarshaller, 
  AWS.S3.Model.GetBucketIntelligentTieringConfigurationResponse, 
  AWS.S3.Model.GetBucketIntelligentTieringConfigurationRequest, 
  AWS.S3.Transform.GetBucketIntelligentTieringConfigurationRequestMarshaller, 
  AWS.S3.Transform.GetBucketIntelligentTieringConfigurationResponseUnmarshaller, 
  AWS.S3.Model.GetBucketInventoryConfigurationResponse, 
  AWS.S3.Model.GetBucketInventoryConfigurationRequest, 
  AWS.S3.Transform.GetBucketInventoryConfigurationRequestMarshaller, 
  AWS.S3.Transform.GetBucketInventoryConfigurationResponseUnmarshaller, 
  AWS.S3.Model.GetBucketLocationResponse, 
  AWS.S3.Model.GetBucketLocationRequest, 
  AWS.S3.Transform.GetBucketLocationRequestMarshaller, 
  AWS.S3.Transform.GetBucketLocationResponseUnmarshaller, 
  AWS.S3.Model.GetBucketLoggingResponse, 
  AWS.S3.Model.GetBucketLoggingRequest, 
  AWS.S3.Transform.GetBucketLoggingRequestMarshaller, 
  AWS.S3.Transform.GetBucketLoggingResponseUnmarshaller, 
  AWS.S3.Model.GetBucketMetricsConfigurationResponse, 
  AWS.S3.Model.GetBucketMetricsConfigurationRequest, 
  AWS.S3.Transform.GetBucketMetricsConfigurationRequestMarshaller, 
  AWS.S3.Transform.GetBucketMetricsConfigurationResponseUnmarshaller, 
  AWS.S3.Model.GetBucketOwnershipControlsResponse, 
  AWS.S3.Model.GetBucketOwnershipControlsRequest, 
  AWS.S3.Transform.GetBucketOwnershipControlsRequestMarshaller, 
  AWS.S3.Transform.GetBucketOwnershipControlsResponseUnmarshaller, 
  AWS.S3.Model.GetBucketPolicyResponse, 
  AWS.S3.Model.GetBucketPolicyRequest, 
  AWS.S3.Transform.GetBucketPolicyRequestMarshaller, 
  AWS.S3.Transform.GetBucketPolicyResponseUnmarshaller, 
  AWS.S3.Model.GetBucketPolicyStatusResponse, 
  AWS.S3.Model.GetBucketPolicyStatusRequest, 
  AWS.S3.Transform.GetBucketPolicyStatusRequestMarshaller, 
  AWS.S3.Transform.GetBucketPolicyStatusResponseUnmarshaller, 
  AWS.S3.Model.GetBucketReplicationResponse, 
  AWS.S3.Model.GetBucketReplicationRequest, 
  AWS.S3.Transform.GetBucketReplicationRequestMarshaller, 
  AWS.S3.Transform.GetBucketReplicationResponseUnmarshaller, 
  AWS.S3.Model.GetBucketRequestPaymentResponse, 
  AWS.S3.Model.GetBucketRequestPaymentRequest, 
  AWS.S3.Transform.GetBucketRequestPaymentRequestMarshaller, 
  AWS.S3.Transform.GetBucketRequestPaymentResponseUnmarshaller, 
  AWS.S3.Model.GetBucketTaggingResponse, 
  AWS.S3.Model.GetBucketTaggingRequest, 
  AWS.S3.Transform.GetBucketTaggingRequestMarshaller, 
  AWS.S3.Transform.GetBucketTaggingResponseUnmarshaller, 
  AWS.S3.Model.GetBucketVersioningResponse, 
  AWS.S3.Model.GetBucketVersioningRequest, 
  AWS.S3.Transform.GetBucketVersioningRequestMarshaller, 
  AWS.S3.Transform.GetBucketVersioningResponseUnmarshaller, 
  AWS.S3.Model.GetBucketWebsiteResponse, 
  AWS.S3.Model.GetBucketWebsiteRequest, 
  AWS.S3.Transform.GetBucketWebsiteRequestMarshaller, 
  AWS.S3.Transform.GetBucketWebsiteResponseUnmarshaller, 
  AWS.S3.Model.GetCORSConfigurationResponse, 
  AWS.S3.Model.GetCORSConfigurationRequest, 
  AWS.S3.Transform.GetCORSConfigurationRequestMarshaller, 
  AWS.S3.Transform.GetCORSConfigurationResponseUnmarshaller, 
  AWS.S3.Model.GetLifecycleConfigurationResponse, 
  AWS.S3.Model.GetLifecycleConfigurationRequest, 
  AWS.S3.Transform.GetLifecycleConfigurationRequestMarshaller, 
  AWS.S3.Transform.GetLifecycleConfigurationResponseUnmarshaller, 
  AWS.S3.Model.GetObjectResponse, 
  AWS.S3.Model.GetObjectRequest, 
  AWS.S3.Transform.GetObjectRequestMarshaller, 
  AWS.S3.Transform.GetObjectResponseUnmarshaller, 
  AWS.S3.Model.GetObjectLegalHoldResponse, 
  AWS.S3.Model.GetObjectLegalHoldRequest, 
  AWS.S3.Transform.GetObjectLegalHoldRequestMarshaller, 
  AWS.S3.Transform.GetObjectLegalHoldResponseUnmarshaller, 
  AWS.S3.Model.GetObjectLockConfigurationResponse, 
  AWS.S3.Model.GetObjectLockConfigurationRequest, 
  AWS.S3.Transform.GetObjectLockConfigurationRequestMarshaller, 
  AWS.S3.Transform.GetObjectLockConfigurationResponseUnmarshaller, 
  AWS.S3.Model.GetObjectMetadataResponse, 
  AWS.S3.Model.GetObjectMetadataRequest, 
  AWS.S3.Transform.GetObjectMetadataRequestMarshaller, 
  AWS.S3.Transform.GetObjectMetadataResponseUnmarshaller, 
  AWS.S3.Model.GetObjectRetentionResponse, 
  AWS.S3.Model.GetObjectRetentionRequest, 
  AWS.S3.Transform.GetObjectRetentionRequestMarshaller, 
  AWS.S3.Transform.GetObjectRetentionResponseUnmarshaller, 
  AWS.S3.Model.GetObjectTaggingResponse, 
  AWS.S3.Model.GetObjectTaggingRequest, 
  AWS.S3.Transform.GetObjectTaggingRequestMarshaller, 
  AWS.S3.Transform.GetObjectTaggingResponseUnmarshaller, 
  AWS.S3.Model.GetObjectTorrentResponse, 
  AWS.S3.Model.GetObjectTorrentRequest, 
  AWS.S3.Transform.GetObjectTorrentRequestMarshaller, 
  AWS.S3.Transform.GetObjectTorrentResponseUnmarshaller, 
  AWS.S3.Model.GetPublicAccessBlockResponse, 
  AWS.S3.Model.GetPublicAccessBlockRequest, 
  AWS.S3.Transform.GetPublicAccessBlockRequestMarshaller, 
  AWS.S3.Transform.GetPublicAccessBlockResponseUnmarshaller, 
  AWS.S3.Model.HeadBucketResponse, 
  AWS.S3.Model.HeadBucketRequest, 
  AWS.S3.Transform.HeadBucketRequestMarshaller, 
  AWS.S3.Transform.HeadBucketResponseUnmarshaller, 
  AWS.S3.Model.InitiateMultipartUploadResponse, 
  AWS.S3.Model.InitiateMultipartUploadRequest, 
  AWS.S3.Transform.InitiateMultipartUploadRequestMarshaller, 
  AWS.S3.Transform.InitiateMultipartUploadResponseUnmarshaller, 
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
  AWS.S3.Model.ListMultipartUploadsResponse, 
  AWS.S3.Model.ListMultipartUploadsRequest, 
  AWS.S3.Transform.ListMultipartUploadsRequestMarshaller, 
  AWS.S3.Transform.ListMultipartUploadsResponseUnmarshaller, 
  AWS.S3.Model.ListObjectsResponse, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Transform.ListObjectsRequestMarshaller, 
  AWS.S3.Transform.ListObjectsResponseUnmarshaller, 
  AWS.S3.Model.ListObjectsV2Response, 
  AWS.S3.Model.ListObjectsV2Request, 
  AWS.S3.Transform.ListObjectsV2RequestMarshaller, 
  AWS.S3.Transform.ListObjectsV2ResponseUnmarshaller, 
  AWS.S3.Model.ListPartsResponse, 
  AWS.S3.Model.ListPartsRequest, 
  AWS.S3.Transform.ListPartsRequestMarshaller, 
  AWS.S3.Transform.ListPartsResponseUnmarshaller, 
  AWS.S3.Model.ListVersionsResponse, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.S3.Transform.ListVersionsRequestMarshaller, 
  AWS.S3.Transform.ListVersionsResponseUnmarshaller, 
  AWS.S3.Model.PutACLResponse, 
  AWS.S3.Model.PutACLRequest, 
  AWS.S3.Transform.PutACLRequestMarshaller, 
  AWS.S3.Transform.PutACLResponseUnmarshaller, 
  AWS.S3.Model.PutBucketResponse, 
  AWS.S3.Model.PutBucketRequest, 
  AWS.S3.Transform.PutBucketRequestMarshaller, 
  AWS.S3.Transform.PutBucketResponseUnmarshaller, 
  AWS.S3.Model.PutBucketAccelerateConfigurationResponse, 
  AWS.S3.Model.PutBucketAccelerateConfigurationRequest, 
  AWS.S3.Transform.PutBucketAccelerateConfigurationRequestMarshaller, 
  AWS.S3.Transform.PutBucketAccelerateConfigurationResponseUnmarshaller, 
  AWS.S3.Model.PutBucketAnalyticsConfigurationResponse, 
  AWS.S3.Model.PutBucketAnalyticsConfigurationRequest, 
  AWS.S3.Transform.PutBucketAnalyticsConfigurationRequestMarshaller, 
  AWS.S3.Transform.PutBucketAnalyticsConfigurationResponseUnmarshaller, 
  AWS.S3.Model.PutBucketEncryptionResponse, 
  AWS.S3.Model.PutBucketEncryptionRequest, 
  AWS.S3.Transform.PutBucketEncryptionRequestMarshaller, 
  AWS.S3.Transform.PutBucketEncryptionResponseUnmarshaller, 
  AWS.S3.Model.PutBucketIntelligentTieringConfigurationResponse, 
  AWS.S3.Model.PutBucketIntelligentTieringConfigurationRequest, 
  AWS.S3.Transform.PutBucketIntelligentTieringConfigurationRequestMarshaller, 
  AWS.S3.Transform.PutBucketIntelligentTieringConfigurationResponseUnmarshaller, 
  AWS.S3.Model.PutBucketInventoryConfigurationResponse, 
  AWS.S3.Model.PutBucketInventoryConfigurationRequest, 
  AWS.S3.Transform.PutBucketInventoryConfigurationRequestMarshaller, 
  AWS.S3.Transform.PutBucketInventoryConfigurationResponseUnmarshaller, 
  AWS.S3.Model.PutBucketLoggingResponse, 
  AWS.S3.Model.PutBucketLoggingRequest, 
  AWS.S3.Transform.PutBucketLoggingRequestMarshaller, 
  AWS.S3.Transform.PutBucketLoggingResponseUnmarshaller, 
  AWS.S3.Model.PutBucketMetricsConfigurationResponse, 
  AWS.S3.Model.PutBucketMetricsConfigurationRequest, 
  AWS.S3.Transform.PutBucketMetricsConfigurationRequestMarshaller, 
  AWS.S3.Transform.PutBucketMetricsConfigurationResponseUnmarshaller, 
  AWS.S3.Model.PutBucketOwnershipControlsResponse, 
  AWS.S3.Model.PutBucketOwnershipControlsRequest, 
  AWS.S3.Transform.PutBucketOwnershipControlsRequestMarshaller, 
  AWS.S3.Transform.PutBucketOwnershipControlsResponseUnmarshaller, 
  AWS.S3.Model.PutBucketPolicyResponse, 
  AWS.S3.Model.PutBucketPolicyRequest, 
  AWS.S3.Transform.PutBucketPolicyRequestMarshaller, 
  AWS.S3.Transform.PutBucketPolicyResponseUnmarshaller, 
  AWS.S3.Model.PutBucketReplicationResponse, 
  AWS.S3.Model.PutBucketReplicationRequest, 
  AWS.S3.Transform.PutBucketReplicationRequestMarshaller, 
  AWS.S3.Transform.PutBucketReplicationResponseUnmarshaller, 
  AWS.S3.Model.PutBucketRequestPaymentResponse, 
  AWS.S3.Model.PutBucketRequestPaymentRequest, 
  AWS.S3.Model.RequestPaymentConfiguration, 
  AWS.S3.Transform.PutBucketRequestPaymentRequestMarshaller, 
  AWS.S3.Transform.PutBucketRequestPaymentResponseUnmarshaller, 
  AWS.S3.Model.PutBucketTaggingResponse, 
  AWS.S3.Model.PutBucketTaggingRequest, 
  AWS.S3.Model.Tag, 
  System.Generics.Collections, 
  AWS.S3.Transform.PutBucketTaggingRequestMarshaller, 
  AWS.S3.Transform.PutBucketTaggingResponseUnmarshaller, 
  AWS.S3.Model.PutBucketVersioningResponse, 
  AWS.S3.Model.PutBucketVersioningRequest, 
  AWS.S3.Transform.PutBucketVersioningRequestMarshaller, 
  AWS.S3.Transform.PutBucketVersioningResponseUnmarshaller, 
  AWS.S3.Model.PutBucketWebsiteResponse, 
  AWS.S3.Model.PutBucketWebsiteRequest, 
  AWS.S3.Model.WebsiteConfiguration, 
  AWS.S3.Transform.PutBucketWebsiteRequestMarshaller, 
  AWS.S3.Transform.PutBucketWebsiteResponseUnmarshaller, 
  AWS.S3.Model.PutCORSConfigurationResponse, 
  AWS.S3.Model.PutCORSConfigurationRequest, 
  AWS.S3.Model.CORSConfiguration, 
  AWS.S3.Transform.PutCORSConfigurationRequestMarshaller, 
  AWS.S3.Transform.PutCORSConfigurationResponseUnmarshaller, 
  AWS.S3.Model.PutLifecycleConfigurationResponse, 
  AWS.S3.Model.PutLifecycleConfigurationRequest, 
  AWS.S3.Model.LifecycleConfiguration, 
  AWS.S3.Transform.PutLifecycleConfigurationRequestMarshaller, 
  AWS.S3.Transform.PutLifecycleConfigurationResponseUnmarshaller, 
  AWS.S3.Model.PutObjectResponse, 
  AWS.S3.Model.PutObjectRequest, 
  AWS.S3.Transform.PutObjectRequestMarshaller, 
  AWS.S3.Transform.PutObjectResponseUnmarshaller, 
  AWS.S3.Model.PutObjectLegalHoldResponse, 
  AWS.S3.Model.PutObjectLegalHoldRequest, 
  AWS.S3.Transform.PutObjectLegalHoldRequestMarshaller, 
  AWS.S3.Transform.PutObjectLegalHoldResponseUnmarshaller, 
  AWS.S3.Model.PutObjectLockConfigurationResponse, 
  AWS.S3.Model.PutObjectLockConfigurationRequest, 
  AWS.S3.Transform.PutObjectLockConfigurationRequestMarshaller, 
  AWS.S3.Transform.PutObjectLockConfigurationResponseUnmarshaller, 
  AWS.S3.Model.PutObjectRetentionResponse, 
  AWS.S3.Model.PutObjectRetentionRequest, 
  AWS.S3.Transform.PutObjectRetentionRequestMarshaller, 
  AWS.S3.Transform.PutObjectRetentionResponseUnmarshaller, 
  AWS.S3.Model.PutObjectTaggingResponse, 
  AWS.S3.Model.PutObjectTaggingRequest, 
  AWS.S3.Transform.PutObjectTaggingRequestMarshaller, 
  AWS.S3.Transform.PutObjectTaggingResponseUnmarshaller, 
  AWS.S3.Model.PutPublicAccessBlockResponse, 
  AWS.S3.Model.PutPublicAccessBlockRequest, 
  AWS.S3.Transform.PutPublicAccessBlockRequestMarshaller, 
  AWS.S3.Transform.PutPublicAccessBlockResponseUnmarshaller, 
  AWS.S3.Model.RestoreObjectResponse, 
  AWS.S3.Model.RestoreObjectRequest, 
  AWS.S3.Transform.RestoreObjectRequestMarshaller, 
  AWS.S3.Transform.RestoreObjectResponseUnmarshaller, 
  AWS.S3.Model.SelectObjectContentResponse, 
  AWS.S3.Model.SelectObjectContentRequest, 
  AWS.S3.Transform.SelectObjectContentRequestMarshaller, 
  AWS.S3.Transform.SelectObjectContentResponseUnmarshaller, 
  AWS.S3.Model.UploadPartResponse, 
  AWS.S3.Model.UploadPartRequest, 
  AWS.S3.Transform.UploadPartRequestMarshaller, 
  AWS.S3.Transform.UploadPartResponseUnmarshaller, 
  AWS.S3.Model.WriteGetObjectResponseResponse, 
  AWS.S3.Model.WriteGetObjectResponseRequest, 
  AWS.S3.Transform.WriteGetObjectResponseRequestMarshaller, 
  AWS.S3.Transform.WriteGetObjectResponseResponseUnmarshaller;

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
    function AbortMultipartUpload(const ABucketName: string; const AKey: string; const AUploadId: string): IAbortMultipartUploadResponse; overload;
    function AbortMultipartUpload(Request: IAbortMultipartUploadRequest): IAbortMultipartUploadResponse; overload;
    function CompleteMultipartUpload(Request: ICompleteMultipartUploadRequest): ICompleteMultipartUploadResponse; overload;
    function CopyObject(const ASourceBucket: string; const ASourceKey: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse; overload;
    function CopyObject(const ASourceBucket: string; const ASourceKey: string; const ASourceVersionId: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse; overload;
    function CopyObject(Request: ICopyObjectRequest): ICopyObjectResponse; overload;
    function CopyPart(const ASourceBucket: string; const ASourceKey: string; const ADestinationBucket: string; const ADestinationKey: string; const AUploadId: string): ICopyPartResponse; overload;
    function CopyPart(const ASourceBucket: string; const ASourceKey: string; const ASourceVersionId: string; const ADestinationBucket: string; const ADestinationKey: string; const AUploadId: string): ICopyPartResponse; overload;
    function CopyPart(Request: ICopyPartRequest): ICopyPartResponse; overload;
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
    function DeleteObjects(Request: IDeleteObjectsRequest): IDeleteObjectsResponse; overload;
    function DeletePublicAccessBlock(Request: IDeletePublicAccessBlockRequest): IDeletePublicAccessBlockResponse; overload;
    function GetACL(const ABucketName: string): IGetACLResponse; overload;
    function GetACL(Request: IGetACLRequest): IGetACLResponse; overload;
    function GetBucketAccelerateConfiguration(const ABucketName: string): IGetBucketAccelerateConfigurationResponse; overload;
    function GetBucketAccelerateConfiguration(Request: IGetBucketAccelerateConfigurationRequest): IGetBucketAccelerateConfigurationResponse; overload;
    function GetBucketAnalyticsConfiguration(Request: IGetBucketAnalyticsConfigurationRequest): IGetBucketAnalyticsConfigurationResponse; overload;
    function GetBucketEncryption(Request: IGetBucketEncryptionRequest): IGetBucketEncryptionResponse; overload;
    function GetBucketIntelligentTieringConfiguration(Request: IGetBucketIntelligentTieringConfigurationRequest): IGetBucketIntelligentTieringConfigurationResponse; overload;
    function GetBucketInventoryConfiguration(Request: IGetBucketInventoryConfigurationRequest): IGetBucketInventoryConfigurationResponse; overload;
    function GetBucketLocation(const ABucketName: string): IGetBucketLocationResponse; overload;
    function GetBucketLocation(Request: IGetBucketLocationRequest): IGetBucketLocationResponse; overload;
    function GetBucketLogging(const ABucketName: string): IGetBucketLoggingResponse; overload;
    function GetBucketLogging(Request: IGetBucketLoggingRequest): IGetBucketLoggingResponse; overload;
    function GetBucketMetricsConfiguration(Request: IGetBucketMetricsConfigurationRequest): IGetBucketMetricsConfigurationResponse; overload;
    function GetBucketOwnershipControls(Request: IGetBucketOwnershipControlsRequest): IGetBucketOwnershipControlsResponse; overload;
    function GetBucketPolicy(const ABucketName: string): IGetBucketPolicyResponse; overload;
    function GetBucketPolicy(Request: IGetBucketPolicyRequest): IGetBucketPolicyResponse; overload;
    function GetBucketPolicyStatus(Request: IGetBucketPolicyStatusRequest): IGetBucketPolicyStatusResponse; overload;
    function GetBucketReplication(Request: IGetBucketReplicationRequest): IGetBucketReplicationResponse; overload;
    function GetBucketRequestPayment(const ABucketName: string): IGetBucketRequestPaymentResponse; overload;
    function GetBucketRequestPayment(Request: IGetBucketRequestPaymentRequest): IGetBucketRequestPaymentResponse; overload;
    function GetBucketTagging(Request: IGetBucketTaggingRequest): IGetBucketTaggingResponse; overload;
    function GetBucketVersioning(const ABucketName: string): IGetBucketVersioningResponse; overload;
    function GetBucketVersioning(Request: IGetBucketVersioningRequest): IGetBucketVersioningResponse; overload;
    function GetBucketWebsite(const ABucketName: string): IGetBucketWebsiteResponse; overload;
    function GetBucketWebsite(Request: IGetBucketWebsiteRequest): IGetBucketWebsiteResponse; overload;
    function GetCORSConfiguration(const ABucketName: string): IGetCORSConfigurationResponse; overload;
    function GetCORSConfiguration(Request: IGetCORSConfigurationRequest): IGetCORSConfigurationResponse; overload;
    function GetLifecycleConfiguration(const ABucketName: string): IGetLifecycleConfigurationResponse; overload;
    function GetLifecycleConfiguration(Request: IGetLifecycleConfigurationRequest): IGetLifecycleConfigurationResponse; overload;
    function GetObject(const ABucketName: string; const AKey: string): IGetObjectResponse; overload;
    function GetObject(const ABucketName: string; const AKey: string; const AVersionId: string): IGetObjectResponse; overload;
    function GetObject(Request: IGetObjectRequest): IGetObjectResponse; overload;
    function GetObjectLegalHold(Request: IGetObjectLegalHoldRequest): IGetObjectLegalHoldResponse; overload;
    function GetObjectLockConfiguration(Request: IGetObjectLockConfigurationRequest): IGetObjectLockConfigurationResponse; overload;
    function GetObjectMetadata(const ABucketName: string; const AKey: string): IGetObjectMetadataResponse; overload;
    function GetObjectMetadata(const ABucketName: string; const AKey: string; const AVersionId: string): IGetObjectMetadataResponse; overload;
    function GetObjectMetadata(Request: IGetObjectMetadataRequest): IGetObjectMetadataResponse; overload;
    function GetObjectRetention(Request: IGetObjectRetentionRequest): IGetObjectRetentionResponse; overload;
    function GetObjectTagging(Request: IGetObjectTaggingRequest): IGetObjectTaggingResponse; overload;
    function GetObjectTorrent(const ABucketName: string; const AKey: string): IGetObjectTorrentResponse; overload;
    function GetObjectTorrent(Request: IGetObjectTorrentRequest): IGetObjectTorrentResponse; overload;
    function GetPublicAccessBlock(Request: IGetPublicAccessBlockRequest): IGetPublicAccessBlockResponse; overload;
    function InitiateMultipartUpload(const ABucketName: string; const AKey: string): IInitiateMultipartUploadResponse; overload;
    function InitiateMultipartUpload(Request: IInitiateMultipartUploadRequest): IInitiateMultipartUploadResponse; overload;
    function ListBucketAnalyticsConfigurations(Request: IListBucketAnalyticsConfigurationsRequest): IListBucketAnalyticsConfigurationsResponse; overload;
    function ListBucketIntelligentTieringConfigurations(Request: IListBucketIntelligentTieringConfigurationsRequest): IListBucketIntelligentTieringConfigurationsResponse; overload;
    function ListBucketInventoryConfigurations(Request: IListBucketInventoryConfigurationsRequest): IListBucketInventoryConfigurationsResponse; overload;
    function ListBucketMetricsConfigurations(Request: IListBucketMetricsConfigurationsRequest): IListBucketMetricsConfigurationsResponse; overload;
    function ListBuckets: IListBucketsResponse; overload;
    function ListBuckets(Request: IListBucketsRequest): IListBucketsResponse; overload;
    function ListMultipartUploads(const ABucketName: string): IListMultipartUploadsResponse; overload;
    function ListMultipartUploads(const ABucketName: string; const APrefix: string): IListMultipartUploadsResponse; overload;
    function ListMultipartUploads(Request: IListMultipartUploadsRequest): IListMultipartUploadsResponse; overload;
    function ListObjects(const ABucketName: string): IListObjectsResponse; overload;
    function ListObjects(const ABucketName: string; const APrefix: string): IListObjectsResponse; overload;
    function ListObjects(Request: IListObjectsRequest): IListObjectsResponse; overload;
    function ListObjectsV2(Request: IListObjectsV2Request): IListObjectsV2Response; overload;
    function ListParts(const ABucketName: string; const AKey: string; const AUploadId: string): IListPartsResponse; overload;
    function ListParts(Request: IListPartsRequest): IListPartsResponse; overload;
    function ListVersions(const ABucketName: string): IListVersionsResponse; overload;
    function ListVersions(const ABucketName: string; const APrefix: string): IListVersionsResponse; overload;
    function ListVersions(Request: IListVersionsRequest): IListVersionsResponse; overload;
    function PutACL(Request: IPutACLRequest): IPutACLResponse; overload;
    function PutBucket(const ABucketName: string): IPutBucketResponse; overload;
    function PutBucket(Request: IPutBucketRequest): IPutBucketResponse; overload;
    function PutBucketAccelerateConfiguration(Request: IPutBucketAccelerateConfigurationRequest): IPutBucketAccelerateConfigurationResponse; overload;
    function PutBucketAnalyticsConfiguration(Request: IPutBucketAnalyticsConfigurationRequest): IPutBucketAnalyticsConfigurationResponse; overload;
    function PutBucketEncryption(Request: IPutBucketEncryptionRequest): IPutBucketEncryptionResponse; overload;
    function PutBucketIntelligentTieringConfiguration(Request: IPutBucketIntelligentTieringConfigurationRequest): IPutBucketIntelligentTieringConfigurationResponse; overload;
    function PutBucketInventoryConfiguration(Request: IPutBucketInventoryConfigurationRequest): IPutBucketInventoryConfigurationResponse; overload;
    function PutBucketLogging(Request: IPutBucketLoggingRequest): IPutBucketLoggingResponse; overload;
    function PutBucketMetricsConfiguration(Request: IPutBucketMetricsConfigurationRequest): IPutBucketMetricsConfigurationResponse; overload;
    function PutBucketOwnershipControls(Request: IPutBucketOwnershipControlsRequest): IPutBucketOwnershipControlsResponse; overload;
    function PutBucketPolicy(const ABucketName: string; const APolicy: string): IPutBucketPolicyResponse; overload;
    function PutBucketPolicy(const ABucketName: string; const APolicy: string; const AContentMD5: string): IPutBucketPolicyResponse; overload;
    function PutBucketPolicy(Request: IPutBucketPolicyRequest): IPutBucketPolicyResponse; overload;
    function PutBucketReplication(Request: IPutBucketReplicationRequest): IPutBucketReplicationResponse; overload;
    function PutBucketRequestPayment(const ABucketName: string; const ARequestPaymentConfiguration: TRequestPaymentConfiguration): IPutBucketRequestPaymentResponse; overload;
    function PutBucketRequestPayment(Request: IPutBucketRequestPaymentRequest): IPutBucketRequestPaymentResponse; overload;
    function PutBucketTagging(const ABucketName: string; const ATagSet: TObjectList<TTag>): IPutBucketTaggingResponse; overload;
    function PutBucketTagging(Request: IPutBucketTaggingRequest): IPutBucketTaggingResponse; overload;
    function PutBucketVersioning(Request: IPutBucketVersioningRequest): IPutBucketVersioningResponse; overload;
    function PutBucketWebsite(const ABucketName: string; const AWebsiteConfiguration: TWebsiteConfiguration): IPutBucketWebsiteResponse; overload;
    function PutBucketWebsite(Request: IPutBucketWebsiteRequest): IPutBucketWebsiteResponse; overload;
    function PutCORSConfiguration(const ABucketName: string; const AConfiguration: TCORSConfiguration): IPutCORSConfigurationResponse; overload;
    function PutCORSConfiguration(Request: IPutCORSConfigurationRequest): IPutCORSConfigurationResponse; overload;
    function PutLifecycleConfiguration(const ABucketName: string; const AConfiguration: TLifecycleConfiguration): IPutLifecycleConfigurationResponse; overload;
    function PutLifecycleConfiguration(Request: IPutLifecycleConfigurationRequest): IPutLifecycleConfigurationResponse; overload;
    function PutObject(Request: IPutObjectRequest): IPutObjectResponse; overload;
    function PutObjectLegalHold(Request: IPutObjectLegalHoldRequest): IPutObjectLegalHoldResponse; overload;
    function PutObjectLockConfiguration(Request: IPutObjectLockConfigurationRequest): IPutObjectLockConfigurationResponse; overload;
    function PutObjectRetention(Request: IPutObjectRetentionRequest): IPutObjectRetentionResponse; overload;
    function PutObjectTagging(Request: IPutObjectTaggingRequest): IPutObjectTaggingResponse; overload;
    function PutPublicAccessBlock(Request: IPutPublicAccessBlockRequest): IPutPublicAccessBlockResponse; overload;
    function RestoreObject(const ABucketName: string; const AKey: string): IRestoreObjectResponse; overload;
    function RestoreObject(const ABucketName: string; const AKey: string; const ADays: Integer): IRestoreObjectResponse; overload;
    function RestoreObject(const ABucketName: string; const AKey: string; const AVersionId: string): IRestoreObjectResponse; overload;
    function RestoreObject(const ABucketName: string; const AKey: string; const AVersionId: string; const ADays: Integer): IRestoreObjectResponse; overload;
    function RestoreObject(Request: IRestoreObjectRequest): IRestoreObjectResponse; overload;
    function SelectObjectContent(Request: ISelectObjectContentRequest): ISelectObjectContentResponse; overload;
    function UploadPart(Request: IUploadPartRequest): IUploadPartResponse; overload;
    function WriteGetObjectResponse(Request: IWriteGetObjectResponseRequest): IWriteGetObjectResponseResponse; overload;
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

function TAmazonS3Client.AbortMultipartUpload(const ABucketName: string; const AKey: string; const AUploadId: string): IAbortMultipartUploadResponse;
var
  Request: IAbortMultipartUploadRequest;
begin
  Request := TAbortMultipartUploadRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.UploadId := AUploadId;
  Result := AbortMultipartUpload(Request);
end;

function TAmazonS3Client.AbortMultipartUpload(Request: IAbortMultipartUploadRequest): IAbortMultipartUploadResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TAbortMultipartUploadRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TAbortMultipartUploadResponseUnmarshaller.Instance;
    Result := Invoke<TAbortMultipartUploadResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.CompleteMultipartUpload(Request: ICompleteMultipartUploadRequest): ICompleteMultipartUploadResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCompleteMultipartUploadRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCompleteMultipartUploadResponseUnmarshaller.Instance;
    Result := Invoke<TCompleteMultipartUploadResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
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

function TAmazonS3Client.CopyPart(const ASourceBucket: string; const ASourceKey: string; const ADestinationBucket: string; const ADestinationKey: string; const AUploadId: string): ICopyPartResponse;
var
  Request: ICopyPartRequest;
begin
  Request := TCopyPartRequest.Create;
  Request.SourceBucket := ASourceBucket;
  Request.SourceKey := ASourceKey;
  Request.DestinationBucket := ADestinationBucket;
  Request.DestinationKey := ADestinationKey;
  Request.UploadId := AUploadId;
  Result := CopyPart(Request);
end;

function TAmazonS3Client.CopyPart(const ASourceBucket: string; const ASourceKey: string; const ASourceVersionId: string; const ADestinationBucket: string; const ADestinationKey: string; const AUploadId: string): ICopyPartResponse;
var
  Request: ICopyPartRequest;
begin
  Request := TCopyPartRequest.Create;
  Request.SourceBucket := ASourceBucket;
  Request.SourceKey := ASourceKey;
  Request.SourceVersionId := ASourceVersionId;
  Request.DestinationBucket := ADestinationBucket;
  Request.DestinationKey := ADestinationKey;
  Request.UploadId := AUploadId;
  Result := CopyPart(Request);
end;

function TAmazonS3Client.CopyPart(Request: ICopyPartRequest): ICopyPartResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCopyPartRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCopyPartResponseUnmarshaller.Instance;
    Result := Invoke<TCopyPartResponse>(Request.Obj, Options);
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

function TAmazonS3Client.DeleteObjects(Request: IDeleteObjectsRequest): IDeleteObjectsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteObjectsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteObjectsResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteObjectsResponse>(Request.Obj, Options);
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

function TAmazonS3Client.GetACL(const ABucketName: string): IGetACLResponse;
var
  Request: IGetACLRequest;
begin
  Request := TGetACLRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetACL(Request);
end;

function TAmazonS3Client.GetACL(Request: IGetACLRequest): IGetACLResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetACLRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetACLResponseUnmarshaller.Instance;
    Result := Invoke<TGetACLResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketAccelerateConfiguration(const ABucketName: string): IGetBucketAccelerateConfigurationResponse;
var
  Request: IGetBucketAccelerateConfigurationRequest;
begin
  Request := TGetBucketAccelerateConfigurationRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetBucketAccelerateConfiguration(Request);
end;

function TAmazonS3Client.GetBucketAccelerateConfiguration(Request: IGetBucketAccelerateConfigurationRequest): IGetBucketAccelerateConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketAccelerateConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketAccelerateConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketAccelerateConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketAnalyticsConfiguration(Request: IGetBucketAnalyticsConfigurationRequest): IGetBucketAnalyticsConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketAnalyticsConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketAnalyticsConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketAnalyticsConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketEncryption(Request: IGetBucketEncryptionRequest): IGetBucketEncryptionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketEncryptionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketEncryptionResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketEncryptionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketIntelligentTieringConfiguration(Request: IGetBucketIntelligentTieringConfigurationRequest): IGetBucketIntelligentTieringConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketIntelligentTieringConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketIntelligentTieringConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketIntelligentTieringConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketInventoryConfiguration(Request: IGetBucketInventoryConfigurationRequest): IGetBucketInventoryConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketInventoryConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketInventoryConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketInventoryConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketLocation(const ABucketName: string): IGetBucketLocationResponse;
var
  Request: IGetBucketLocationRequest;
begin
  Request := TGetBucketLocationRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetBucketLocation(Request);
end;

function TAmazonS3Client.GetBucketLocation(Request: IGetBucketLocationRequest): IGetBucketLocationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketLocationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketLocationResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketLocationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketLogging(const ABucketName: string): IGetBucketLoggingResponse;
var
  Request: IGetBucketLoggingRequest;
begin
  Request := TGetBucketLoggingRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetBucketLogging(Request);
end;

function TAmazonS3Client.GetBucketLogging(Request: IGetBucketLoggingRequest): IGetBucketLoggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketLoggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketLoggingResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketLoggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketMetricsConfiguration(Request: IGetBucketMetricsConfigurationRequest): IGetBucketMetricsConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketMetricsConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketMetricsConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketMetricsConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketOwnershipControls(Request: IGetBucketOwnershipControlsRequest): IGetBucketOwnershipControlsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketOwnershipControlsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketOwnershipControlsResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketOwnershipControlsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketPolicy(const ABucketName: string): IGetBucketPolicyResponse;
var
  Request: IGetBucketPolicyRequest;
begin
  Request := TGetBucketPolicyRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetBucketPolicy(Request);
end;

function TAmazonS3Client.GetBucketPolicy(Request: IGetBucketPolicyRequest): IGetBucketPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketPolicyStatus(Request: IGetBucketPolicyStatusRequest): IGetBucketPolicyStatusResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketPolicyStatusRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketPolicyStatusResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketPolicyStatusResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketReplication(Request: IGetBucketReplicationRequest): IGetBucketReplicationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketReplicationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketReplicationResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketReplicationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketRequestPayment(const ABucketName: string): IGetBucketRequestPaymentResponse;
var
  Request: IGetBucketRequestPaymentRequest;
begin
  Request := TGetBucketRequestPaymentRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetBucketRequestPayment(Request);
end;

function TAmazonS3Client.GetBucketRequestPayment(Request: IGetBucketRequestPaymentRequest): IGetBucketRequestPaymentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketRequestPaymentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketRequestPaymentResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketRequestPaymentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketTagging(Request: IGetBucketTaggingRequest): IGetBucketTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketVersioning(const ABucketName: string): IGetBucketVersioningResponse;
var
  Request: IGetBucketVersioningRequest;
begin
  Request := TGetBucketVersioningRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetBucketVersioning(Request);
end;

function TAmazonS3Client.GetBucketVersioning(Request: IGetBucketVersioningRequest): IGetBucketVersioningResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketVersioningRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketVersioningResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketVersioningResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketWebsite(const ABucketName: string): IGetBucketWebsiteResponse;
var
  Request: IGetBucketWebsiteRequest;
begin
  Request := TGetBucketWebsiteRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetBucketWebsite(Request);
end;

function TAmazonS3Client.GetBucketWebsite(Request: IGetBucketWebsiteRequest): IGetBucketWebsiteResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketWebsiteRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketWebsiteResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketWebsiteResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetCORSConfiguration(const ABucketName: string): IGetCORSConfigurationResponse;
var
  Request: IGetCORSConfigurationRequest;
begin
  Request := TGetCORSConfigurationRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetCORSConfiguration(Request);
end;

function TAmazonS3Client.GetCORSConfiguration(Request: IGetCORSConfigurationRequest): IGetCORSConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetCORSConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetCORSConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetCORSConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetLifecycleConfiguration(const ABucketName: string): IGetLifecycleConfigurationResponse;
var
  Request: IGetLifecycleConfigurationRequest;
begin
  Request := TGetLifecycleConfigurationRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetLifecycleConfiguration(Request);
end;

function TAmazonS3Client.GetLifecycleConfiguration(Request: IGetLifecycleConfigurationRequest): IGetLifecycleConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetLifecycleConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetLifecycleConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetLifecycleConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetObject(const ABucketName: string; const AKey: string): IGetObjectResponse;
var
  Request: IGetObjectRequest;
begin
  Request := TGetObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := GetObject(Request);
end;

function TAmazonS3Client.GetObject(const ABucketName: string; const AKey: string; const AVersionId: string): IGetObjectResponse;
var
  Request: IGetObjectRequest;
begin
  Request := TGetObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.VersionId := AVersionId;
  Result := GetObject(Request);
end;

function TAmazonS3Client.GetObject(Request: IGetObjectRequest): IGetObjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetObjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetObjectResponseUnmarshaller.Instance;
    Result := Invoke<TGetObjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetObjectLegalHold(Request: IGetObjectLegalHoldRequest): IGetObjectLegalHoldResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetObjectLegalHoldRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetObjectLegalHoldResponseUnmarshaller.Instance;
    Result := Invoke<TGetObjectLegalHoldResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetObjectLockConfiguration(Request: IGetObjectLockConfigurationRequest): IGetObjectLockConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetObjectLockConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetObjectLockConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetObjectLockConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetObjectMetadata(const ABucketName: string; const AKey: string): IGetObjectMetadataResponse;
var
  Request: IGetObjectMetadataRequest;
begin
  Request := TGetObjectMetadataRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := GetObjectMetadata(Request);
end;

function TAmazonS3Client.GetObjectMetadata(const ABucketName: string; const AKey: string; const AVersionId: string): IGetObjectMetadataResponse;
var
  Request: IGetObjectMetadataRequest;
begin
  Request := TGetObjectMetadataRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.VersionId := AVersionId;
  Result := GetObjectMetadata(Request);
end;

function TAmazonS3Client.GetObjectMetadata(Request: IGetObjectMetadataRequest): IGetObjectMetadataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetObjectMetadataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetObjectMetadataResponseUnmarshaller.Instance;
    Result := Invoke<TGetObjectMetadataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetObjectRetention(Request: IGetObjectRetentionRequest): IGetObjectRetentionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetObjectRetentionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetObjectRetentionResponseUnmarshaller.Instance;
    Result := Invoke<TGetObjectRetentionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetObjectTagging(Request: IGetObjectTaggingRequest): IGetObjectTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetObjectTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetObjectTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TGetObjectTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetObjectTorrent(const ABucketName: string; const AKey: string): IGetObjectTorrentResponse;
var
  Request: IGetObjectTorrentRequest;
begin
  Request := TGetObjectTorrentRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := GetObjectTorrent(Request);
end;

function TAmazonS3Client.GetObjectTorrent(Request: IGetObjectTorrentRequest): IGetObjectTorrentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetObjectTorrentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetObjectTorrentResponseUnmarshaller.Instance;
    Result := Invoke<TGetObjectTorrentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetPublicAccessBlock(Request: IGetPublicAccessBlockRequest): IGetPublicAccessBlockResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetPublicAccessBlockRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetPublicAccessBlockResponseUnmarshaller.Instance;
    Result := Invoke<TGetPublicAccessBlockResponse>(Request.Obj, Options);
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

function TAmazonS3Client.InitiateMultipartUpload(const ABucketName: string; const AKey: string): IInitiateMultipartUploadResponse;
var
  Request: IInitiateMultipartUploadRequest;
begin
  Request := TInitiateMultipartUploadRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := InitiateMultipartUpload(Request);
end;

function TAmazonS3Client.InitiateMultipartUpload(Request: IInitiateMultipartUploadRequest): IInitiateMultipartUploadResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TInitiateMultipartUploadRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TInitiateMultipartUploadResponseUnmarshaller.Instance;
    Result := Invoke<TInitiateMultipartUploadResponse>(Request.Obj, Options);
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

function TAmazonS3Client.ListMultipartUploads(const ABucketName: string): IListMultipartUploadsResponse;
var
  Request: IListMultipartUploadsRequest;
begin
  Request := TListMultipartUploadsRequest.Create;
  Request.BucketName := ABucketName;
  Result := ListMultipartUploads(Request);
end;

function TAmazonS3Client.ListMultipartUploads(const ABucketName: string; const APrefix: string): IListMultipartUploadsResponse;
var
  Request: IListMultipartUploadsRequest;
begin
  Request := TListMultipartUploadsRequest.Create;
  Request.BucketName := ABucketName;
  Request.Prefix := APrefix;
  Result := ListMultipartUploads(Request);
end;

function TAmazonS3Client.ListMultipartUploads(Request: IListMultipartUploadsRequest): IListMultipartUploadsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListMultipartUploadsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListMultipartUploadsResponseUnmarshaller.Instance;
    Result := Invoke<TListMultipartUploadsResponse>(Request.Obj, Options);
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

function TAmazonS3Client.ListParts(const ABucketName: string; const AKey: string; const AUploadId: string): IListPartsResponse;
var
  Request: IListPartsRequest;
begin
  Request := TListPartsRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.UploadId := AUploadId;
  Result := ListParts(Request);
end;

function TAmazonS3Client.ListParts(Request: IListPartsRequest): IListPartsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListPartsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListPartsResponseUnmarshaller.Instance;
    Result := Invoke<TListPartsResponse>(Request.Obj, Options);
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

function TAmazonS3Client.PutACL(Request: IPutACLRequest): IPutACLResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutACLRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutACLResponseUnmarshaller.Instance;
    Result := Invoke<TPutACLResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucket(const ABucketName: string): IPutBucketResponse;
var
  Request: IPutBucketRequest;
begin
  Request := TPutBucketRequest.Create;
  Request.BucketName := ABucketName;
  Result := PutBucket(Request);
end;

function TAmazonS3Client.PutBucket(Request: IPutBucketRequest): IPutBucketResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketAccelerateConfiguration(Request: IPutBucketAccelerateConfigurationRequest): IPutBucketAccelerateConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketAccelerateConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketAccelerateConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketAccelerateConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketAnalyticsConfiguration(Request: IPutBucketAnalyticsConfigurationRequest): IPutBucketAnalyticsConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketAnalyticsConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketAnalyticsConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketAnalyticsConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketEncryption(Request: IPutBucketEncryptionRequest): IPutBucketEncryptionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketEncryptionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketEncryptionResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketEncryptionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketIntelligentTieringConfiguration(Request: IPutBucketIntelligentTieringConfigurationRequest): IPutBucketIntelligentTieringConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketIntelligentTieringConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketIntelligentTieringConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketIntelligentTieringConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketInventoryConfiguration(Request: IPutBucketInventoryConfigurationRequest): IPutBucketInventoryConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketInventoryConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketInventoryConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketInventoryConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketLogging(Request: IPutBucketLoggingRequest): IPutBucketLoggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketLoggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketLoggingResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketLoggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketMetricsConfiguration(Request: IPutBucketMetricsConfigurationRequest): IPutBucketMetricsConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketMetricsConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketMetricsConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketMetricsConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketOwnershipControls(Request: IPutBucketOwnershipControlsRequest): IPutBucketOwnershipControlsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketOwnershipControlsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketOwnershipControlsResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketOwnershipControlsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketPolicy(const ABucketName: string; const APolicy: string): IPutBucketPolicyResponse;
var
  Request: IPutBucketPolicyRequest;
begin
  Request := TPutBucketPolicyRequest.Create;
  Request.BucketName := ABucketName;
  Request.Policy := APolicy;
  Result := PutBucketPolicy(Request);
end;

function TAmazonS3Client.PutBucketPolicy(const ABucketName: string; const APolicy: string; const AContentMD5: string): IPutBucketPolicyResponse;
var
  Request: IPutBucketPolicyRequest;
begin
  Request := TPutBucketPolicyRequest.Create;
  Request.BucketName := ABucketName;
  Request.Policy := APolicy;
  Request.ContentMD5 := AContentMD5;
  Result := PutBucketPolicy(Request);
end;

function TAmazonS3Client.PutBucketPolicy(Request: IPutBucketPolicyRequest): IPutBucketPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketReplication(Request: IPutBucketReplicationRequest): IPutBucketReplicationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketReplicationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketReplicationResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketReplicationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketRequestPayment(const ABucketName: string; const ARequestPaymentConfiguration: TRequestPaymentConfiguration): IPutBucketRequestPaymentResponse;
var
  Request: IPutBucketRequestPaymentRequest;
begin
  Request := TPutBucketRequestPaymentRequest.Create;
  Request.BucketName := ABucketName;
  Request.RequestPaymentConfiguration := ARequestPaymentConfiguration;
  Result := PutBucketRequestPayment(Request);
end;

function TAmazonS3Client.PutBucketRequestPayment(Request: IPutBucketRequestPaymentRequest): IPutBucketRequestPaymentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketRequestPaymentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketRequestPaymentResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketRequestPaymentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketTagging(const ABucketName: string; const ATagSet: TObjectList<TTag>): IPutBucketTaggingResponse;
var
  Request: IPutBucketTaggingRequest;
begin
  Request := TPutBucketTaggingRequest.Create;
  Request.BucketName := ABucketName;
  Request.TagSet := ATagSet;
  Result := PutBucketTagging(Request);
end;

function TAmazonS3Client.PutBucketTagging(Request: IPutBucketTaggingRequest): IPutBucketTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketVersioning(Request: IPutBucketVersioningRequest): IPutBucketVersioningResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketVersioningRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketVersioningResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketVersioningResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketWebsite(const ABucketName: string; const AWebsiteConfiguration: TWebsiteConfiguration): IPutBucketWebsiteResponse;
var
  Request: IPutBucketWebsiteRequest;
begin
  Request := TPutBucketWebsiteRequest.Create;
  Request.BucketName := ABucketName;
  Request.WebsiteConfiguration := AWebsiteConfiguration;
  Result := PutBucketWebsite(Request);
end;

function TAmazonS3Client.PutBucketWebsite(Request: IPutBucketWebsiteRequest): IPutBucketWebsiteResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketWebsiteRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketWebsiteResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketWebsiteResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutCORSConfiguration(const ABucketName: string; const AConfiguration: TCORSConfiguration): IPutCORSConfigurationResponse;
var
  Request: IPutCORSConfigurationRequest;
begin
  Request := TPutCORSConfigurationRequest.Create;
  Request.BucketName := ABucketName;
  Request.Configuration := AConfiguration;
  Result := PutCORSConfiguration(Request);
end;

function TAmazonS3Client.PutCORSConfiguration(Request: IPutCORSConfigurationRequest): IPutCORSConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutCORSConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutCORSConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutCORSConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutLifecycleConfiguration(const ABucketName: string; const AConfiguration: TLifecycleConfiguration): IPutLifecycleConfigurationResponse;
var
  Request: IPutLifecycleConfigurationRequest;
begin
  Request := TPutLifecycleConfigurationRequest.Create;
  Request.BucketName := ABucketName;
  Request.Configuration := AConfiguration;
  Result := PutLifecycleConfiguration(Request);
end;

function TAmazonS3Client.PutLifecycleConfiguration(Request: IPutLifecycleConfigurationRequest): IPutLifecycleConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutLifecycleConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutLifecycleConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutLifecycleConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutObject(Request: IPutObjectRequest): IPutObjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutObjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutObjectResponseUnmarshaller.Instance;
    Result := Invoke<TPutObjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutObjectLegalHold(Request: IPutObjectLegalHoldRequest): IPutObjectLegalHoldResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutObjectLegalHoldRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutObjectLegalHoldResponseUnmarshaller.Instance;
    Result := Invoke<TPutObjectLegalHoldResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutObjectLockConfiguration(Request: IPutObjectLockConfigurationRequest): IPutObjectLockConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutObjectLockConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutObjectLockConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutObjectLockConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutObjectRetention(Request: IPutObjectRetentionRequest): IPutObjectRetentionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutObjectRetentionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutObjectRetentionResponseUnmarshaller.Instance;
    Result := Invoke<TPutObjectRetentionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutObjectTagging(Request: IPutObjectTaggingRequest): IPutObjectTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutObjectTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutObjectTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TPutObjectTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutPublicAccessBlock(Request: IPutPublicAccessBlockRequest): IPutPublicAccessBlockResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutPublicAccessBlockRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutPublicAccessBlockResponseUnmarshaller.Instance;
    Result := Invoke<TPutPublicAccessBlockResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.RestoreObject(const ABucketName: string; const AKey: string): IRestoreObjectResponse;
var
  Request: IRestoreObjectRequest;
begin
  Request := TRestoreObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := RestoreObject(Request);
end;

function TAmazonS3Client.RestoreObject(const ABucketName: string; const AKey: string; const ADays: Integer): IRestoreObjectResponse;
var
  Request: IRestoreObjectRequest;
begin
  Request := TRestoreObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.Days := ADays;
  Result := RestoreObject(Request);
end;

function TAmazonS3Client.RestoreObject(const ABucketName: string; const AKey: string; const AVersionId: string): IRestoreObjectResponse;
var
  Request: IRestoreObjectRequest;
begin
  Request := TRestoreObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.VersionId := AVersionId;
  Result := RestoreObject(Request);
end;

function TAmazonS3Client.RestoreObject(const ABucketName: string; const AKey: string; const AVersionId: string; const ADays: Integer): IRestoreObjectResponse;
var
  Request: IRestoreObjectRequest;
begin
  Request := TRestoreObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.VersionId := AVersionId;
  Request.Days := ADays;
  Result := RestoreObject(Request);
end;

function TAmazonS3Client.RestoreObject(Request: IRestoreObjectRequest): IRestoreObjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRestoreObjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRestoreObjectResponseUnmarshaller.Instance;
    Result := Invoke<TRestoreObjectResponse>(Request.Obj, Options);
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

function TAmazonS3Client.UploadPart(Request: IUploadPartRequest): IUploadPartResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUploadPartRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUploadPartResponseUnmarshaller.Instance;
    Result := Invoke<TUploadPartResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.WriteGetObjectResponse(Request: IWriteGetObjectResponseRequest): IWriteGetObjectResponseResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TWriteGetObjectResponseRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TWriteGetObjectResponseResponseUnmarshaller.Instance;
    Result := Invoke<TWriteGetObjectResponseResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
