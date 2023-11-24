unit AWS.S3;

interface

uses
  AWS.S3.Client, 
  AWS.S3.ClientIntf, 
  AWS.S3.Config, 
  AWS.S3.Enums, 
  AWS.S3.Exception, 
  AWS.S3.Metadata, 
  AWS.S3.Model.AnalyticsAndOperator, 
  AWS.S3.Model.AnalyticsConfiguration, 
  AWS.S3.Model.AnalyticsExportDestination, 
  AWS.S3.Model.AnalyticsFilter, 
  AWS.S3.Model.AnalyticsS3BucketDestination, 
  AWS.S3.Model.Bucket, 
  AWS.S3.Model.CommonPrefix, 
  AWS.S3.Model.ContinuationEvent, 
  AWS.S3.Model.CopyObjectRequest, 
  AWS.S3.Model.CopyObjectResponse, 
  AWS.S3.Model.CopyObjectResult, 
  AWS.S3.Model.CSVInput, 
  AWS.S3.Model.CSVOutput, 
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
  AWS.S3.Model.DeleteLifecycleConfigurationRequest, 
  AWS.S3.Model.DeleteLifecycleConfigurationResponse, 
  AWS.S3.Model.DeleteMarkerEntry, 
  AWS.S3.Model.DeleteObjectRequest, 
  AWS.S3.Model.DeleteObjectResponse, 
  AWS.S3.Model.DeleteObjectTaggingRequest, 
  AWS.S3.Model.DeleteObjectTaggingResponse, 
  AWS.S3.Model.DeletePublicAccessBlockRequest, 
  AWS.S3.Model.DeletePublicAccessBlockResponse, 
  AWS.S3.Model.EndEvent, 
  AWS.S3.Model.HeadBucketRequest, 
  AWS.S3.Model.HeadBucketResponse, 
  AWS.S3.Model.InputSerialization, 
  AWS.S3.Model.IntelligentTieringAndOperator, 
  AWS.S3.Model.IntelligentTieringConfiguration, 
  AWS.S3.Model.IntelligentTieringFilter, 
  AWS.S3.Model.InventoryConfiguration, 
  AWS.S3.Model.InventoryDestination, 
  AWS.S3.Model.InventoryEncryption, 
  AWS.S3.Model.InventoryFilter, 
  AWS.S3.Model.InventoryS3BucketDestination, 
  AWS.S3.Model.InventorySchedule, 
  AWS.S3.Model.JSONInput, 
  AWS.S3.Model.JSONOutput, 
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
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Model.ListObjectsResponse, 
  AWS.S3.Model.ListObjectsV2Request, 
  AWS.S3.Model.ListObjectsV2Response, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.S3.Model.ListVersionsResponse, 
  AWS.S3.Model.MetricsAndOperator, 
  AWS.S3.Model.MetricsConfiguration, 
  AWS.S3.Model.MetricsFilter, 
  AWS.S3.Model.NoSuchBucketException, 
  AWS.S3.Model.ObjectNotInActiveTierErrorException, 
  AWS.S3.Model.ObjectTypes, 
  AWS.S3.Model.ObjectVersion, 
  AWS.S3.Model.OutputSerialization, 
  AWS.S3.Model.Owner, 
  AWS.S3.Model.ParquetInput, 
  AWS.S3.Model.Progress, 
  AWS.S3.Model.ProgressEvent, 
  AWS.S3.Model.RecordsEvent, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.RequestProgress, 
  AWS.S3.Model.ScanRange, 
  AWS.S3.Model.SelectObjectContentEventStream, 
  AWS.S3.Model.SelectObjectContentRequest, 
  AWS.S3.Model.SelectObjectContentResponse, 
  AWS.S3.Model.SSEKMS, 
  AWS.S3.Model.SSES3, 
  AWS.S3.Model.Stats, 
  AWS.S3.Model.StatsEvent, 
  AWS.S3.Model.StorageClassAnalysis, 
  AWS.S3.Model.StorageClassAnalysisDataExport, 
  AWS.S3.Model.Tag, 
  AWS.S3.Model.Tiering;

type
  EAmazonS3Exception = AWS.S3.Exception.EAmazonS3Exception;
  ENoSuchBucketException = AWS.S3.Model.NoSuchBucketException.ENoSuchBucketException;
  EObjectNotInActiveTierErrorException = AWS.S3.Model.ObjectNotInActiveTierErrorException.EObjectNotInActiveTierErrorException;
  IAmazonS3 = AWS.S3.ClientIntf.IAmazonS3;
  IAnalyticsAndOperator = AWS.S3.Model.AnalyticsAndOperator.IAnalyticsAndOperator;
  IAnalyticsConfiguration = AWS.S3.Model.AnalyticsConfiguration.IAnalyticsConfiguration;
  IAnalyticsExportDestination = AWS.S3.Model.AnalyticsExportDestination.IAnalyticsExportDestination;
  IAnalyticsFilter = AWS.S3.Model.AnalyticsFilter.IAnalyticsFilter;
  IAnalyticsS3BucketDestination = AWS.S3.Model.AnalyticsS3BucketDestination.IAnalyticsS3BucketDestination;
  IBucket = AWS.S3.Model.Bucket.IBucket;
  ICommonPrefix = AWS.S3.Model.CommonPrefix.ICommonPrefix;
  IContinuationEvent = AWS.S3.Model.ContinuationEvent.IContinuationEvent;
  ICopyObjectRequest = AWS.S3.Model.CopyObjectRequest.ICopyObjectRequest;
  ICopyObjectResponse = AWS.S3.Model.CopyObjectResponse.ICopyObjectResponse;
  ICopyObjectResult = AWS.S3.Model.CopyObjectResult.ICopyObjectResult;
  ICSVInput = AWS.S3.Model.CSVInput.ICSVInput;
  ICSVOutput = AWS.S3.Model.CSVOutput.ICSVOutput;
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
  IDeleteLifecycleConfigurationRequest = AWS.S3.Model.DeleteLifecycleConfigurationRequest.IDeleteLifecycleConfigurationRequest;
  IDeleteLifecycleConfigurationResponse = AWS.S3.Model.DeleteLifecycleConfigurationResponse.IDeleteLifecycleConfigurationResponse;
  IDeleteMarkerEntry = AWS.S3.Model.DeleteMarkerEntry.IDeleteMarkerEntry;
  IDeleteObjectRequest = AWS.S3.Model.DeleteObjectRequest.IDeleteObjectRequest;
  IDeleteObjectResponse = AWS.S3.Model.DeleteObjectResponse.IDeleteObjectResponse;
  IDeleteObjectTaggingRequest = AWS.S3.Model.DeleteObjectTaggingRequest.IDeleteObjectTaggingRequest;
  IDeleteObjectTaggingResponse = AWS.S3.Model.DeleteObjectTaggingResponse.IDeleteObjectTaggingResponse;
  IDeletePublicAccessBlockRequest = AWS.S3.Model.DeletePublicAccessBlockRequest.IDeletePublicAccessBlockRequest;
  IDeletePublicAccessBlockResponse = AWS.S3.Model.DeletePublicAccessBlockResponse.IDeletePublicAccessBlockResponse;
  IEndEvent = AWS.S3.Model.EndEvent.IEndEvent;
  IHeadBucketRequest = AWS.S3.Model.HeadBucketRequest.IHeadBucketRequest;
  IHeadBucketResponse = AWS.S3.Model.HeadBucketResponse.IHeadBucketResponse;
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
  IListObjectsRequest = AWS.S3.Model.ListObjectsRequest.IListObjectsRequest;
  IListObjectsResponse = AWS.S3.Model.ListObjectsResponse.IListObjectsResponse;
  IListObjectsV2Request = AWS.S3.Model.ListObjectsV2Request.IListObjectsV2Request;
  IListObjectsV2Response = AWS.S3.Model.ListObjectsV2Response.IListObjectsV2Response;
  IListVersionsRequest = AWS.S3.Model.ListVersionsRequest.IListVersionsRequest;
  IListVersionsResponse = AWS.S3.Model.ListVersionsResponse.IListVersionsResponse;
  IMetricsAndOperator = AWS.S3.Model.MetricsAndOperator.IMetricsAndOperator;
  IMetricsConfiguration = AWS.S3.Model.MetricsConfiguration.IMetricsConfiguration;
  IMetricsFilter = AWS.S3.Model.MetricsFilter.IMetricsFilter;
  IObject = AWS.S3.Model.ObjectTypes.IObject;
  IObjectVersion = AWS.S3.Model.ObjectVersion.IObjectVersion;
  IOutputSerialization = AWS.S3.Model.OutputSerialization.IOutputSerialization;
  IOwner = AWS.S3.Model.Owner.IOwner;
  IParquetInput = AWS.S3.Model.ParquetInput.IParquetInput;
  IProgress = AWS.S3.Model.Progress.IProgress;
  IProgressEvent = AWS.S3.Model.ProgressEvent.IProgressEvent;
  IRecordsEvent = AWS.S3.Model.RecordsEvent.IRecordsEvent;
  IRequestProgress = AWS.S3.Model.RequestProgress.IRequestProgress;
  IScanRange = AWS.S3.Model.ScanRange.IScanRange;
  ISelectObjectContentEventStream = AWS.S3.Model.SelectObjectContentEventStream.ISelectObjectContentEventStream;
  ISelectObjectContentRequest = AWS.S3.Model.SelectObjectContentRequest.ISelectObjectContentRequest;
  ISelectObjectContentResponse = AWS.S3.Model.SelectObjectContentResponse.ISelectObjectContentResponse;
  ISSEKMS = AWS.S3.Model.SSEKMS.ISSEKMS;
  ISSES3 = AWS.S3.Model.SSES3.ISSES3;
  IStats = AWS.S3.Model.Stats.IStats;
  IStatsEvent = AWS.S3.Model.StatsEvent.IStatsEvent;
  IStorageClassAnalysis = AWS.S3.Model.StorageClassAnalysis.IStorageClassAnalysis;
  IStorageClassAnalysisDataExport = AWS.S3.Model.StorageClassAnalysisDataExport.IStorageClassAnalysisDataExport;
  ITag = AWS.S3.Model.Tag.ITag;
  ITiering = AWS.S3.Model.Tiering.ITiering;
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
  TBucketLogsPermission = AWS.S3.Enums.TBucketLogsPermission;
  TBucketVersioningStatus = AWS.S3.Enums.TBucketVersioningStatus;
  TCommonPrefix = AWS.S3.Model.CommonPrefix.TCommonPrefix;
  TCompressionType = AWS.S3.Enums.TCompressionType;
  TContinuationEvent = AWS.S3.Model.ContinuationEvent.TContinuationEvent;
  TCopyObjectRequest = AWS.S3.Model.CopyObjectRequest.TCopyObjectRequest;
  TCopyObjectResponse = AWS.S3.Model.CopyObjectResponse.TCopyObjectResponse;
  TCopyObjectResult = AWS.S3.Model.CopyObjectResult.TCopyObjectResult;
  TCSVInput = AWS.S3.Model.CSVInput.TCSVInput;
  TCSVOutput = AWS.S3.Model.CSVOutput.TCSVOutput;
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
  TDeleteLifecycleConfigurationRequest = AWS.S3.Model.DeleteLifecycleConfigurationRequest.TDeleteLifecycleConfigurationRequest;
  TDeleteLifecycleConfigurationResponse = AWS.S3.Model.DeleteLifecycleConfigurationResponse.TDeleteLifecycleConfigurationResponse;
  TDeleteMarkerEntry = AWS.S3.Model.DeleteMarkerEntry.TDeleteMarkerEntry;
  TDeleteMarkerReplicationStatus = AWS.S3.Enums.TDeleteMarkerReplicationStatus;
  TDeleteObjectRequest = AWS.S3.Model.DeleteObjectRequest.TDeleteObjectRequest;
  TDeleteObjectResponse = AWS.S3.Model.DeleteObjectResponse.TDeleteObjectResponse;
  TDeleteObjectTaggingRequest = AWS.S3.Model.DeleteObjectTaggingRequest.TDeleteObjectTaggingRequest;
  TDeleteObjectTaggingResponse = AWS.S3.Model.DeleteObjectTaggingResponse.TDeleteObjectTaggingResponse;
  TDeletePublicAccessBlockRequest = AWS.S3.Model.DeletePublicAccessBlockRequest.TDeletePublicAccessBlockRequest;
  TDeletePublicAccessBlockResponse = AWS.S3.Model.DeletePublicAccessBlockResponse.TDeletePublicAccessBlockResponse;
  TEncodingType = AWS.S3.Enums.TEncodingType;
  TEndEvent = AWS.S3.Model.EndEvent.TEndEvent;
  TEvent = AWS.S3.Enums.TEvent;
  TExistingObjectReplicationStatus = AWS.S3.Enums.TExistingObjectReplicationStatus;
  TExpirationStatus = AWS.S3.Enums.TExpirationStatus;
  TExpressionType = AWS.S3.Enums.TExpressionType;
  TFileHeaderInfo = AWS.S3.Enums.TFileHeaderInfo;
  TFilterRuleName = AWS.S3.Enums.TFilterRuleName;
  THeadBucketRequest = AWS.S3.Model.HeadBucketRequest.THeadBucketRequest;
  THeadBucketResponse = AWS.S3.Model.HeadBucketResponse.THeadBucketResponse;
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
  TListObjectsRequest = AWS.S3.Model.ListObjectsRequest.TListObjectsRequest;
  TListObjectsResponse = AWS.S3.Model.ListObjectsResponse.TListObjectsResponse;
  TListObjectsV2Request = AWS.S3.Model.ListObjectsV2Request.TListObjectsV2Request;
  TListObjectsV2Response = AWS.S3.Model.ListObjectsV2Response.TListObjectsV2Response;
  TListVersionsRequest = AWS.S3.Model.ListVersionsRequest.TListVersionsRequest;
  TListVersionsResponse = AWS.S3.Model.ListVersionsResponse.TListVersionsResponse;
  TMetadataDirective = AWS.S3.Enums.TMetadataDirective;
  TMetricsAndOperator = AWS.S3.Model.MetricsAndOperator.TMetricsAndOperator;
  TMetricsConfiguration = AWS.S3.Model.MetricsConfiguration.TMetricsConfiguration;
  TMetricsFilter = AWS.S3.Model.MetricsFilter.TMetricsFilter;
  TMetricsStatus = AWS.S3.Enums.TMetricsStatus;
  TMFADelete = AWS.S3.Enums.TMFADelete;
  TMFADeleteStatus = AWS.S3.Enums.TMFADeleteStatus;
  TObject = AWS.S3.Model.ObjectTypes.TObject;
  TObjectCannedACL = AWS.S3.Enums.TObjectCannedACL;
  TObjectLockEnabled = AWS.S3.Enums.TObjectLockEnabled;
  TObjectLockLegalHoldStatus = AWS.S3.Enums.TObjectLockLegalHoldStatus;
  TObjectLockMode = AWS.S3.Enums.TObjectLockMode;
  TObjectLockRetentionMode = AWS.S3.Enums.TObjectLockRetentionMode;
  TObjectOwnership = AWS.S3.Enums.TObjectOwnership;
  TObjectStorageClass = AWS.S3.Enums.TObjectStorageClass;
  TObjectVersion = AWS.S3.Model.ObjectVersion.TObjectVersion;
  TObjectVersionStorageClass = AWS.S3.Enums.TObjectVersionStorageClass;
  TOutputSerialization = AWS.S3.Model.OutputSerialization.TOutputSerialization;
  TOwner = AWS.S3.Model.Owner.TOwner;
  TOwnerOverride = AWS.S3.Enums.TOwnerOverride;
  TParquetInput = AWS.S3.Model.ParquetInput.TParquetInput;
  TPayer = AWS.S3.Enums.TPayer;
  TPermission = AWS.S3.Enums.TPermission;
  TProgress = AWS.S3.Model.Progress.TProgress;
  TProgressEvent = AWS.S3.Model.ProgressEvent.TProgressEvent;
  TProtocol = AWS.S3.Enums.TProtocol;
  TQuoteFields = AWS.S3.Enums.TQuoteFields;
  TRecordsEvent = AWS.S3.Model.RecordsEvent.TRecordsEvent;
  TReplicaModificationsStatus = AWS.S3.Enums.TReplicaModificationsStatus;
  TReplicationRuleStatus = AWS.S3.Enums.TReplicationRuleStatus;
  TReplicationStatus = AWS.S3.Enums.TReplicationStatus;
  TReplicationTimeStatus = AWS.S3.Enums.TReplicationTimeStatus;
  TRequestCharged = AWS.S3.Enums.TRequestCharged;
  TRequestPayer = AWS.S3.Enums.TRequestPayer;
  TRequestProgress = AWS.S3.Model.RequestProgress.TRequestProgress;
  TRestoreRequestType = AWS.S3.Enums.TRestoreRequestType;
  TScanRange = AWS.S3.Model.ScanRange.TScanRange;
  TSelectObjectContentEventStream = AWS.S3.Model.SelectObjectContentEventStream.TSelectObjectContentEventStream;
  TSelectObjectContentRequest = AWS.S3.Model.SelectObjectContentRequest.TSelectObjectContentRequest;
  TSelectObjectContentResponse = AWS.S3.Model.SelectObjectContentResponse.TSelectObjectContentResponse;
  TServerSideEncryption = AWS.S3.Enums.TServerSideEncryption;
  TSSEKMS = AWS.S3.Model.SSEKMS.TSSEKMS;
  TSseKmsEncryptedObjectsStatus = AWS.S3.Enums.TSseKmsEncryptedObjectsStatus;
  TSSES3 = AWS.S3.Model.SSES3.TSSES3;
  TStats = AWS.S3.Model.Stats.TStats;
  TStatsEvent = AWS.S3.Model.StatsEvent.TStatsEvent;
  TStorageClass = AWS.S3.Enums.TStorageClass;
  TStorageClassAnalysis = AWS.S3.Model.StorageClassAnalysis.TStorageClassAnalysis;
  TStorageClassAnalysisDataExport = AWS.S3.Model.StorageClassAnalysisDataExport.TStorageClassAnalysisDataExport;
  TStorageClassAnalysisSchemaVersion = AWS.S3.Enums.TStorageClassAnalysisSchemaVersion;
  TTag = AWS.S3.Model.Tag.TTag;
  TTaggingDirective = AWS.S3.Enums.TTaggingDirective;
  TTier = AWS.S3.Enums.TTier;
  TTiering = AWS.S3.Model.Tiering.TTiering;
  TTransitionStorageClass = AWS.S3.Enums.TTransitionStorageClass;
  TType = AWS.S3.Enums.TType;
  
implementation

end.
