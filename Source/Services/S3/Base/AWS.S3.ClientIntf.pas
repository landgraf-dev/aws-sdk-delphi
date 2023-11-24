unit AWS.S3.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.S3.Model.CopyObjectResponse, 
  AWS.S3.Model.CopyObjectRequest, 
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
  AWS.S3.Model.DeletePublicAccessBlockResponse, 
  AWS.S3.Model.DeletePublicAccessBlockRequest, 
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
  AWS.S3.Model.ListObjectsResponse, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Model.ListObjectsV2Response, 
  AWS.S3.Model.ListObjectsV2Request, 
  AWS.S3.Model.ListVersionsResponse, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.S3.Model.SelectObjectContentResponse, 
  AWS.S3.Model.SelectObjectContentRequest;

type
  IAmazonS3 = interface(IAmazonService)
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

end.
