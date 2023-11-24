unit AWS.S3.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.S3.Model.AbortMultipartUploadResponse, 
  AWS.S3.Model.AbortMultipartUploadRequest, 
  AWS.S3.Model.CompleteMultipartUploadResponse, 
  AWS.S3.Model.CompleteMultipartUploadRequest, 
  AWS.S3.Model.CopyObjectResponse, 
  AWS.S3.Model.CopyObjectRequest, 
  AWS.S3.Model.CopyPartResponse, 
  AWS.S3.Model.CopyPartRequest, 
  AWS.S3.Model.DeleteBucketResponse, 
  AWS.S3.Model.DeleteBucketRequest, 
  AWS.S3.Model.DeleteBucketAnalyticsConfigurationResponse, 
  AWS.S3.Model.DeleteBucketAnalyticsConfigurationRequest, 
  AWS.S3.Model.DeleteBucketEncryptionResponse, 
  AWS.S3.Model.DeleteBucketEncryptionRequest, 
  AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationResponse, 
  AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationRequest, 
  AWS.S3.Model.DeleteBucketInventoryConfigurationResponse, 
  AWS.S3.Model.DeleteBucketInventoryConfigurationRequest, 
  AWS.S3.Model.DeleteBucketMetricsConfigurationResponse, 
  AWS.S3.Model.DeleteBucketMetricsConfigurationRequest, 
  AWS.S3.Model.DeleteBucketOwnershipControlsResponse, 
  AWS.S3.Model.DeleteBucketOwnershipControlsRequest, 
  AWS.S3.Model.DeleteBucketPolicyResponse, 
  AWS.S3.Model.DeleteBucketPolicyRequest, 
  AWS.S3.Model.DeleteBucketReplicationResponse, 
  AWS.S3.Model.DeleteBucketReplicationRequest, 
  AWS.S3.Model.DeleteBucketTaggingResponse, 
  AWS.S3.Model.DeleteBucketTaggingRequest, 
  AWS.S3.Model.DeleteBucketWebsiteResponse, 
  AWS.S3.Model.DeleteBucketWebsiteRequest, 
  AWS.S3.Model.DeleteCORSConfigurationResponse, 
  AWS.S3.Model.DeleteCORSConfigurationRequest, 
  AWS.S3.Model.DeleteLifecycleConfigurationResponse, 
  AWS.S3.Model.DeleteLifecycleConfigurationRequest, 
  AWS.S3.Model.DeleteObjectResponse, 
  AWS.S3.Model.DeleteObjectRequest, 
  AWS.S3.Model.DeleteObjectTaggingResponse, 
  AWS.S3.Model.DeleteObjectTaggingRequest, 
  AWS.S3.Model.DeleteObjectsResponse, 
  AWS.S3.Model.DeleteObjectsRequest, 
  AWS.S3.Model.DeletePublicAccessBlockResponse, 
  AWS.S3.Model.DeletePublicAccessBlockRequest, 
  AWS.S3.Model.GetACLResponse, 
  AWS.S3.Model.GetACLRequest, 
  AWS.S3.Model.GetBucketAccelerateConfigurationResponse, 
  AWS.S3.Model.GetBucketAccelerateConfigurationRequest, 
  AWS.S3.Model.GetBucketAnalyticsConfigurationResponse, 
  AWS.S3.Model.GetBucketAnalyticsConfigurationRequest, 
  AWS.S3.Model.GetBucketEncryptionResponse, 
  AWS.S3.Model.GetBucketEncryptionRequest, 
  AWS.S3.Model.GetBucketIntelligentTieringConfigurationResponse, 
  AWS.S3.Model.GetBucketIntelligentTieringConfigurationRequest, 
  AWS.S3.Model.GetBucketInventoryConfigurationResponse, 
  AWS.S3.Model.GetBucketInventoryConfigurationRequest, 
  AWS.S3.Model.GetBucketLocationResponse, 
  AWS.S3.Model.GetBucketLocationRequest, 
  AWS.S3.Model.GetBucketLoggingResponse, 
  AWS.S3.Model.GetBucketLoggingRequest, 
  AWS.S3.Model.GetBucketMetricsConfigurationResponse, 
  AWS.S3.Model.GetBucketMetricsConfigurationRequest, 
  AWS.S3.Model.GetBucketOwnershipControlsResponse, 
  AWS.S3.Model.GetBucketOwnershipControlsRequest, 
  AWS.S3.Model.GetBucketPolicyResponse, 
  AWS.S3.Model.GetBucketPolicyRequest, 
  AWS.S3.Model.GetBucketPolicyStatusResponse, 
  AWS.S3.Model.GetBucketPolicyStatusRequest, 
  AWS.S3.Model.GetBucketReplicationResponse, 
  AWS.S3.Model.GetBucketReplicationRequest, 
  AWS.S3.Model.GetBucketRequestPaymentResponse, 
  AWS.S3.Model.GetBucketRequestPaymentRequest, 
  AWS.S3.Model.GetBucketTaggingResponse, 
  AWS.S3.Model.GetBucketTaggingRequest, 
  AWS.S3.Model.GetBucketVersioningResponse, 
  AWS.S3.Model.GetBucketVersioningRequest, 
  AWS.S3.Model.GetBucketWebsiteResponse, 
  AWS.S3.Model.GetBucketWebsiteRequest, 
  AWS.S3.Model.GetCORSConfigurationResponse, 
  AWS.S3.Model.GetCORSConfigurationRequest, 
  AWS.S3.Model.GetLifecycleConfigurationResponse, 
  AWS.S3.Model.GetLifecycleConfigurationRequest, 
  AWS.S3.Model.GetObjectResponse, 
  AWS.S3.Model.GetObjectRequest, 
  AWS.S3.Model.GetObjectLegalHoldResponse, 
  AWS.S3.Model.GetObjectLegalHoldRequest, 
  AWS.S3.Model.GetObjectLockConfigurationResponse, 
  AWS.S3.Model.GetObjectLockConfigurationRequest, 
  AWS.S3.Model.GetObjectMetadataResponse, 
  AWS.S3.Model.GetObjectMetadataRequest, 
  AWS.S3.Model.GetObjectRetentionResponse, 
  AWS.S3.Model.GetObjectRetentionRequest, 
  AWS.S3.Model.GetObjectTaggingResponse, 
  AWS.S3.Model.GetObjectTaggingRequest, 
  AWS.S3.Model.GetObjectTorrentResponse, 
  AWS.S3.Model.GetObjectTorrentRequest, 
  AWS.S3.Model.GetPublicAccessBlockResponse, 
  AWS.S3.Model.GetPublicAccessBlockRequest, 
  AWS.S3.Model.InitiateMultipartUploadResponse, 
  AWS.S3.Model.InitiateMultipartUploadRequest, 
  AWS.S3.Model.ListBucketAnalyticsConfigurationsResponse, 
  AWS.S3.Model.ListBucketAnalyticsConfigurationsRequest, 
  AWS.S3.Model.ListBucketIntelligentTieringConfigurationsResponse, 
  AWS.S3.Model.ListBucketIntelligentTieringConfigurationsRequest, 
  AWS.S3.Model.ListBucketInventoryConfigurationsResponse, 
  AWS.S3.Model.ListBucketInventoryConfigurationsRequest, 
  AWS.S3.Model.ListBucketMetricsConfigurationsResponse, 
  AWS.S3.Model.ListBucketMetricsConfigurationsRequest, 
  AWS.S3.Model.ListBucketsResponse, 
  AWS.S3.Model.ListBucketsRequest, 
  AWS.S3.Model.ListMultipartUploadsResponse, 
  AWS.S3.Model.ListMultipartUploadsRequest, 
  AWS.S3.Model.ListObjectsResponse, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Model.ListObjectsV2Response, 
  AWS.S3.Model.ListObjectsV2Request, 
  AWS.S3.Model.ListPartsResponse, 
  AWS.S3.Model.ListPartsRequest, 
  AWS.S3.Model.ListVersionsResponse, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.S3.Model.PutACLResponse, 
  AWS.S3.Model.PutACLRequest, 
  AWS.S3.Model.PutBucketResponse, 
  AWS.S3.Model.PutBucketRequest, 
  AWS.S3.Model.PutBucketAccelerateConfigurationResponse, 
  AWS.S3.Model.PutBucketAccelerateConfigurationRequest, 
  AWS.S3.Model.PutBucketAnalyticsConfigurationResponse, 
  AWS.S3.Model.PutBucketAnalyticsConfigurationRequest, 
  AWS.S3.Model.PutBucketEncryptionResponse, 
  AWS.S3.Model.PutBucketEncryptionRequest, 
  AWS.S3.Model.PutBucketIntelligentTieringConfigurationResponse, 
  AWS.S3.Model.PutBucketIntelligentTieringConfigurationRequest, 
  AWS.S3.Model.PutBucketInventoryConfigurationResponse, 
  AWS.S3.Model.PutBucketInventoryConfigurationRequest, 
  AWS.S3.Model.PutBucketLoggingResponse, 
  AWS.S3.Model.PutBucketLoggingRequest, 
  AWS.S3.Model.PutBucketMetricsConfigurationResponse, 
  AWS.S3.Model.PutBucketMetricsConfigurationRequest, 
  AWS.S3.Model.PutBucketOwnershipControlsResponse, 
  AWS.S3.Model.PutBucketOwnershipControlsRequest, 
  AWS.S3.Model.PutBucketPolicyResponse, 
  AWS.S3.Model.PutBucketPolicyRequest, 
  AWS.S3.Model.PutBucketReplicationResponse, 
  AWS.S3.Model.PutBucketReplicationRequest, 
  AWS.S3.Model.PutBucketRequestPaymentResponse, 
  AWS.S3.Model.PutBucketRequestPaymentRequest, 
  AWS.S3.Model.RequestPaymentConfiguration, 
  AWS.S3.Model.PutBucketTaggingResponse, 
  AWS.S3.Model.PutBucketTaggingRequest, 
  AWS.S3.Model.Tag, 
  System.Generics.Collections, 
  AWS.S3.Model.PutBucketVersioningResponse, 
  AWS.S3.Model.PutBucketVersioningRequest, 
  AWS.S3.Model.PutBucketWebsiteResponse, 
  AWS.S3.Model.PutBucketWebsiteRequest, 
  AWS.S3.Model.WebsiteConfiguration, 
  AWS.S3.Model.PutCORSConfigurationResponse, 
  AWS.S3.Model.PutCORSConfigurationRequest, 
  AWS.S3.Model.CORSConfiguration, 
  AWS.S3.Model.PutLifecycleConfigurationResponse, 
  AWS.S3.Model.PutLifecycleConfigurationRequest, 
  AWS.S3.Model.LifecycleConfiguration, 
  AWS.S3.Model.PutObjectResponse, 
  AWS.S3.Model.PutObjectRequest, 
  AWS.S3.Model.PutObjectLegalHoldResponse, 
  AWS.S3.Model.PutObjectLegalHoldRequest, 
  AWS.S3.Model.PutObjectLockConfigurationResponse, 
  AWS.S3.Model.PutObjectLockConfigurationRequest, 
  AWS.S3.Model.PutObjectRetentionResponse, 
  AWS.S3.Model.PutObjectRetentionRequest, 
  AWS.S3.Model.PutObjectTaggingResponse, 
  AWS.S3.Model.PutObjectTaggingRequest, 
  AWS.S3.Model.PutPublicAccessBlockResponse, 
  AWS.S3.Model.PutPublicAccessBlockRequest, 
  AWS.S3.Model.RestoreObjectResponse, 
  AWS.S3.Model.RestoreObjectRequest, 
  AWS.S3.Model.SelectObjectContentResponse, 
  AWS.S3.Model.SelectObjectContentRequest, 
  AWS.S3.Model.UploadPartResponse, 
  AWS.S3.Model.UploadPartRequest, 
  AWS.S3.Model.WriteGetObjectResponseResponse, 
  AWS.S3.Model.WriteGetObjectResponseRequest;

type
  IAmazonS3 = interface(IAmazonService)
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

end.
