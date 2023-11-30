unit AWS.S3;

interface

uses
  AWS.S3.Client, 
  AWS.S3.ClientIntf, 
  AWS.S3.Config, 
  AWS.S3.Enums, 
  AWS.S3.Exception, 
  AWS.S3.Metadata, 
  AWS.S3.Model.Request;

type
  EAmazonS3Exception = AWS.S3.Exception.EAmazonS3Exception;
  IAmazonS3 = AWS.S3.ClientIntf.IAmazonS3;
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
  TCompressionType = AWS.S3.Enums.TCompressionType;
  TDeleteMarkerReplicationStatus = AWS.S3.Enums.TDeleteMarkerReplicationStatus;
  TEncodingType = AWS.S3.Enums.TEncodingType;
  TEvent = AWS.S3.Enums.TEvent;
  TExistingObjectReplicationStatus = AWS.S3.Enums.TExistingObjectReplicationStatus;
  TExpirationStatus = AWS.S3.Enums.TExpirationStatus;
  TExpressionType = AWS.S3.Enums.TExpressionType;
  TFileHeaderInfo = AWS.S3.Enums.TFileHeaderInfo;
  TFilterRuleName = AWS.S3.Enums.TFilterRuleName;
  TIntelligentTieringAccessTier = AWS.S3.Enums.TIntelligentTieringAccessTier;
  TIntelligentTieringStatus = AWS.S3.Enums.TIntelligentTieringStatus;
  TInventoryFormat = AWS.S3.Enums.TInventoryFormat;
  TInventoryFrequency = AWS.S3.Enums.TInventoryFrequency;
  TInventoryIncludedObjectVersions = AWS.S3.Enums.TInventoryIncludedObjectVersions;
  TInventoryOptionalField = AWS.S3.Enums.TInventoryOptionalField;
  TJSONType = AWS.S3.Enums.TJSONType;
  TMetadataDirective = AWS.S3.Enums.TMetadataDirective;
  TMetricsStatus = AWS.S3.Enums.TMetricsStatus;
  TMFADelete = AWS.S3.Enums.TMFADelete;
  TMFADeleteStatus = AWS.S3.Enums.TMFADeleteStatus;
  TObjectCannedACL = AWS.S3.Enums.TObjectCannedACL;
  TObjectLockEnabled = AWS.S3.Enums.TObjectLockEnabled;
  TObjectLockLegalHoldStatus = AWS.S3.Enums.TObjectLockLegalHoldStatus;
  TObjectLockMode = AWS.S3.Enums.TObjectLockMode;
  TObjectLockRetentionMode = AWS.S3.Enums.TObjectLockRetentionMode;
  TObjectOwnership = AWS.S3.Enums.TObjectOwnership;
  TObjectStorageClass = AWS.S3.Enums.TObjectStorageClass;
  TObjectVersionStorageClass = AWS.S3.Enums.TObjectVersionStorageClass;
  TOwnerOverride = AWS.S3.Enums.TOwnerOverride;
  TPayer = AWS.S3.Enums.TPayer;
  TPermission = AWS.S3.Enums.TPermission;
  TProtocol = AWS.S3.Enums.TProtocol;
  TQuoteFields = AWS.S3.Enums.TQuoteFields;
  TReplicaModificationsStatus = AWS.S3.Enums.TReplicaModificationsStatus;
  TReplicationRuleStatus = AWS.S3.Enums.TReplicationRuleStatus;
  TReplicationStatus = AWS.S3.Enums.TReplicationStatus;
  TReplicationTimeStatus = AWS.S3.Enums.TReplicationTimeStatus;
  TRequestCharged = AWS.S3.Enums.TRequestCharged;
  TRequestPayer = AWS.S3.Enums.TRequestPayer;
  TRestoreRequestType = AWS.S3.Enums.TRestoreRequestType;
  TServerSideEncryption = AWS.S3.Enums.TServerSideEncryption;
  TSseKmsEncryptedObjectsStatus = AWS.S3.Enums.TSseKmsEncryptedObjectsStatus;
  TStorageClass = AWS.S3.Enums.TStorageClass;
  TStorageClassAnalysisSchemaVersion = AWS.S3.Enums.TStorageClassAnalysisSchemaVersion;
  TTaggingDirective = AWS.S3.Enums.TTaggingDirective;
  TTier = AWS.S3.Enums.TTier;
  TTransitionStorageClass = AWS.S3.Enums.TTransitionStorageClass;
  TType = AWS.S3.Enums.TType;
  
implementation

end.
