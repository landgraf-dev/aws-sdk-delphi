unit AWS.S3.Enums;

interface

type
  TAnalyticsS3ExportFileFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CSV: TAnalyticsS3ExportFileFormat; static;
    class operator Equal(a: TAnalyticsS3ExportFileFormat; b: TAnalyticsS3ExportFileFormat): Boolean;
    class operator NotEqual(a: TAnalyticsS3ExportFileFormat; b: TAnalyticsS3ExportFileFormat): Boolean;
    class operator Implicit(a: string): TAnalyticsS3ExportFileFormat;
    property Value: string read FValue;
  end;
  
  TArchiveStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ARCHIVE_ACCESS: TArchiveStatus; static;
    class function DEEP_ARCHIVE_ACCESS: TArchiveStatus; static;
    class operator Equal(a: TArchiveStatus; b: TArchiveStatus): Boolean;
    class operator NotEqual(a: TArchiveStatus; b: TArchiveStatus): Boolean;
    class operator Implicit(a: string): TArchiveStatus;
    property Value: string read FValue;
  end;
  
  TBucketAccelerateStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Enabled: TBucketAccelerateStatus; static;
    class function Suspended: TBucketAccelerateStatus; static;
    class operator Equal(a: TBucketAccelerateStatus; b: TBucketAccelerateStatus): Boolean;
    class operator NotEqual(a: TBucketAccelerateStatus; b: TBucketAccelerateStatus): Boolean;
    class operator Implicit(a: string): TBucketAccelerateStatus;
    property Value: string read FValue;
  end;
  
  TBucketCannedACL = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AuthenticatedRead: TBucketCannedACL; static;
    class function Private: TBucketCannedACL; static;
    class function PublicRead: TBucketCannedACL; static;
    class function PublicReadWrite: TBucketCannedACL; static;
    class operator Equal(a: TBucketCannedACL; b: TBucketCannedACL): Boolean;
    class operator NotEqual(a: TBucketCannedACL; b: TBucketCannedACL): Boolean;
    class operator Implicit(a: string): TBucketCannedACL;
    property Value: string read FValue;
  end;
  
  TBucketLocationConstraint = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AfSouth1: TBucketLocationConstraint; static;
    class function ApEast1: TBucketLocationConstraint; static;
    class function ApNortheast1: TBucketLocationConstraint; static;
    class function ApNortheast2: TBucketLocationConstraint; static;
    class function ApNortheast3: TBucketLocationConstraint; static;
    class function ApSouth1: TBucketLocationConstraint; static;
    class function ApSoutheast1: TBucketLocationConstraint; static;
    class function ApSoutheast2: TBucketLocationConstraint; static;
    class function CaCentral1: TBucketLocationConstraint; static;
    class function CnNorth1: TBucketLocationConstraint; static;
    class function CnNorthwest1: TBucketLocationConstraint; static;
    class function EU: TBucketLocationConstraint; static;
    class function EuCentral1: TBucketLocationConstraint; static;
    class function EuNorth1: TBucketLocationConstraint; static;
    class function EuSouth1: TBucketLocationConstraint; static;
    class function EuWest1: TBucketLocationConstraint; static;
    class function EuWest2: TBucketLocationConstraint; static;
    class function EuWest3: TBucketLocationConstraint; static;
    class function MeSouth1: TBucketLocationConstraint; static;
    class function SaEast1: TBucketLocationConstraint; static;
    class function UsEast2: TBucketLocationConstraint; static;
    class function UsGovEast1: TBucketLocationConstraint; static;
    class function UsGovWest1: TBucketLocationConstraint; static;
    class function UsWest1: TBucketLocationConstraint; static;
    class function UsWest2: TBucketLocationConstraint; static;
    class operator Equal(a: TBucketLocationConstraint; b: TBucketLocationConstraint): Boolean;
    class operator NotEqual(a: TBucketLocationConstraint; b: TBucketLocationConstraint): Boolean;
    class operator Implicit(a: string): TBucketLocationConstraint;
    property Value: string read FValue;
  end;
  
  TBucketLogsPermission = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FULL_CONTROL: TBucketLogsPermission; static;
    class function READ: TBucketLogsPermission; static;
    class function WRITE: TBucketLogsPermission; static;
    class operator Equal(a: TBucketLogsPermission; b: TBucketLogsPermission): Boolean;
    class operator NotEqual(a: TBucketLogsPermission; b: TBucketLogsPermission): Boolean;
    class operator Implicit(a: string): TBucketLogsPermission;
    property Value: string read FValue;
  end;
  
  TBucketVersioningStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Enabled: TBucketVersioningStatus; static;
    class function Suspended: TBucketVersioningStatus; static;
    class operator Equal(a: TBucketVersioningStatus; b: TBucketVersioningStatus): Boolean;
    class operator NotEqual(a: TBucketVersioningStatus; b: TBucketVersioningStatus): Boolean;
    class operator Implicit(a: string): TBucketVersioningStatus;
    property Value: string read FValue;
  end;
  
  TCompressionType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BZIP2: TCompressionType; static;
    class function GZIP: TCompressionType; static;
    class function NONE: TCompressionType; static;
    class operator Equal(a: TCompressionType; b: TCompressionType): Boolean;
    class operator NotEqual(a: TCompressionType; b: TCompressionType): Boolean;
    class operator Implicit(a: string): TCompressionType;
    property Value: string read FValue;
  end;
  
  TDeleteMarkerReplicationStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TDeleteMarkerReplicationStatus; static;
    class function Enabled: TDeleteMarkerReplicationStatus; static;
    class operator Equal(a: TDeleteMarkerReplicationStatus; b: TDeleteMarkerReplicationStatus): Boolean;
    class operator NotEqual(a: TDeleteMarkerReplicationStatus; b: TDeleteMarkerReplicationStatus): Boolean;
    class operator Implicit(a: string): TDeleteMarkerReplicationStatus;
    property Value: string read FValue;
  end;
  
  TEncodingType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Url: TEncodingType; static;
    class operator Equal(a: TEncodingType; b: TEncodingType): Boolean;
    class operator NotEqual(a: TEncodingType; b: TEncodingType): Boolean;
    class operator Implicit(a: string): TEncodingType;
    property Value: string read FValue;
  end;
  
  TEvent = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function S3ObjectCreated*: TEvent; static;
    class function S3ObjectCreatedCompleteMultipartUpload: TEvent; static;
    class function S3ObjectCreatedCopy: TEvent; static;
    class function S3ObjectCreatedPost: TEvent; static;
    class function S3ObjectCreatedPut: TEvent; static;
    class function S3ObjectRemoved*: TEvent; static;
    class function S3ObjectRemovedDelete: TEvent; static;
    class function S3ObjectRemovedDeleteMarkerCreated: TEvent; static;
    class function S3ObjectRestore*: TEvent; static;
    class function S3ObjectRestoreCompleted: TEvent; static;
    class function S3ObjectRestorePost: TEvent; static;
    class function S3ReducedRedundancyLostObject: TEvent; static;
    class function S3Replication*: TEvent; static;
    class function S3ReplicationOperationFailedReplication: TEvent; static;
    class function S3ReplicationOperationMissedThreshold: TEvent; static;
    class function S3ReplicationOperationNotTracked: TEvent; static;
    class function S3ReplicationOperationReplicatedAfterThreshold: TEvent; static;
    class operator Equal(a: TEvent; b: TEvent): Boolean;
    class operator NotEqual(a: TEvent; b: TEvent): Boolean;
    class operator Implicit(a: string): TEvent;
    property Value: string read FValue;
  end;
  
  TExistingObjectReplicationStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TExistingObjectReplicationStatus; static;
    class function Enabled: TExistingObjectReplicationStatus; static;
    class operator Equal(a: TExistingObjectReplicationStatus; b: TExistingObjectReplicationStatus): Boolean;
    class operator NotEqual(a: TExistingObjectReplicationStatus; b: TExistingObjectReplicationStatus): Boolean;
    class operator Implicit(a: string): TExistingObjectReplicationStatus;
    property Value: string read FValue;
  end;
  
  TExpirationStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TExpirationStatus; static;
    class function Enabled: TExpirationStatus; static;
    class operator Equal(a: TExpirationStatus; b: TExpirationStatus): Boolean;
    class operator NotEqual(a: TExpirationStatus; b: TExpirationStatus): Boolean;
    class operator Implicit(a: string): TExpirationStatus;
    property Value: string read FValue;
  end;
  
  TExpressionType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function SQL: TExpressionType; static;
    class operator Equal(a: TExpressionType; b: TExpressionType): Boolean;
    class operator NotEqual(a: TExpressionType; b: TExpressionType): Boolean;
    class operator Implicit(a: string): TExpressionType;
    property Value: string read FValue;
  end;
  
  TFileHeaderInfo = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function IGNORE: TFileHeaderInfo; static;
    class function NONE: TFileHeaderInfo; static;
    class function USE: TFileHeaderInfo; static;
    class operator Equal(a: TFileHeaderInfo; b: TFileHeaderInfo): Boolean;
    class operator NotEqual(a: TFileHeaderInfo; b: TFileHeaderInfo): Boolean;
    class operator Implicit(a: string): TFileHeaderInfo;
    property Value: string read FValue;
  end;
  
  TFilterRuleName = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Prefix: TFilterRuleName; static;
    class function Suffix: TFilterRuleName; static;
    class operator Equal(a: TFilterRuleName; b: TFilterRuleName): Boolean;
    class operator NotEqual(a: TFilterRuleName; b: TFilterRuleName): Boolean;
    class operator Implicit(a: string): TFilterRuleName;
    property Value: string read FValue;
  end;
  
  TIntelligentTieringAccessTier = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ARCHIVE_ACCESS: TIntelligentTieringAccessTier; static;
    class function DEEP_ARCHIVE_ACCESS: TIntelligentTieringAccessTier; static;
    class operator Equal(a: TIntelligentTieringAccessTier; b: TIntelligentTieringAccessTier): Boolean;
    class operator NotEqual(a: TIntelligentTieringAccessTier; b: TIntelligentTieringAccessTier): Boolean;
    class operator Implicit(a: string): TIntelligentTieringAccessTier;
    property Value: string read FValue;
  end;
  
  TIntelligentTieringStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TIntelligentTieringStatus; static;
    class function Enabled: TIntelligentTieringStatus; static;
    class operator Equal(a: TIntelligentTieringStatus; b: TIntelligentTieringStatus): Boolean;
    class operator NotEqual(a: TIntelligentTieringStatus; b: TIntelligentTieringStatus): Boolean;
    class operator Implicit(a: string): TIntelligentTieringStatus;
    property Value: string read FValue;
  end;
  
  TInventoryFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CSV: TInventoryFormat; static;
    class function ORC: TInventoryFormat; static;
    class function Parquet: TInventoryFormat; static;
    class operator Equal(a: TInventoryFormat; b: TInventoryFormat): Boolean;
    class operator NotEqual(a: TInventoryFormat; b: TInventoryFormat): Boolean;
    class operator Implicit(a: string): TInventoryFormat;
    property Value: string read FValue;
  end;
  
  TInventoryFrequency = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Daily: TInventoryFrequency; static;
    class function Weekly: TInventoryFrequency; static;
    class operator Equal(a: TInventoryFrequency; b: TInventoryFrequency): Boolean;
    class operator NotEqual(a: TInventoryFrequency; b: TInventoryFrequency): Boolean;
    class operator Implicit(a: string): TInventoryFrequency;
    property Value: string read FValue;
  end;
  
  TInventoryIncludedObjectVersions = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function All: TInventoryIncludedObjectVersions; static;
    class function Current: TInventoryIncludedObjectVersions; static;
    class operator Equal(a: TInventoryIncludedObjectVersions; b: TInventoryIncludedObjectVersions): Boolean;
    class operator NotEqual(a: TInventoryIncludedObjectVersions; b: TInventoryIncludedObjectVersions): Boolean;
    class operator Implicit(a: string): TInventoryIncludedObjectVersions;
    property Value: string read FValue;
  end;
  
  TInventoryOptionalField = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BucketKeyStatus: TInventoryOptionalField; static;
    class function ETag: TInventoryOptionalField; static;
    class function EncryptionStatus: TInventoryOptionalField; static;
    class function IntelligentTieringAccessTier: TInventoryOptionalField; static;
    class function IsMultipartUploaded: TInventoryOptionalField; static;
    class function LastModifiedDate: TInventoryOptionalField; static;
    class function ObjectLockLegalHoldStatus: TInventoryOptionalField; static;
    class function ObjectLockMode: TInventoryOptionalField; static;
    class function ObjectLockRetainUntilDate: TInventoryOptionalField; static;
    class function ReplicationStatus: TInventoryOptionalField; static;
    class function Size: TInventoryOptionalField; static;
    class function StorageClass: TInventoryOptionalField; static;
    class operator Equal(a: TInventoryOptionalField; b: TInventoryOptionalField): Boolean;
    class operator NotEqual(a: TInventoryOptionalField; b: TInventoryOptionalField): Boolean;
    class operator Implicit(a: string): TInventoryOptionalField;
    property Value: string read FValue;
  end;
  
  TJSONType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DOCUMENT: TJSONType; static;
    class function LINES: TJSONType; static;
    class operator Equal(a: TJSONType; b: TJSONType): Boolean;
    class operator NotEqual(a: TJSONType; b: TJSONType): Boolean;
    class operator Implicit(a: string): TJSONType;
    property Value: string read FValue;
  end;
  
  TMFADelete = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TMFADelete; static;
    class function Enabled: TMFADelete; static;
    class operator Equal(a: TMFADelete; b: TMFADelete): Boolean;
    class operator NotEqual(a: TMFADelete; b: TMFADelete): Boolean;
    class operator Implicit(a: string): TMFADelete;
    property Value: string read FValue;
  end;
  
  TMFADeleteStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TMFADeleteStatus; static;
    class function Enabled: TMFADeleteStatus; static;
    class operator Equal(a: TMFADeleteStatus; b: TMFADeleteStatus): Boolean;
    class operator NotEqual(a: TMFADeleteStatus; b: TMFADeleteStatus): Boolean;
    class operator Implicit(a: string): TMFADeleteStatus;
    property Value: string read FValue;
  end;
  
  TMetadataDirective = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COPY: TMetadataDirective; static;
    class function REPLACE: TMetadataDirective; static;
    class operator Equal(a: TMetadataDirective; b: TMetadataDirective): Boolean;
    class operator NotEqual(a: TMetadataDirective; b: TMetadataDirective): Boolean;
    class operator Implicit(a: string): TMetadataDirective;
    property Value: string read FValue;
  end;
  
  TMetricsStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TMetricsStatus; static;
    class function Enabled: TMetricsStatus; static;
    class operator Equal(a: TMetricsStatus; b: TMetricsStatus): Boolean;
    class operator NotEqual(a: TMetricsStatus; b: TMetricsStatus): Boolean;
    class operator Implicit(a: string): TMetricsStatus;
    property Value: string read FValue;
  end;
  
  TObjectCannedACL = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AuthenticatedRead: TObjectCannedACL; static;
    class function AwsExecRead: TObjectCannedACL; static;
    class function BucketOwnerFullControl: TObjectCannedACL; static;
    class function BucketOwnerRead: TObjectCannedACL; static;
    class function Private: TObjectCannedACL; static;
    class function PublicRead: TObjectCannedACL; static;
    class function PublicReadWrite: TObjectCannedACL; static;
    class operator Equal(a: TObjectCannedACL; b: TObjectCannedACL): Boolean;
    class operator NotEqual(a: TObjectCannedACL; b: TObjectCannedACL): Boolean;
    class operator Implicit(a: string): TObjectCannedACL;
    property Value: string read FValue;
  end;
  
  TObjectLockEnabled = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Enabled: TObjectLockEnabled; static;
    class operator Equal(a: TObjectLockEnabled; b: TObjectLockEnabled): Boolean;
    class operator NotEqual(a: TObjectLockEnabled; b: TObjectLockEnabled): Boolean;
    class operator Implicit(a: string): TObjectLockEnabled;
    property Value: string read FValue;
  end;
  
  TObjectLockLegalHoldStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function OFF: TObjectLockLegalHoldStatus; static;
    class function ON: TObjectLockLegalHoldStatus; static;
    class operator Equal(a: TObjectLockLegalHoldStatus; b: TObjectLockLegalHoldStatus): Boolean;
    class operator NotEqual(a: TObjectLockLegalHoldStatus; b: TObjectLockLegalHoldStatus): Boolean;
    class operator Implicit(a: string): TObjectLockLegalHoldStatus;
    property Value: string read FValue;
  end;
  
  TObjectLockMode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLIANCE: TObjectLockMode; static;
    class function GOVERNANCE: TObjectLockMode; static;
    class operator Equal(a: TObjectLockMode; b: TObjectLockMode): Boolean;
    class operator NotEqual(a: TObjectLockMode; b: TObjectLockMode): Boolean;
    class operator Implicit(a: string): TObjectLockMode;
    property Value: string read FValue;
  end;
  
  TObjectLockRetentionMode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLIANCE: TObjectLockRetentionMode; static;
    class function GOVERNANCE: TObjectLockRetentionMode; static;
    class operator Equal(a: TObjectLockRetentionMode; b: TObjectLockRetentionMode): Boolean;
    class operator NotEqual(a: TObjectLockRetentionMode; b: TObjectLockRetentionMode): Boolean;
    class operator Implicit(a: string): TObjectLockRetentionMode;
    property Value: string read FValue;
  end;
  
  TObjectOwnership = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BucketOwnerPreferred: TObjectOwnership; static;
    class function ObjectWriter: TObjectOwnership; static;
    class operator Equal(a: TObjectOwnership; b: TObjectOwnership): Boolean;
    class operator NotEqual(a: TObjectOwnership; b: TObjectOwnership): Boolean;
    class operator Implicit(a: string): TObjectOwnership;
    property Value: string read FValue;
  end;
  
  TObjectStorageClass = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DEEP_ARCHIVE: TObjectStorageClass; static;
    class function GLACIER: TObjectStorageClass; static;
    class function INTELLIGENT_TIERING: TObjectStorageClass; static;
    class function ONEZONE_IA: TObjectStorageClass; static;
    class function OUTPOSTS: TObjectStorageClass; static;
    class function REDUCED_REDUNDANCY: TObjectStorageClass; static;
    class function STANDARD: TObjectStorageClass; static;
    class function STANDARD_IA: TObjectStorageClass; static;
    class operator Equal(a: TObjectStorageClass; b: TObjectStorageClass): Boolean;
    class operator NotEqual(a: TObjectStorageClass; b: TObjectStorageClass): Boolean;
    class operator Implicit(a: string): TObjectStorageClass;
    property Value: string read FValue;
  end;
  
  TObjectVersionStorageClass = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function STANDARD: TObjectVersionStorageClass; static;
    class operator Equal(a: TObjectVersionStorageClass; b: TObjectVersionStorageClass): Boolean;
    class operator NotEqual(a: TObjectVersionStorageClass; b: TObjectVersionStorageClass): Boolean;
    class operator Implicit(a: string): TObjectVersionStorageClass;
    property Value: string read FValue;
  end;
  
  TOwnerOverride = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Destination: TOwnerOverride; static;
    class operator Equal(a: TOwnerOverride; b: TOwnerOverride): Boolean;
    class operator NotEqual(a: TOwnerOverride; b: TOwnerOverride): Boolean;
    class operator Implicit(a: string): TOwnerOverride;
    property Value: string read FValue;
  end;
  
  TPayer = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BucketOwner: TPayer; static;
    class function Requester: TPayer; static;
    class operator Equal(a: TPayer; b: TPayer): Boolean;
    class operator NotEqual(a: TPayer; b: TPayer): Boolean;
    class operator Implicit(a: string): TPayer;
    property Value: string read FValue;
  end;
  
  TPermission = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FULL_CONTROL: TPermission; static;
    class function READ: TPermission; static;
    class function READ_ACP: TPermission; static;
    class function WRITE: TPermission; static;
    class function WRITE_ACP: TPermission; static;
    class operator Equal(a: TPermission; b: TPermission): Boolean;
    class operator NotEqual(a: TPermission; b: TPermission): Boolean;
    class operator Implicit(a: string): TPermission;
    property Value: string read FValue;
  end;
  
  TProtocol = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Http: TProtocol; static;
    class function Https: TProtocol; static;
    class operator Equal(a: TProtocol; b: TProtocol): Boolean;
    class operator NotEqual(a: TProtocol; b: TProtocol): Boolean;
    class operator Implicit(a: string): TProtocol;
    property Value: string read FValue;
  end;
  
  TQuoteFields = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function ALWAYS: TQuoteFields; static;
    class function ASNEEDED: TQuoteFields; static;
    class operator Equal(a: TQuoteFields; b: TQuoteFields): Boolean;
    class operator NotEqual(a: TQuoteFields; b: TQuoteFields): Boolean;
    class operator Implicit(a: string): TQuoteFields;
    property Value: string read FValue;
  end;
  
  TReplicaModificationsStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TReplicaModificationsStatus; static;
    class function Enabled: TReplicaModificationsStatus; static;
    class operator Equal(a: TReplicaModificationsStatus; b: TReplicaModificationsStatus): Boolean;
    class operator NotEqual(a: TReplicaModificationsStatus; b: TReplicaModificationsStatus): Boolean;
    class operator Implicit(a: string): TReplicaModificationsStatus;
    property Value: string read FValue;
  end;
  
  TReplicationRuleStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TReplicationRuleStatus; static;
    class function Enabled: TReplicationRuleStatus; static;
    class operator Equal(a: TReplicationRuleStatus; b: TReplicationRuleStatus): Boolean;
    class operator NotEqual(a: TReplicationRuleStatus; b: TReplicationRuleStatus): Boolean;
    class operator Implicit(a: string): TReplicationRuleStatus;
    property Value: string read FValue;
  end;
  
  TReplicationStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLETE: TReplicationStatus; static;
    class function FAILED: TReplicationStatus; static;
    class function PENDING: TReplicationStatus; static;
    class function REPLICA: TReplicationStatus; static;
    class operator Equal(a: TReplicationStatus; b: TReplicationStatus): Boolean;
    class operator NotEqual(a: TReplicationStatus; b: TReplicationStatus): Boolean;
    class operator Implicit(a: string): TReplicationStatus;
    property Value: string read FValue;
  end;
  
  TReplicationTimeStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TReplicationTimeStatus; static;
    class function Enabled: TReplicationTimeStatus; static;
    class operator Equal(a: TReplicationTimeStatus; b: TReplicationTimeStatus): Boolean;
    class operator NotEqual(a: TReplicationTimeStatus; b: TReplicationTimeStatus): Boolean;
    class operator Implicit(a: string): TReplicationTimeStatus;
    property Value: string read FValue;
  end;
  
  TRequestCharged = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Requester: TRequestCharged; static;
    class operator Equal(a: TRequestCharged; b: TRequestCharged): Boolean;
    class operator NotEqual(a: TRequestCharged; b: TRequestCharged): Boolean;
    class operator Implicit(a: string): TRequestCharged;
    property Value: string read FValue;
  end;
  
  TRequestPayer = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Requester: TRequestPayer; static;
    class operator Equal(a: TRequestPayer; b: TRequestPayer): Boolean;
    class operator NotEqual(a: TRequestPayer; b: TRequestPayer): Boolean;
    class operator Implicit(a: string): TRequestPayer;
    property Value: string read FValue;
  end;
  
  TRestoreRequestType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function SELECT: TRestoreRequestType; static;
    class operator Equal(a: TRestoreRequestType; b: TRestoreRequestType): Boolean;
    class operator NotEqual(a: TRestoreRequestType; b: TRestoreRequestType): Boolean;
    class operator Implicit(a: string): TRestoreRequestType;
    property Value: string read FValue;
  end;
  
  TServerSideEncryption = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AES256: TServerSideEncryption; static;
    class function AwsKms: TServerSideEncryption; static;
    class operator Equal(a: TServerSideEncryption; b: TServerSideEncryption): Boolean;
    class operator NotEqual(a: TServerSideEncryption; b: TServerSideEncryption): Boolean;
    class operator Implicit(a: string): TServerSideEncryption;
    property Value: string read FValue;
  end;
  
  TSseKmsEncryptedObjectsStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Disabled: TSseKmsEncryptedObjectsStatus; static;
    class function Enabled: TSseKmsEncryptedObjectsStatus; static;
    class operator Equal(a: TSseKmsEncryptedObjectsStatus; b: TSseKmsEncryptedObjectsStatus): Boolean;
    class operator NotEqual(a: TSseKmsEncryptedObjectsStatus; b: TSseKmsEncryptedObjectsStatus): Boolean;
    class operator Implicit(a: string): TSseKmsEncryptedObjectsStatus;
    property Value: string read FValue;
  end;
  
  TStorageClass = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DEEP_ARCHIVE: TStorageClass; static;
    class function GLACIER: TStorageClass; static;
    class function INTELLIGENT_TIERING: TStorageClass; static;
    class function ONEZONE_IA: TStorageClass; static;
    class function OUTPOSTS: TStorageClass; static;
    class function REDUCED_REDUNDANCY: TStorageClass; static;
    class function STANDARD: TStorageClass; static;
    class function STANDARD_IA: TStorageClass; static;
    class operator Equal(a: TStorageClass; b: TStorageClass): Boolean;
    class operator NotEqual(a: TStorageClass; b: TStorageClass): Boolean;
    class operator Implicit(a: string): TStorageClass;
    property Value: string read FValue;
  end;
  
  TStorageClassAnalysisSchemaVersion = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function V_1: TStorageClassAnalysisSchemaVersion; static;
    class operator Equal(a: TStorageClassAnalysisSchemaVersion; b: TStorageClassAnalysisSchemaVersion): Boolean;
    class operator NotEqual(a: TStorageClassAnalysisSchemaVersion; b: TStorageClassAnalysisSchemaVersion): Boolean;
    class operator Implicit(a: string): TStorageClassAnalysisSchemaVersion;
    property Value: string read FValue;
  end;
  
  TTaggingDirective = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COPY: TTaggingDirective; static;
    class function REPLACE: TTaggingDirective; static;
    class operator Equal(a: TTaggingDirective; b: TTaggingDirective): Boolean;
    class operator NotEqual(a: TTaggingDirective; b: TTaggingDirective): Boolean;
    class operator Implicit(a: string): TTaggingDirective;
    property Value: string read FValue;
  end;
  
  TTier = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Bulk: TTier; static;
    class function Expedited: TTier; static;
    class function Standard: TTier; static;
    class operator Equal(a: TTier; b: TTier): Boolean;
    class operator NotEqual(a: TTier; b: TTier): Boolean;
    class operator Implicit(a: string): TTier;
    property Value: string read FValue;
  end;
  
  TTransitionStorageClass = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DEEP_ARCHIVE: TTransitionStorageClass; static;
    class function GLACIER: TTransitionStorageClass; static;
    class function INTELLIGENT_TIERING: TTransitionStorageClass; static;
    class function ONEZONE_IA: TTransitionStorageClass; static;
    class function STANDARD_IA: TTransitionStorageClass; static;
    class operator Equal(a: TTransitionStorageClass; b: TTransitionStorageClass): Boolean;
    class operator NotEqual(a: TTransitionStorageClass; b: TTransitionStorageClass): Boolean;
    class operator Implicit(a: string): TTransitionStorageClass;
    property Value: string read FValue;
  end;
  
  TType = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AmazonCustomerByEmail: TType; static;
    class function CanonicalUser: TType; static;
    class function Group: TType; static;
    class operator Equal(a: TType; b: TType): Boolean;
    class operator NotEqual(a: TType; b: TType): Boolean;
    class operator Implicit(a: string): TType;
    property Value: string read FValue;
  end;
  
implementation

{ TAnalyticsS3ExportFileFormat }

constructor TAnalyticsS3ExportFileFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TAnalyticsS3ExportFileFormat.CSV: TAnalyticsS3ExportFileFormat;
begin
  Result := TAnalyticsS3ExportFileFormat.Create('CSV');
end;

class operator TAnalyticsS3ExportFileFormat.Equal(a: TAnalyticsS3ExportFileFormat; b: TAnalyticsS3ExportFileFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TAnalyticsS3ExportFileFormat.NotEqual(a: TAnalyticsS3ExportFileFormat; b: TAnalyticsS3ExportFileFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TAnalyticsS3ExportFileFormat.Implicit(a: string): TAnalyticsS3ExportFileFormat;
begin
  Result.FValue := a;;
end;

{ TArchiveStatus }

constructor TArchiveStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TArchiveStatus.ARCHIVE_ACCESS: TArchiveStatus;
begin
  Result := TArchiveStatus.Create('ARCHIVE_ACCESS');
end;

class function TArchiveStatus.DEEP_ARCHIVE_ACCESS: TArchiveStatus;
begin
  Result := TArchiveStatus.Create('DEEP_ARCHIVE_ACCESS');
end;

class operator TArchiveStatus.Equal(a: TArchiveStatus; b: TArchiveStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TArchiveStatus.NotEqual(a: TArchiveStatus; b: TArchiveStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TArchiveStatus.Implicit(a: string): TArchiveStatus;
begin
  Result.FValue := a;;
end;

{ TBucketAccelerateStatus }

constructor TBucketAccelerateStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBucketAccelerateStatus.Enabled: TBucketAccelerateStatus;
begin
  Result := TBucketAccelerateStatus.Create('Enabled');
end;

class function TBucketAccelerateStatus.Suspended: TBucketAccelerateStatus;
begin
  Result := TBucketAccelerateStatus.Create('Suspended');
end;

class operator TBucketAccelerateStatus.Equal(a: TBucketAccelerateStatus; b: TBucketAccelerateStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBucketAccelerateStatus.NotEqual(a: TBucketAccelerateStatus; b: TBucketAccelerateStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBucketAccelerateStatus.Implicit(a: string): TBucketAccelerateStatus;
begin
  Result.FValue := a;;
end;

{ TBucketCannedACL }

constructor TBucketCannedACL.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBucketCannedACL.AuthenticatedRead: TBucketCannedACL;
begin
  Result := TBucketCannedACL.Create('authenticated-read');
end;

class function TBucketCannedACL.Private: TBucketCannedACL;
begin
  Result := TBucketCannedACL.Create('private');
end;

class function TBucketCannedACL.PublicRead: TBucketCannedACL;
begin
  Result := TBucketCannedACL.Create('public-read');
end;

class function TBucketCannedACL.PublicReadWrite: TBucketCannedACL;
begin
  Result := TBucketCannedACL.Create('public-read-write');
end;

class operator TBucketCannedACL.Equal(a: TBucketCannedACL; b: TBucketCannedACL): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBucketCannedACL.NotEqual(a: TBucketCannedACL; b: TBucketCannedACL): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBucketCannedACL.Implicit(a: string): TBucketCannedACL;
begin
  Result.FValue := a;;
end;

{ TBucketLocationConstraint }

constructor TBucketLocationConstraint.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBucketLocationConstraint.AfSouth1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('af-south-1');
end;

class function TBucketLocationConstraint.ApEast1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('ap-east-1');
end;

class function TBucketLocationConstraint.ApNortheast1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('ap-northeast-1');
end;

class function TBucketLocationConstraint.ApNortheast2: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('ap-northeast-2');
end;

class function TBucketLocationConstraint.ApNortheast3: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('ap-northeast-3');
end;

class function TBucketLocationConstraint.ApSouth1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('ap-south-1');
end;

class function TBucketLocationConstraint.ApSoutheast1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('ap-southeast-1');
end;

class function TBucketLocationConstraint.ApSoutheast2: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('ap-southeast-2');
end;

class function TBucketLocationConstraint.CaCentral1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('ca-central-1');
end;

class function TBucketLocationConstraint.CnNorth1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('cn-north-1');
end;

class function TBucketLocationConstraint.CnNorthwest1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('cn-northwest-1');
end;

class function TBucketLocationConstraint.EU: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('EU');
end;

class function TBucketLocationConstraint.EuCentral1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('eu-central-1');
end;

class function TBucketLocationConstraint.EuNorth1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('eu-north-1');
end;

class function TBucketLocationConstraint.EuSouth1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('eu-south-1');
end;

class function TBucketLocationConstraint.EuWest1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('eu-west-1');
end;

class function TBucketLocationConstraint.EuWest2: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('eu-west-2');
end;

class function TBucketLocationConstraint.EuWest3: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('eu-west-3');
end;

class function TBucketLocationConstraint.MeSouth1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('me-south-1');
end;

class function TBucketLocationConstraint.SaEast1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('sa-east-1');
end;

class function TBucketLocationConstraint.UsEast2: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('us-east-2');
end;

class function TBucketLocationConstraint.UsGovEast1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('us-gov-east-1');
end;

class function TBucketLocationConstraint.UsGovWest1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('us-gov-west-1');
end;

class function TBucketLocationConstraint.UsWest1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('us-west-1');
end;

class function TBucketLocationConstraint.UsWest2: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('us-west-2');
end;

class operator TBucketLocationConstraint.Equal(a: TBucketLocationConstraint; b: TBucketLocationConstraint): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBucketLocationConstraint.NotEqual(a: TBucketLocationConstraint; b: TBucketLocationConstraint): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBucketLocationConstraint.Implicit(a: string): TBucketLocationConstraint;
begin
  Result.FValue := a;;
end;

{ TBucketLogsPermission }

constructor TBucketLogsPermission.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBucketLogsPermission.FULL_CONTROL: TBucketLogsPermission;
begin
  Result := TBucketLogsPermission.Create('FULL_CONTROL');
end;

class function TBucketLogsPermission.READ: TBucketLogsPermission;
begin
  Result := TBucketLogsPermission.Create('READ');
end;

class function TBucketLogsPermission.WRITE: TBucketLogsPermission;
begin
  Result := TBucketLogsPermission.Create('WRITE');
end;

class operator TBucketLogsPermission.Equal(a: TBucketLogsPermission; b: TBucketLogsPermission): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBucketLogsPermission.NotEqual(a: TBucketLogsPermission; b: TBucketLogsPermission): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBucketLogsPermission.Implicit(a: string): TBucketLogsPermission;
begin
  Result.FValue := a;;
end;

{ TBucketVersioningStatus }

constructor TBucketVersioningStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TBucketVersioningStatus.Enabled: TBucketVersioningStatus;
begin
  Result := TBucketVersioningStatus.Create('Enabled');
end;

class function TBucketVersioningStatus.Suspended: TBucketVersioningStatus;
begin
  Result := TBucketVersioningStatus.Create('Suspended');
end;

class operator TBucketVersioningStatus.Equal(a: TBucketVersioningStatus; b: TBucketVersioningStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TBucketVersioningStatus.NotEqual(a: TBucketVersioningStatus; b: TBucketVersioningStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TBucketVersioningStatus.Implicit(a: string): TBucketVersioningStatus;
begin
  Result.FValue := a;;
end;

{ TCompressionType }

constructor TCompressionType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TCompressionType.BZIP2: TCompressionType;
begin
  Result := TCompressionType.Create('BZIP2');
end;

class function TCompressionType.GZIP: TCompressionType;
begin
  Result := TCompressionType.Create('GZIP');
end;

class function TCompressionType.NONE: TCompressionType;
begin
  Result := TCompressionType.Create('NONE');
end;

class operator TCompressionType.Equal(a: TCompressionType; b: TCompressionType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TCompressionType.NotEqual(a: TCompressionType; b: TCompressionType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TCompressionType.Implicit(a: string): TCompressionType;
begin
  Result.FValue := a;;
end;

{ TDeleteMarkerReplicationStatus }

constructor TDeleteMarkerReplicationStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TDeleteMarkerReplicationStatus.Disabled: TDeleteMarkerReplicationStatus;
begin
  Result := TDeleteMarkerReplicationStatus.Create('Disabled');
end;

class function TDeleteMarkerReplicationStatus.Enabled: TDeleteMarkerReplicationStatus;
begin
  Result := TDeleteMarkerReplicationStatus.Create('Enabled');
end;

class operator TDeleteMarkerReplicationStatus.Equal(a: TDeleteMarkerReplicationStatus; b: TDeleteMarkerReplicationStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TDeleteMarkerReplicationStatus.NotEqual(a: TDeleteMarkerReplicationStatus; b: TDeleteMarkerReplicationStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TDeleteMarkerReplicationStatus.Implicit(a: string): TDeleteMarkerReplicationStatus;
begin
  Result.FValue := a;;
end;

{ TEncodingType }

constructor TEncodingType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TEncodingType.Url: TEncodingType;
begin
  Result := TEncodingType.Create('url');
end;

class operator TEncodingType.Equal(a: TEncodingType; b: TEncodingType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TEncodingType.NotEqual(a: TEncodingType; b: TEncodingType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TEncodingType.Implicit(a: string): TEncodingType;
begin
  Result.FValue := a;;
end;

{ TEvent }

constructor TEvent.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TEvent.S3ObjectCreated*: TEvent;
begin
  Result := TEvent.Create('s3:ObjectCreated:*');
end;

class function TEvent.S3ObjectCreatedCompleteMultipartUpload: TEvent;
begin
  Result := TEvent.Create('s3:ObjectCreated:CompleteMultipartUpload');
end;

class function TEvent.S3ObjectCreatedCopy: TEvent;
begin
  Result := TEvent.Create('s3:ObjectCreated:Copy');
end;

class function TEvent.S3ObjectCreatedPost: TEvent;
begin
  Result := TEvent.Create('s3:ObjectCreated:Post');
end;

class function TEvent.S3ObjectCreatedPut: TEvent;
begin
  Result := TEvent.Create('s3:ObjectCreated:Put');
end;

class function TEvent.S3ObjectRemoved*: TEvent;
begin
  Result := TEvent.Create('s3:ObjectRemoved:*');
end;

class function TEvent.S3ObjectRemovedDelete: TEvent;
begin
  Result := TEvent.Create('s3:ObjectRemoved:Delete');
end;

class function TEvent.S3ObjectRemovedDeleteMarkerCreated: TEvent;
begin
  Result := TEvent.Create('s3:ObjectRemoved:DeleteMarkerCreated');
end;

class function TEvent.S3ObjectRestore*: TEvent;
begin
  Result := TEvent.Create('s3:ObjectRestore:*');
end;

class function TEvent.S3ObjectRestoreCompleted: TEvent;
begin
  Result := TEvent.Create('s3:ObjectRestore:Completed');
end;

class function TEvent.S3ObjectRestorePost: TEvent;
begin
  Result := TEvent.Create('s3:ObjectRestore:Post');
end;

class function TEvent.S3ReducedRedundancyLostObject: TEvent;
begin
  Result := TEvent.Create('s3:ReducedRedundancyLostObject');
end;

class function TEvent.S3Replication*: TEvent;
begin
  Result := TEvent.Create('s3:Replication:*');
end;

class function TEvent.S3ReplicationOperationFailedReplication: TEvent;
begin
  Result := TEvent.Create('s3:Replication:OperationFailedReplication');
end;

class function TEvent.S3ReplicationOperationMissedThreshold: TEvent;
begin
  Result := TEvent.Create('s3:Replication:OperationMissedThreshold');
end;

class function TEvent.S3ReplicationOperationNotTracked: TEvent;
begin
  Result := TEvent.Create('s3:Replication:OperationNotTracked');
end;

class function TEvent.S3ReplicationOperationReplicatedAfterThreshold: TEvent;
begin
  Result := TEvent.Create('s3:Replication:OperationReplicatedAfterThreshold');
end;

class operator TEvent.Equal(a: TEvent; b: TEvent): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TEvent.NotEqual(a: TEvent; b: TEvent): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TEvent.Implicit(a: string): TEvent;
begin
  Result.FValue := a;;
end;

{ TExistingObjectReplicationStatus }

constructor TExistingObjectReplicationStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TExistingObjectReplicationStatus.Disabled: TExistingObjectReplicationStatus;
begin
  Result := TExistingObjectReplicationStatus.Create('Disabled');
end;

class function TExistingObjectReplicationStatus.Enabled: TExistingObjectReplicationStatus;
begin
  Result := TExistingObjectReplicationStatus.Create('Enabled');
end;

class operator TExistingObjectReplicationStatus.Equal(a: TExistingObjectReplicationStatus; b: TExistingObjectReplicationStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TExistingObjectReplicationStatus.NotEqual(a: TExistingObjectReplicationStatus; b: TExistingObjectReplicationStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TExistingObjectReplicationStatus.Implicit(a: string): TExistingObjectReplicationStatus;
begin
  Result.FValue := a;;
end;

{ TExpirationStatus }

constructor TExpirationStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TExpirationStatus.Disabled: TExpirationStatus;
begin
  Result := TExpirationStatus.Create('Disabled');
end;

class function TExpirationStatus.Enabled: TExpirationStatus;
begin
  Result := TExpirationStatus.Create('Enabled');
end;

class operator TExpirationStatus.Equal(a: TExpirationStatus; b: TExpirationStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TExpirationStatus.NotEqual(a: TExpirationStatus; b: TExpirationStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TExpirationStatus.Implicit(a: string): TExpirationStatus;
begin
  Result.FValue := a;;
end;

{ TExpressionType }

constructor TExpressionType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TExpressionType.SQL: TExpressionType;
begin
  Result := TExpressionType.Create('SQL');
end;

class operator TExpressionType.Equal(a: TExpressionType; b: TExpressionType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TExpressionType.NotEqual(a: TExpressionType; b: TExpressionType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TExpressionType.Implicit(a: string): TExpressionType;
begin
  Result.FValue := a;;
end;

{ TFileHeaderInfo }

constructor TFileHeaderInfo.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TFileHeaderInfo.IGNORE: TFileHeaderInfo;
begin
  Result := TFileHeaderInfo.Create('IGNORE');
end;

class function TFileHeaderInfo.NONE: TFileHeaderInfo;
begin
  Result := TFileHeaderInfo.Create('NONE');
end;

class function TFileHeaderInfo.USE: TFileHeaderInfo;
begin
  Result := TFileHeaderInfo.Create('USE');
end;

class operator TFileHeaderInfo.Equal(a: TFileHeaderInfo; b: TFileHeaderInfo): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TFileHeaderInfo.NotEqual(a: TFileHeaderInfo; b: TFileHeaderInfo): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TFileHeaderInfo.Implicit(a: string): TFileHeaderInfo;
begin
  Result.FValue := a;;
end;

{ TFilterRuleName }

constructor TFilterRuleName.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TFilterRuleName.Prefix: TFilterRuleName;
begin
  Result := TFilterRuleName.Create('prefix');
end;

class function TFilterRuleName.Suffix: TFilterRuleName;
begin
  Result := TFilterRuleName.Create('suffix');
end;

class operator TFilterRuleName.Equal(a: TFilterRuleName; b: TFilterRuleName): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TFilterRuleName.NotEqual(a: TFilterRuleName; b: TFilterRuleName): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TFilterRuleName.Implicit(a: string): TFilterRuleName;
begin
  Result.FValue := a;;
end;

{ TIntelligentTieringAccessTier }

constructor TIntelligentTieringAccessTier.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TIntelligentTieringAccessTier.ARCHIVE_ACCESS: TIntelligentTieringAccessTier;
begin
  Result := TIntelligentTieringAccessTier.Create('ARCHIVE_ACCESS');
end;

class function TIntelligentTieringAccessTier.DEEP_ARCHIVE_ACCESS: TIntelligentTieringAccessTier;
begin
  Result := TIntelligentTieringAccessTier.Create('DEEP_ARCHIVE_ACCESS');
end;

class operator TIntelligentTieringAccessTier.Equal(a: TIntelligentTieringAccessTier; b: TIntelligentTieringAccessTier): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TIntelligentTieringAccessTier.NotEqual(a: TIntelligentTieringAccessTier; b: TIntelligentTieringAccessTier): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TIntelligentTieringAccessTier.Implicit(a: string): TIntelligentTieringAccessTier;
begin
  Result.FValue := a;;
end;

{ TIntelligentTieringStatus }

constructor TIntelligentTieringStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TIntelligentTieringStatus.Disabled: TIntelligentTieringStatus;
begin
  Result := TIntelligentTieringStatus.Create('Disabled');
end;

class function TIntelligentTieringStatus.Enabled: TIntelligentTieringStatus;
begin
  Result := TIntelligentTieringStatus.Create('Enabled');
end;

class operator TIntelligentTieringStatus.Equal(a: TIntelligentTieringStatus; b: TIntelligentTieringStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TIntelligentTieringStatus.NotEqual(a: TIntelligentTieringStatus; b: TIntelligentTieringStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TIntelligentTieringStatus.Implicit(a: string): TIntelligentTieringStatus;
begin
  Result.FValue := a;;
end;

{ TInventoryFormat }

constructor TInventoryFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInventoryFormat.CSV: TInventoryFormat;
begin
  Result := TInventoryFormat.Create('CSV');
end;

class function TInventoryFormat.ORC: TInventoryFormat;
begin
  Result := TInventoryFormat.Create('ORC');
end;

class function TInventoryFormat.Parquet: TInventoryFormat;
begin
  Result := TInventoryFormat.Create('Parquet');
end;

class operator TInventoryFormat.Equal(a: TInventoryFormat; b: TInventoryFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInventoryFormat.NotEqual(a: TInventoryFormat; b: TInventoryFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInventoryFormat.Implicit(a: string): TInventoryFormat;
begin
  Result.FValue := a;;
end;

{ TInventoryFrequency }

constructor TInventoryFrequency.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInventoryFrequency.Daily: TInventoryFrequency;
begin
  Result := TInventoryFrequency.Create('Daily');
end;

class function TInventoryFrequency.Weekly: TInventoryFrequency;
begin
  Result := TInventoryFrequency.Create('Weekly');
end;

class operator TInventoryFrequency.Equal(a: TInventoryFrequency; b: TInventoryFrequency): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInventoryFrequency.NotEqual(a: TInventoryFrequency; b: TInventoryFrequency): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInventoryFrequency.Implicit(a: string): TInventoryFrequency;
begin
  Result.FValue := a;;
end;

{ TInventoryIncludedObjectVersions }

constructor TInventoryIncludedObjectVersions.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInventoryIncludedObjectVersions.All: TInventoryIncludedObjectVersions;
begin
  Result := TInventoryIncludedObjectVersions.Create('All');
end;

class function TInventoryIncludedObjectVersions.Current: TInventoryIncludedObjectVersions;
begin
  Result := TInventoryIncludedObjectVersions.Create('Current');
end;

class operator TInventoryIncludedObjectVersions.Equal(a: TInventoryIncludedObjectVersions; b: TInventoryIncludedObjectVersions): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInventoryIncludedObjectVersions.NotEqual(a: TInventoryIncludedObjectVersions; b: TInventoryIncludedObjectVersions): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInventoryIncludedObjectVersions.Implicit(a: string): TInventoryIncludedObjectVersions;
begin
  Result.FValue := a;;
end;

{ TInventoryOptionalField }

constructor TInventoryOptionalField.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TInventoryOptionalField.BucketKeyStatus: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('BucketKeyStatus');
end;

class function TInventoryOptionalField.ETag: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('ETag');
end;

class function TInventoryOptionalField.EncryptionStatus: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('EncryptionStatus');
end;

class function TInventoryOptionalField.IntelligentTieringAccessTier: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('IntelligentTieringAccessTier');
end;

class function TInventoryOptionalField.IsMultipartUploaded: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('IsMultipartUploaded');
end;

class function TInventoryOptionalField.LastModifiedDate: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('LastModifiedDate');
end;

class function TInventoryOptionalField.ObjectLockLegalHoldStatus: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('ObjectLockLegalHoldStatus');
end;

class function TInventoryOptionalField.ObjectLockMode: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('ObjectLockMode');
end;

class function TInventoryOptionalField.ObjectLockRetainUntilDate: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('ObjectLockRetainUntilDate');
end;

class function TInventoryOptionalField.ReplicationStatus: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('ReplicationStatus');
end;

class function TInventoryOptionalField.Size: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('Size');
end;

class function TInventoryOptionalField.StorageClass: TInventoryOptionalField;
begin
  Result := TInventoryOptionalField.Create('StorageClass');
end;

class operator TInventoryOptionalField.Equal(a: TInventoryOptionalField; b: TInventoryOptionalField): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TInventoryOptionalField.NotEqual(a: TInventoryOptionalField; b: TInventoryOptionalField): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TInventoryOptionalField.Implicit(a: string): TInventoryOptionalField;
begin
  Result.FValue := a;;
end;

{ TJSONType }

constructor TJSONType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TJSONType.DOCUMENT: TJSONType;
begin
  Result := TJSONType.Create('DOCUMENT');
end;

class function TJSONType.LINES: TJSONType;
begin
  Result := TJSONType.Create('LINES');
end;

class operator TJSONType.Equal(a: TJSONType; b: TJSONType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TJSONType.NotEqual(a: TJSONType; b: TJSONType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TJSONType.Implicit(a: string): TJSONType;
begin
  Result.FValue := a;;
end;

{ TMFADelete }

constructor TMFADelete.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMFADelete.Disabled: TMFADelete;
begin
  Result := TMFADelete.Create('Disabled');
end;

class function TMFADelete.Enabled: TMFADelete;
begin
  Result := TMFADelete.Create('Enabled');
end;

class operator TMFADelete.Equal(a: TMFADelete; b: TMFADelete): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMFADelete.NotEqual(a: TMFADelete; b: TMFADelete): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMFADelete.Implicit(a: string): TMFADelete;
begin
  Result.FValue := a;;
end;

{ TMFADeleteStatus }

constructor TMFADeleteStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMFADeleteStatus.Disabled: TMFADeleteStatus;
begin
  Result := TMFADeleteStatus.Create('Disabled');
end;

class function TMFADeleteStatus.Enabled: TMFADeleteStatus;
begin
  Result := TMFADeleteStatus.Create('Enabled');
end;

class operator TMFADeleteStatus.Equal(a: TMFADeleteStatus; b: TMFADeleteStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMFADeleteStatus.NotEqual(a: TMFADeleteStatus; b: TMFADeleteStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMFADeleteStatus.Implicit(a: string): TMFADeleteStatus;
begin
  Result.FValue := a;;
end;

{ TMetadataDirective }

constructor TMetadataDirective.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMetadataDirective.COPY: TMetadataDirective;
begin
  Result := TMetadataDirective.Create('COPY');
end;

class function TMetadataDirective.REPLACE: TMetadataDirective;
begin
  Result := TMetadataDirective.Create('REPLACE');
end;

class operator TMetadataDirective.Equal(a: TMetadataDirective; b: TMetadataDirective): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMetadataDirective.NotEqual(a: TMetadataDirective; b: TMetadataDirective): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMetadataDirective.Implicit(a: string): TMetadataDirective;
begin
  Result.FValue := a;;
end;

{ TMetricsStatus }

constructor TMetricsStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TMetricsStatus.Disabled: TMetricsStatus;
begin
  Result := TMetricsStatus.Create('Disabled');
end;

class function TMetricsStatus.Enabled: TMetricsStatus;
begin
  Result := TMetricsStatus.Create('Enabled');
end;

class operator TMetricsStatus.Equal(a: TMetricsStatus; b: TMetricsStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TMetricsStatus.NotEqual(a: TMetricsStatus; b: TMetricsStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TMetricsStatus.Implicit(a: string): TMetricsStatus;
begin
  Result.FValue := a;;
end;

{ TObjectCannedACL }

constructor TObjectCannedACL.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectCannedACL.AuthenticatedRead: TObjectCannedACL;
begin
  Result := TObjectCannedACL.Create('authenticated-read');
end;

class function TObjectCannedACL.AwsExecRead: TObjectCannedACL;
begin
  Result := TObjectCannedACL.Create('aws-exec-read');
end;

class function TObjectCannedACL.BucketOwnerFullControl: TObjectCannedACL;
begin
  Result := TObjectCannedACL.Create('bucket-owner-full-control');
end;

class function TObjectCannedACL.BucketOwnerRead: TObjectCannedACL;
begin
  Result := TObjectCannedACL.Create('bucket-owner-read');
end;

class function TObjectCannedACL.Private: TObjectCannedACL;
begin
  Result := TObjectCannedACL.Create('private');
end;

class function TObjectCannedACL.PublicRead: TObjectCannedACL;
begin
  Result := TObjectCannedACL.Create('public-read');
end;

class function TObjectCannedACL.PublicReadWrite: TObjectCannedACL;
begin
  Result := TObjectCannedACL.Create('public-read-write');
end;

class operator TObjectCannedACL.Equal(a: TObjectCannedACL; b: TObjectCannedACL): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectCannedACL.NotEqual(a: TObjectCannedACL; b: TObjectCannedACL): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectCannedACL.Implicit(a: string): TObjectCannedACL;
begin
  Result.FValue := a;;
end;

{ TObjectLockEnabled }

constructor TObjectLockEnabled.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectLockEnabled.Enabled: TObjectLockEnabled;
begin
  Result := TObjectLockEnabled.Create('Enabled');
end;

class operator TObjectLockEnabled.Equal(a: TObjectLockEnabled; b: TObjectLockEnabled): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectLockEnabled.NotEqual(a: TObjectLockEnabled; b: TObjectLockEnabled): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectLockEnabled.Implicit(a: string): TObjectLockEnabled;
begin
  Result.FValue := a;;
end;

{ TObjectLockLegalHoldStatus }

constructor TObjectLockLegalHoldStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectLockLegalHoldStatus.OFF: TObjectLockLegalHoldStatus;
begin
  Result := TObjectLockLegalHoldStatus.Create('OFF');
end;

class function TObjectLockLegalHoldStatus.ON: TObjectLockLegalHoldStatus;
begin
  Result := TObjectLockLegalHoldStatus.Create('ON');
end;

class operator TObjectLockLegalHoldStatus.Equal(a: TObjectLockLegalHoldStatus; b: TObjectLockLegalHoldStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectLockLegalHoldStatus.NotEqual(a: TObjectLockLegalHoldStatus; b: TObjectLockLegalHoldStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectLockLegalHoldStatus.Implicit(a: string): TObjectLockLegalHoldStatus;
begin
  Result.FValue := a;;
end;

{ TObjectLockMode }

constructor TObjectLockMode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectLockMode.COMPLIANCE: TObjectLockMode;
begin
  Result := TObjectLockMode.Create('COMPLIANCE');
end;

class function TObjectLockMode.GOVERNANCE: TObjectLockMode;
begin
  Result := TObjectLockMode.Create('GOVERNANCE');
end;

class operator TObjectLockMode.Equal(a: TObjectLockMode; b: TObjectLockMode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectLockMode.NotEqual(a: TObjectLockMode; b: TObjectLockMode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectLockMode.Implicit(a: string): TObjectLockMode;
begin
  Result.FValue := a;;
end;

{ TObjectLockRetentionMode }

constructor TObjectLockRetentionMode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectLockRetentionMode.COMPLIANCE: TObjectLockRetentionMode;
begin
  Result := TObjectLockRetentionMode.Create('COMPLIANCE');
end;

class function TObjectLockRetentionMode.GOVERNANCE: TObjectLockRetentionMode;
begin
  Result := TObjectLockRetentionMode.Create('GOVERNANCE');
end;

class operator TObjectLockRetentionMode.Equal(a: TObjectLockRetentionMode; b: TObjectLockRetentionMode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectLockRetentionMode.NotEqual(a: TObjectLockRetentionMode; b: TObjectLockRetentionMode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectLockRetentionMode.Implicit(a: string): TObjectLockRetentionMode;
begin
  Result.FValue := a;;
end;

{ TObjectOwnership }

constructor TObjectOwnership.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectOwnership.BucketOwnerPreferred: TObjectOwnership;
begin
  Result := TObjectOwnership.Create('BucketOwnerPreferred');
end;

class function TObjectOwnership.ObjectWriter: TObjectOwnership;
begin
  Result := TObjectOwnership.Create('ObjectWriter');
end;

class operator TObjectOwnership.Equal(a: TObjectOwnership; b: TObjectOwnership): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectOwnership.NotEqual(a: TObjectOwnership; b: TObjectOwnership): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectOwnership.Implicit(a: string): TObjectOwnership;
begin
  Result.FValue := a;;
end;

{ TObjectStorageClass }

constructor TObjectStorageClass.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectStorageClass.DEEP_ARCHIVE: TObjectStorageClass;
begin
  Result := TObjectStorageClass.Create('DEEP_ARCHIVE');
end;

class function TObjectStorageClass.GLACIER: TObjectStorageClass;
begin
  Result := TObjectStorageClass.Create('GLACIER');
end;

class function TObjectStorageClass.INTELLIGENT_TIERING: TObjectStorageClass;
begin
  Result := TObjectStorageClass.Create('INTELLIGENT_TIERING');
end;

class function TObjectStorageClass.ONEZONE_IA: TObjectStorageClass;
begin
  Result := TObjectStorageClass.Create('ONEZONE_IA');
end;

class function TObjectStorageClass.OUTPOSTS: TObjectStorageClass;
begin
  Result := TObjectStorageClass.Create('OUTPOSTS');
end;

class function TObjectStorageClass.REDUCED_REDUNDANCY: TObjectStorageClass;
begin
  Result := TObjectStorageClass.Create('REDUCED_REDUNDANCY');
end;

class function TObjectStorageClass.STANDARD: TObjectStorageClass;
begin
  Result := TObjectStorageClass.Create('STANDARD');
end;

class function TObjectStorageClass.STANDARD_IA: TObjectStorageClass;
begin
  Result := TObjectStorageClass.Create('STANDARD_IA');
end;

class operator TObjectStorageClass.Equal(a: TObjectStorageClass; b: TObjectStorageClass): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectStorageClass.NotEqual(a: TObjectStorageClass; b: TObjectStorageClass): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectStorageClass.Implicit(a: string): TObjectStorageClass;
begin
  Result.FValue := a;;
end;

{ TObjectVersionStorageClass }

constructor TObjectVersionStorageClass.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectVersionStorageClass.STANDARD: TObjectVersionStorageClass;
begin
  Result := TObjectVersionStorageClass.Create('STANDARD');
end;

class operator TObjectVersionStorageClass.Equal(a: TObjectVersionStorageClass; b: TObjectVersionStorageClass): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectVersionStorageClass.NotEqual(a: TObjectVersionStorageClass; b: TObjectVersionStorageClass): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectVersionStorageClass.Implicit(a: string): TObjectVersionStorageClass;
begin
  Result.FValue := a;;
end;

{ TOwnerOverride }

constructor TOwnerOverride.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOwnerOverride.Destination: TOwnerOverride;
begin
  Result := TOwnerOverride.Create('Destination');
end;

class operator TOwnerOverride.Equal(a: TOwnerOverride; b: TOwnerOverride): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOwnerOverride.NotEqual(a: TOwnerOverride; b: TOwnerOverride): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOwnerOverride.Implicit(a: string): TOwnerOverride;
begin
  Result.FValue := a;;
end;

{ TPayer }

constructor TPayer.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPayer.BucketOwner: TPayer;
begin
  Result := TPayer.Create('BucketOwner');
end;

class function TPayer.Requester: TPayer;
begin
  Result := TPayer.Create('Requester');
end;

class operator TPayer.Equal(a: TPayer; b: TPayer): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPayer.NotEqual(a: TPayer; b: TPayer): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPayer.Implicit(a: string): TPayer;
begin
  Result.FValue := a;;
end;

{ TPermission }

constructor TPermission.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TPermission.FULL_CONTROL: TPermission;
begin
  Result := TPermission.Create('FULL_CONTROL');
end;

class function TPermission.READ: TPermission;
begin
  Result := TPermission.Create('READ');
end;

class function TPermission.READ_ACP: TPermission;
begin
  Result := TPermission.Create('READ_ACP');
end;

class function TPermission.WRITE: TPermission;
begin
  Result := TPermission.Create('WRITE');
end;

class function TPermission.WRITE_ACP: TPermission;
begin
  Result := TPermission.Create('WRITE_ACP');
end;

class operator TPermission.Equal(a: TPermission; b: TPermission): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TPermission.NotEqual(a: TPermission; b: TPermission): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TPermission.Implicit(a: string): TPermission;
begin
  Result.FValue := a;;
end;

{ TProtocol }

constructor TProtocol.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TProtocol.Http: TProtocol;
begin
  Result := TProtocol.Create('http');
end;

class function TProtocol.Https: TProtocol;
begin
  Result := TProtocol.Create('https');
end;

class operator TProtocol.Equal(a: TProtocol; b: TProtocol): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TProtocol.NotEqual(a: TProtocol; b: TProtocol): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TProtocol.Implicit(a: string): TProtocol;
begin
  Result.FValue := a;;
end;

{ TQuoteFields }

constructor TQuoteFields.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TQuoteFields.ALWAYS: TQuoteFields;
begin
  Result := TQuoteFields.Create('ALWAYS');
end;

class function TQuoteFields.ASNEEDED: TQuoteFields;
begin
  Result := TQuoteFields.Create('ASNEEDED');
end;

class operator TQuoteFields.Equal(a: TQuoteFields; b: TQuoteFields): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TQuoteFields.NotEqual(a: TQuoteFields; b: TQuoteFields): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TQuoteFields.Implicit(a: string): TQuoteFields;
begin
  Result.FValue := a;;
end;

{ TReplicaModificationsStatus }

constructor TReplicaModificationsStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TReplicaModificationsStatus.Disabled: TReplicaModificationsStatus;
begin
  Result := TReplicaModificationsStatus.Create('Disabled');
end;

class function TReplicaModificationsStatus.Enabled: TReplicaModificationsStatus;
begin
  Result := TReplicaModificationsStatus.Create('Enabled');
end;

class operator TReplicaModificationsStatus.Equal(a: TReplicaModificationsStatus; b: TReplicaModificationsStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TReplicaModificationsStatus.NotEqual(a: TReplicaModificationsStatus; b: TReplicaModificationsStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TReplicaModificationsStatus.Implicit(a: string): TReplicaModificationsStatus;
begin
  Result.FValue := a;;
end;

{ TReplicationRuleStatus }

constructor TReplicationRuleStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TReplicationRuleStatus.Disabled: TReplicationRuleStatus;
begin
  Result := TReplicationRuleStatus.Create('Disabled');
end;

class function TReplicationRuleStatus.Enabled: TReplicationRuleStatus;
begin
  Result := TReplicationRuleStatus.Create('Enabled');
end;

class operator TReplicationRuleStatus.Equal(a: TReplicationRuleStatus; b: TReplicationRuleStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TReplicationRuleStatus.NotEqual(a: TReplicationRuleStatus; b: TReplicationRuleStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TReplicationRuleStatus.Implicit(a: string): TReplicationRuleStatus;
begin
  Result.FValue := a;;
end;

{ TReplicationStatus }

constructor TReplicationStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TReplicationStatus.COMPLETE: TReplicationStatus;
begin
  Result := TReplicationStatus.Create('COMPLETE');
end;

class function TReplicationStatus.FAILED: TReplicationStatus;
begin
  Result := TReplicationStatus.Create('FAILED');
end;

class function TReplicationStatus.PENDING: TReplicationStatus;
begin
  Result := TReplicationStatus.Create('PENDING');
end;

class function TReplicationStatus.REPLICA: TReplicationStatus;
begin
  Result := TReplicationStatus.Create('REPLICA');
end;

class operator TReplicationStatus.Equal(a: TReplicationStatus; b: TReplicationStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TReplicationStatus.NotEqual(a: TReplicationStatus; b: TReplicationStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TReplicationStatus.Implicit(a: string): TReplicationStatus;
begin
  Result.FValue := a;;
end;

{ TReplicationTimeStatus }

constructor TReplicationTimeStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TReplicationTimeStatus.Disabled: TReplicationTimeStatus;
begin
  Result := TReplicationTimeStatus.Create('Disabled');
end;

class function TReplicationTimeStatus.Enabled: TReplicationTimeStatus;
begin
  Result := TReplicationTimeStatus.Create('Enabled');
end;

class operator TReplicationTimeStatus.Equal(a: TReplicationTimeStatus; b: TReplicationTimeStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TReplicationTimeStatus.NotEqual(a: TReplicationTimeStatus; b: TReplicationTimeStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TReplicationTimeStatus.Implicit(a: string): TReplicationTimeStatus;
begin
  Result.FValue := a;;
end;

{ TRequestCharged }

constructor TRequestCharged.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TRequestCharged.Requester: TRequestCharged;
begin
  Result := TRequestCharged.Create('requester');
end;

class operator TRequestCharged.Equal(a: TRequestCharged; b: TRequestCharged): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TRequestCharged.NotEqual(a: TRequestCharged; b: TRequestCharged): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TRequestCharged.Implicit(a: string): TRequestCharged;
begin
  Result.FValue := a;;
end;

{ TRequestPayer }

constructor TRequestPayer.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TRequestPayer.Requester: TRequestPayer;
begin
  Result := TRequestPayer.Create('requester');
end;

class operator TRequestPayer.Equal(a: TRequestPayer; b: TRequestPayer): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TRequestPayer.NotEqual(a: TRequestPayer; b: TRequestPayer): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TRequestPayer.Implicit(a: string): TRequestPayer;
begin
  Result.FValue := a;;
end;

{ TRestoreRequestType }

constructor TRestoreRequestType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TRestoreRequestType.SELECT: TRestoreRequestType;
begin
  Result := TRestoreRequestType.Create('SELECT');
end;

class operator TRestoreRequestType.Equal(a: TRestoreRequestType; b: TRestoreRequestType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TRestoreRequestType.NotEqual(a: TRestoreRequestType; b: TRestoreRequestType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TRestoreRequestType.Implicit(a: string): TRestoreRequestType;
begin
  Result.FValue := a;;
end;

{ TServerSideEncryption }

constructor TServerSideEncryption.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TServerSideEncryption.AES256: TServerSideEncryption;
begin
  Result := TServerSideEncryption.Create('AES256');
end;

class function TServerSideEncryption.AwsKms: TServerSideEncryption;
begin
  Result := TServerSideEncryption.Create('aws:kms');
end;

class operator TServerSideEncryption.Equal(a: TServerSideEncryption; b: TServerSideEncryption): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TServerSideEncryption.NotEqual(a: TServerSideEncryption; b: TServerSideEncryption): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TServerSideEncryption.Implicit(a: string): TServerSideEncryption;
begin
  Result.FValue := a;;
end;

{ TSseKmsEncryptedObjectsStatus }

constructor TSseKmsEncryptedObjectsStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TSseKmsEncryptedObjectsStatus.Disabled: TSseKmsEncryptedObjectsStatus;
begin
  Result := TSseKmsEncryptedObjectsStatus.Create('Disabled');
end;

class function TSseKmsEncryptedObjectsStatus.Enabled: TSseKmsEncryptedObjectsStatus;
begin
  Result := TSseKmsEncryptedObjectsStatus.Create('Enabled');
end;

class operator TSseKmsEncryptedObjectsStatus.Equal(a: TSseKmsEncryptedObjectsStatus; b: TSseKmsEncryptedObjectsStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TSseKmsEncryptedObjectsStatus.NotEqual(a: TSseKmsEncryptedObjectsStatus; b: TSseKmsEncryptedObjectsStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TSseKmsEncryptedObjectsStatus.Implicit(a: string): TSseKmsEncryptedObjectsStatus;
begin
  Result.FValue := a;;
end;

{ TStorageClass }

constructor TStorageClass.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TStorageClass.DEEP_ARCHIVE: TStorageClass;
begin
  Result := TStorageClass.Create('DEEP_ARCHIVE');
end;

class function TStorageClass.GLACIER: TStorageClass;
begin
  Result := TStorageClass.Create('GLACIER');
end;

class function TStorageClass.INTELLIGENT_TIERING: TStorageClass;
begin
  Result := TStorageClass.Create('INTELLIGENT_TIERING');
end;

class function TStorageClass.ONEZONE_IA: TStorageClass;
begin
  Result := TStorageClass.Create('ONEZONE_IA');
end;

class function TStorageClass.OUTPOSTS: TStorageClass;
begin
  Result := TStorageClass.Create('OUTPOSTS');
end;

class function TStorageClass.REDUCED_REDUNDANCY: TStorageClass;
begin
  Result := TStorageClass.Create('REDUCED_REDUNDANCY');
end;

class function TStorageClass.STANDARD: TStorageClass;
begin
  Result := TStorageClass.Create('STANDARD');
end;

class function TStorageClass.STANDARD_IA: TStorageClass;
begin
  Result := TStorageClass.Create('STANDARD_IA');
end;

class operator TStorageClass.Equal(a: TStorageClass; b: TStorageClass): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TStorageClass.NotEqual(a: TStorageClass; b: TStorageClass): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TStorageClass.Implicit(a: string): TStorageClass;
begin
  Result.FValue := a;;
end;

{ TStorageClassAnalysisSchemaVersion }

constructor TStorageClassAnalysisSchemaVersion.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TStorageClassAnalysisSchemaVersion.V_1: TStorageClassAnalysisSchemaVersion;
begin
  Result := TStorageClassAnalysisSchemaVersion.Create('V_1');
end;

class operator TStorageClassAnalysisSchemaVersion.Equal(a: TStorageClassAnalysisSchemaVersion; b: TStorageClassAnalysisSchemaVersion): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TStorageClassAnalysisSchemaVersion.NotEqual(a: TStorageClassAnalysisSchemaVersion; b: TStorageClassAnalysisSchemaVersion): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TStorageClassAnalysisSchemaVersion.Implicit(a: string): TStorageClassAnalysisSchemaVersion;
begin
  Result.FValue := a;;
end;

{ TTaggingDirective }

constructor TTaggingDirective.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTaggingDirective.COPY: TTaggingDirective;
begin
  Result := TTaggingDirective.Create('COPY');
end;

class function TTaggingDirective.REPLACE: TTaggingDirective;
begin
  Result := TTaggingDirective.Create('REPLACE');
end;

class operator TTaggingDirective.Equal(a: TTaggingDirective; b: TTaggingDirective): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTaggingDirective.NotEqual(a: TTaggingDirective; b: TTaggingDirective): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTaggingDirective.Implicit(a: string): TTaggingDirective;
begin
  Result.FValue := a;;
end;

{ TTier }

constructor TTier.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTier.Bulk: TTier;
begin
  Result := TTier.Create('Bulk');
end;

class function TTier.Expedited: TTier;
begin
  Result := TTier.Create('Expedited');
end;

class function TTier.Standard: TTier;
begin
  Result := TTier.Create('Standard');
end;

class operator TTier.Equal(a: TTier; b: TTier): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTier.NotEqual(a: TTier; b: TTier): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTier.Implicit(a: string): TTier;
begin
  Result.FValue := a;;
end;

{ TTransitionStorageClass }

constructor TTransitionStorageClass.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TTransitionStorageClass.DEEP_ARCHIVE: TTransitionStorageClass;
begin
  Result := TTransitionStorageClass.Create('DEEP_ARCHIVE');
end;

class function TTransitionStorageClass.GLACIER: TTransitionStorageClass;
begin
  Result := TTransitionStorageClass.Create('GLACIER');
end;

class function TTransitionStorageClass.INTELLIGENT_TIERING: TTransitionStorageClass;
begin
  Result := TTransitionStorageClass.Create('INTELLIGENT_TIERING');
end;

class function TTransitionStorageClass.ONEZONE_IA: TTransitionStorageClass;
begin
  Result := TTransitionStorageClass.Create('ONEZONE_IA');
end;

class function TTransitionStorageClass.STANDARD_IA: TTransitionStorageClass;
begin
  Result := TTransitionStorageClass.Create('STANDARD_IA');
end;

class operator TTransitionStorageClass.Equal(a: TTransitionStorageClass; b: TTransitionStorageClass): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TTransitionStorageClass.NotEqual(a: TTransitionStorageClass; b: TTransitionStorageClass): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TTransitionStorageClass.Implicit(a: string): TTransitionStorageClass;
begin
  Result.FValue := a;;
end;

{ TType }

constructor TType.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TType.AmazonCustomerByEmail: TType;
begin
  Result := TType.Create('AmazonCustomerByEmail');
end;

class function TType.CanonicalUser: TType;
begin
  Result := TType.Create('CanonicalUser');
end;

class function TType.Group: TType;
begin
  Result := TType.Create('Group');
end;

class operator TType.Equal(a: TType; b: TType): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TType.NotEqual(a: TType; b: TType): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TType.Implicit(a: string): TType;
begin
  Result.FValue := a;;
end;

end.
