unit AWS.S3;

interface

uses
  AWS.S3.Client, 
  AWS.S3.ClientIntf, 
  AWS.S3.Config, 
  AWS.S3.Enums, 
  AWS.S3.Exception, 
  AWS.S3.Metadata, 
  AWS.S3.Model.BucketAlreadyExistsException, 
  AWS.S3.Model.BucketAlreadyOwnedByYouException, 
  AWS.S3.Model.CommonPrefix, 
  AWS.S3.Model.CompletedPart, 
  AWS.S3.Model.CompleteMultipartUploadRequest, 
  AWS.S3.Model.CompleteMultipartUploadResponse, 
  AWS.S3.Model.CreateBucketConfiguration, 
  AWS.S3.Model.DeleteBucketRequest, 
  AWS.S3.Model.DeleteBucketResponse, 
  AWS.S3.Model.DeletedObject, 
  AWS.S3.Model.DeleteMarkerEntry, 
  AWS.S3.Model.DeleteObjectRequest, 
  AWS.S3.Model.DeleteObjectResponse, 
  AWS.S3.Model.DeleteObjectsRequest, 
  AWS.S3.Model.DeleteObjectsResponse, 
  AWS.S3.Model.Error, 
  AWS.S3.Model.GetACLRequest, 
  AWS.S3.Model.GetACLResponse, 
  AWS.S3.Model.GetBucketVersioningRequest, 
  AWS.S3.Model.GetBucketVersioningResponse, 
  AWS.S3.Model.GetObjectMetadataRequest, 
  AWS.S3.Model.GetObjectMetadataResponse, 
  AWS.S3.Model.GetObjectRequest, 
  AWS.S3.Model.GetObjectResponse, 
  AWS.S3.Model.GetPresignedUrlRequest, 
  AWS.S3.Model.Grant, 
  AWS.S3.Model.Grantee, 
  AWS.S3.Model.InitiateMultipartUploadRequest, 
  AWS.S3.Model.InitiateMultipartUploadResponse, 
  AWS.S3.Model.InvalidObjectStateException, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Model.ListObjectsResponse, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.S3.Model.ListVersionsResponse, 
  AWS.S3.Model.NoSuchBucketException, 
  AWS.S3.Model.NoSuchKeyException, 
  AWS.S3.Model.ObjectIdentifier, 
  AWS.S3.Model.ObjectTypes, 
  AWS.S3.Model.ObjectVersion, 
  AWS.S3.Model.Owner, 
  AWS.S3.Model.OwnershipControls, 
  AWS.S3.Model.OwnershipControlsRule, 
  AWS.S3.Model.PublicAccessBlockConfiguration, 
  AWS.S3.Model.PutBucketOwnershipControlsRequest, 
  AWS.S3.Model.PutBucketOwnershipControlsResponse, 
  AWS.S3.Model.PutBucketRequest, 
  AWS.S3.Model.PutBucketResponse, 
  AWS.S3.Model.PutObjectRequest, 
  AWS.S3.Model.PutObjectResponse, 
  AWS.S3.Model.PutPublicAccessBlockRequest, 
  AWS.S3.Model.PutPublicAccessBlockResponse, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.UploadPartRequest, 
  AWS.S3.Model.UploadPartResponse;

type
  EAmazonS3Exception = AWS.S3.Exception.EAmazonS3Exception;
  EBucketAlreadyExistsException = AWS.S3.Model.BucketAlreadyExistsException.EBucketAlreadyExistsException;
  EBucketAlreadyOwnedByYouException = AWS.S3.Model.BucketAlreadyOwnedByYouException.EBucketAlreadyOwnedByYouException;
  EInvalidObjectStateException = AWS.S3.Model.InvalidObjectStateException.EInvalidObjectStateException;
  ENoSuchBucketException = AWS.S3.Model.NoSuchBucketException.ENoSuchBucketException;
  ENoSuchKeyException = AWS.S3.Model.NoSuchKeyException.ENoSuchKeyException;
  IAmazonS3 = AWS.S3.ClientIntf.IAmazonS3;
  ICommonPrefix = AWS.S3.Model.CommonPrefix.ICommonPrefix;
  ICompletedPart = AWS.S3.Model.CompletedPart.ICompletedPart;
  ICompleteMultipartUploadRequest = AWS.S3.Model.CompleteMultipartUploadRequest.ICompleteMultipartUploadRequest;
  ICompleteMultipartUploadResponse = AWS.S3.Model.CompleteMultipartUploadResponse.ICompleteMultipartUploadResponse;
  ICreateBucketConfiguration = AWS.S3.Model.CreateBucketConfiguration.ICreateBucketConfiguration;
  IDeleteBucketRequest = AWS.S3.Model.DeleteBucketRequest.IDeleteBucketRequest;
  IDeleteBucketResponse = AWS.S3.Model.DeleteBucketResponse.IDeleteBucketResponse;
  IDeletedObject = AWS.S3.Model.DeletedObject.IDeletedObject;
  IDeleteMarkerEntry = AWS.S3.Model.DeleteMarkerEntry.IDeleteMarkerEntry;
  IDeleteObjectRequest = AWS.S3.Model.DeleteObjectRequest.IDeleteObjectRequest;
  IDeleteObjectResponse = AWS.S3.Model.DeleteObjectResponse.IDeleteObjectResponse;
  IDeleteObjectsRequest = AWS.S3.Model.DeleteObjectsRequest.IDeleteObjectsRequest;
  IDeleteObjectsResponse = AWS.S3.Model.DeleteObjectsResponse.IDeleteObjectsResponse;
  IError = AWS.S3.Model.Error.IError;
  IGetACLRequest = AWS.S3.Model.GetACLRequest.IGetACLRequest;
  IGetACLResponse = AWS.S3.Model.GetACLResponse.IGetACLResponse;
  IGetBucketVersioningRequest = AWS.S3.Model.GetBucketVersioningRequest.IGetBucketVersioningRequest;
  IGetBucketVersioningResponse = AWS.S3.Model.GetBucketVersioningResponse.IGetBucketVersioningResponse;
  IGetObjectMetadataRequest = AWS.S3.Model.GetObjectMetadataRequest.IGetObjectMetadataRequest;
  IGetObjectMetadataResponse = AWS.S3.Model.GetObjectMetadataResponse.IGetObjectMetadataResponse;
  IGetObjectRequest = AWS.S3.Model.GetObjectRequest.IGetObjectRequest;
  IGetObjectResponse = AWS.S3.Model.GetObjectResponse.IGetObjectResponse;
  IGetPreSignedUrlRequest = AWS.S3.Model.GetPresignedUrlRequest.IGetPreSignedUrlRequest;
  IGrant = AWS.S3.Model.Grant.IGrant;
  IGrantee = AWS.S3.Model.Grantee.IGrantee;
  IInitiateMultipartUploadRequest = AWS.S3.Model.InitiateMultipartUploadRequest.IInitiateMultipartUploadRequest;
  IInitiateMultipartUploadResponse = AWS.S3.Model.InitiateMultipartUploadResponse.IInitiateMultipartUploadResponse;
  IListObjectsRequest = AWS.S3.Model.ListObjectsRequest.IListObjectsRequest;
  IListObjectsResponse = AWS.S3.Model.ListObjectsResponse.IListObjectsResponse;
  IListVersionsRequest = AWS.S3.Model.ListVersionsRequest.IListVersionsRequest;
  IListVersionsResponse = AWS.S3.Model.ListVersionsResponse.IListVersionsResponse;
  IObject = AWS.S3.Model.ObjectTypes.IObject;
  IObjectIdentifier = AWS.S3.Model.ObjectIdentifier.IObjectIdentifier;
  IObjectVersion = AWS.S3.Model.ObjectVersion.IObjectVersion;
  IOwner = AWS.S3.Model.Owner.IOwner;
  IOwnershipControls = AWS.S3.Model.OwnershipControls.IOwnershipControls;
  IOwnershipControlsRule = AWS.S3.Model.OwnershipControlsRule.IOwnershipControlsRule;
  IPublicAccessBlockConfiguration = AWS.S3.Model.PublicAccessBlockConfiguration.IPublicAccessBlockConfiguration;
  IPutBucketOwnershipControlsRequest = AWS.S3.Model.PutBucketOwnershipControlsRequest.IPutBucketOwnershipControlsRequest;
  IPutBucketOwnershipControlsResponse = AWS.S3.Model.PutBucketOwnershipControlsResponse.IPutBucketOwnershipControlsResponse;
  IPutBucketRequest = AWS.S3.Model.PutBucketRequest.IPutBucketRequest;
  IPutBucketResponse = AWS.S3.Model.PutBucketResponse.IPutBucketResponse;
  IPutObjectRequest = AWS.S3.Model.PutObjectRequest.IPutObjectRequest;
  IPutObjectResponse = AWS.S3.Model.PutObjectResponse.IPutObjectResponse;
  IPutPublicAccessBlockRequest = AWS.S3.Model.PutPublicAccessBlockRequest.IPutPublicAccessBlockRequest;
  IPutPublicAccessBlockResponse = AWS.S3.Model.PutPublicAccessBlockResponse.IPutPublicAccessBlockResponse;
  IUploadPartRequest = AWS.S3.Model.UploadPartRequest.IUploadPartRequest;
  IUploadPartResponse = AWS.S3.Model.UploadPartResponse.IUploadPartResponse;
  TAmazonS3Client = AWS.S3.Client.TAmazonS3Client;
  TAmazonS3Config = AWS.S3.Config.TAmazonS3Config;
  TAmazonS3Metadata = AWS.S3.Metadata.TAmazonS3Metadata;
  TAmazonS3Request = AWS.S3.Model.Request.TAmazonS3Request;
  TAnalyticsS3ExportFileFormat = AWS.S3.Enums.TAnalyticsS3ExportFileFormat;
  TArchiveStatus = AWS.S3.Enums.TArchiveStatus;
  TBucketAccelerateStatus = AWS.S3.Enums.TBucketAccelerateStatus;
  TBucketCannedACL = AWS.S3.Enums.TBucketCannedACL;
  TBucketLocationConstraint = AWS.S3.Enums.TBucketLocationConstraint;
  TBucketLogsPermission = AWS.S3.Enums.TBucketLogsPermission;
  TBucketVersioningStatus = AWS.S3.Enums.TBucketVersioningStatus;
  TCommonPrefix = AWS.S3.Model.CommonPrefix.TCommonPrefix;
  TCompletedPart = AWS.S3.Model.CompletedPart.TCompletedPart;
  TCompleteMultipartUploadRequest = AWS.S3.Model.CompleteMultipartUploadRequest.TCompleteMultipartUploadRequest;
  TCompleteMultipartUploadResponse = AWS.S3.Model.CompleteMultipartUploadResponse.TCompleteMultipartUploadResponse;
  TCompressionType = AWS.S3.Enums.TCompressionType;
  TCreateBucketConfiguration = AWS.S3.Model.CreateBucketConfiguration.TCreateBucketConfiguration;
  TDeleteBucketRequest = AWS.S3.Model.DeleteBucketRequest.TDeleteBucketRequest;
  TDeleteBucketResponse = AWS.S3.Model.DeleteBucketResponse.TDeleteBucketResponse;
  TDeletedObject = AWS.S3.Model.DeletedObject.TDeletedObject;
  TDeleteMarkerEntry = AWS.S3.Model.DeleteMarkerEntry.TDeleteMarkerEntry;
  TDeleteMarkerReplicationStatus = AWS.S3.Enums.TDeleteMarkerReplicationStatus;
  TDeleteObjectRequest = AWS.S3.Model.DeleteObjectRequest.TDeleteObjectRequest;
  TDeleteObjectResponse = AWS.S3.Model.DeleteObjectResponse.TDeleteObjectResponse;
  TDeleteObjectsRequest = AWS.S3.Model.DeleteObjectsRequest.TDeleteObjectsRequest;
  TDeleteObjectsResponse = AWS.S3.Model.DeleteObjectsResponse.TDeleteObjectsResponse;
  TEncodingType = AWS.S3.Enums.TEncodingType;
  TError = AWS.S3.Model.Error.TError;
  TEvent = AWS.S3.Enums.TEvent;
  TExistingObjectReplicationStatus = AWS.S3.Enums.TExistingObjectReplicationStatus;
  TExpirationStatus = AWS.S3.Enums.TExpirationStatus;
  TExpressionType = AWS.S3.Enums.TExpressionType;
  TFileHeaderInfo = AWS.S3.Enums.TFileHeaderInfo;
  TFilterRuleName = AWS.S3.Enums.TFilterRuleName;
  TGetACLRequest = AWS.S3.Model.GetACLRequest.TGetACLRequest;
  TGetACLResponse = AWS.S3.Model.GetACLResponse.TGetACLResponse;
  TGetBucketVersioningRequest = AWS.S3.Model.GetBucketVersioningRequest.TGetBucketVersioningRequest;
  TGetBucketVersioningResponse = AWS.S3.Model.GetBucketVersioningResponse.TGetBucketVersioningResponse;
  TGetObjectMetadataRequest = AWS.S3.Model.GetObjectMetadataRequest.TGetObjectMetadataRequest;
  TGetObjectMetadataResponse = AWS.S3.Model.GetObjectMetadataResponse.TGetObjectMetadataResponse;
  TGetObjectRequest = AWS.S3.Model.GetObjectRequest.TGetObjectRequest;
  TGetObjectResponse = AWS.S3.Model.GetObjectResponse.TGetObjectResponse;
  TGetPreSignedUrlRequest = AWS.S3.Model.GetPresignedUrlRequest.TGetPreSignedUrlRequest;
  TGrant = AWS.S3.Model.Grant.TGrant;
  TGrantee = AWS.S3.Model.Grantee.TGrantee;
  TInitiateMultipartUploadRequest = AWS.S3.Model.InitiateMultipartUploadRequest.TInitiateMultipartUploadRequest;
  TInitiateMultipartUploadResponse = AWS.S3.Model.InitiateMultipartUploadResponse.TInitiateMultipartUploadResponse;
  TIntelligentTieringAccessTier = AWS.S3.Enums.TIntelligentTieringAccessTier;
  TIntelligentTieringStatus = AWS.S3.Enums.TIntelligentTieringStatus;
  TInventoryFormat = AWS.S3.Enums.TInventoryFormat;
  TInventoryFrequency = AWS.S3.Enums.TInventoryFrequency;
  TInventoryIncludedObjectVersions = AWS.S3.Enums.TInventoryIncludedObjectVersions;
  TInventoryOptionalField = AWS.S3.Enums.TInventoryOptionalField;
  TJSONType = AWS.S3.Enums.TJSONType;
  TKeyVersion = AWS.S3.Model.ObjectIdentifier.TKeyVersion;
  TListObjectsRequest = AWS.S3.Model.ListObjectsRequest.TListObjectsRequest;
  TListObjectsResponse = AWS.S3.Model.ListObjectsResponse.TListObjectsResponse;
  TListVersionsRequest = AWS.S3.Model.ListVersionsRequest.TListVersionsRequest;
  TListVersionsResponse = AWS.S3.Model.ListVersionsResponse.TListVersionsResponse;
  TMetadataDirective = AWS.S3.Enums.TMetadataDirective;
  TMetricsStatus = AWS.S3.Enums.TMetricsStatus;
  TMFADelete = AWS.S3.Enums.TMFADelete;
  TMFADeleteStatus = AWS.S3.Enums.TMFADeleteStatus;
  TObjectCannedACL = AWS.S3.Enums.TObjectCannedACL;
  TObjectIdentifier = AWS.S3.Model.ObjectIdentifier.TObjectIdentifier;
  TObjectLockEnabled = AWS.S3.Enums.TObjectLockEnabled;
  TObjectLockLegalHoldStatus = AWS.S3.Enums.TObjectLockLegalHoldStatus;
  TObjectLockMode = AWS.S3.Enums.TObjectLockMode;
  TObjectLockRetentionMode = AWS.S3.Enums.TObjectLockRetentionMode;
  TObjectOwnership = AWS.S3.Enums.TObjectOwnership;
  TObjectStorageClass = AWS.S3.Enums.TObjectStorageClass;
  TObjectVersion = AWS.S3.Model.ObjectVersion.TObjectVersion;
  TObjectVersionStorageClass = AWS.S3.Enums.TObjectVersionStorageClass;
  TOwner = AWS.S3.Model.Owner.TOwner;
  TOwnerOverride = AWS.S3.Enums.TOwnerOverride;
  TOwnershipControls = AWS.S3.Model.OwnershipControls.TOwnershipControls;
  TOwnershipControlsRule = AWS.S3.Model.OwnershipControlsRule.TOwnershipControlsRule;
  TPayer = AWS.S3.Enums.TPayer;
  TPermission = AWS.S3.Enums.TPermission;
  TProtocol = AWS.S3.Enums.TProtocol;
  TPublicAccessBlockConfiguration = AWS.S3.Model.PublicAccessBlockConfiguration.TPublicAccessBlockConfiguration;
  TPutBucketOwnershipControlsRequest = AWS.S3.Model.PutBucketOwnershipControlsRequest.TPutBucketOwnershipControlsRequest;
  TPutBucketOwnershipControlsResponse = AWS.S3.Model.PutBucketOwnershipControlsResponse.TPutBucketOwnershipControlsResponse;
  TPutBucketRequest = AWS.S3.Model.PutBucketRequest.TPutBucketRequest;
  TPutBucketResponse = AWS.S3.Model.PutBucketResponse.TPutBucketResponse;
  TPutObjectRequest = AWS.S3.Model.PutObjectRequest.TPutObjectRequest;
  TPutObjectResponse = AWS.S3.Model.PutObjectResponse.TPutObjectResponse;
  TPutPublicAccessBlockRequest = AWS.S3.Model.PutPublicAccessBlockRequest.TPutPublicAccessBlockRequest;
  TPutPublicAccessBlockResponse = AWS.S3.Model.PutPublicAccessBlockResponse.TPutPublicAccessBlockResponse;
  TQuoteFields = AWS.S3.Enums.TQuoteFields;
  TReplicaModificationsStatus = AWS.S3.Enums.TReplicaModificationsStatus;
  TReplicationRuleStatus = AWS.S3.Enums.TReplicationRuleStatus;
  TReplicationStatus = AWS.S3.Enums.TReplicationStatus;
  TReplicationTimeStatus = AWS.S3.Enums.TReplicationTimeStatus;
  TRequestCharged = AWS.S3.Enums.TRequestCharged;
  TRequestPayer = AWS.S3.Enums.TRequestPayer;
  TRestoreRequestType = AWS.S3.Enums.TRestoreRequestType;
  TS3Object = AWS.S3.Model.ObjectTypes.TS3Object;
  TServerSideEncryption = AWS.S3.Enums.TServerSideEncryption;
  TSseKmsEncryptedObjectsStatus = AWS.S3.Enums.TSseKmsEncryptedObjectsStatus;
  TStorageClass = AWS.S3.Enums.TStorageClass;
  TStorageClassAnalysisSchemaVersion = AWS.S3.Enums.TStorageClassAnalysisSchemaVersion;
  TTaggingDirective = AWS.S3.Enums.TTaggingDirective;
  TTier = AWS.S3.Enums.TTier;
  TTransitionStorageClass = AWS.S3.Enums.TTransitionStorageClass;
  TType = AWS.S3.Enums.TType;
  TUploadPartRequest = AWS.S3.Model.UploadPartRequest.TUploadPartRequest;
  TUploadPartResponse = AWS.S3.Model.UploadPartResponse.TUploadPartResponse;
  
implementation

end.
