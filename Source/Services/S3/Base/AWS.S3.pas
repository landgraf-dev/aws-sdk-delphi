unit AWS.S3;

interface

uses
  AWS.S3.Client, 
  AWS.S3.ClientIntf, 
  AWS.S3.Config, 
  AWS.S3.Enums, 
  AWS.S3.Exception, 
  AWS.S3.Metadata, 
  AWS.S3.Model.AbortIncompleteMultipartUpload, 
  AWS.S3.Model.AbortMultipartUploadRequest, 
  AWS.S3.Model.AbortMultipartUploadResponse, 
  AWS.S3.Model.AccelerateConfiguration, 
  AWS.S3.Model.AccessControlPolicy, 
  AWS.S3.Model.AccessControlTranslation, 
  AWS.S3.Model.AnalyticsAndOperator, 
  AWS.S3.Model.AnalyticsConfiguration, 
  AWS.S3.Model.AnalyticsExportDestination, 
  AWS.S3.Model.AnalyticsFilter, 
  AWS.S3.Model.AnalyticsS3BucketDestination, 
  AWS.S3.Model.Bucket, 
  AWS.S3.Model.BucketAlreadyExistsException, 
  AWS.S3.Model.BucketAlreadyOwnedByYouException, 
  AWS.S3.Model.BucketLoggingStatus, 
  AWS.S3.Model.CommonPrefix, 
  AWS.S3.Model.CompletedPart, 
  AWS.S3.Model.CompleteMultipartUploadRequest, 
  AWS.S3.Model.CompleteMultipartUploadResponse, 
  AWS.S3.Model.Condition, 
  AWS.S3.Model.ContinuationEvent, 
  AWS.S3.Model.CopyObjectRequest, 
  AWS.S3.Model.CopyObjectResponse, 
  AWS.S3.Model.CopyObjectResult, 
  AWS.S3.Model.CopyPartRequest, 
  AWS.S3.Model.CopyPartResponse, 
  AWS.S3.Model.CopyPartResult, 
  AWS.S3.Model.CORSConfiguration, 
  AWS.S3.Model.CORSRule, 
  AWS.S3.Model.CreateBucketConfiguration, 
  AWS.S3.Model.CSVInput, 
  AWS.S3.Model.CSVOutput, 
  AWS.S3.Model.DefaultRetention, 
  AWS.S3.Model.DeleteBucketAnalyticsConfigurationRequest, 
  AWS.S3.Model.DeleteBucketAnalyticsConfigurationResponse, 
  AWS.S3.Model.DeleteBucketEncryptionRequest, 
  AWS.S3.Model.DeleteBucketEncryptionResponse, 
  AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationRequest, 
  AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationResponse, 
  AWS.S3.Model.DeleteBucketInventoryConfigurationRequest, 
  AWS.S3.Model.DeleteBucketInventoryConfigurationResponse, 
  AWS.S3.Model.DeleteBucketMetricsConfigurationRequest, 
  AWS.S3.Model.DeleteBucketMetricsConfigurationResponse, 
  AWS.S3.Model.DeleteBucketOwnershipControlsRequest, 
  AWS.S3.Model.DeleteBucketOwnershipControlsResponse, 
  AWS.S3.Model.DeleteBucketPolicyRequest, 
  AWS.S3.Model.DeleteBucketPolicyResponse, 
  AWS.S3.Model.DeleteBucketReplicationRequest, 
  AWS.S3.Model.DeleteBucketReplicationResponse, 
  AWS.S3.Model.DeleteBucketRequest, 
  AWS.S3.Model.DeleteBucketResponse, 
  AWS.S3.Model.DeleteBucketTaggingRequest, 
  AWS.S3.Model.DeleteBucketTaggingResponse, 
  AWS.S3.Model.DeleteBucketWebsiteRequest, 
  AWS.S3.Model.DeleteBucketWebsiteResponse, 
  AWS.S3.Model.DeleteCORSConfigurationRequest, 
  AWS.S3.Model.DeleteCORSConfigurationResponse, 
  AWS.S3.Model.DeletedObject, 
  AWS.S3.Model.DeleteLifecycleConfigurationRequest, 
  AWS.S3.Model.DeleteLifecycleConfigurationResponse, 
  AWS.S3.Model.DeleteMarkerEntry, 
  AWS.S3.Model.DeleteMarkerReplication, 
  AWS.S3.Model.DeleteObjectRequest, 
  AWS.S3.Model.DeleteObjectResponse, 
  AWS.S3.Model.DeleteObjectsRequest, 
  AWS.S3.Model.DeleteObjectsResponse, 
  AWS.S3.Model.DeleteObjectTaggingRequest, 
  AWS.S3.Model.DeleteObjectTaggingResponse, 
  AWS.S3.Model.DeletePublicAccessBlockRequest, 
  AWS.S3.Model.DeletePublicAccessBlockResponse, 
  AWS.S3.Model.Destination, 
  AWS.S3.Model.EncryptionConfiguration, 
  AWS.S3.Model.EndEvent, 
  AWS.S3.Model.Error, 
  AWS.S3.Model.ErrorDocument, 
  AWS.S3.Model.ExistingObjectReplication, 
  AWS.S3.Model.GetACLRequest, 
  AWS.S3.Model.GetACLResponse, 
  AWS.S3.Model.GetBucketAccelerateConfigurationRequest, 
  AWS.S3.Model.GetBucketAccelerateConfigurationResponse, 
  AWS.S3.Model.GetBucketAnalyticsConfigurationRequest, 
  AWS.S3.Model.GetBucketAnalyticsConfigurationResponse, 
  AWS.S3.Model.GetBucketEncryptionRequest, 
  AWS.S3.Model.GetBucketEncryptionResponse, 
  AWS.S3.Model.GetBucketIntelligentTieringConfigurationRequest, 
  AWS.S3.Model.GetBucketIntelligentTieringConfigurationResponse, 
  AWS.S3.Model.GetBucketInventoryConfigurationRequest, 
  AWS.S3.Model.GetBucketInventoryConfigurationResponse, 
  AWS.S3.Model.GetBucketLocationRequest, 
  AWS.S3.Model.GetBucketLocationResponse, 
  AWS.S3.Model.GetBucketLoggingRequest, 
  AWS.S3.Model.GetBucketLoggingResponse, 
  AWS.S3.Model.GetBucketMetricsConfigurationRequest, 
  AWS.S3.Model.GetBucketMetricsConfigurationResponse, 
  AWS.S3.Model.GetBucketOwnershipControlsRequest, 
  AWS.S3.Model.GetBucketOwnershipControlsResponse, 
  AWS.S3.Model.GetBucketPolicyRequest, 
  AWS.S3.Model.GetBucketPolicyResponse, 
  AWS.S3.Model.GetBucketPolicyStatusRequest, 
  AWS.S3.Model.GetBucketPolicyStatusResponse, 
  AWS.S3.Model.GetBucketReplicationRequest, 
  AWS.S3.Model.GetBucketReplicationResponse, 
  AWS.S3.Model.GetBucketRequestPaymentRequest, 
  AWS.S3.Model.GetBucketRequestPaymentResponse, 
  AWS.S3.Model.GetBucketTaggingRequest, 
  AWS.S3.Model.GetBucketTaggingResponse, 
  AWS.S3.Model.GetBucketVersioningRequest, 
  AWS.S3.Model.GetBucketVersioningResponse, 
  AWS.S3.Model.GetBucketWebsiteRequest, 
  AWS.S3.Model.GetBucketWebsiteResponse, 
  AWS.S3.Model.GetCORSConfigurationRequest, 
  AWS.S3.Model.GetCORSConfigurationResponse, 
  AWS.S3.Model.GetLifecycleConfigurationRequest, 
  AWS.S3.Model.GetLifecycleConfigurationResponse, 
  AWS.S3.Model.GetObjectLegalHoldRequest, 
  AWS.S3.Model.GetObjectLegalHoldResponse, 
  AWS.S3.Model.GetObjectLockConfigurationRequest, 
  AWS.S3.Model.GetObjectLockConfigurationResponse, 
  AWS.S3.Model.GetObjectMetadataRequest, 
  AWS.S3.Model.GetObjectMetadataResponse, 
  AWS.S3.Model.GetObjectRequest, 
  AWS.S3.Model.GetObjectResponse, 
  AWS.S3.Model.GetObjectRetentionRequest, 
  AWS.S3.Model.GetObjectRetentionResponse, 
  AWS.S3.Model.GetObjectTaggingRequest, 
  AWS.S3.Model.GetObjectTaggingResponse, 
  AWS.S3.Model.GetObjectTorrentRequest, 
  AWS.S3.Model.GetObjectTorrentResponse, 
  AWS.S3.Model.GetPublicAccessBlockRequest, 
  AWS.S3.Model.GetPublicAccessBlockResponse, 
  AWS.S3.Model.Grant, 
  AWS.S3.Model.Grantee, 
  AWS.S3.Model.HeadBucketRequest, 
  AWS.S3.Model.HeadBucketResponse, 
  AWS.S3.Model.IndexDocument, 
  AWS.S3.Model.InitiateMultipartUploadRequest, 
  AWS.S3.Model.InitiateMultipartUploadResponse, 
  AWS.S3.Model.Initiator, 
  AWS.S3.Model.InputSerialization, 
  AWS.S3.Model.IntelligentTieringAndOperator, 
  AWS.S3.Model.IntelligentTieringConfiguration, 
  AWS.S3.Model.IntelligentTieringFilter, 
  AWS.S3.Model.InvalidObjectStateException, 
  AWS.S3.Model.InventoryConfiguration, 
  AWS.S3.Model.InventoryDestination, 
  AWS.S3.Model.InventoryEncryption, 
  AWS.S3.Model.InventoryFilter, 
  AWS.S3.Model.InventoryS3BucketDestination, 
  AWS.S3.Model.InventorySchedule, 
  AWS.S3.Model.JSONInput, 
  AWS.S3.Model.JSONOutput, 
  AWS.S3.Model.LifecycleConfiguration, 
  AWS.S3.Model.LifecycleExpiration, 
  AWS.S3.Model.LifecycleRule, 
  AWS.S3.Model.LifecycleRuleAndOperator, 
  AWS.S3.Model.LifecycleRuleFilter, 
  AWS.S3.Model.ListBucketAnalyticsConfigurationsRequest, 
  AWS.S3.Model.ListBucketAnalyticsConfigurationsResponse, 
  AWS.S3.Model.ListBucketIntelligentTieringConfigurationsRequest, 
  AWS.S3.Model.ListBucketIntelligentTieringConfigurationsResponse, 
  AWS.S3.Model.ListBucketInventoryConfigurationsRequest, 
  AWS.S3.Model.ListBucketInventoryConfigurationsResponse, 
  AWS.S3.Model.ListBucketMetricsConfigurationsRequest, 
  AWS.S3.Model.ListBucketMetricsConfigurationsResponse, 
  AWS.S3.Model.ListBucketsRequest, 
  AWS.S3.Model.ListBucketsResponse, 
  AWS.S3.Model.ListMultipartUploadsRequest, 
  AWS.S3.Model.ListMultipartUploadsResponse, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Model.ListObjectsResponse, 
  AWS.S3.Model.ListObjectsV2Request, 
  AWS.S3.Model.ListObjectsV2Response, 
  AWS.S3.Model.ListPartsRequest, 
  AWS.S3.Model.ListPartsResponse, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.S3.Model.ListVersionsResponse, 
  AWS.S3.Model.LoggingEnabled, 
  AWS.S3.Model.Metrics, 
  AWS.S3.Model.MetricsAndOperator, 
  AWS.S3.Model.MetricsConfiguration, 
  AWS.S3.Model.MetricsFilter, 
  AWS.S3.Model.MultipartUpload, 
  AWS.S3.Model.NoncurrentVersionExpiration, 
  AWS.S3.Model.NoncurrentVersionTransition, 
  AWS.S3.Model.NoSuchBucketException, 
  AWS.S3.Model.NoSuchKeyException, 
  AWS.S3.Model.NoSuchUploadException, 
  AWS.S3.Model.ObjectAlreadyInActiveTierErrorException, 
  AWS.S3.Model.ObjectIdentifier, 
  AWS.S3.Model.ObjectLockConfiguration, 
  AWS.S3.Model.ObjectLockLegalHold, 
  AWS.S3.Model.ObjectLockRetention, 
  AWS.S3.Model.ObjectLockRule, 
  AWS.S3.Model.ObjectNotInActiveTierErrorException, 
  AWS.S3.Model.ObjectTypes, 
  AWS.S3.Model.ObjectVersion, 
  AWS.S3.Model.OutputSerialization, 
  AWS.S3.Model.Owner, 
  AWS.S3.Model.OwnershipControls, 
  AWS.S3.Model.OwnershipControlsRule, 
  AWS.S3.Model.ParquetInput, 
  AWS.S3.Model.Part, 
  AWS.S3.Model.PolicyStatus, 
  AWS.S3.Model.Progress, 
  AWS.S3.Model.ProgressEvent, 
  AWS.S3.Model.PublicAccessBlockConfiguration, 
  AWS.S3.Model.PutACLRequest, 
  AWS.S3.Model.PutACLResponse, 
  AWS.S3.Model.PutBucketAccelerateConfigurationRequest, 
  AWS.S3.Model.PutBucketAccelerateConfigurationResponse, 
  AWS.S3.Model.PutBucketAnalyticsConfigurationRequest, 
  AWS.S3.Model.PutBucketAnalyticsConfigurationResponse, 
  AWS.S3.Model.PutBucketEncryptionRequest, 
  AWS.S3.Model.PutBucketEncryptionResponse, 
  AWS.S3.Model.PutBucketIntelligentTieringConfigurationRequest, 
  AWS.S3.Model.PutBucketIntelligentTieringConfigurationResponse, 
  AWS.S3.Model.PutBucketInventoryConfigurationRequest, 
  AWS.S3.Model.PutBucketInventoryConfigurationResponse, 
  AWS.S3.Model.PutBucketLoggingRequest, 
  AWS.S3.Model.PutBucketLoggingResponse, 
  AWS.S3.Model.PutBucketMetricsConfigurationRequest, 
  AWS.S3.Model.PutBucketMetricsConfigurationResponse, 
  AWS.S3.Model.PutBucketOwnershipControlsRequest, 
  AWS.S3.Model.PutBucketOwnershipControlsResponse, 
  AWS.S3.Model.PutBucketPolicyRequest, 
  AWS.S3.Model.PutBucketPolicyResponse, 
  AWS.S3.Model.PutBucketReplicationRequest, 
  AWS.S3.Model.PutBucketReplicationResponse, 
  AWS.S3.Model.PutBucketRequest, 
  AWS.S3.Model.PutBucketRequestPaymentRequest, 
  AWS.S3.Model.PutBucketRequestPaymentResponse, 
  AWS.S3.Model.PutBucketResponse, 
  AWS.S3.Model.PutBucketTaggingRequest, 
  AWS.S3.Model.PutBucketTaggingResponse, 
  AWS.S3.Model.PutBucketVersioningRequest, 
  AWS.S3.Model.PutBucketVersioningResponse, 
  AWS.S3.Model.PutBucketWebsiteRequest, 
  AWS.S3.Model.PutBucketWebsiteResponse, 
  AWS.S3.Model.PutCORSConfigurationRequest, 
  AWS.S3.Model.PutCORSConfigurationResponse, 
  AWS.S3.Model.PutLifecycleConfigurationRequest, 
  AWS.S3.Model.PutLifecycleConfigurationResponse, 
  AWS.S3.Model.PutObjectLegalHoldRequest, 
  AWS.S3.Model.PutObjectLegalHoldResponse, 
  AWS.S3.Model.PutObjectLockConfigurationRequest, 
  AWS.S3.Model.PutObjectLockConfigurationResponse, 
  AWS.S3.Model.PutObjectRequest, 
  AWS.S3.Model.PutObjectResponse, 
  AWS.S3.Model.PutObjectRetentionRequest, 
  AWS.S3.Model.PutObjectRetentionResponse, 
  AWS.S3.Model.PutObjectTaggingRequest, 
  AWS.S3.Model.PutObjectTaggingResponse, 
  AWS.S3.Model.PutPublicAccessBlockRequest, 
  AWS.S3.Model.PutPublicAccessBlockResponse, 
  AWS.S3.Model.RecordsEvent, 
  AWS.S3.Model.Redirect, 
  AWS.S3.Model.RedirectAllRequestsTo, 
  AWS.S3.Model.ReplicaModifications, 
  AWS.S3.Model.ReplicationConfiguration, 
  AWS.S3.Model.ReplicationRule, 
  AWS.S3.Model.ReplicationRuleAndOperator, 
  AWS.S3.Model.ReplicationRuleFilter, 
  AWS.S3.Model.ReplicationTime, 
  AWS.S3.Model.ReplicationTimeValue, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.RequestPaymentConfiguration, 
  AWS.S3.Model.RequestProgress, 
  AWS.S3.Model.RestoreObjectRequest, 
  AWS.S3.Model.RestoreObjectResponse, 
  AWS.S3.Model.RoutingRule, 
  AWS.S3.Model.Rule, 
  AWS.S3.Model.ScanRange, 
  AWS.S3.Model.SelectObjectContentEventStream, 
  AWS.S3.Model.SelectObjectContentRequest, 
  AWS.S3.Model.SelectObjectContentResponse, 
  AWS.S3.Model.ServerSideEncryptionByDefault, 
  AWS.S3.Model.ServerSideEncryptionConfiguration, 
  AWS.S3.Model.ServerSideEncryptionRule, 
  AWS.S3.Model.SourceSelectionCriteria, 
  AWS.S3.Model.SSEKMS, 
  AWS.S3.Model.SseKmsEncryptedObjects, 
  AWS.S3.Model.SSES3, 
  AWS.S3.Model.Stats, 
  AWS.S3.Model.StatsEvent, 
  AWS.S3.Model.StorageClassAnalysis, 
  AWS.S3.Model.StorageClassAnalysisDataExport, 
  AWS.S3.Model.Tag, 
  AWS.S3.Model.Tagging, 
  AWS.S3.Model.TargetGrant, 
  AWS.S3.Model.Tiering, 
  AWS.S3.Model.Transition, 
  AWS.S3.Model.UploadPartRequest, 
  AWS.S3.Model.UploadPartResponse, 
  AWS.S3.Model.VersioningConfiguration, 
  AWS.S3.Model.WebsiteConfiguration, 
  AWS.S3.Model.WriteGetObjectResponseRequest, 
  AWS.S3.Model.WriteGetObjectResponseResponse;

type
  EAmazonS3Exception = AWS.S3.Exception.EAmazonS3Exception;
  EBucketAlreadyExistsException = AWS.S3.Model.BucketAlreadyExistsException.EBucketAlreadyExistsException;
  EBucketAlreadyOwnedByYouException = AWS.S3.Model.BucketAlreadyOwnedByYouException.EBucketAlreadyOwnedByYouException;
  EInvalidObjectStateException = AWS.S3.Model.InvalidObjectStateException.EInvalidObjectStateException;
  ENoSuchBucketException = AWS.S3.Model.NoSuchBucketException.ENoSuchBucketException;
  ENoSuchKeyException = AWS.S3.Model.NoSuchKeyException.ENoSuchKeyException;
  ENoSuchUploadException = AWS.S3.Model.NoSuchUploadException.ENoSuchUploadException;
  EObjectAlreadyInActiveTierErrorException = AWS.S3.Model.ObjectAlreadyInActiveTierErrorException.EObjectAlreadyInActiveTierErrorException;
  EObjectNotInActiveTierErrorException = AWS.S3.Model.ObjectNotInActiveTierErrorException.EObjectNotInActiveTierErrorException;
  IAbortIncompleteMultipartUpload = AWS.S3.Model.AbortIncompleteMultipartUpload.IAbortIncompleteMultipartUpload;
  IAbortMultipartUploadRequest = AWS.S3.Model.AbortMultipartUploadRequest.IAbortMultipartUploadRequest;
  IAbortMultipartUploadResponse = AWS.S3.Model.AbortMultipartUploadResponse.IAbortMultipartUploadResponse;
  IAccelerateConfiguration = AWS.S3.Model.AccelerateConfiguration.IAccelerateConfiguration;
  IAccessControlPolicy = AWS.S3.Model.AccessControlPolicy.IAccessControlPolicy;
  IAccessControlTranslation = AWS.S3.Model.AccessControlTranslation.IAccessControlTranslation;
  IAmazonS3 = AWS.S3.ClientIntf.IAmazonS3;
  IAnalyticsAndOperator = AWS.S3.Model.AnalyticsAndOperator.IAnalyticsAndOperator;
  IAnalyticsConfiguration = AWS.S3.Model.AnalyticsConfiguration.IAnalyticsConfiguration;
  IAnalyticsExportDestination = AWS.S3.Model.AnalyticsExportDestination.IAnalyticsExportDestination;
  IAnalyticsFilter = AWS.S3.Model.AnalyticsFilter.IAnalyticsFilter;
  IAnalyticsS3BucketDestination = AWS.S3.Model.AnalyticsS3BucketDestination.IAnalyticsS3BucketDestination;
  IBucket = AWS.S3.Model.Bucket.IBucket;
  IBucketLoggingStatus = AWS.S3.Model.BucketLoggingStatus.IBucketLoggingStatus;
  ICommonPrefix = AWS.S3.Model.CommonPrefix.ICommonPrefix;
  ICompletedPart = AWS.S3.Model.CompletedPart.ICompletedPart;
  ICompleteMultipartUploadRequest = AWS.S3.Model.CompleteMultipartUploadRequest.ICompleteMultipartUploadRequest;
  ICompleteMultipartUploadResponse = AWS.S3.Model.CompleteMultipartUploadResponse.ICompleteMultipartUploadResponse;
  ICondition = AWS.S3.Model.Condition.ICondition;
  IContinuationEvent = AWS.S3.Model.ContinuationEvent.IContinuationEvent;
  ICopyObjectRequest = AWS.S3.Model.CopyObjectRequest.ICopyObjectRequest;
  ICopyObjectResponse = AWS.S3.Model.CopyObjectResponse.ICopyObjectResponse;
  ICopyObjectResult = AWS.S3.Model.CopyObjectResult.ICopyObjectResult;
  ICopyPartRequest = AWS.S3.Model.CopyPartRequest.ICopyPartRequest;
  ICopyPartResponse = AWS.S3.Model.CopyPartResponse.ICopyPartResponse;
  ICopyPartResult = AWS.S3.Model.CopyPartResult.ICopyPartResult;
  ICORSConfiguration = AWS.S3.Model.CORSConfiguration.ICORSConfiguration;
  ICORSRule = AWS.S3.Model.CORSRule.ICORSRule;
  ICreateBucketConfiguration = AWS.S3.Model.CreateBucketConfiguration.ICreateBucketConfiguration;
  ICSVInput = AWS.S3.Model.CSVInput.ICSVInput;
  ICSVOutput = AWS.S3.Model.CSVOutput.ICSVOutput;
  IDefaultRetention = AWS.S3.Model.DefaultRetention.IDefaultRetention;
  IDeleteBucketAnalyticsConfigurationRequest = AWS.S3.Model.DeleteBucketAnalyticsConfigurationRequest.IDeleteBucketAnalyticsConfigurationRequest;
  IDeleteBucketAnalyticsConfigurationResponse = AWS.S3.Model.DeleteBucketAnalyticsConfigurationResponse.IDeleteBucketAnalyticsConfigurationResponse;
  IDeleteBucketEncryptionRequest = AWS.S3.Model.DeleteBucketEncryptionRequest.IDeleteBucketEncryptionRequest;
  IDeleteBucketEncryptionResponse = AWS.S3.Model.DeleteBucketEncryptionResponse.IDeleteBucketEncryptionResponse;
  IDeleteBucketIntelligentTieringConfigurationRequest = AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationRequest.IDeleteBucketIntelligentTieringConfigurationRequest;
  IDeleteBucketIntelligentTieringConfigurationResponse = AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationResponse.IDeleteBucketIntelligentTieringConfigurationResponse;
  IDeleteBucketInventoryConfigurationRequest = AWS.S3.Model.DeleteBucketInventoryConfigurationRequest.IDeleteBucketInventoryConfigurationRequest;
  IDeleteBucketInventoryConfigurationResponse = AWS.S3.Model.DeleteBucketInventoryConfigurationResponse.IDeleteBucketInventoryConfigurationResponse;
  IDeleteBucketMetricsConfigurationRequest = AWS.S3.Model.DeleteBucketMetricsConfigurationRequest.IDeleteBucketMetricsConfigurationRequest;
  IDeleteBucketMetricsConfigurationResponse = AWS.S3.Model.DeleteBucketMetricsConfigurationResponse.IDeleteBucketMetricsConfigurationResponse;
  IDeleteBucketOwnershipControlsRequest = AWS.S3.Model.DeleteBucketOwnershipControlsRequest.IDeleteBucketOwnershipControlsRequest;
  IDeleteBucketOwnershipControlsResponse = AWS.S3.Model.DeleteBucketOwnershipControlsResponse.IDeleteBucketOwnershipControlsResponse;
  IDeleteBucketPolicyRequest = AWS.S3.Model.DeleteBucketPolicyRequest.IDeleteBucketPolicyRequest;
  IDeleteBucketPolicyResponse = AWS.S3.Model.DeleteBucketPolicyResponse.IDeleteBucketPolicyResponse;
  IDeleteBucketReplicationRequest = AWS.S3.Model.DeleteBucketReplicationRequest.IDeleteBucketReplicationRequest;
  IDeleteBucketReplicationResponse = AWS.S3.Model.DeleteBucketReplicationResponse.IDeleteBucketReplicationResponse;
  IDeleteBucketRequest = AWS.S3.Model.DeleteBucketRequest.IDeleteBucketRequest;
  IDeleteBucketResponse = AWS.S3.Model.DeleteBucketResponse.IDeleteBucketResponse;
  IDeleteBucketTaggingRequest = AWS.S3.Model.DeleteBucketTaggingRequest.IDeleteBucketTaggingRequest;
  IDeleteBucketTaggingResponse = AWS.S3.Model.DeleteBucketTaggingResponse.IDeleteBucketTaggingResponse;
  IDeleteBucketWebsiteRequest = AWS.S3.Model.DeleteBucketWebsiteRequest.IDeleteBucketWebsiteRequest;
  IDeleteBucketWebsiteResponse = AWS.S3.Model.DeleteBucketWebsiteResponse.IDeleteBucketWebsiteResponse;
  IDeleteCORSConfigurationRequest = AWS.S3.Model.DeleteCORSConfigurationRequest.IDeleteCORSConfigurationRequest;
  IDeleteCORSConfigurationResponse = AWS.S3.Model.DeleteCORSConfigurationResponse.IDeleteCORSConfigurationResponse;
  IDeletedObject = AWS.S3.Model.DeletedObject.IDeletedObject;
  IDeleteLifecycleConfigurationRequest = AWS.S3.Model.DeleteLifecycleConfigurationRequest.IDeleteLifecycleConfigurationRequest;
  IDeleteLifecycleConfigurationResponse = AWS.S3.Model.DeleteLifecycleConfigurationResponse.IDeleteLifecycleConfigurationResponse;
  IDeleteMarkerEntry = AWS.S3.Model.DeleteMarkerEntry.IDeleteMarkerEntry;
  IDeleteMarkerReplication = AWS.S3.Model.DeleteMarkerReplication.IDeleteMarkerReplication;
  IDeleteObjectRequest = AWS.S3.Model.DeleteObjectRequest.IDeleteObjectRequest;
  IDeleteObjectResponse = AWS.S3.Model.DeleteObjectResponse.IDeleteObjectResponse;
  IDeleteObjectsRequest = AWS.S3.Model.DeleteObjectsRequest.IDeleteObjectsRequest;
  IDeleteObjectsResponse = AWS.S3.Model.DeleteObjectsResponse.IDeleteObjectsResponse;
  IDeleteObjectTaggingRequest = AWS.S3.Model.DeleteObjectTaggingRequest.IDeleteObjectTaggingRequest;
  IDeleteObjectTaggingResponse = AWS.S3.Model.DeleteObjectTaggingResponse.IDeleteObjectTaggingResponse;
  IDeletePublicAccessBlockRequest = AWS.S3.Model.DeletePublicAccessBlockRequest.IDeletePublicAccessBlockRequest;
  IDeletePublicAccessBlockResponse = AWS.S3.Model.DeletePublicAccessBlockResponse.IDeletePublicAccessBlockResponse;
  IDestination = AWS.S3.Model.Destination.IDestination;
  IEncryptionConfiguration = AWS.S3.Model.EncryptionConfiguration.IEncryptionConfiguration;
  IEndEvent = AWS.S3.Model.EndEvent.IEndEvent;
  IError = AWS.S3.Model.Error.IError;
  IErrorDocument = AWS.S3.Model.ErrorDocument.IErrorDocument;
  IExistingObjectReplication = AWS.S3.Model.ExistingObjectReplication.IExistingObjectReplication;
  IGetACLRequest = AWS.S3.Model.GetACLRequest.IGetACLRequest;
  IGetACLResponse = AWS.S3.Model.GetACLResponse.IGetACLResponse;
  IGetBucketAccelerateConfigurationRequest = AWS.S3.Model.GetBucketAccelerateConfigurationRequest.IGetBucketAccelerateConfigurationRequest;
  IGetBucketAccelerateConfigurationResponse = AWS.S3.Model.GetBucketAccelerateConfigurationResponse.IGetBucketAccelerateConfigurationResponse;
  IGetBucketAnalyticsConfigurationRequest = AWS.S3.Model.GetBucketAnalyticsConfigurationRequest.IGetBucketAnalyticsConfigurationRequest;
  IGetBucketAnalyticsConfigurationResponse = AWS.S3.Model.GetBucketAnalyticsConfigurationResponse.IGetBucketAnalyticsConfigurationResponse;
  IGetBucketEncryptionRequest = AWS.S3.Model.GetBucketEncryptionRequest.IGetBucketEncryptionRequest;
  IGetBucketEncryptionResponse = AWS.S3.Model.GetBucketEncryptionResponse.IGetBucketEncryptionResponse;
  IGetBucketIntelligentTieringConfigurationRequest = AWS.S3.Model.GetBucketIntelligentTieringConfigurationRequest.IGetBucketIntelligentTieringConfigurationRequest;
  IGetBucketIntelligentTieringConfigurationResponse = AWS.S3.Model.GetBucketIntelligentTieringConfigurationResponse.IGetBucketIntelligentTieringConfigurationResponse;
  IGetBucketInventoryConfigurationRequest = AWS.S3.Model.GetBucketInventoryConfigurationRequest.IGetBucketInventoryConfigurationRequest;
  IGetBucketInventoryConfigurationResponse = AWS.S3.Model.GetBucketInventoryConfigurationResponse.IGetBucketInventoryConfigurationResponse;
  IGetBucketLocationRequest = AWS.S3.Model.GetBucketLocationRequest.IGetBucketLocationRequest;
  IGetBucketLocationResponse = AWS.S3.Model.GetBucketLocationResponse.IGetBucketLocationResponse;
  IGetBucketLoggingRequest = AWS.S3.Model.GetBucketLoggingRequest.IGetBucketLoggingRequest;
  IGetBucketLoggingResponse = AWS.S3.Model.GetBucketLoggingResponse.IGetBucketLoggingResponse;
  IGetBucketMetricsConfigurationRequest = AWS.S3.Model.GetBucketMetricsConfigurationRequest.IGetBucketMetricsConfigurationRequest;
  IGetBucketMetricsConfigurationResponse = AWS.S3.Model.GetBucketMetricsConfigurationResponse.IGetBucketMetricsConfigurationResponse;
  IGetBucketOwnershipControlsRequest = AWS.S3.Model.GetBucketOwnershipControlsRequest.IGetBucketOwnershipControlsRequest;
  IGetBucketOwnershipControlsResponse = AWS.S3.Model.GetBucketOwnershipControlsResponse.IGetBucketOwnershipControlsResponse;
  IGetBucketPolicyRequest = AWS.S3.Model.GetBucketPolicyRequest.IGetBucketPolicyRequest;
  IGetBucketPolicyResponse = AWS.S3.Model.GetBucketPolicyResponse.IGetBucketPolicyResponse;
  IGetBucketPolicyStatusRequest = AWS.S3.Model.GetBucketPolicyStatusRequest.IGetBucketPolicyStatusRequest;
  IGetBucketPolicyStatusResponse = AWS.S3.Model.GetBucketPolicyStatusResponse.IGetBucketPolicyStatusResponse;
  IGetBucketReplicationRequest = AWS.S3.Model.GetBucketReplicationRequest.IGetBucketReplicationRequest;
  IGetBucketReplicationResponse = AWS.S3.Model.GetBucketReplicationResponse.IGetBucketReplicationResponse;
  IGetBucketRequestPaymentRequest = AWS.S3.Model.GetBucketRequestPaymentRequest.IGetBucketRequestPaymentRequest;
  IGetBucketRequestPaymentResponse = AWS.S3.Model.GetBucketRequestPaymentResponse.IGetBucketRequestPaymentResponse;
  IGetBucketTaggingRequest = AWS.S3.Model.GetBucketTaggingRequest.IGetBucketTaggingRequest;
  IGetBucketTaggingResponse = AWS.S3.Model.GetBucketTaggingResponse.IGetBucketTaggingResponse;
  IGetBucketVersioningRequest = AWS.S3.Model.GetBucketVersioningRequest.IGetBucketVersioningRequest;
  IGetBucketVersioningResponse = AWS.S3.Model.GetBucketVersioningResponse.IGetBucketVersioningResponse;
  IGetBucketWebsiteRequest = AWS.S3.Model.GetBucketWebsiteRequest.IGetBucketWebsiteRequest;
  IGetBucketWebsiteResponse = AWS.S3.Model.GetBucketWebsiteResponse.IGetBucketWebsiteResponse;
  IGetCORSConfigurationRequest = AWS.S3.Model.GetCORSConfigurationRequest.IGetCORSConfigurationRequest;
  IGetCORSConfigurationResponse = AWS.S3.Model.GetCORSConfigurationResponse.IGetCORSConfigurationResponse;
  IGetLifecycleConfigurationRequest = AWS.S3.Model.GetLifecycleConfigurationRequest.IGetLifecycleConfigurationRequest;
  IGetLifecycleConfigurationResponse = AWS.S3.Model.GetLifecycleConfigurationResponse.IGetLifecycleConfigurationResponse;
  IGetObjectLegalHoldRequest = AWS.S3.Model.GetObjectLegalHoldRequest.IGetObjectLegalHoldRequest;
  IGetObjectLegalHoldResponse = AWS.S3.Model.GetObjectLegalHoldResponse.IGetObjectLegalHoldResponse;
  IGetObjectLockConfigurationRequest = AWS.S3.Model.GetObjectLockConfigurationRequest.IGetObjectLockConfigurationRequest;
  IGetObjectLockConfigurationResponse = AWS.S3.Model.GetObjectLockConfigurationResponse.IGetObjectLockConfigurationResponse;
  IGetObjectMetadataRequest = AWS.S3.Model.GetObjectMetadataRequest.IGetObjectMetadataRequest;
  IGetObjectMetadataResponse = AWS.S3.Model.GetObjectMetadataResponse.IGetObjectMetadataResponse;
  IGetObjectRequest = AWS.S3.Model.GetObjectRequest.IGetObjectRequest;
  IGetObjectResponse = AWS.S3.Model.GetObjectResponse.IGetObjectResponse;
  IGetObjectRetentionRequest = AWS.S3.Model.GetObjectRetentionRequest.IGetObjectRetentionRequest;
  IGetObjectRetentionResponse = AWS.S3.Model.GetObjectRetentionResponse.IGetObjectRetentionResponse;
  IGetObjectTaggingRequest = AWS.S3.Model.GetObjectTaggingRequest.IGetObjectTaggingRequest;
  IGetObjectTaggingResponse = AWS.S3.Model.GetObjectTaggingResponse.IGetObjectTaggingResponse;
  IGetObjectTorrentRequest = AWS.S3.Model.GetObjectTorrentRequest.IGetObjectTorrentRequest;
  IGetObjectTorrentResponse = AWS.S3.Model.GetObjectTorrentResponse.IGetObjectTorrentResponse;
  IGetPublicAccessBlockRequest = AWS.S3.Model.GetPublicAccessBlockRequest.IGetPublicAccessBlockRequest;
  IGetPublicAccessBlockResponse = AWS.S3.Model.GetPublicAccessBlockResponse.IGetPublicAccessBlockResponse;
  IGrant = AWS.S3.Model.Grant.IGrant;
  IGrantee = AWS.S3.Model.Grantee.IGrantee;
  IHeadBucketRequest = AWS.S3.Model.HeadBucketRequest.IHeadBucketRequest;
  IHeadBucketResponse = AWS.S3.Model.HeadBucketResponse.IHeadBucketResponse;
  IIndexDocument = AWS.S3.Model.IndexDocument.IIndexDocument;
  IInitiateMultipartUploadRequest = AWS.S3.Model.InitiateMultipartUploadRequest.IInitiateMultipartUploadRequest;
  IInitiateMultipartUploadResponse = AWS.S3.Model.InitiateMultipartUploadResponse.IInitiateMultipartUploadResponse;
  IInitiator = AWS.S3.Model.Initiator.IInitiator;
  IInputSerialization = AWS.S3.Model.InputSerialization.IInputSerialization;
  IIntelligentTieringAndOperator = AWS.S3.Model.IntelligentTieringAndOperator.IIntelligentTieringAndOperator;
  IIntelligentTieringConfiguration = AWS.S3.Model.IntelligentTieringConfiguration.IIntelligentTieringConfiguration;
  IIntelligentTieringFilter = AWS.S3.Model.IntelligentTieringFilter.IIntelligentTieringFilter;
  IInventoryConfiguration = AWS.S3.Model.InventoryConfiguration.IInventoryConfiguration;
  IInventoryDestination = AWS.S3.Model.InventoryDestination.IInventoryDestination;
  IInventoryEncryption = AWS.S3.Model.InventoryEncryption.IInventoryEncryption;
  IInventoryFilter = AWS.S3.Model.InventoryFilter.IInventoryFilter;
  IInventoryS3BucketDestination = AWS.S3.Model.InventoryS3BucketDestination.IInventoryS3BucketDestination;
  IInventorySchedule = AWS.S3.Model.InventorySchedule.IInventorySchedule;
  IJSONInput = AWS.S3.Model.JSONInput.IJSONInput;
  IJSONOutput = AWS.S3.Model.JSONOutput.IJSONOutput;
  ILifecycleConfiguration = AWS.S3.Model.LifecycleConfiguration.ILifecycleConfiguration;
  ILifecycleExpiration = AWS.S3.Model.LifecycleExpiration.ILifecycleExpiration;
  ILifecycleRule = AWS.S3.Model.LifecycleRule.ILifecycleRule;
  ILifecycleRuleAndOperator = AWS.S3.Model.LifecycleRuleAndOperator.ILifecycleRuleAndOperator;
  ILifecycleRuleFilter = AWS.S3.Model.LifecycleRuleFilter.ILifecycleRuleFilter;
  IListBucketAnalyticsConfigurationsRequest = AWS.S3.Model.ListBucketAnalyticsConfigurationsRequest.IListBucketAnalyticsConfigurationsRequest;
  IListBucketAnalyticsConfigurationsResponse = AWS.S3.Model.ListBucketAnalyticsConfigurationsResponse.IListBucketAnalyticsConfigurationsResponse;
  IListBucketIntelligentTieringConfigurationsRequest = AWS.S3.Model.ListBucketIntelligentTieringConfigurationsRequest.IListBucketIntelligentTieringConfigurationsRequest;
  IListBucketIntelligentTieringConfigurationsResponse = AWS.S3.Model.ListBucketIntelligentTieringConfigurationsResponse.IListBucketIntelligentTieringConfigurationsResponse;
  IListBucketInventoryConfigurationsRequest = AWS.S3.Model.ListBucketInventoryConfigurationsRequest.IListBucketInventoryConfigurationsRequest;
  IListBucketInventoryConfigurationsResponse = AWS.S3.Model.ListBucketInventoryConfigurationsResponse.IListBucketInventoryConfigurationsResponse;
  IListBucketMetricsConfigurationsRequest = AWS.S3.Model.ListBucketMetricsConfigurationsRequest.IListBucketMetricsConfigurationsRequest;
  IListBucketMetricsConfigurationsResponse = AWS.S3.Model.ListBucketMetricsConfigurationsResponse.IListBucketMetricsConfigurationsResponse;
  IListBucketsRequest = AWS.S3.Model.ListBucketsRequest.IListBucketsRequest;
  IListBucketsResponse = AWS.S3.Model.ListBucketsResponse.IListBucketsResponse;
  IListMultipartUploadsRequest = AWS.S3.Model.ListMultipartUploadsRequest.IListMultipartUploadsRequest;
  IListMultipartUploadsResponse = AWS.S3.Model.ListMultipartUploadsResponse.IListMultipartUploadsResponse;
  IListObjectsRequest = AWS.S3.Model.ListObjectsRequest.IListObjectsRequest;
  IListObjectsResponse = AWS.S3.Model.ListObjectsResponse.IListObjectsResponse;
  IListObjectsV2Request = AWS.S3.Model.ListObjectsV2Request.IListObjectsV2Request;
  IListObjectsV2Response = AWS.S3.Model.ListObjectsV2Response.IListObjectsV2Response;
  IListPartsRequest = AWS.S3.Model.ListPartsRequest.IListPartsRequest;
  IListPartsResponse = AWS.S3.Model.ListPartsResponse.IListPartsResponse;
  IListVersionsRequest = AWS.S3.Model.ListVersionsRequest.IListVersionsRequest;
  IListVersionsResponse = AWS.S3.Model.ListVersionsResponse.IListVersionsResponse;
  ILoggingEnabled = AWS.S3.Model.LoggingEnabled.ILoggingEnabled;
  IMetrics = AWS.S3.Model.Metrics.IMetrics;
  IMetricsAndOperator = AWS.S3.Model.MetricsAndOperator.IMetricsAndOperator;
  IMetricsConfiguration = AWS.S3.Model.MetricsConfiguration.IMetricsConfiguration;
  IMetricsFilter = AWS.S3.Model.MetricsFilter.IMetricsFilter;
  IMultipartUpload = AWS.S3.Model.MultipartUpload.IMultipartUpload;
  INoncurrentVersionExpiration = AWS.S3.Model.NoncurrentVersionExpiration.INoncurrentVersionExpiration;
  INoncurrentVersionTransition = AWS.S3.Model.NoncurrentVersionTransition.INoncurrentVersionTransition;
  IObject = AWS.S3.Model.ObjectTypes.IObject;
  IObjectIdentifier = AWS.S3.Model.ObjectIdentifier.IObjectIdentifier;
  IObjectLockConfiguration = AWS.S3.Model.ObjectLockConfiguration.IObjectLockConfiguration;
  IObjectLockLegalHold = AWS.S3.Model.ObjectLockLegalHold.IObjectLockLegalHold;
  IObjectLockRetention = AWS.S3.Model.ObjectLockRetention.IObjectLockRetention;
  IObjectLockRule = AWS.S3.Model.ObjectLockRule.IObjectLockRule;
  IObjectVersion = AWS.S3.Model.ObjectVersion.IObjectVersion;
  IOutputSerialization = AWS.S3.Model.OutputSerialization.IOutputSerialization;
  IOwner = AWS.S3.Model.Owner.IOwner;
  IOwnershipControls = AWS.S3.Model.OwnershipControls.IOwnershipControls;
  IOwnershipControlsRule = AWS.S3.Model.OwnershipControlsRule.IOwnershipControlsRule;
  IParquetInput = AWS.S3.Model.ParquetInput.IParquetInput;
  IPart = AWS.S3.Model.Part.IPart;
  IPolicyStatus = AWS.S3.Model.PolicyStatus.IPolicyStatus;
  IProgress = AWS.S3.Model.Progress.IProgress;
  IProgressEvent = AWS.S3.Model.ProgressEvent.IProgressEvent;
  IPublicAccessBlockConfiguration = AWS.S3.Model.PublicAccessBlockConfiguration.IPublicAccessBlockConfiguration;
  IPutACLRequest = AWS.S3.Model.PutACLRequest.IPutACLRequest;
  IPutACLResponse = AWS.S3.Model.PutACLResponse.IPutACLResponse;
  IPutBucketAccelerateConfigurationRequest = AWS.S3.Model.PutBucketAccelerateConfigurationRequest.IPutBucketAccelerateConfigurationRequest;
  IPutBucketAccelerateConfigurationResponse = AWS.S3.Model.PutBucketAccelerateConfigurationResponse.IPutBucketAccelerateConfigurationResponse;
  IPutBucketAnalyticsConfigurationRequest = AWS.S3.Model.PutBucketAnalyticsConfigurationRequest.IPutBucketAnalyticsConfigurationRequest;
  IPutBucketAnalyticsConfigurationResponse = AWS.S3.Model.PutBucketAnalyticsConfigurationResponse.IPutBucketAnalyticsConfigurationResponse;
  IPutBucketEncryptionRequest = AWS.S3.Model.PutBucketEncryptionRequest.IPutBucketEncryptionRequest;
  IPutBucketEncryptionResponse = AWS.S3.Model.PutBucketEncryptionResponse.IPutBucketEncryptionResponse;
  IPutBucketIntelligentTieringConfigurationRequest = AWS.S3.Model.PutBucketIntelligentTieringConfigurationRequest.IPutBucketIntelligentTieringConfigurationRequest;
  IPutBucketIntelligentTieringConfigurationResponse = AWS.S3.Model.PutBucketIntelligentTieringConfigurationResponse.IPutBucketIntelligentTieringConfigurationResponse;
  IPutBucketInventoryConfigurationRequest = AWS.S3.Model.PutBucketInventoryConfigurationRequest.IPutBucketInventoryConfigurationRequest;
  IPutBucketInventoryConfigurationResponse = AWS.S3.Model.PutBucketInventoryConfigurationResponse.IPutBucketInventoryConfigurationResponse;
  IPutBucketLoggingRequest = AWS.S3.Model.PutBucketLoggingRequest.IPutBucketLoggingRequest;
  IPutBucketLoggingResponse = AWS.S3.Model.PutBucketLoggingResponse.IPutBucketLoggingResponse;
  IPutBucketMetricsConfigurationRequest = AWS.S3.Model.PutBucketMetricsConfigurationRequest.IPutBucketMetricsConfigurationRequest;
  IPutBucketMetricsConfigurationResponse = AWS.S3.Model.PutBucketMetricsConfigurationResponse.IPutBucketMetricsConfigurationResponse;
  IPutBucketOwnershipControlsRequest = AWS.S3.Model.PutBucketOwnershipControlsRequest.IPutBucketOwnershipControlsRequest;
  IPutBucketOwnershipControlsResponse = AWS.S3.Model.PutBucketOwnershipControlsResponse.IPutBucketOwnershipControlsResponse;
  IPutBucketPolicyRequest = AWS.S3.Model.PutBucketPolicyRequest.IPutBucketPolicyRequest;
  IPutBucketPolicyResponse = AWS.S3.Model.PutBucketPolicyResponse.IPutBucketPolicyResponse;
  IPutBucketReplicationRequest = AWS.S3.Model.PutBucketReplicationRequest.IPutBucketReplicationRequest;
  IPutBucketReplicationResponse = AWS.S3.Model.PutBucketReplicationResponse.IPutBucketReplicationResponse;
  IPutBucketRequest = AWS.S3.Model.PutBucketRequest.IPutBucketRequest;
  IPutBucketRequestPaymentRequest = AWS.S3.Model.PutBucketRequestPaymentRequest.IPutBucketRequestPaymentRequest;
  IPutBucketRequestPaymentResponse = AWS.S3.Model.PutBucketRequestPaymentResponse.IPutBucketRequestPaymentResponse;
  IPutBucketResponse = AWS.S3.Model.PutBucketResponse.IPutBucketResponse;
  IPutBucketTaggingRequest = AWS.S3.Model.PutBucketTaggingRequest.IPutBucketTaggingRequest;
  IPutBucketTaggingResponse = AWS.S3.Model.PutBucketTaggingResponse.IPutBucketTaggingResponse;
  IPutBucketVersioningRequest = AWS.S3.Model.PutBucketVersioningRequest.IPutBucketVersioningRequest;
  IPutBucketVersioningResponse = AWS.S3.Model.PutBucketVersioningResponse.IPutBucketVersioningResponse;
  IPutBucketWebsiteRequest = AWS.S3.Model.PutBucketWebsiteRequest.IPutBucketWebsiteRequest;
  IPutBucketWebsiteResponse = AWS.S3.Model.PutBucketWebsiteResponse.IPutBucketWebsiteResponse;
  IPutCORSConfigurationRequest = AWS.S3.Model.PutCORSConfigurationRequest.IPutCORSConfigurationRequest;
  IPutCORSConfigurationResponse = AWS.S3.Model.PutCORSConfigurationResponse.IPutCORSConfigurationResponse;
  IPutLifecycleConfigurationRequest = AWS.S3.Model.PutLifecycleConfigurationRequest.IPutLifecycleConfigurationRequest;
  IPutLifecycleConfigurationResponse = AWS.S3.Model.PutLifecycleConfigurationResponse.IPutLifecycleConfigurationResponse;
  IPutObjectLegalHoldRequest = AWS.S3.Model.PutObjectLegalHoldRequest.IPutObjectLegalHoldRequest;
  IPutObjectLegalHoldResponse = AWS.S3.Model.PutObjectLegalHoldResponse.IPutObjectLegalHoldResponse;
  IPutObjectLockConfigurationRequest = AWS.S3.Model.PutObjectLockConfigurationRequest.IPutObjectLockConfigurationRequest;
  IPutObjectLockConfigurationResponse = AWS.S3.Model.PutObjectLockConfigurationResponse.IPutObjectLockConfigurationResponse;
  IPutObjectRequest = AWS.S3.Model.PutObjectRequest.IPutObjectRequest;
  IPutObjectResponse = AWS.S3.Model.PutObjectResponse.IPutObjectResponse;
  IPutObjectRetentionRequest = AWS.S3.Model.PutObjectRetentionRequest.IPutObjectRetentionRequest;
  IPutObjectRetentionResponse = AWS.S3.Model.PutObjectRetentionResponse.IPutObjectRetentionResponse;
  IPutObjectTaggingRequest = AWS.S3.Model.PutObjectTaggingRequest.IPutObjectTaggingRequest;
  IPutObjectTaggingResponse = AWS.S3.Model.PutObjectTaggingResponse.IPutObjectTaggingResponse;
  IPutPublicAccessBlockRequest = AWS.S3.Model.PutPublicAccessBlockRequest.IPutPublicAccessBlockRequest;
  IPutPublicAccessBlockResponse = AWS.S3.Model.PutPublicAccessBlockResponse.IPutPublicAccessBlockResponse;
  IRecordsEvent = AWS.S3.Model.RecordsEvent.IRecordsEvent;
  IRedirect = AWS.S3.Model.Redirect.IRedirect;
  IRedirectAllRequestsTo = AWS.S3.Model.RedirectAllRequestsTo.IRedirectAllRequestsTo;
  IReplicaModifications = AWS.S3.Model.ReplicaModifications.IReplicaModifications;
  IReplicationConfiguration = AWS.S3.Model.ReplicationConfiguration.IReplicationConfiguration;
  IReplicationRule = AWS.S3.Model.ReplicationRule.IReplicationRule;
  IReplicationRuleAndOperator = AWS.S3.Model.ReplicationRuleAndOperator.IReplicationRuleAndOperator;
  IReplicationRuleFilter = AWS.S3.Model.ReplicationRuleFilter.IReplicationRuleFilter;
  IReplicationTime = AWS.S3.Model.ReplicationTime.IReplicationTime;
  IReplicationTimeValue = AWS.S3.Model.ReplicationTimeValue.IReplicationTimeValue;
  IRequestPaymentConfiguration = AWS.S3.Model.RequestPaymentConfiguration.IRequestPaymentConfiguration;
  IRequestProgress = AWS.S3.Model.RequestProgress.IRequestProgress;
  IRestoreObjectRequest = AWS.S3.Model.RestoreObjectRequest.IRestoreObjectRequest;
  IRestoreObjectResponse = AWS.S3.Model.RestoreObjectResponse.IRestoreObjectResponse;
  IRoutingRule = AWS.S3.Model.RoutingRule.IRoutingRule;
  IRule = AWS.S3.Model.Rule.IRule;
  IScanRange = AWS.S3.Model.ScanRange.IScanRange;
  ISelectObjectContentEventStream = AWS.S3.Model.SelectObjectContentEventStream.ISelectObjectContentEventStream;
  ISelectObjectContentRequest = AWS.S3.Model.SelectObjectContentRequest.ISelectObjectContentRequest;
  ISelectObjectContentResponse = AWS.S3.Model.SelectObjectContentResponse.ISelectObjectContentResponse;
  IServerSideEncryptionByDefault = AWS.S3.Model.ServerSideEncryptionByDefault.IServerSideEncryptionByDefault;
  IServerSideEncryptionConfiguration = AWS.S3.Model.ServerSideEncryptionConfiguration.IServerSideEncryptionConfiguration;
  IServerSideEncryptionRule = AWS.S3.Model.ServerSideEncryptionRule.IServerSideEncryptionRule;
  ISourceSelectionCriteria = AWS.S3.Model.SourceSelectionCriteria.ISourceSelectionCriteria;
  ISSEKMS = AWS.S3.Model.SSEKMS.ISSEKMS;
  ISseKmsEncryptedObjects = AWS.S3.Model.SseKmsEncryptedObjects.ISseKmsEncryptedObjects;
  ISSES3 = AWS.S3.Model.SSES3.ISSES3;
  IStats = AWS.S3.Model.Stats.IStats;
  IStatsEvent = AWS.S3.Model.StatsEvent.IStatsEvent;
  IStorageClassAnalysis = AWS.S3.Model.StorageClassAnalysis.IStorageClassAnalysis;
  IStorageClassAnalysisDataExport = AWS.S3.Model.StorageClassAnalysisDataExport.IStorageClassAnalysisDataExport;
  ITag = AWS.S3.Model.Tag.ITag;
  ITagging = AWS.S3.Model.Tagging.ITagging;
  ITargetGrant = AWS.S3.Model.TargetGrant.ITargetGrant;
  ITiering = AWS.S3.Model.Tiering.ITiering;
  ITransition = AWS.S3.Model.Transition.ITransition;
  IUploadPartRequest = AWS.S3.Model.UploadPartRequest.IUploadPartRequest;
  IUploadPartResponse = AWS.S3.Model.UploadPartResponse.IUploadPartResponse;
  IVersioningConfiguration = AWS.S3.Model.VersioningConfiguration.IVersioningConfiguration;
  IWebsiteConfiguration = AWS.S3.Model.WebsiteConfiguration.IWebsiteConfiguration;
  IWriteGetObjectResponseRequest = AWS.S3.Model.WriteGetObjectResponseRequest.IWriteGetObjectResponseRequest;
  IWriteGetObjectResponseResponse = AWS.S3.Model.WriteGetObjectResponseResponse.IWriteGetObjectResponseResponse;
  TAbortIncompleteMultipartUpload = AWS.S3.Model.AbortIncompleteMultipartUpload.TAbortIncompleteMultipartUpload;
  TAbortMultipartUploadRequest = AWS.S3.Model.AbortMultipartUploadRequest.TAbortMultipartUploadRequest;
  TAbortMultipartUploadResponse = AWS.S3.Model.AbortMultipartUploadResponse.TAbortMultipartUploadResponse;
  TAccelerateConfiguration = AWS.S3.Model.AccelerateConfiguration.TAccelerateConfiguration;
  TAccessControlPolicy = AWS.S3.Model.AccessControlPolicy.TAccessControlPolicy;
  TAccessControlTranslation = AWS.S3.Model.AccessControlTranslation.TAccessControlTranslation;
  TAmazonS3Client = AWS.S3.Client.TAmazonS3Client;
  TAmazonS3Config = AWS.S3.Config.TAmazonS3Config;
  TAmazonS3Metadata = AWS.S3.Metadata.TAmazonS3Metadata;
  TAmazonS3Request = AWS.S3.Model.Request.TAmazonS3Request;
  TAnalyticsAndOperator = AWS.S3.Model.AnalyticsAndOperator.TAnalyticsAndOperator;
  TAnalyticsConfiguration = AWS.S3.Model.AnalyticsConfiguration.TAnalyticsConfiguration;
  TAnalyticsExportDestination = AWS.S3.Model.AnalyticsExportDestination.TAnalyticsExportDestination;
  TAnalyticsFilter = AWS.S3.Model.AnalyticsFilter.TAnalyticsFilter;
  TAnalyticsS3BucketDestination = AWS.S3.Model.AnalyticsS3BucketDestination.TAnalyticsS3BucketDestination;
  TAnalyticsS3ExportFileFormat = AWS.S3.Enums.TAnalyticsS3ExportFileFormat;
  TArchiveStatus = AWS.S3.Enums.TArchiveStatus;
  TBucket = AWS.S3.Model.Bucket.TBucket;
  TBucketAccelerateStatus = AWS.S3.Enums.TBucketAccelerateStatus;
  TBucketCannedACL = AWS.S3.Enums.TBucketCannedACL;
  TBucketLocationConstraint = AWS.S3.Enums.TBucketLocationConstraint;
  TBucketLoggingStatus = AWS.S3.Model.BucketLoggingStatus.TBucketLoggingStatus;
  TBucketLogsPermission = AWS.S3.Enums.TBucketLogsPermission;
  TBucketVersioningStatus = AWS.S3.Enums.TBucketVersioningStatus;
  TCommonPrefix = AWS.S3.Model.CommonPrefix.TCommonPrefix;
  TCompletedPart = AWS.S3.Model.CompletedPart.TCompletedPart;
  TCompleteMultipartUploadRequest = AWS.S3.Model.CompleteMultipartUploadRequest.TCompleteMultipartUploadRequest;
  TCompleteMultipartUploadResponse = AWS.S3.Model.CompleteMultipartUploadResponse.TCompleteMultipartUploadResponse;
  TCompressionType = AWS.S3.Enums.TCompressionType;
  TCondition = AWS.S3.Model.Condition.TCondition;
  TContinuationEvent = AWS.S3.Model.ContinuationEvent.TContinuationEvent;
  TCopyObjectRequest = AWS.S3.Model.CopyObjectRequest.TCopyObjectRequest;
  TCopyObjectResponse = AWS.S3.Model.CopyObjectResponse.TCopyObjectResponse;
  TCopyObjectResult = AWS.S3.Model.CopyObjectResult.TCopyObjectResult;
  TCopyPartRequest = AWS.S3.Model.CopyPartRequest.TCopyPartRequest;
  TCopyPartResponse = AWS.S3.Model.CopyPartResponse.TCopyPartResponse;
  TCopyPartResult = AWS.S3.Model.CopyPartResult.TCopyPartResult;
  TCORSConfiguration = AWS.S3.Model.CORSConfiguration.TCORSConfiguration;
  TCORSRule = AWS.S3.Model.CORSRule.TCORSRule;
  TCreateBucketConfiguration = AWS.S3.Model.CreateBucketConfiguration.TCreateBucketConfiguration;
  TCSVInput = AWS.S3.Model.CSVInput.TCSVInput;
  TCSVOutput = AWS.S3.Model.CSVOutput.TCSVOutput;
  TDefaultRetention = AWS.S3.Model.DefaultRetention.TDefaultRetention;
  TDeleteBucketAnalyticsConfigurationRequest = AWS.S3.Model.DeleteBucketAnalyticsConfigurationRequest.TDeleteBucketAnalyticsConfigurationRequest;
  TDeleteBucketAnalyticsConfigurationResponse = AWS.S3.Model.DeleteBucketAnalyticsConfigurationResponse.TDeleteBucketAnalyticsConfigurationResponse;
  TDeleteBucketEncryptionRequest = AWS.S3.Model.DeleteBucketEncryptionRequest.TDeleteBucketEncryptionRequest;
  TDeleteBucketEncryptionResponse = AWS.S3.Model.DeleteBucketEncryptionResponse.TDeleteBucketEncryptionResponse;
  TDeleteBucketIntelligentTieringConfigurationRequest = AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationRequest.TDeleteBucketIntelligentTieringConfigurationRequest;
  TDeleteBucketIntelligentTieringConfigurationResponse = AWS.S3.Model.DeleteBucketIntelligentTieringConfigurationResponse.TDeleteBucketIntelligentTieringConfigurationResponse;
  TDeleteBucketInventoryConfigurationRequest = AWS.S3.Model.DeleteBucketInventoryConfigurationRequest.TDeleteBucketInventoryConfigurationRequest;
  TDeleteBucketInventoryConfigurationResponse = AWS.S3.Model.DeleteBucketInventoryConfigurationResponse.TDeleteBucketInventoryConfigurationResponse;
  TDeleteBucketMetricsConfigurationRequest = AWS.S3.Model.DeleteBucketMetricsConfigurationRequest.TDeleteBucketMetricsConfigurationRequest;
  TDeleteBucketMetricsConfigurationResponse = AWS.S3.Model.DeleteBucketMetricsConfigurationResponse.TDeleteBucketMetricsConfigurationResponse;
  TDeleteBucketOwnershipControlsRequest = AWS.S3.Model.DeleteBucketOwnershipControlsRequest.TDeleteBucketOwnershipControlsRequest;
  TDeleteBucketOwnershipControlsResponse = AWS.S3.Model.DeleteBucketOwnershipControlsResponse.TDeleteBucketOwnershipControlsResponse;
  TDeleteBucketPolicyRequest = AWS.S3.Model.DeleteBucketPolicyRequest.TDeleteBucketPolicyRequest;
  TDeleteBucketPolicyResponse = AWS.S3.Model.DeleteBucketPolicyResponse.TDeleteBucketPolicyResponse;
  TDeleteBucketReplicationRequest = AWS.S3.Model.DeleteBucketReplicationRequest.TDeleteBucketReplicationRequest;
  TDeleteBucketReplicationResponse = AWS.S3.Model.DeleteBucketReplicationResponse.TDeleteBucketReplicationResponse;
  TDeleteBucketRequest = AWS.S3.Model.DeleteBucketRequest.TDeleteBucketRequest;
  TDeleteBucketResponse = AWS.S3.Model.DeleteBucketResponse.TDeleteBucketResponse;
  TDeleteBucketTaggingRequest = AWS.S3.Model.DeleteBucketTaggingRequest.TDeleteBucketTaggingRequest;
  TDeleteBucketTaggingResponse = AWS.S3.Model.DeleteBucketTaggingResponse.TDeleteBucketTaggingResponse;
  TDeleteBucketWebsiteRequest = AWS.S3.Model.DeleteBucketWebsiteRequest.TDeleteBucketWebsiteRequest;
  TDeleteBucketWebsiteResponse = AWS.S3.Model.DeleteBucketWebsiteResponse.TDeleteBucketWebsiteResponse;
  TDeleteCORSConfigurationRequest = AWS.S3.Model.DeleteCORSConfigurationRequest.TDeleteCORSConfigurationRequest;
  TDeleteCORSConfigurationResponse = AWS.S3.Model.DeleteCORSConfigurationResponse.TDeleteCORSConfigurationResponse;
  TDeletedObject = AWS.S3.Model.DeletedObject.TDeletedObject;
  TDeleteLifecycleConfigurationRequest = AWS.S3.Model.DeleteLifecycleConfigurationRequest.TDeleteLifecycleConfigurationRequest;
  TDeleteLifecycleConfigurationResponse = AWS.S3.Model.DeleteLifecycleConfigurationResponse.TDeleteLifecycleConfigurationResponse;
  TDeleteMarkerEntry = AWS.S3.Model.DeleteMarkerEntry.TDeleteMarkerEntry;
  TDeleteMarkerReplication = AWS.S3.Model.DeleteMarkerReplication.TDeleteMarkerReplication;
  TDeleteMarkerReplicationStatus = AWS.S3.Enums.TDeleteMarkerReplicationStatus;
  TDeleteObjectRequest = AWS.S3.Model.DeleteObjectRequest.TDeleteObjectRequest;
  TDeleteObjectResponse = AWS.S3.Model.DeleteObjectResponse.TDeleteObjectResponse;
  TDeleteObjectsRequest = AWS.S3.Model.DeleteObjectsRequest.TDeleteObjectsRequest;
  TDeleteObjectsResponse = AWS.S3.Model.DeleteObjectsResponse.TDeleteObjectsResponse;
  TDeleteObjectTaggingRequest = AWS.S3.Model.DeleteObjectTaggingRequest.TDeleteObjectTaggingRequest;
  TDeleteObjectTaggingResponse = AWS.S3.Model.DeleteObjectTaggingResponse.TDeleteObjectTaggingResponse;
  TDeletePublicAccessBlockRequest = AWS.S3.Model.DeletePublicAccessBlockRequest.TDeletePublicAccessBlockRequest;
  TDeletePublicAccessBlockResponse = AWS.S3.Model.DeletePublicAccessBlockResponse.TDeletePublicAccessBlockResponse;
  TDestination = AWS.S3.Model.Destination.TDestination;
  TEncodingType = AWS.S3.Enums.TEncodingType;
  TEncryptionConfiguration = AWS.S3.Model.EncryptionConfiguration.TEncryptionConfiguration;
  TEndEvent = AWS.S3.Model.EndEvent.TEndEvent;
  TError = AWS.S3.Model.Error.TError;
  TErrorDocument = AWS.S3.Model.ErrorDocument.TErrorDocument;
  TEvent = AWS.S3.Enums.TEvent;
  TExistingObjectReplication = AWS.S3.Model.ExistingObjectReplication.TExistingObjectReplication;
  TExistingObjectReplicationStatus = AWS.S3.Enums.TExistingObjectReplicationStatus;
  TExpirationStatus = AWS.S3.Enums.TExpirationStatus;
  TExpressionType = AWS.S3.Enums.TExpressionType;
  TFileHeaderInfo = AWS.S3.Enums.TFileHeaderInfo;
  TFilterRuleName = AWS.S3.Enums.TFilterRuleName;
  TGetACLRequest = AWS.S3.Model.GetACLRequest.TGetACLRequest;
  TGetACLResponse = AWS.S3.Model.GetACLResponse.TGetACLResponse;
  TGetBucketAccelerateConfigurationRequest = AWS.S3.Model.GetBucketAccelerateConfigurationRequest.TGetBucketAccelerateConfigurationRequest;
  TGetBucketAccelerateConfigurationResponse = AWS.S3.Model.GetBucketAccelerateConfigurationResponse.TGetBucketAccelerateConfigurationResponse;
  TGetBucketAnalyticsConfigurationRequest = AWS.S3.Model.GetBucketAnalyticsConfigurationRequest.TGetBucketAnalyticsConfigurationRequest;
  TGetBucketAnalyticsConfigurationResponse = AWS.S3.Model.GetBucketAnalyticsConfigurationResponse.TGetBucketAnalyticsConfigurationResponse;
  TGetBucketEncryptionRequest = AWS.S3.Model.GetBucketEncryptionRequest.TGetBucketEncryptionRequest;
  TGetBucketEncryptionResponse = AWS.S3.Model.GetBucketEncryptionResponse.TGetBucketEncryptionResponse;
  TGetBucketIntelligentTieringConfigurationRequest = AWS.S3.Model.GetBucketIntelligentTieringConfigurationRequest.TGetBucketIntelligentTieringConfigurationRequest;
  TGetBucketIntelligentTieringConfigurationResponse = AWS.S3.Model.GetBucketIntelligentTieringConfigurationResponse.TGetBucketIntelligentTieringConfigurationResponse;
  TGetBucketInventoryConfigurationRequest = AWS.S3.Model.GetBucketInventoryConfigurationRequest.TGetBucketInventoryConfigurationRequest;
  TGetBucketInventoryConfigurationResponse = AWS.S3.Model.GetBucketInventoryConfigurationResponse.TGetBucketInventoryConfigurationResponse;
  TGetBucketLocationRequest = AWS.S3.Model.GetBucketLocationRequest.TGetBucketLocationRequest;
  TGetBucketLocationResponse = AWS.S3.Model.GetBucketLocationResponse.TGetBucketLocationResponse;
  TGetBucketLoggingRequest = AWS.S3.Model.GetBucketLoggingRequest.TGetBucketLoggingRequest;
  TGetBucketLoggingResponse = AWS.S3.Model.GetBucketLoggingResponse.TGetBucketLoggingResponse;
  TGetBucketMetricsConfigurationRequest = AWS.S3.Model.GetBucketMetricsConfigurationRequest.TGetBucketMetricsConfigurationRequest;
  TGetBucketMetricsConfigurationResponse = AWS.S3.Model.GetBucketMetricsConfigurationResponse.TGetBucketMetricsConfigurationResponse;
  TGetBucketOwnershipControlsRequest = AWS.S3.Model.GetBucketOwnershipControlsRequest.TGetBucketOwnershipControlsRequest;
  TGetBucketOwnershipControlsResponse = AWS.S3.Model.GetBucketOwnershipControlsResponse.TGetBucketOwnershipControlsResponse;
  TGetBucketPolicyRequest = AWS.S3.Model.GetBucketPolicyRequest.TGetBucketPolicyRequest;
  TGetBucketPolicyResponse = AWS.S3.Model.GetBucketPolicyResponse.TGetBucketPolicyResponse;
  TGetBucketPolicyStatusRequest = AWS.S3.Model.GetBucketPolicyStatusRequest.TGetBucketPolicyStatusRequest;
  TGetBucketPolicyStatusResponse = AWS.S3.Model.GetBucketPolicyStatusResponse.TGetBucketPolicyStatusResponse;
  TGetBucketReplicationRequest = AWS.S3.Model.GetBucketReplicationRequest.TGetBucketReplicationRequest;
  TGetBucketReplicationResponse = AWS.S3.Model.GetBucketReplicationResponse.TGetBucketReplicationResponse;
  TGetBucketRequestPaymentRequest = AWS.S3.Model.GetBucketRequestPaymentRequest.TGetBucketRequestPaymentRequest;
  TGetBucketRequestPaymentResponse = AWS.S3.Model.GetBucketRequestPaymentResponse.TGetBucketRequestPaymentResponse;
  TGetBucketTaggingRequest = AWS.S3.Model.GetBucketTaggingRequest.TGetBucketTaggingRequest;
  TGetBucketTaggingResponse = AWS.S3.Model.GetBucketTaggingResponse.TGetBucketTaggingResponse;
  TGetBucketVersioningRequest = AWS.S3.Model.GetBucketVersioningRequest.TGetBucketVersioningRequest;
  TGetBucketVersioningResponse = AWS.S3.Model.GetBucketVersioningResponse.TGetBucketVersioningResponse;
  TGetBucketWebsiteRequest = AWS.S3.Model.GetBucketWebsiteRequest.TGetBucketWebsiteRequest;
  TGetBucketWebsiteResponse = AWS.S3.Model.GetBucketWebsiteResponse.TGetBucketWebsiteResponse;
  TGetCORSConfigurationRequest = AWS.S3.Model.GetCORSConfigurationRequest.TGetCORSConfigurationRequest;
  TGetCORSConfigurationResponse = AWS.S3.Model.GetCORSConfigurationResponse.TGetCORSConfigurationResponse;
  TGetLifecycleConfigurationRequest = AWS.S3.Model.GetLifecycleConfigurationRequest.TGetLifecycleConfigurationRequest;
  TGetLifecycleConfigurationResponse = AWS.S3.Model.GetLifecycleConfigurationResponse.TGetLifecycleConfigurationResponse;
  TGetObjectLegalHoldRequest = AWS.S3.Model.GetObjectLegalHoldRequest.TGetObjectLegalHoldRequest;
  TGetObjectLegalHoldResponse = AWS.S3.Model.GetObjectLegalHoldResponse.TGetObjectLegalHoldResponse;
  TGetObjectLockConfigurationRequest = AWS.S3.Model.GetObjectLockConfigurationRequest.TGetObjectLockConfigurationRequest;
  TGetObjectLockConfigurationResponse = AWS.S3.Model.GetObjectLockConfigurationResponse.TGetObjectLockConfigurationResponse;
  TGetObjectMetadataRequest = AWS.S3.Model.GetObjectMetadataRequest.TGetObjectMetadataRequest;
  TGetObjectMetadataResponse = AWS.S3.Model.GetObjectMetadataResponse.TGetObjectMetadataResponse;
  TGetObjectRequest = AWS.S3.Model.GetObjectRequest.TGetObjectRequest;
  TGetObjectResponse = AWS.S3.Model.GetObjectResponse.TGetObjectResponse;
  TGetObjectRetentionRequest = AWS.S3.Model.GetObjectRetentionRequest.TGetObjectRetentionRequest;
  TGetObjectRetentionResponse = AWS.S3.Model.GetObjectRetentionResponse.TGetObjectRetentionResponse;
  TGetObjectTaggingRequest = AWS.S3.Model.GetObjectTaggingRequest.TGetObjectTaggingRequest;
  TGetObjectTaggingResponse = AWS.S3.Model.GetObjectTaggingResponse.TGetObjectTaggingResponse;
  TGetObjectTorrentRequest = AWS.S3.Model.GetObjectTorrentRequest.TGetObjectTorrentRequest;
  TGetObjectTorrentResponse = AWS.S3.Model.GetObjectTorrentResponse.TGetObjectTorrentResponse;
  TGetPublicAccessBlockRequest = AWS.S3.Model.GetPublicAccessBlockRequest.TGetPublicAccessBlockRequest;
  TGetPublicAccessBlockResponse = AWS.S3.Model.GetPublicAccessBlockResponse.TGetPublicAccessBlockResponse;
  TGrant = AWS.S3.Model.Grant.TGrant;
  TGrantee = AWS.S3.Model.Grantee.TGrantee;
  THeadBucketRequest = AWS.S3.Model.HeadBucketRequest.THeadBucketRequest;
  THeadBucketResponse = AWS.S3.Model.HeadBucketResponse.THeadBucketResponse;
  TIndexDocument = AWS.S3.Model.IndexDocument.TIndexDocument;
  TInitiateMultipartUploadRequest = AWS.S3.Model.InitiateMultipartUploadRequest.TInitiateMultipartUploadRequest;
  TInitiateMultipartUploadResponse = AWS.S3.Model.InitiateMultipartUploadResponse.TInitiateMultipartUploadResponse;
  TInitiator = AWS.S3.Model.Initiator.TInitiator;
  TInputSerialization = AWS.S3.Model.InputSerialization.TInputSerialization;
  TIntelligentTieringAccessTier = AWS.S3.Enums.TIntelligentTieringAccessTier;
  TIntelligentTieringAndOperator = AWS.S3.Model.IntelligentTieringAndOperator.TIntelligentTieringAndOperator;
  TIntelligentTieringConfiguration = AWS.S3.Model.IntelligentTieringConfiguration.TIntelligentTieringConfiguration;
  TIntelligentTieringFilter = AWS.S3.Model.IntelligentTieringFilter.TIntelligentTieringFilter;
  TIntelligentTieringStatus = AWS.S3.Enums.TIntelligentTieringStatus;
  TInventoryConfiguration = AWS.S3.Model.InventoryConfiguration.TInventoryConfiguration;
  TInventoryDestination = AWS.S3.Model.InventoryDestination.TInventoryDestination;
  TInventoryEncryption = AWS.S3.Model.InventoryEncryption.TInventoryEncryption;
  TInventoryFilter = AWS.S3.Model.InventoryFilter.TInventoryFilter;
  TInventoryFormat = AWS.S3.Enums.TInventoryFormat;
  TInventoryFrequency = AWS.S3.Enums.TInventoryFrequency;
  TInventoryIncludedObjectVersions = AWS.S3.Enums.TInventoryIncludedObjectVersions;
  TInventoryOptionalField = AWS.S3.Enums.TInventoryOptionalField;
  TInventoryS3BucketDestination = AWS.S3.Model.InventoryS3BucketDestination.TInventoryS3BucketDestination;
  TInventorySchedule = AWS.S3.Model.InventorySchedule.TInventorySchedule;
  TJSONInput = AWS.S3.Model.JSONInput.TJSONInput;
  TJSONOutput = AWS.S3.Model.JSONOutput.TJSONOutput;
  TJSONType = AWS.S3.Enums.TJSONType;
  TLifecycleConfiguration = AWS.S3.Model.LifecycleConfiguration.TLifecycleConfiguration;
  TLifecycleExpiration = AWS.S3.Model.LifecycleExpiration.TLifecycleExpiration;
  TLifecycleRule = AWS.S3.Model.LifecycleRule.TLifecycleRule;
  TLifecycleRuleAndOperator = AWS.S3.Model.LifecycleRuleAndOperator.TLifecycleRuleAndOperator;
  TLifecycleRuleFilter = AWS.S3.Model.LifecycleRuleFilter.TLifecycleRuleFilter;
  TListBucketAnalyticsConfigurationsRequest = AWS.S3.Model.ListBucketAnalyticsConfigurationsRequest.TListBucketAnalyticsConfigurationsRequest;
  TListBucketAnalyticsConfigurationsResponse = AWS.S3.Model.ListBucketAnalyticsConfigurationsResponse.TListBucketAnalyticsConfigurationsResponse;
  TListBucketIntelligentTieringConfigurationsRequest = AWS.S3.Model.ListBucketIntelligentTieringConfigurationsRequest.TListBucketIntelligentTieringConfigurationsRequest;
  TListBucketIntelligentTieringConfigurationsResponse = AWS.S3.Model.ListBucketIntelligentTieringConfigurationsResponse.TListBucketIntelligentTieringConfigurationsResponse;
  TListBucketInventoryConfigurationsRequest = AWS.S3.Model.ListBucketInventoryConfigurationsRequest.TListBucketInventoryConfigurationsRequest;
  TListBucketInventoryConfigurationsResponse = AWS.S3.Model.ListBucketInventoryConfigurationsResponse.TListBucketInventoryConfigurationsResponse;
  TListBucketMetricsConfigurationsRequest = AWS.S3.Model.ListBucketMetricsConfigurationsRequest.TListBucketMetricsConfigurationsRequest;
  TListBucketMetricsConfigurationsResponse = AWS.S3.Model.ListBucketMetricsConfigurationsResponse.TListBucketMetricsConfigurationsResponse;
  TListBucketsRequest = AWS.S3.Model.ListBucketsRequest.TListBucketsRequest;
  TListBucketsResponse = AWS.S3.Model.ListBucketsResponse.TListBucketsResponse;
  TListMultipartUploadsRequest = AWS.S3.Model.ListMultipartUploadsRequest.TListMultipartUploadsRequest;
  TListMultipartUploadsResponse = AWS.S3.Model.ListMultipartUploadsResponse.TListMultipartUploadsResponse;
  TListObjectsRequest = AWS.S3.Model.ListObjectsRequest.TListObjectsRequest;
  TListObjectsResponse = AWS.S3.Model.ListObjectsResponse.TListObjectsResponse;
  TListObjectsV2Request = AWS.S3.Model.ListObjectsV2Request.TListObjectsV2Request;
  TListObjectsV2Response = AWS.S3.Model.ListObjectsV2Response.TListObjectsV2Response;
  TListPartsRequest = AWS.S3.Model.ListPartsRequest.TListPartsRequest;
  TListPartsResponse = AWS.S3.Model.ListPartsResponse.TListPartsResponse;
  TListVersionsRequest = AWS.S3.Model.ListVersionsRequest.TListVersionsRequest;
  TListVersionsResponse = AWS.S3.Model.ListVersionsResponse.TListVersionsResponse;
  TLoggingEnabled = AWS.S3.Model.LoggingEnabled.TLoggingEnabled;
  TMetadataDirective = AWS.S3.Enums.TMetadataDirective;
  TMetrics = AWS.S3.Model.Metrics.TMetrics;
  TMetricsAndOperator = AWS.S3.Model.MetricsAndOperator.TMetricsAndOperator;
  TMetricsConfiguration = AWS.S3.Model.MetricsConfiguration.TMetricsConfiguration;
  TMetricsFilter = AWS.S3.Model.MetricsFilter.TMetricsFilter;
  TMetricsStatus = AWS.S3.Enums.TMetricsStatus;
  TMFADelete = AWS.S3.Enums.TMFADelete;
  TMFADeleteStatus = AWS.S3.Enums.TMFADeleteStatus;
  TMultipartUpload = AWS.S3.Model.MultipartUpload.TMultipartUpload;
  TNoncurrentVersionExpiration = AWS.S3.Model.NoncurrentVersionExpiration.TNoncurrentVersionExpiration;
  TNoncurrentVersionTransition = AWS.S3.Model.NoncurrentVersionTransition.TNoncurrentVersionTransition;
  TObject = AWS.S3.Model.ObjectTypes.TObject;
  TObjectCannedACL = AWS.S3.Enums.TObjectCannedACL;
  TObjectIdentifier = AWS.S3.Model.ObjectIdentifier.TObjectIdentifier;
  TObjectLockConfiguration = AWS.S3.Model.ObjectLockConfiguration.TObjectLockConfiguration;
  TObjectLockEnabled = AWS.S3.Enums.TObjectLockEnabled;
  TObjectLockLegalHold = AWS.S3.Model.ObjectLockLegalHold.TObjectLockLegalHold;
  TObjectLockLegalHoldStatus = AWS.S3.Enums.TObjectLockLegalHoldStatus;
  TObjectLockMode = AWS.S3.Enums.TObjectLockMode;
  TObjectLockRetention = AWS.S3.Model.ObjectLockRetention.TObjectLockRetention;
  TObjectLockRetentionMode = AWS.S3.Enums.TObjectLockRetentionMode;
  TObjectLockRule = AWS.S3.Model.ObjectLockRule.TObjectLockRule;
  TObjectOwnership = AWS.S3.Enums.TObjectOwnership;
  TObjectStorageClass = AWS.S3.Enums.TObjectStorageClass;
  TObjectVersion = AWS.S3.Model.ObjectVersion.TObjectVersion;
  TObjectVersionStorageClass = AWS.S3.Enums.TObjectVersionStorageClass;
  TOutputSerialization = AWS.S3.Model.OutputSerialization.TOutputSerialization;
  TOwner = AWS.S3.Model.Owner.TOwner;
  TOwnerOverride = AWS.S3.Enums.TOwnerOverride;
  TOwnershipControls = AWS.S3.Model.OwnershipControls.TOwnershipControls;
  TOwnershipControlsRule = AWS.S3.Model.OwnershipControlsRule.TOwnershipControlsRule;
  TParquetInput = AWS.S3.Model.ParquetInput.TParquetInput;
  TPart = AWS.S3.Model.Part.TPart;
  TPayer = AWS.S3.Enums.TPayer;
  TPermission = AWS.S3.Enums.TPermission;
  TPolicyStatus = AWS.S3.Model.PolicyStatus.TPolicyStatus;
  TProgress = AWS.S3.Model.Progress.TProgress;
  TProgressEvent = AWS.S3.Model.ProgressEvent.TProgressEvent;
  TProtocol = AWS.S3.Enums.TProtocol;
  TPublicAccessBlockConfiguration = AWS.S3.Model.PublicAccessBlockConfiguration.TPublicAccessBlockConfiguration;
  TPutACLRequest = AWS.S3.Model.PutACLRequest.TPutACLRequest;
  TPutACLResponse = AWS.S3.Model.PutACLResponse.TPutACLResponse;
  TPutBucketAccelerateConfigurationRequest = AWS.S3.Model.PutBucketAccelerateConfigurationRequest.TPutBucketAccelerateConfigurationRequest;
  TPutBucketAccelerateConfigurationResponse = AWS.S3.Model.PutBucketAccelerateConfigurationResponse.TPutBucketAccelerateConfigurationResponse;
  TPutBucketAnalyticsConfigurationRequest = AWS.S3.Model.PutBucketAnalyticsConfigurationRequest.TPutBucketAnalyticsConfigurationRequest;
  TPutBucketAnalyticsConfigurationResponse = AWS.S3.Model.PutBucketAnalyticsConfigurationResponse.TPutBucketAnalyticsConfigurationResponse;
  TPutBucketEncryptionRequest = AWS.S3.Model.PutBucketEncryptionRequest.TPutBucketEncryptionRequest;
  TPutBucketEncryptionResponse = AWS.S3.Model.PutBucketEncryptionResponse.TPutBucketEncryptionResponse;
  TPutBucketIntelligentTieringConfigurationRequest = AWS.S3.Model.PutBucketIntelligentTieringConfigurationRequest.TPutBucketIntelligentTieringConfigurationRequest;
  TPutBucketIntelligentTieringConfigurationResponse = AWS.S3.Model.PutBucketIntelligentTieringConfigurationResponse.TPutBucketIntelligentTieringConfigurationResponse;
  TPutBucketInventoryConfigurationRequest = AWS.S3.Model.PutBucketInventoryConfigurationRequest.TPutBucketInventoryConfigurationRequest;
  TPutBucketInventoryConfigurationResponse = AWS.S3.Model.PutBucketInventoryConfigurationResponse.TPutBucketInventoryConfigurationResponse;
  TPutBucketLoggingRequest = AWS.S3.Model.PutBucketLoggingRequest.TPutBucketLoggingRequest;
  TPutBucketLoggingResponse = AWS.S3.Model.PutBucketLoggingResponse.TPutBucketLoggingResponse;
  TPutBucketMetricsConfigurationRequest = AWS.S3.Model.PutBucketMetricsConfigurationRequest.TPutBucketMetricsConfigurationRequest;
  TPutBucketMetricsConfigurationResponse = AWS.S3.Model.PutBucketMetricsConfigurationResponse.TPutBucketMetricsConfigurationResponse;
  TPutBucketOwnershipControlsRequest = AWS.S3.Model.PutBucketOwnershipControlsRequest.TPutBucketOwnershipControlsRequest;
  TPutBucketOwnershipControlsResponse = AWS.S3.Model.PutBucketOwnershipControlsResponse.TPutBucketOwnershipControlsResponse;
  TPutBucketPolicyRequest = AWS.S3.Model.PutBucketPolicyRequest.TPutBucketPolicyRequest;
  TPutBucketPolicyResponse = AWS.S3.Model.PutBucketPolicyResponse.TPutBucketPolicyResponse;
  TPutBucketReplicationRequest = AWS.S3.Model.PutBucketReplicationRequest.TPutBucketReplicationRequest;
  TPutBucketReplicationResponse = AWS.S3.Model.PutBucketReplicationResponse.TPutBucketReplicationResponse;
  TPutBucketRequest = AWS.S3.Model.PutBucketRequest.TPutBucketRequest;
  TPutBucketRequestPaymentRequest = AWS.S3.Model.PutBucketRequestPaymentRequest.TPutBucketRequestPaymentRequest;
  TPutBucketRequestPaymentResponse = AWS.S3.Model.PutBucketRequestPaymentResponse.TPutBucketRequestPaymentResponse;
  TPutBucketResponse = AWS.S3.Model.PutBucketResponse.TPutBucketResponse;
  TPutBucketTaggingRequest = AWS.S3.Model.PutBucketTaggingRequest.TPutBucketTaggingRequest;
  TPutBucketTaggingResponse = AWS.S3.Model.PutBucketTaggingResponse.TPutBucketTaggingResponse;
  TPutBucketVersioningRequest = AWS.S3.Model.PutBucketVersioningRequest.TPutBucketVersioningRequest;
  TPutBucketVersioningResponse = AWS.S3.Model.PutBucketVersioningResponse.TPutBucketVersioningResponse;
  TPutBucketWebsiteRequest = AWS.S3.Model.PutBucketWebsiteRequest.TPutBucketWebsiteRequest;
  TPutBucketWebsiteResponse = AWS.S3.Model.PutBucketWebsiteResponse.TPutBucketWebsiteResponse;
  TPutCORSConfigurationRequest = AWS.S3.Model.PutCORSConfigurationRequest.TPutCORSConfigurationRequest;
  TPutCORSConfigurationResponse = AWS.S3.Model.PutCORSConfigurationResponse.TPutCORSConfigurationResponse;
  TPutLifecycleConfigurationRequest = AWS.S3.Model.PutLifecycleConfigurationRequest.TPutLifecycleConfigurationRequest;
  TPutLifecycleConfigurationResponse = AWS.S3.Model.PutLifecycleConfigurationResponse.TPutLifecycleConfigurationResponse;
  TPutObjectLegalHoldRequest = AWS.S3.Model.PutObjectLegalHoldRequest.TPutObjectLegalHoldRequest;
  TPutObjectLegalHoldResponse = AWS.S3.Model.PutObjectLegalHoldResponse.TPutObjectLegalHoldResponse;
  TPutObjectLockConfigurationRequest = AWS.S3.Model.PutObjectLockConfigurationRequest.TPutObjectLockConfigurationRequest;
  TPutObjectLockConfigurationResponse = AWS.S3.Model.PutObjectLockConfigurationResponse.TPutObjectLockConfigurationResponse;
  TPutObjectRequest = AWS.S3.Model.PutObjectRequest.TPutObjectRequest;
  TPutObjectResponse = AWS.S3.Model.PutObjectResponse.TPutObjectResponse;
  TPutObjectRetentionRequest = AWS.S3.Model.PutObjectRetentionRequest.TPutObjectRetentionRequest;
  TPutObjectRetentionResponse = AWS.S3.Model.PutObjectRetentionResponse.TPutObjectRetentionResponse;
  TPutObjectTaggingRequest = AWS.S3.Model.PutObjectTaggingRequest.TPutObjectTaggingRequest;
  TPutObjectTaggingResponse = AWS.S3.Model.PutObjectTaggingResponse.TPutObjectTaggingResponse;
  TPutPublicAccessBlockRequest = AWS.S3.Model.PutPublicAccessBlockRequest.TPutPublicAccessBlockRequest;
  TPutPublicAccessBlockResponse = AWS.S3.Model.PutPublicAccessBlockResponse.TPutPublicAccessBlockResponse;
  TQuoteFields = AWS.S3.Enums.TQuoteFields;
  TRecordsEvent = AWS.S3.Model.RecordsEvent.TRecordsEvent;
  TRedirect = AWS.S3.Model.Redirect.TRedirect;
  TRedirectAllRequestsTo = AWS.S3.Model.RedirectAllRequestsTo.TRedirectAllRequestsTo;
  TReplicaModifications = AWS.S3.Model.ReplicaModifications.TReplicaModifications;
  TReplicaModificationsStatus = AWS.S3.Enums.TReplicaModificationsStatus;
  TReplicationConfiguration = AWS.S3.Model.ReplicationConfiguration.TReplicationConfiguration;
  TReplicationRule = AWS.S3.Model.ReplicationRule.TReplicationRule;
  TReplicationRuleAndOperator = AWS.S3.Model.ReplicationRuleAndOperator.TReplicationRuleAndOperator;
  TReplicationRuleFilter = AWS.S3.Model.ReplicationRuleFilter.TReplicationRuleFilter;
  TReplicationRuleStatus = AWS.S3.Enums.TReplicationRuleStatus;
  TReplicationStatus = AWS.S3.Enums.TReplicationStatus;
  TReplicationTime = AWS.S3.Model.ReplicationTime.TReplicationTime;
  TReplicationTimeStatus = AWS.S3.Enums.TReplicationTimeStatus;
  TReplicationTimeValue = AWS.S3.Model.ReplicationTimeValue.TReplicationTimeValue;
  TRequestCharged = AWS.S3.Enums.TRequestCharged;
  TRequestPayer = AWS.S3.Enums.TRequestPayer;
  TRequestPaymentConfiguration = AWS.S3.Model.RequestPaymentConfiguration.TRequestPaymentConfiguration;
  TRequestProgress = AWS.S3.Model.RequestProgress.TRequestProgress;
  TRestoreObjectRequest = AWS.S3.Model.RestoreObjectRequest.TRestoreObjectRequest;
  TRestoreObjectResponse = AWS.S3.Model.RestoreObjectResponse.TRestoreObjectResponse;
  TRestoreRequestType = AWS.S3.Enums.TRestoreRequestType;
  TRoutingRule = AWS.S3.Model.RoutingRule.TRoutingRule;
  TRule = AWS.S3.Model.Rule.TRule;
  TScanRange = AWS.S3.Model.ScanRange.TScanRange;
  TSelectObjectContentEventStream = AWS.S3.Model.SelectObjectContentEventStream.TSelectObjectContentEventStream;
  TSelectObjectContentRequest = AWS.S3.Model.SelectObjectContentRequest.TSelectObjectContentRequest;
  TSelectObjectContentResponse = AWS.S3.Model.SelectObjectContentResponse.TSelectObjectContentResponse;
  TServerSideEncryption = AWS.S3.Enums.TServerSideEncryption;
  TServerSideEncryptionByDefault = AWS.S3.Model.ServerSideEncryptionByDefault.TServerSideEncryptionByDefault;
  TServerSideEncryptionConfiguration = AWS.S3.Model.ServerSideEncryptionConfiguration.TServerSideEncryptionConfiguration;
  TServerSideEncryptionRule = AWS.S3.Model.ServerSideEncryptionRule.TServerSideEncryptionRule;
  TSourceSelectionCriteria = AWS.S3.Model.SourceSelectionCriteria.TSourceSelectionCriteria;
  TSSEKMS = AWS.S3.Model.SSEKMS.TSSEKMS;
  TSseKmsEncryptedObjects = AWS.S3.Model.SseKmsEncryptedObjects.TSseKmsEncryptedObjects;
  TSseKmsEncryptedObjectsStatus = AWS.S3.Enums.TSseKmsEncryptedObjectsStatus;
  TSSES3 = AWS.S3.Model.SSES3.TSSES3;
  TStats = AWS.S3.Model.Stats.TStats;
  TStatsEvent = AWS.S3.Model.StatsEvent.TStatsEvent;
  TStorageClass = AWS.S3.Enums.TStorageClass;
  TStorageClassAnalysis = AWS.S3.Model.StorageClassAnalysis.TStorageClassAnalysis;
  TStorageClassAnalysisDataExport = AWS.S3.Model.StorageClassAnalysisDataExport.TStorageClassAnalysisDataExport;
  TStorageClassAnalysisSchemaVersion = AWS.S3.Enums.TStorageClassAnalysisSchemaVersion;
  TTag = AWS.S3.Model.Tag.TTag;
  TTagging = AWS.S3.Model.Tagging.TTagging;
  TTaggingDirective = AWS.S3.Enums.TTaggingDirective;
  TTargetGrant = AWS.S3.Model.TargetGrant.TTargetGrant;
  TTier = AWS.S3.Enums.TTier;
  TTiering = AWS.S3.Model.Tiering.TTiering;
  TTransition = AWS.S3.Model.Transition.TTransition;
  TTransitionStorageClass = AWS.S3.Enums.TTransitionStorageClass;
  TType = AWS.S3.Enums.TType;
  TUploadPartRequest = AWS.S3.Model.UploadPartRequest.TUploadPartRequest;
  TUploadPartResponse = AWS.S3.Model.UploadPartResponse.TUploadPartResponse;
  TVersioningConfiguration = AWS.S3.Model.VersioningConfiguration.TVersioningConfiguration;
  TWebsiteConfiguration = AWS.S3.Model.WebsiteConfiguration.TWebsiteConfiguration;
  TWriteGetObjectResponseRequest = AWS.S3.Model.WriteGetObjectResponseRequest.TWriteGetObjectResponseRequest;
  TWriteGetObjectResponseResponse = AWS.S3.Model.WriteGetObjectResponseResponse.TWriteGetObjectResponseResponse;
  
implementation

end.
