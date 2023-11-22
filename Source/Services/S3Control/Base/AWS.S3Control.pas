unit AWS.S3Control;

interface

uses
  AWS.S3Control.Client, 
  AWS.S3Control.ClientIntf, 
  AWS.S3Control.Config, 
  AWS.S3Control.Enums, 
  AWS.S3Control.Exception, 
  AWS.S3Control.Metadata, 
  AWS.S3Control.Model.AbortIncompleteMultipartUpload, 
  AWS.S3Control.Model.AccessPoint, 
  AWS.S3Control.Model.AccountLevel, 
  AWS.S3Control.Model.ActivityMetrics, 
  AWS.S3Control.Model.AwsLambdaTransformation, 
  AWS.S3Control.Model.BadRequestException, 
  AWS.S3Control.Model.BucketAlreadyExistsException, 
  AWS.S3Control.Model.BucketAlreadyOwnedByYouException, 
  AWS.S3Control.Model.BucketLevel, 
  AWS.S3Control.Model.CreateAccessPointForObjectLambdaRequest, 
  AWS.S3Control.Model.CreateAccessPointForObjectLambdaResponse, 
  AWS.S3Control.Model.CreateAccessPointRequest, 
  AWS.S3Control.Model.CreateAccessPointResponse, 
  AWS.S3Control.Model.CreateBucketConfiguration, 
  AWS.S3Control.Model.CreateBucketRequest, 
  AWS.S3Control.Model.CreateBucketResponse, 
  AWS.S3Control.Model.CreateJobRequest, 
  AWS.S3Control.Model.CreateJobResponse, 
  AWS.S3Control.Model.DeleteAccessPointForObjectLambdaRequest, 
  AWS.S3Control.Model.DeleteAccessPointForObjectLambdaResponse, 
  AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaRequest, 
  AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaResponse, 
  AWS.S3Control.Model.DeleteAccessPointPolicyRequest, 
  AWS.S3Control.Model.DeleteAccessPointPolicyResponse, 
  AWS.S3Control.Model.DeleteAccessPointRequest, 
  AWS.S3Control.Model.DeleteAccessPointResponse, 
  AWS.S3Control.Model.DeleteBucketLifecycleConfigurationRequest, 
  AWS.S3Control.Model.DeleteBucketLifecycleConfigurationResponse, 
  AWS.S3Control.Model.DeleteBucketPolicyRequest, 
  AWS.S3Control.Model.DeleteBucketPolicyResponse, 
  AWS.S3Control.Model.DeleteBucketRequest, 
  AWS.S3Control.Model.DeleteBucketResponse, 
  AWS.S3Control.Model.DeleteBucketTaggingRequest, 
  AWS.S3Control.Model.DeleteBucketTaggingResponse, 
  AWS.S3Control.Model.DeleteJobTaggingRequest, 
  AWS.S3Control.Model.DeleteJobTaggingResponse, 
  AWS.S3Control.Model.DeletePublicAccessBlockRequest, 
  AWS.S3Control.Model.DeletePublicAccessBlockResponse, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationRequest, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationResponse, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingRequest, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingResponse, 
  AWS.S3Control.Model.DescribeJobRequest, 
  AWS.S3Control.Model.DescribeJobResponse, 
  AWS.S3Control.Model.Exclude, 
  AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaRequest, 
  AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointForObjectLambdaRequest, 
  AWS.S3Control.Model.GetAccessPointForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaRequest, 
  AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyRequest, 
  AWS.S3Control.Model.GetAccessPointPolicyResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaRequest, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusRequest, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusResponse, 
  AWS.S3Control.Model.GetAccessPointRequest, 
  AWS.S3Control.Model.GetAccessPointResponse, 
  AWS.S3Control.Model.GetBucketLifecycleConfigurationRequest, 
  AWS.S3Control.Model.GetBucketLifecycleConfigurationResponse, 
  AWS.S3Control.Model.GetBucketPolicyRequest, 
  AWS.S3Control.Model.GetBucketPolicyResponse, 
  AWS.S3Control.Model.GetBucketRequest, 
  AWS.S3Control.Model.GetBucketResponse, 
  AWS.S3Control.Model.GetBucketTaggingRequest, 
  AWS.S3Control.Model.GetBucketTaggingResponse, 
  AWS.S3Control.Model.GetJobTaggingRequest, 
  AWS.S3Control.Model.GetJobTaggingResponse, 
  AWS.S3Control.Model.GetPublicAccessBlockRequest, 
  AWS.S3Control.Model.GetPublicAccessBlockResponse, 
  AWS.S3Control.Model.GetStorageLensConfigurationRequest, 
  AWS.S3Control.Model.GetStorageLensConfigurationResponse, 
  AWS.S3Control.Model.GetStorageLensConfigurationTaggingRequest, 
  AWS.S3Control.Model.GetStorageLensConfigurationTaggingResponse, 
  AWS.S3Control.Model.IdempotencyException, 
  AWS.S3Control.Model.Include, 
  AWS.S3Control.Model.InternalServiceException, 
  AWS.S3Control.Model.InvalidNextTokenException, 
  AWS.S3Control.Model.InvalidRequestException, 
  AWS.S3Control.Model.JobDescriptor, 
  AWS.S3Control.Model.JobFailure, 
  AWS.S3Control.Model.JobListDescriptor, 
  AWS.S3Control.Model.JobManifest, 
  AWS.S3Control.Model.JobManifestLocation, 
  AWS.S3Control.Model.JobManifestSpec, 
  AWS.S3Control.Model.JobOperation, 
  AWS.S3Control.Model.JobProgressSummary, 
  AWS.S3Control.Model.JobReport, 
  AWS.S3Control.Model.JobStatusException, 
  AWS.S3Control.Model.LambdaInvokeOperation, 
  AWS.S3Control.Model.LifecycleConfiguration, 
  AWS.S3Control.Model.LifecycleExpiration, 
  AWS.S3Control.Model.LifecycleRule, 
  AWS.S3Control.Model.LifecycleRuleAndOperator, 
  AWS.S3Control.Model.LifecycleRuleFilter, 
  AWS.S3Control.Model.ListAccessPointsForObjectLambdaRequest, 
  AWS.S3Control.Model.ListAccessPointsForObjectLambdaResponse, 
  AWS.S3Control.Model.ListAccessPointsRequest, 
  AWS.S3Control.Model.ListAccessPointsResponse, 
  AWS.S3Control.Model.ListJobsRequest, 
  AWS.S3Control.Model.ListJobsResponse, 
  AWS.S3Control.Model.ListRegionalBucketsRequest, 
  AWS.S3Control.Model.ListRegionalBucketsResponse, 
  AWS.S3Control.Model.ListStorageLensConfigurationEntry, 
  AWS.S3Control.Model.ListStorageLensConfigurationsRequest, 
  AWS.S3Control.Model.ListStorageLensConfigurationsResponse, 
  AWS.S3Control.Model.NoncurrentVersionExpiration, 
  AWS.S3Control.Model.NoncurrentVersionTransition, 
  AWS.S3Control.Model.NoSuchPublicAccessBlockConfigurationException, 
  AWS.S3Control.Model.NotFoundException, 
  AWS.S3Control.Model.ObjectLambdaAccessPoint, 
  AWS.S3Control.Model.ObjectLambdaConfiguration, 
  AWS.S3Control.Model.ObjectLambdaContentTransformation, 
  AWS.S3Control.Model.ObjectLambdaTransformationConfiguration, 
  AWS.S3Control.Model.PolicyStatus, 
  AWS.S3Control.Model.PrefixLevel, 
  AWS.S3Control.Model.PrefixLevelStorageMetrics, 
  AWS.S3Control.Model.PublicAccessBlockConfiguration, 
  AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaRequest, 
  AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaResponse, 
  AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaRequest, 
  AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaResponse, 
  AWS.S3Control.Model.PutAccessPointPolicyRequest, 
  AWS.S3Control.Model.PutAccessPointPolicyResponse, 
  AWS.S3Control.Model.PutBucketLifecycleConfigurationRequest, 
  AWS.S3Control.Model.PutBucketLifecycleConfigurationResponse, 
  AWS.S3Control.Model.PutBucketPolicyRequest, 
  AWS.S3Control.Model.PutBucketPolicyResponse, 
  AWS.S3Control.Model.PutBucketTaggingRequest, 
  AWS.S3Control.Model.PutBucketTaggingResponse, 
  AWS.S3Control.Model.PutJobTaggingRequest, 
  AWS.S3Control.Model.PutJobTaggingResponse, 
  AWS.S3Control.Model.PutPublicAccessBlockRequest, 
  AWS.S3Control.Model.PutPublicAccessBlockResponse, 
  AWS.S3Control.Model.PutStorageLensConfigurationRequest, 
  AWS.S3Control.Model.PutStorageLensConfigurationResponse, 
  AWS.S3Control.Model.PutStorageLensConfigurationTaggingRequest, 
  AWS.S3Control.Model.PutStorageLensConfigurationTaggingResponse, 
  AWS.S3Control.Model.RegionalBucket, 
  AWS.S3Control.Model.Request, 
  AWS.S3Control.Model.S3AccessControlList, 
  AWS.S3Control.Model.S3AccessControlPolicy, 
  AWS.S3Control.Model.S3BucketDestination, 
  AWS.S3Control.Model.S3CopyObjectOperation, 
  AWS.S3Control.Model.S3DeleteObjectTaggingOperation, 
  AWS.S3Control.Model.S3Grant, 
  AWS.S3Control.Model.S3Grantee, 
  AWS.S3Control.Model.S3InitiateRestoreObjectOperation, 
  AWS.S3Control.Model.S3ObjectLockLegalHold, 
  AWS.S3Control.Model.S3ObjectMetadata, 
  AWS.S3Control.Model.S3ObjectOwner, 
  AWS.S3Control.Model.S3Retention, 
  AWS.S3Control.Model.S3SetObjectAclOperation, 
  AWS.S3Control.Model.S3SetObjectLegalHoldOperation, 
  AWS.S3Control.Model.S3SetObjectRetentionOperation, 
  AWS.S3Control.Model.S3SetObjectTaggingOperation, 
  AWS.S3Control.Model.S3Tag, 
  AWS.S3Control.Model.SelectionCriteria, 
  AWS.S3Control.Model.SSEKMS, 
  AWS.S3Control.Model.SSES3, 
  AWS.S3Control.Model.StorageLensAwsOrg, 
  AWS.S3Control.Model.StorageLensConfiguration, 
  AWS.S3Control.Model.StorageLensDataExport, 
  AWS.S3Control.Model.StorageLensDataExportEncryption, 
  AWS.S3Control.Model.StorageLensTag, 
  AWS.S3Control.Model.Tagging, 
  AWS.S3Control.Model.TooManyRequestsException, 
  AWS.S3Control.Model.TooManyTagsException, 
  AWS.S3Control.Model.Transition, 
  AWS.S3Control.Model.UpdateJobPriorityRequest, 
  AWS.S3Control.Model.UpdateJobPriorityResponse, 
  AWS.S3Control.Model.UpdateJobStatusRequest, 
  AWS.S3Control.Model.UpdateJobStatusResponse, 
  AWS.S3Control.Model.VpcConfiguration;

type
  EAmazonS3ControlException = AWS.S3Control.Exception.EAmazonS3ControlException;
  EBadRequestException = AWS.S3Control.Model.BadRequestException.EBadRequestException;
  EBucketAlreadyExistsException = AWS.S3Control.Model.BucketAlreadyExistsException.EBucketAlreadyExistsException;
  EBucketAlreadyOwnedByYouException = AWS.S3Control.Model.BucketAlreadyOwnedByYouException.EBucketAlreadyOwnedByYouException;
  EIdempotencyException = AWS.S3Control.Model.IdempotencyException.EIdempotencyException;
  EInternalServiceException = AWS.S3Control.Model.InternalServiceException.EInternalServiceException;
  EInvalidNextTokenException = AWS.S3Control.Model.InvalidNextTokenException.EInvalidNextTokenException;
  EInvalidRequestException = AWS.S3Control.Model.InvalidRequestException.EInvalidRequestException;
  EJobStatusException = AWS.S3Control.Model.JobStatusException.EJobStatusException;
  ENoSuchPublicAccessBlockConfigurationException = AWS.S3Control.Model.NoSuchPublicAccessBlockConfigurationException.ENoSuchPublicAccessBlockConfigurationException;
  ENotFoundException = AWS.S3Control.Model.NotFoundException.ENotFoundException;
  ETooManyRequestsException = AWS.S3Control.Model.TooManyRequestsException.ETooManyRequestsException;
  ETooManyTagsException = AWS.S3Control.Model.TooManyTagsException.ETooManyTagsException;
  IAbortIncompleteMultipartUpload = AWS.S3Control.Model.AbortIncompleteMultipartUpload.IAbortIncompleteMultipartUpload;
  IAccessPoint = AWS.S3Control.Model.AccessPoint.IAccessPoint;
  IAccountLevel = AWS.S3Control.Model.AccountLevel.IAccountLevel;
  IActivityMetrics = AWS.S3Control.Model.ActivityMetrics.IActivityMetrics;
  IAmazonS3Control = AWS.S3Control.ClientIntf.IAmazonS3Control;
  IAwsLambdaTransformation = AWS.S3Control.Model.AwsLambdaTransformation.IAwsLambdaTransformation;
  IBucketLevel = AWS.S3Control.Model.BucketLevel.IBucketLevel;
  ICreateAccessPointForObjectLambdaRequest = AWS.S3Control.Model.CreateAccessPointForObjectLambdaRequest.ICreateAccessPointForObjectLambdaRequest;
  ICreateAccessPointForObjectLambdaResponse = AWS.S3Control.Model.CreateAccessPointForObjectLambdaResponse.ICreateAccessPointForObjectLambdaResponse;
  ICreateAccessPointRequest = AWS.S3Control.Model.CreateAccessPointRequest.ICreateAccessPointRequest;
  ICreateAccessPointResponse = AWS.S3Control.Model.CreateAccessPointResponse.ICreateAccessPointResponse;
  ICreateBucketConfiguration = AWS.S3Control.Model.CreateBucketConfiguration.ICreateBucketConfiguration;
  ICreateBucketRequest = AWS.S3Control.Model.CreateBucketRequest.ICreateBucketRequest;
  ICreateBucketResponse = AWS.S3Control.Model.CreateBucketResponse.ICreateBucketResponse;
  ICreateJobRequest = AWS.S3Control.Model.CreateJobRequest.ICreateJobRequest;
  ICreateJobResponse = AWS.S3Control.Model.CreateJobResponse.ICreateJobResponse;
  IDeleteAccessPointForObjectLambdaRequest = AWS.S3Control.Model.DeleteAccessPointForObjectLambdaRequest.IDeleteAccessPointForObjectLambdaRequest;
  IDeleteAccessPointForObjectLambdaResponse = AWS.S3Control.Model.DeleteAccessPointForObjectLambdaResponse.IDeleteAccessPointForObjectLambdaResponse;
  IDeleteAccessPointPolicyForObjectLambdaRequest = AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaRequest.IDeleteAccessPointPolicyForObjectLambdaRequest;
  IDeleteAccessPointPolicyForObjectLambdaResponse = AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaResponse.IDeleteAccessPointPolicyForObjectLambdaResponse;
  IDeleteAccessPointPolicyRequest = AWS.S3Control.Model.DeleteAccessPointPolicyRequest.IDeleteAccessPointPolicyRequest;
  IDeleteAccessPointPolicyResponse = AWS.S3Control.Model.DeleteAccessPointPolicyResponse.IDeleteAccessPointPolicyResponse;
  IDeleteAccessPointRequest = AWS.S3Control.Model.DeleteAccessPointRequest.IDeleteAccessPointRequest;
  IDeleteAccessPointResponse = AWS.S3Control.Model.DeleteAccessPointResponse.IDeleteAccessPointResponse;
  IDeleteBucketLifecycleConfigurationRequest = AWS.S3Control.Model.DeleteBucketLifecycleConfigurationRequest.IDeleteBucketLifecycleConfigurationRequest;
  IDeleteBucketLifecycleConfigurationResponse = AWS.S3Control.Model.DeleteBucketLifecycleConfigurationResponse.IDeleteBucketLifecycleConfigurationResponse;
  IDeleteBucketPolicyRequest = AWS.S3Control.Model.DeleteBucketPolicyRequest.IDeleteBucketPolicyRequest;
  IDeleteBucketPolicyResponse = AWS.S3Control.Model.DeleteBucketPolicyResponse.IDeleteBucketPolicyResponse;
  IDeleteBucketRequest = AWS.S3Control.Model.DeleteBucketRequest.IDeleteBucketRequest;
  IDeleteBucketResponse = AWS.S3Control.Model.DeleteBucketResponse.IDeleteBucketResponse;
  IDeleteBucketTaggingRequest = AWS.S3Control.Model.DeleteBucketTaggingRequest.IDeleteBucketTaggingRequest;
  IDeleteBucketTaggingResponse = AWS.S3Control.Model.DeleteBucketTaggingResponse.IDeleteBucketTaggingResponse;
  IDeleteJobTaggingRequest = AWS.S3Control.Model.DeleteJobTaggingRequest.IDeleteJobTaggingRequest;
  IDeleteJobTaggingResponse = AWS.S3Control.Model.DeleteJobTaggingResponse.IDeleteJobTaggingResponse;
  IDeletePublicAccessBlockRequest = AWS.S3Control.Model.DeletePublicAccessBlockRequest.IDeletePublicAccessBlockRequest;
  IDeletePublicAccessBlockResponse = AWS.S3Control.Model.DeletePublicAccessBlockResponse.IDeletePublicAccessBlockResponse;
  IDeleteStorageLensConfigurationRequest = AWS.S3Control.Model.DeleteStorageLensConfigurationRequest.IDeleteStorageLensConfigurationRequest;
  IDeleteStorageLensConfigurationResponse = AWS.S3Control.Model.DeleteStorageLensConfigurationResponse.IDeleteStorageLensConfigurationResponse;
  IDeleteStorageLensConfigurationTaggingRequest = AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingRequest.IDeleteStorageLensConfigurationTaggingRequest;
  IDeleteStorageLensConfigurationTaggingResponse = AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingResponse.IDeleteStorageLensConfigurationTaggingResponse;
  IDescribeJobRequest = AWS.S3Control.Model.DescribeJobRequest.IDescribeJobRequest;
  IDescribeJobResponse = AWS.S3Control.Model.DescribeJobResponse.IDescribeJobResponse;
  IExclude = AWS.S3Control.Model.Exclude.IExclude;
  IGetAccessPointConfigurationForObjectLambdaRequest = AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaRequest.IGetAccessPointConfigurationForObjectLambdaRequest;
  IGetAccessPointConfigurationForObjectLambdaResponse = AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaResponse.IGetAccessPointConfigurationForObjectLambdaResponse;
  IGetAccessPointForObjectLambdaRequest = AWS.S3Control.Model.GetAccessPointForObjectLambdaRequest.IGetAccessPointForObjectLambdaRequest;
  IGetAccessPointForObjectLambdaResponse = AWS.S3Control.Model.GetAccessPointForObjectLambdaResponse.IGetAccessPointForObjectLambdaResponse;
  IGetAccessPointPolicyForObjectLambdaRequest = AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaRequest.IGetAccessPointPolicyForObjectLambdaRequest;
  IGetAccessPointPolicyForObjectLambdaResponse = AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaResponse.IGetAccessPointPolicyForObjectLambdaResponse;
  IGetAccessPointPolicyRequest = AWS.S3Control.Model.GetAccessPointPolicyRequest.IGetAccessPointPolicyRequest;
  IGetAccessPointPolicyResponse = AWS.S3Control.Model.GetAccessPointPolicyResponse.IGetAccessPointPolicyResponse;
  IGetAccessPointPolicyStatusForObjectLambdaRequest = AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaRequest.IGetAccessPointPolicyStatusForObjectLambdaRequest;
  IGetAccessPointPolicyStatusForObjectLambdaResponse = AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaResponse.IGetAccessPointPolicyStatusForObjectLambdaResponse;
  IGetAccessPointPolicyStatusRequest = AWS.S3Control.Model.GetAccessPointPolicyStatusRequest.IGetAccessPointPolicyStatusRequest;
  IGetAccessPointPolicyStatusResponse = AWS.S3Control.Model.GetAccessPointPolicyStatusResponse.IGetAccessPointPolicyStatusResponse;
  IGetAccessPointRequest = AWS.S3Control.Model.GetAccessPointRequest.IGetAccessPointRequest;
  IGetAccessPointResponse = AWS.S3Control.Model.GetAccessPointResponse.IGetAccessPointResponse;
  IGetBucketLifecycleConfigurationRequest = AWS.S3Control.Model.GetBucketLifecycleConfigurationRequest.IGetBucketLifecycleConfigurationRequest;
  IGetBucketLifecycleConfigurationResponse = AWS.S3Control.Model.GetBucketLifecycleConfigurationResponse.IGetBucketLifecycleConfigurationResponse;
  IGetBucketPolicyRequest = AWS.S3Control.Model.GetBucketPolicyRequest.IGetBucketPolicyRequest;
  IGetBucketPolicyResponse = AWS.S3Control.Model.GetBucketPolicyResponse.IGetBucketPolicyResponse;
  IGetBucketRequest = AWS.S3Control.Model.GetBucketRequest.IGetBucketRequest;
  IGetBucketResponse = AWS.S3Control.Model.GetBucketResponse.IGetBucketResponse;
  IGetBucketTaggingRequest = AWS.S3Control.Model.GetBucketTaggingRequest.IGetBucketTaggingRequest;
  IGetBucketTaggingResponse = AWS.S3Control.Model.GetBucketTaggingResponse.IGetBucketTaggingResponse;
  IGetJobTaggingRequest = AWS.S3Control.Model.GetJobTaggingRequest.IGetJobTaggingRequest;
  IGetJobTaggingResponse = AWS.S3Control.Model.GetJobTaggingResponse.IGetJobTaggingResponse;
  IGetPublicAccessBlockRequest = AWS.S3Control.Model.GetPublicAccessBlockRequest.IGetPublicAccessBlockRequest;
  IGetPublicAccessBlockResponse = AWS.S3Control.Model.GetPublicAccessBlockResponse.IGetPublicAccessBlockResponse;
  IGetStorageLensConfigurationRequest = AWS.S3Control.Model.GetStorageLensConfigurationRequest.IGetStorageLensConfigurationRequest;
  IGetStorageLensConfigurationResponse = AWS.S3Control.Model.GetStorageLensConfigurationResponse.IGetStorageLensConfigurationResponse;
  IGetStorageLensConfigurationTaggingRequest = AWS.S3Control.Model.GetStorageLensConfigurationTaggingRequest.IGetStorageLensConfigurationTaggingRequest;
  IGetStorageLensConfigurationTaggingResponse = AWS.S3Control.Model.GetStorageLensConfigurationTaggingResponse.IGetStorageLensConfigurationTaggingResponse;
  IInclude = AWS.S3Control.Model.Include.IInclude;
  IJobDescriptor = AWS.S3Control.Model.JobDescriptor.IJobDescriptor;
  IJobFailure = AWS.S3Control.Model.JobFailure.IJobFailure;
  IJobListDescriptor = AWS.S3Control.Model.JobListDescriptor.IJobListDescriptor;
  IJobManifest = AWS.S3Control.Model.JobManifest.IJobManifest;
  IJobManifestLocation = AWS.S3Control.Model.JobManifestLocation.IJobManifestLocation;
  IJobManifestSpec = AWS.S3Control.Model.JobManifestSpec.IJobManifestSpec;
  IJobOperation = AWS.S3Control.Model.JobOperation.IJobOperation;
  IJobProgressSummary = AWS.S3Control.Model.JobProgressSummary.IJobProgressSummary;
  IJobReport = AWS.S3Control.Model.JobReport.IJobReport;
  ILambdaInvokeOperation = AWS.S3Control.Model.LambdaInvokeOperation.ILambdaInvokeOperation;
  ILifecycleConfiguration = AWS.S3Control.Model.LifecycleConfiguration.ILifecycleConfiguration;
  ILifecycleExpiration = AWS.S3Control.Model.LifecycleExpiration.ILifecycleExpiration;
  ILifecycleRule = AWS.S3Control.Model.LifecycleRule.ILifecycleRule;
  ILifecycleRuleAndOperator = AWS.S3Control.Model.LifecycleRuleAndOperator.ILifecycleRuleAndOperator;
  ILifecycleRuleFilter = AWS.S3Control.Model.LifecycleRuleFilter.ILifecycleRuleFilter;
  IListAccessPointsForObjectLambdaRequest = AWS.S3Control.Model.ListAccessPointsForObjectLambdaRequest.IListAccessPointsForObjectLambdaRequest;
  IListAccessPointsForObjectLambdaResponse = AWS.S3Control.Model.ListAccessPointsForObjectLambdaResponse.IListAccessPointsForObjectLambdaResponse;
  IListAccessPointsRequest = AWS.S3Control.Model.ListAccessPointsRequest.IListAccessPointsRequest;
  IListAccessPointsResponse = AWS.S3Control.Model.ListAccessPointsResponse.IListAccessPointsResponse;
  IListJobsRequest = AWS.S3Control.Model.ListJobsRequest.IListJobsRequest;
  IListJobsResponse = AWS.S3Control.Model.ListJobsResponse.IListJobsResponse;
  IListRegionalBucketsRequest = AWS.S3Control.Model.ListRegionalBucketsRequest.IListRegionalBucketsRequest;
  IListRegionalBucketsResponse = AWS.S3Control.Model.ListRegionalBucketsResponse.IListRegionalBucketsResponse;
  IListStorageLensConfigurationEntry = AWS.S3Control.Model.ListStorageLensConfigurationEntry.IListStorageLensConfigurationEntry;
  IListStorageLensConfigurationsRequest = AWS.S3Control.Model.ListStorageLensConfigurationsRequest.IListStorageLensConfigurationsRequest;
  IListStorageLensConfigurationsResponse = AWS.S3Control.Model.ListStorageLensConfigurationsResponse.IListStorageLensConfigurationsResponse;
  INoncurrentVersionExpiration = AWS.S3Control.Model.NoncurrentVersionExpiration.INoncurrentVersionExpiration;
  INoncurrentVersionTransition = AWS.S3Control.Model.NoncurrentVersionTransition.INoncurrentVersionTransition;
  IObjectLambdaAccessPoint = AWS.S3Control.Model.ObjectLambdaAccessPoint.IObjectLambdaAccessPoint;
  IObjectLambdaConfiguration = AWS.S3Control.Model.ObjectLambdaConfiguration.IObjectLambdaConfiguration;
  IObjectLambdaContentTransformation = AWS.S3Control.Model.ObjectLambdaContentTransformation.IObjectLambdaContentTransformation;
  IObjectLambdaTransformationConfiguration = AWS.S3Control.Model.ObjectLambdaTransformationConfiguration.IObjectLambdaTransformationConfiguration;
  IPolicyStatus = AWS.S3Control.Model.PolicyStatus.IPolicyStatus;
  IPrefixLevel = AWS.S3Control.Model.PrefixLevel.IPrefixLevel;
  IPrefixLevelStorageMetrics = AWS.S3Control.Model.PrefixLevelStorageMetrics.IPrefixLevelStorageMetrics;
  IPublicAccessBlockConfiguration = AWS.S3Control.Model.PublicAccessBlockConfiguration.IPublicAccessBlockConfiguration;
  IPutAccessPointConfigurationForObjectLambdaRequest = AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaRequest.IPutAccessPointConfigurationForObjectLambdaRequest;
  IPutAccessPointConfigurationForObjectLambdaResponse = AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaResponse.IPutAccessPointConfigurationForObjectLambdaResponse;
  IPutAccessPointPolicyForObjectLambdaRequest = AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaRequest.IPutAccessPointPolicyForObjectLambdaRequest;
  IPutAccessPointPolicyForObjectLambdaResponse = AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaResponse.IPutAccessPointPolicyForObjectLambdaResponse;
  IPutAccessPointPolicyRequest = AWS.S3Control.Model.PutAccessPointPolicyRequest.IPutAccessPointPolicyRequest;
  IPutAccessPointPolicyResponse = AWS.S3Control.Model.PutAccessPointPolicyResponse.IPutAccessPointPolicyResponse;
  IPutBucketLifecycleConfigurationRequest = AWS.S3Control.Model.PutBucketLifecycleConfigurationRequest.IPutBucketLifecycleConfigurationRequest;
  IPutBucketLifecycleConfigurationResponse = AWS.S3Control.Model.PutBucketLifecycleConfigurationResponse.IPutBucketLifecycleConfigurationResponse;
  IPutBucketPolicyRequest = AWS.S3Control.Model.PutBucketPolicyRequest.IPutBucketPolicyRequest;
  IPutBucketPolicyResponse = AWS.S3Control.Model.PutBucketPolicyResponse.IPutBucketPolicyResponse;
  IPutBucketTaggingRequest = AWS.S3Control.Model.PutBucketTaggingRequest.IPutBucketTaggingRequest;
  IPutBucketTaggingResponse = AWS.S3Control.Model.PutBucketTaggingResponse.IPutBucketTaggingResponse;
  IPutJobTaggingRequest = AWS.S3Control.Model.PutJobTaggingRequest.IPutJobTaggingRequest;
  IPutJobTaggingResponse = AWS.S3Control.Model.PutJobTaggingResponse.IPutJobTaggingResponse;
  IPutPublicAccessBlockRequest = AWS.S3Control.Model.PutPublicAccessBlockRequest.IPutPublicAccessBlockRequest;
  IPutPublicAccessBlockResponse = AWS.S3Control.Model.PutPublicAccessBlockResponse.IPutPublicAccessBlockResponse;
  IPutStorageLensConfigurationRequest = AWS.S3Control.Model.PutStorageLensConfigurationRequest.IPutStorageLensConfigurationRequest;
  IPutStorageLensConfigurationResponse = AWS.S3Control.Model.PutStorageLensConfigurationResponse.IPutStorageLensConfigurationResponse;
  IPutStorageLensConfigurationTaggingRequest = AWS.S3Control.Model.PutStorageLensConfigurationTaggingRequest.IPutStorageLensConfigurationTaggingRequest;
  IPutStorageLensConfigurationTaggingResponse = AWS.S3Control.Model.PutStorageLensConfigurationTaggingResponse.IPutStorageLensConfigurationTaggingResponse;
  IRegionalBucket = AWS.S3Control.Model.RegionalBucket.IRegionalBucket;
  IS3AccessControlList = AWS.S3Control.Model.S3AccessControlList.IS3AccessControlList;
  IS3AccessControlPolicy = AWS.S3Control.Model.S3AccessControlPolicy.IS3AccessControlPolicy;
  IS3BucketDestination = AWS.S3Control.Model.S3BucketDestination.IS3BucketDestination;
  IS3CopyObjectOperation = AWS.S3Control.Model.S3CopyObjectOperation.IS3CopyObjectOperation;
  IS3DeleteObjectTaggingOperation = AWS.S3Control.Model.S3DeleteObjectTaggingOperation.IS3DeleteObjectTaggingOperation;
  IS3Grant = AWS.S3Control.Model.S3Grant.IS3Grant;
  IS3Grantee = AWS.S3Control.Model.S3Grantee.IS3Grantee;
  IS3InitiateRestoreObjectOperation = AWS.S3Control.Model.S3InitiateRestoreObjectOperation.IS3InitiateRestoreObjectOperation;
  IS3ObjectLockLegalHold = AWS.S3Control.Model.S3ObjectLockLegalHold.IS3ObjectLockLegalHold;
  IS3ObjectMetadata = AWS.S3Control.Model.S3ObjectMetadata.IS3ObjectMetadata;
  IS3ObjectOwner = AWS.S3Control.Model.S3ObjectOwner.IS3ObjectOwner;
  IS3Retention = AWS.S3Control.Model.S3Retention.IS3Retention;
  IS3SetObjectAclOperation = AWS.S3Control.Model.S3SetObjectAclOperation.IS3SetObjectAclOperation;
  IS3SetObjectLegalHoldOperation = AWS.S3Control.Model.S3SetObjectLegalHoldOperation.IS3SetObjectLegalHoldOperation;
  IS3SetObjectRetentionOperation = AWS.S3Control.Model.S3SetObjectRetentionOperation.IS3SetObjectRetentionOperation;
  IS3SetObjectTaggingOperation = AWS.S3Control.Model.S3SetObjectTaggingOperation.IS3SetObjectTaggingOperation;
  IS3Tag = AWS.S3Control.Model.S3Tag.IS3Tag;
  ISelectionCriteria = AWS.S3Control.Model.SelectionCriteria.ISelectionCriteria;
  ISSEKMS = AWS.S3Control.Model.SSEKMS.ISSEKMS;
  ISSES3 = AWS.S3Control.Model.SSES3.ISSES3;
  IStorageLensAwsOrg = AWS.S3Control.Model.StorageLensAwsOrg.IStorageLensAwsOrg;
  IStorageLensConfiguration = AWS.S3Control.Model.StorageLensConfiguration.IStorageLensConfiguration;
  IStorageLensDataExport = AWS.S3Control.Model.StorageLensDataExport.IStorageLensDataExport;
  IStorageLensDataExportEncryption = AWS.S3Control.Model.StorageLensDataExportEncryption.IStorageLensDataExportEncryption;
  IStorageLensTag = AWS.S3Control.Model.StorageLensTag.IStorageLensTag;
  ITagging = AWS.S3Control.Model.Tagging.ITagging;
  ITransition = AWS.S3Control.Model.Transition.ITransition;
  IUpdateJobPriorityRequest = AWS.S3Control.Model.UpdateJobPriorityRequest.IUpdateJobPriorityRequest;
  IUpdateJobPriorityResponse = AWS.S3Control.Model.UpdateJobPriorityResponse.IUpdateJobPriorityResponse;
  IUpdateJobStatusRequest = AWS.S3Control.Model.UpdateJobStatusRequest.IUpdateJobStatusRequest;
  IUpdateJobStatusResponse = AWS.S3Control.Model.UpdateJobStatusResponse.IUpdateJobStatusResponse;
  IVpcConfiguration = AWS.S3Control.Model.VpcConfiguration.IVpcConfiguration;
  TAbortIncompleteMultipartUpload = AWS.S3Control.Model.AbortIncompleteMultipartUpload.TAbortIncompleteMultipartUpload;
  TAccessPoint = AWS.S3Control.Model.AccessPoint.TAccessPoint;
  TAccountLevel = AWS.S3Control.Model.AccountLevel.TAccountLevel;
  TActivityMetrics = AWS.S3Control.Model.ActivityMetrics.TActivityMetrics;
  TAmazonS3ControlClient = AWS.S3Control.Client.TAmazonS3ControlClient;
  TAmazonS3ControlConfig = AWS.S3Control.Config.TAmazonS3ControlConfig;
  TAmazonS3ControlMetadata = AWS.S3Control.Metadata.TAmazonS3ControlMetadata;
  TAmazonS3ControlRequest = AWS.S3Control.Model.Request.TAmazonS3ControlRequest;
  TAwsLambdaTransformation = AWS.S3Control.Model.AwsLambdaTransformation.TAwsLambdaTransformation;
  TBucketCannedACL = AWS.S3Control.Enums.TBucketCannedACL;
  TBucketLevel = AWS.S3Control.Model.BucketLevel.TBucketLevel;
  TBucketLocationConstraint = AWS.S3Control.Enums.TBucketLocationConstraint;
  TCreateAccessPointForObjectLambdaRequest = AWS.S3Control.Model.CreateAccessPointForObjectLambdaRequest.TCreateAccessPointForObjectLambdaRequest;
  TCreateAccessPointForObjectLambdaResponse = AWS.S3Control.Model.CreateAccessPointForObjectLambdaResponse.TCreateAccessPointForObjectLambdaResponse;
  TCreateAccessPointRequest = AWS.S3Control.Model.CreateAccessPointRequest.TCreateAccessPointRequest;
  TCreateAccessPointResponse = AWS.S3Control.Model.CreateAccessPointResponse.TCreateAccessPointResponse;
  TCreateBucketConfiguration = AWS.S3Control.Model.CreateBucketConfiguration.TCreateBucketConfiguration;
  TCreateBucketRequest = AWS.S3Control.Model.CreateBucketRequest.TCreateBucketRequest;
  TCreateBucketResponse = AWS.S3Control.Model.CreateBucketResponse.TCreateBucketResponse;
  TCreateJobRequest = AWS.S3Control.Model.CreateJobRequest.TCreateJobRequest;
  TCreateJobResponse = AWS.S3Control.Model.CreateJobResponse.TCreateJobResponse;
  TDeleteAccessPointForObjectLambdaRequest = AWS.S3Control.Model.DeleteAccessPointForObjectLambdaRequest.TDeleteAccessPointForObjectLambdaRequest;
  TDeleteAccessPointForObjectLambdaResponse = AWS.S3Control.Model.DeleteAccessPointForObjectLambdaResponse.TDeleteAccessPointForObjectLambdaResponse;
  TDeleteAccessPointPolicyForObjectLambdaRequest = AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaRequest.TDeleteAccessPointPolicyForObjectLambdaRequest;
  TDeleteAccessPointPolicyForObjectLambdaResponse = AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaResponse.TDeleteAccessPointPolicyForObjectLambdaResponse;
  TDeleteAccessPointPolicyRequest = AWS.S3Control.Model.DeleteAccessPointPolicyRequest.TDeleteAccessPointPolicyRequest;
  TDeleteAccessPointPolicyResponse = AWS.S3Control.Model.DeleteAccessPointPolicyResponse.TDeleteAccessPointPolicyResponse;
  TDeleteAccessPointRequest = AWS.S3Control.Model.DeleteAccessPointRequest.TDeleteAccessPointRequest;
  TDeleteAccessPointResponse = AWS.S3Control.Model.DeleteAccessPointResponse.TDeleteAccessPointResponse;
  TDeleteBucketLifecycleConfigurationRequest = AWS.S3Control.Model.DeleteBucketLifecycleConfigurationRequest.TDeleteBucketLifecycleConfigurationRequest;
  TDeleteBucketLifecycleConfigurationResponse = AWS.S3Control.Model.DeleteBucketLifecycleConfigurationResponse.TDeleteBucketLifecycleConfigurationResponse;
  TDeleteBucketPolicyRequest = AWS.S3Control.Model.DeleteBucketPolicyRequest.TDeleteBucketPolicyRequest;
  TDeleteBucketPolicyResponse = AWS.S3Control.Model.DeleteBucketPolicyResponse.TDeleteBucketPolicyResponse;
  TDeleteBucketRequest = AWS.S3Control.Model.DeleteBucketRequest.TDeleteBucketRequest;
  TDeleteBucketResponse = AWS.S3Control.Model.DeleteBucketResponse.TDeleteBucketResponse;
  TDeleteBucketTaggingRequest = AWS.S3Control.Model.DeleteBucketTaggingRequest.TDeleteBucketTaggingRequest;
  TDeleteBucketTaggingResponse = AWS.S3Control.Model.DeleteBucketTaggingResponse.TDeleteBucketTaggingResponse;
  TDeleteJobTaggingRequest = AWS.S3Control.Model.DeleteJobTaggingRequest.TDeleteJobTaggingRequest;
  TDeleteJobTaggingResponse = AWS.S3Control.Model.DeleteJobTaggingResponse.TDeleteJobTaggingResponse;
  TDeletePublicAccessBlockRequest = AWS.S3Control.Model.DeletePublicAccessBlockRequest.TDeletePublicAccessBlockRequest;
  TDeletePublicAccessBlockResponse = AWS.S3Control.Model.DeletePublicAccessBlockResponse.TDeletePublicAccessBlockResponse;
  TDeleteStorageLensConfigurationRequest = AWS.S3Control.Model.DeleteStorageLensConfigurationRequest.TDeleteStorageLensConfigurationRequest;
  TDeleteStorageLensConfigurationResponse = AWS.S3Control.Model.DeleteStorageLensConfigurationResponse.TDeleteStorageLensConfigurationResponse;
  TDeleteStorageLensConfigurationTaggingRequest = AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingRequest.TDeleteStorageLensConfigurationTaggingRequest;
  TDeleteStorageLensConfigurationTaggingResponse = AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingResponse.TDeleteStorageLensConfigurationTaggingResponse;
  TDescribeJobRequest = AWS.S3Control.Model.DescribeJobRequest.TDescribeJobRequest;
  TDescribeJobResponse = AWS.S3Control.Model.DescribeJobResponse.TDescribeJobResponse;
  TExclude = AWS.S3Control.Model.Exclude.TExclude;
  TExpirationStatus = AWS.S3Control.Enums.TExpirationStatus;
  TFormat = AWS.S3Control.Enums.TFormat;
  TGetAccessPointConfigurationForObjectLambdaRequest = AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaRequest.TGetAccessPointConfigurationForObjectLambdaRequest;
  TGetAccessPointConfigurationForObjectLambdaResponse = AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaResponse.TGetAccessPointConfigurationForObjectLambdaResponse;
  TGetAccessPointForObjectLambdaRequest = AWS.S3Control.Model.GetAccessPointForObjectLambdaRequest.TGetAccessPointForObjectLambdaRequest;
  TGetAccessPointForObjectLambdaResponse = AWS.S3Control.Model.GetAccessPointForObjectLambdaResponse.TGetAccessPointForObjectLambdaResponse;
  TGetAccessPointPolicyForObjectLambdaRequest = AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaRequest.TGetAccessPointPolicyForObjectLambdaRequest;
  TGetAccessPointPolicyForObjectLambdaResponse = AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaResponse.TGetAccessPointPolicyForObjectLambdaResponse;
  TGetAccessPointPolicyRequest = AWS.S3Control.Model.GetAccessPointPolicyRequest.TGetAccessPointPolicyRequest;
  TGetAccessPointPolicyResponse = AWS.S3Control.Model.GetAccessPointPolicyResponse.TGetAccessPointPolicyResponse;
  TGetAccessPointPolicyStatusForObjectLambdaRequest = AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaRequest.TGetAccessPointPolicyStatusForObjectLambdaRequest;
  TGetAccessPointPolicyStatusForObjectLambdaResponse = AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaResponse.TGetAccessPointPolicyStatusForObjectLambdaResponse;
  TGetAccessPointPolicyStatusRequest = AWS.S3Control.Model.GetAccessPointPolicyStatusRequest.TGetAccessPointPolicyStatusRequest;
  TGetAccessPointPolicyStatusResponse = AWS.S3Control.Model.GetAccessPointPolicyStatusResponse.TGetAccessPointPolicyStatusResponse;
  TGetAccessPointRequest = AWS.S3Control.Model.GetAccessPointRequest.TGetAccessPointRequest;
  TGetAccessPointResponse = AWS.S3Control.Model.GetAccessPointResponse.TGetAccessPointResponse;
  TGetBucketLifecycleConfigurationRequest = AWS.S3Control.Model.GetBucketLifecycleConfigurationRequest.TGetBucketLifecycleConfigurationRequest;
  TGetBucketLifecycleConfigurationResponse = AWS.S3Control.Model.GetBucketLifecycleConfigurationResponse.TGetBucketLifecycleConfigurationResponse;
  TGetBucketPolicyRequest = AWS.S3Control.Model.GetBucketPolicyRequest.TGetBucketPolicyRequest;
  TGetBucketPolicyResponse = AWS.S3Control.Model.GetBucketPolicyResponse.TGetBucketPolicyResponse;
  TGetBucketRequest = AWS.S3Control.Model.GetBucketRequest.TGetBucketRequest;
  TGetBucketResponse = AWS.S3Control.Model.GetBucketResponse.TGetBucketResponse;
  TGetBucketTaggingRequest = AWS.S3Control.Model.GetBucketTaggingRequest.TGetBucketTaggingRequest;
  TGetBucketTaggingResponse = AWS.S3Control.Model.GetBucketTaggingResponse.TGetBucketTaggingResponse;
  TGetJobTaggingRequest = AWS.S3Control.Model.GetJobTaggingRequest.TGetJobTaggingRequest;
  TGetJobTaggingResponse = AWS.S3Control.Model.GetJobTaggingResponse.TGetJobTaggingResponse;
  TGetPublicAccessBlockRequest = AWS.S3Control.Model.GetPublicAccessBlockRequest.TGetPublicAccessBlockRequest;
  TGetPublicAccessBlockResponse = AWS.S3Control.Model.GetPublicAccessBlockResponse.TGetPublicAccessBlockResponse;
  TGetStorageLensConfigurationRequest = AWS.S3Control.Model.GetStorageLensConfigurationRequest.TGetStorageLensConfigurationRequest;
  TGetStorageLensConfigurationResponse = AWS.S3Control.Model.GetStorageLensConfigurationResponse.TGetStorageLensConfigurationResponse;
  TGetStorageLensConfigurationTaggingRequest = AWS.S3Control.Model.GetStorageLensConfigurationTaggingRequest.TGetStorageLensConfigurationTaggingRequest;
  TGetStorageLensConfigurationTaggingResponse = AWS.S3Control.Model.GetStorageLensConfigurationTaggingResponse.TGetStorageLensConfigurationTaggingResponse;
  TInclude = AWS.S3Control.Model.Include.TInclude;
  TJobDescriptor = AWS.S3Control.Model.JobDescriptor.TJobDescriptor;
  TJobFailure = AWS.S3Control.Model.JobFailure.TJobFailure;
  TJobListDescriptor = AWS.S3Control.Model.JobListDescriptor.TJobListDescriptor;
  TJobManifest = AWS.S3Control.Model.JobManifest.TJobManifest;
  TJobManifestFieldName = AWS.S3Control.Enums.TJobManifestFieldName;
  TJobManifestFormat = AWS.S3Control.Enums.TJobManifestFormat;
  TJobManifestLocation = AWS.S3Control.Model.JobManifestLocation.TJobManifestLocation;
  TJobManifestSpec = AWS.S3Control.Model.JobManifestSpec.TJobManifestSpec;
  TJobOperation = AWS.S3Control.Model.JobOperation.TJobOperation;
  TJobProgressSummary = AWS.S3Control.Model.JobProgressSummary.TJobProgressSummary;
  TJobReport = AWS.S3Control.Model.JobReport.TJobReport;
  TJobReportFormat = AWS.S3Control.Enums.TJobReportFormat;
  TJobReportScope = AWS.S3Control.Enums.TJobReportScope;
  TJobStatus = AWS.S3Control.Enums.TJobStatus;
  TLambdaInvokeOperation = AWS.S3Control.Model.LambdaInvokeOperation.TLambdaInvokeOperation;
  TLifecycleConfiguration = AWS.S3Control.Model.LifecycleConfiguration.TLifecycleConfiguration;
  TLifecycleExpiration = AWS.S3Control.Model.LifecycleExpiration.TLifecycleExpiration;
  TLifecycleRule = AWS.S3Control.Model.LifecycleRule.TLifecycleRule;
  TLifecycleRuleAndOperator = AWS.S3Control.Model.LifecycleRuleAndOperator.TLifecycleRuleAndOperator;
  TLifecycleRuleFilter = AWS.S3Control.Model.LifecycleRuleFilter.TLifecycleRuleFilter;
  TListAccessPointsForObjectLambdaRequest = AWS.S3Control.Model.ListAccessPointsForObjectLambdaRequest.TListAccessPointsForObjectLambdaRequest;
  TListAccessPointsForObjectLambdaResponse = AWS.S3Control.Model.ListAccessPointsForObjectLambdaResponse.TListAccessPointsForObjectLambdaResponse;
  TListAccessPointsRequest = AWS.S3Control.Model.ListAccessPointsRequest.TListAccessPointsRequest;
  TListAccessPointsResponse = AWS.S3Control.Model.ListAccessPointsResponse.TListAccessPointsResponse;
  TListJobsRequest = AWS.S3Control.Model.ListJobsRequest.TListJobsRequest;
  TListJobsResponse = AWS.S3Control.Model.ListJobsResponse.TListJobsResponse;
  TListRegionalBucketsRequest = AWS.S3Control.Model.ListRegionalBucketsRequest.TListRegionalBucketsRequest;
  TListRegionalBucketsResponse = AWS.S3Control.Model.ListRegionalBucketsResponse.TListRegionalBucketsResponse;
  TListStorageLensConfigurationEntry = AWS.S3Control.Model.ListStorageLensConfigurationEntry.TListStorageLensConfigurationEntry;
  TListStorageLensConfigurationsRequest = AWS.S3Control.Model.ListStorageLensConfigurationsRequest.TListStorageLensConfigurationsRequest;
  TListStorageLensConfigurationsResponse = AWS.S3Control.Model.ListStorageLensConfigurationsResponse.TListStorageLensConfigurationsResponse;
  TNetworkOrigin = AWS.S3Control.Enums.TNetworkOrigin;
  TNoncurrentVersionExpiration = AWS.S3Control.Model.NoncurrentVersionExpiration.TNoncurrentVersionExpiration;
  TNoncurrentVersionTransition = AWS.S3Control.Model.NoncurrentVersionTransition.TNoncurrentVersionTransition;
  TObjectLambdaAccessPoint = AWS.S3Control.Model.ObjectLambdaAccessPoint.TObjectLambdaAccessPoint;
  TObjectLambdaAllowedFeature = AWS.S3Control.Enums.TObjectLambdaAllowedFeature;
  TObjectLambdaConfiguration = AWS.S3Control.Model.ObjectLambdaConfiguration.TObjectLambdaConfiguration;
  TObjectLambdaContentTransformation = AWS.S3Control.Model.ObjectLambdaContentTransformation.TObjectLambdaContentTransformation;
  TObjectLambdaTransformationConfiguration = AWS.S3Control.Model.ObjectLambdaTransformationConfiguration.TObjectLambdaTransformationConfiguration;
  TObjectLambdaTransformationConfigurationAction = AWS.S3Control.Enums.TObjectLambdaTransformationConfigurationAction;
  TOperationName = AWS.S3Control.Enums.TOperationName;
  TOutputSchemaVersion = AWS.S3Control.Enums.TOutputSchemaVersion;
  TPolicyStatus = AWS.S3Control.Model.PolicyStatus.TPolicyStatus;
  TPrefixLevel = AWS.S3Control.Model.PrefixLevel.TPrefixLevel;
  TPrefixLevelStorageMetrics = AWS.S3Control.Model.PrefixLevelStorageMetrics.TPrefixLevelStorageMetrics;
  TPublicAccessBlockConfiguration = AWS.S3Control.Model.PublicAccessBlockConfiguration.TPublicAccessBlockConfiguration;
  TPutAccessPointConfigurationForObjectLambdaRequest = AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaRequest.TPutAccessPointConfigurationForObjectLambdaRequest;
  TPutAccessPointConfigurationForObjectLambdaResponse = AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaResponse.TPutAccessPointConfigurationForObjectLambdaResponse;
  TPutAccessPointPolicyForObjectLambdaRequest = AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaRequest.TPutAccessPointPolicyForObjectLambdaRequest;
  TPutAccessPointPolicyForObjectLambdaResponse = AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaResponse.TPutAccessPointPolicyForObjectLambdaResponse;
  TPutAccessPointPolicyRequest = AWS.S3Control.Model.PutAccessPointPolicyRequest.TPutAccessPointPolicyRequest;
  TPutAccessPointPolicyResponse = AWS.S3Control.Model.PutAccessPointPolicyResponse.TPutAccessPointPolicyResponse;
  TPutBucketLifecycleConfigurationRequest = AWS.S3Control.Model.PutBucketLifecycleConfigurationRequest.TPutBucketLifecycleConfigurationRequest;
  TPutBucketLifecycleConfigurationResponse = AWS.S3Control.Model.PutBucketLifecycleConfigurationResponse.TPutBucketLifecycleConfigurationResponse;
  TPutBucketPolicyRequest = AWS.S3Control.Model.PutBucketPolicyRequest.TPutBucketPolicyRequest;
  TPutBucketPolicyResponse = AWS.S3Control.Model.PutBucketPolicyResponse.TPutBucketPolicyResponse;
  TPutBucketTaggingRequest = AWS.S3Control.Model.PutBucketTaggingRequest.TPutBucketTaggingRequest;
  TPutBucketTaggingResponse = AWS.S3Control.Model.PutBucketTaggingResponse.TPutBucketTaggingResponse;
  TPutJobTaggingRequest = AWS.S3Control.Model.PutJobTaggingRequest.TPutJobTaggingRequest;
  TPutJobTaggingResponse = AWS.S3Control.Model.PutJobTaggingResponse.TPutJobTaggingResponse;
  TPutPublicAccessBlockRequest = AWS.S3Control.Model.PutPublicAccessBlockRequest.TPutPublicAccessBlockRequest;
  TPutPublicAccessBlockResponse = AWS.S3Control.Model.PutPublicAccessBlockResponse.TPutPublicAccessBlockResponse;
  TPutStorageLensConfigurationRequest = AWS.S3Control.Model.PutStorageLensConfigurationRequest.TPutStorageLensConfigurationRequest;
  TPutStorageLensConfigurationResponse = AWS.S3Control.Model.PutStorageLensConfigurationResponse.TPutStorageLensConfigurationResponse;
  TPutStorageLensConfigurationTaggingRequest = AWS.S3Control.Model.PutStorageLensConfigurationTaggingRequest.TPutStorageLensConfigurationTaggingRequest;
  TPutStorageLensConfigurationTaggingResponse = AWS.S3Control.Model.PutStorageLensConfigurationTaggingResponse.TPutStorageLensConfigurationTaggingResponse;
  TRegionalBucket = AWS.S3Control.Model.RegionalBucket.TRegionalBucket;
  TRequestedJobStatus = AWS.S3Control.Enums.TRequestedJobStatus;
  TS3AccessControlList = AWS.S3Control.Model.S3AccessControlList.TS3AccessControlList;
  TS3AccessControlPolicy = AWS.S3Control.Model.S3AccessControlPolicy.TS3AccessControlPolicy;
  TS3BucketDestination = AWS.S3Control.Model.S3BucketDestination.TS3BucketDestination;
  TS3CannedAccessControlList = AWS.S3Control.Enums.TS3CannedAccessControlList;
  TS3CopyObjectOperation = AWS.S3Control.Model.S3CopyObjectOperation.TS3CopyObjectOperation;
  TS3DeleteObjectTaggingOperation = AWS.S3Control.Model.S3DeleteObjectTaggingOperation.TS3DeleteObjectTaggingOperation;
  TS3GlacierJobTier = AWS.S3Control.Enums.TS3GlacierJobTier;
  TS3Grant = AWS.S3Control.Model.S3Grant.TS3Grant;
  TS3Grantee = AWS.S3Control.Model.S3Grantee.TS3Grantee;
  TS3GranteeTypeIdentifier = AWS.S3Control.Enums.TS3GranteeTypeIdentifier;
  TS3InitiateRestoreObjectOperation = AWS.S3Control.Model.S3InitiateRestoreObjectOperation.TS3InitiateRestoreObjectOperation;
  TS3MetadataDirective = AWS.S3Control.Enums.TS3MetadataDirective;
  TS3ObjectLockLegalHold = AWS.S3Control.Model.S3ObjectLockLegalHold.TS3ObjectLockLegalHold;
  TS3ObjectLockLegalHoldStatus = AWS.S3Control.Enums.TS3ObjectLockLegalHoldStatus;
  TS3ObjectLockMode = AWS.S3Control.Enums.TS3ObjectLockMode;
  TS3ObjectLockRetentionMode = AWS.S3Control.Enums.TS3ObjectLockRetentionMode;
  TS3ObjectMetadata = AWS.S3Control.Model.S3ObjectMetadata.TS3ObjectMetadata;
  TS3ObjectOwner = AWS.S3Control.Model.S3ObjectOwner.TS3ObjectOwner;
  TS3Permission = AWS.S3Control.Enums.TS3Permission;
  TS3Retention = AWS.S3Control.Model.S3Retention.TS3Retention;
  TS3SetObjectAclOperation = AWS.S3Control.Model.S3SetObjectAclOperation.TS3SetObjectAclOperation;
  TS3SetObjectLegalHoldOperation = AWS.S3Control.Model.S3SetObjectLegalHoldOperation.TS3SetObjectLegalHoldOperation;
  TS3SetObjectRetentionOperation = AWS.S3Control.Model.S3SetObjectRetentionOperation.TS3SetObjectRetentionOperation;
  TS3SetObjectTaggingOperation = AWS.S3Control.Model.S3SetObjectTaggingOperation.TS3SetObjectTaggingOperation;
  TS3SSEAlgorithm = AWS.S3Control.Enums.TS3SSEAlgorithm;
  TS3StorageClass = AWS.S3Control.Enums.TS3StorageClass;
  TS3Tag = AWS.S3Control.Model.S3Tag.TS3Tag;
  TSelectionCriteria = AWS.S3Control.Model.SelectionCriteria.TSelectionCriteria;
  TSSEKMS = AWS.S3Control.Model.SSEKMS.TSSEKMS;
  TSSES3 = AWS.S3Control.Model.SSES3.TSSES3;
  TStorageLensAwsOrg = AWS.S3Control.Model.StorageLensAwsOrg.TStorageLensAwsOrg;
  TStorageLensConfiguration = AWS.S3Control.Model.StorageLensConfiguration.TStorageLensConfiguration;
  TStorageLensDataExport = AWS.S3Control.Model.StorageLensDataExport.TStorageLensDataExport;
  TStorageLensDataExportEncryption = AWS.S3Control.Model.StorageLensDataExportEncryption.TStorageLensDataExportEncryption;
  TStorageLensTag = AWS.S3Control.Model.StorageLensTag.TStorageLensTag;
  TTagging = AWS.S3Control.Model.Tagging.TTagging;
  TTransition = AWS.S3Control.Model.Transition.TTransition;
  TTransitionStorageClass = AWS.S3Control.Enums.TTransitionStorageClass;
  TUpdateJobPriorityRequest = AWS.S3Control.Model.UpdateJobPriorityRequest.TUpdateJobPriorityRequest;
  TUpdateJobPriorityResponse = AWS.S3Control.Model.UpdateJobPriorityResponse.TUpdateJobPriorityResponse;
  TUpdateJobStatusRequest = AWS.S3Control.Model.UpdateJobStatusRequest.TUpdateJobStatusRequest;
  TUpdateJobStatusResponse = AWS.S3Control.Model.UpdateJobStatusResponse.TUpdateJobStatusResponse;
  TVpcConfiguration = AWS.S3Control.Model.VpcConfiguration.TVpcConfiguration;
  
implementation

end.
