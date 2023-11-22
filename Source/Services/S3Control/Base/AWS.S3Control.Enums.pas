unit AWS.S3Control.Enums;

interface

type
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
    class function ApNortheast1: TBucketLocationConstraint; static;
    class function ApSouth1: TBucketLocationConstraint; static;
    class function ApSoutheast1: TBucketLocationConstraint; static;
    class function ApSoutheast2: TBucketLocationConstraint; static;
    class function CnNorth1: TBucketLocationConstraint; static;
    class function EU: TBucketLocationConstraint; static;
    class function EuCentral1: TBucketLocationConstraint; static;
    class function EuWest1: TBucketLocationConstraint; static;
    class function SaEast1: TBucketLocationConstraint; static;
    class function UsWest1: TBucketLocationConstraint; static;
    class function UsWest2: TBucketLocationConstraint; static;
    class operator Equal(a: TBucketLocationConstraint; b: TBucketLocationConstraint): Boolean;
    class operator NotEqual(a: TBucketLocationConstraint; b: TBucketLocationConstraint): Boolean;
    class operator Implicit(a: string): TBucketLocationConstraint;
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
  
  TFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function CSV: TFormat; static;
    class function Parquet: TFormat; static;
    class operator Equal(a: TFormat; b: TFormat): Boolean;
    class operator NotEqual(a: TFormat; b: TFormat): Boolean;
    class operator Implicit(a: string): TFormat;
    property Value: string read FValue;
  end;
  
  TJobManifestFieldName = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Bucket: TJobManifestFieldName; static;
    class function Ignore: TJobManifestFieldName; static;
    class function Key: TJobManifestFieldName; static;
    class function VersionId: TJobManifestFieldName; static;
    class operator Equal(a: TJobManifestFieldName; b: TJobManifestFieldName): Boolean;
    class operator NotEqual(a: TJobManifestFieldName; b: TJobManifestFieldName): Boolean;
    class operator Implicit(a: string): TJobManifestFieldName;
    property Value: string read FValue;
  end;
  
  TJobManifestFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function S3BatchOperations_CSV_20180820: TJobManifestFormat; static;
    class function S3InventoryReport_CSV_20161130: TJobManifestFormat; static;
    class operator Equal(a: TJobManifestFormat; b: TJobManifestFormat): Boolean;
    class operator NotEqual(a: TJobManifestFormat; b: TJobManifestFormat): Boolean;
    class operator Implicit(a: string): TJobManifestFormat;
    property Value: string read FValue;
  end;
  
  TJobReportFormat = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Report_CSV_20180820: TJobReportFormat; static;
    class operator Equal(a: TJobReportFormat; b: TJobReportFormat): Boolean;
    class operator NotEqual(a: TJobReportFormat; b: TJobReportFormat): Boolean;
    class operator Implicit(a: string): TJobReportFormat;
    property Value: string read FValue;
  end;
  
  TJobReportScope = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AllTasks: TJobReportScope; static;
    class function FailedTasksOnly: TJobReportScope; static;
    class operator Equal(a: TJobReportScope; b: TJobReportScope): Boolean;
    class operator NotEqual(a: TJobReportScope; b: TJobReportScope): Boolean;
    class operator Implicit(a: string): TJobReportScope;
    property Value: string read FValue;
  end;
  
  TJobStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Active: TJobStatus; static;
    class function Cancelled: TJobStatus; static;
    class function Cancelling: TJobStatus; static;
    class function Complete: TJobStatus; static;
    class function Completing: TJobStatus; static;
    class function Failed: TJobStatus; static;
    class function Failing: TJobStatus; static;
    class function New: TJobStatus; static;
    class function Paused: TJobStatus; static;
    class function Pausing: TJobStatus; static;
    class function Preparing: TJobStatus; static;
    class function Ready: TJobStatus; static;
    class function Suspended: TJobStatus; static;
    class operator Equal(a: TJobStatus; b: TJobStatus): Boolean;
    class operator NotEqual(a: TJobStatus; b: TJobStatus): Boolean;
    class operator Implicit(a: string): TJobStatus;
    property Value: string read FValue;
  end;
  
  TNetworkOrigin = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Internet: TNetworkOrigin; static;
    class function VPC: TNetworkOrigin; static;
    class operator Equal(a: TNetworkOrigin; b: TNetworkOrigin): Boolean;
    class operator NotEqual(a: TNetworkOrigin; b: TNetworkOrigin): Boolean;
    class operator Implicit(a: string): TNetworkOrigin;
    property Value: string read FValue;
  end;
  
  TObjectLambdaAllowedFeature = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function GetObjectPartNumber: TObjectLambdaAllowedFeature; static;
    class function GetObjectRange: TObjectLambdaAllowedFeature; static;
    class operator Equal(a: TObjectLambdaAllowedFeature; b: TObjectLambdaAllowedFeature): Boolean;
    class operator NotEqual(a: TObjectLambdaAllowedFeature; b: TObjectLambdaAllowedFeature): Boolean;
    class operator Implicit(a: string): TObjectLambdaAllowedFeature;
    property Value: string read FValue;
  end;
  
  TObjectLambdaTransformationConfigurationAction = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function GetObject: TObjectLambdaTransformationConfigurationAction; static;
    class operator Equal(a: TObjectLambdaTransformationConfigurationAction; b: TObjectLambdaTransformationConfigurationAction): Boolean;
    class operator NotEqual(a: TObjectLambdaTransformationConfigurationAction; b: TObjectLambdaTransformationConfigurationAction): Boolean;
    class operator Implicit(a: string): TObjectLambdaTransformationConfigurationAction;
    property Value: string read FValue;
  end;
  
  TOperationName = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function LambdaInvoke: TOperationName; static;
    class function S3DeleteObjectTagging: TOperationName; static;
    class function S3InitiateRestoreObject: TOperationName; static;
    class function S3PutObjectAcl: TOperationName; static;
    class function S3PutObjectCopy: TOperationName; static;
    class function S3PutObjectLegalHold: TOperationName; static;
    class function S3PutObjectRetention: TOperationName; static;
    class function S3PutObjectTagging: TOperationName; static;
    class operator Equal(a: TOperationName; b: TOperationName): Boolean;
    class operator NotEqual(a: TOperationName; b: TOperationName): Boolean;
    class operator Implicit(a: string): TOperationName;
    property Value: string read FValue;
  end;
  
  TOutputSchemaVersion = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function V_1: TOutputSchemaVersion; static;
    class operator Equal(a: TOutputSchemaVersion; b: TOutputSchemaVersion): Boolean;
    class operator NotEqual(a: TOutputSchemaVersion; b: TOutputSchemaVersion): Boolean;
    class operator Implicit(a: string): TOutputSchemaVersion;
    property Value: string read FValue;
  end;
  
  TRequestedJobStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function Cancelled: TRequestedJobStatus; static;
    class function Ready: TRequestedJobStatus; static;
    class operator Equal(a: TRequestedJobStatus; b: TRequestedJobStatus): Boolean;
    class operator NotEqual(a: TRequestedJobStatus; b: TRequestedJobStatus): Boolean;
    class operator Implicit(a: string): TRequestedJobStatus;
    property Value: string read FValue;
  end;
  
  TS3CannedAccessControlList = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AuthenticatedRead: TS3CannedAccessControlList; static;
    class function AwsExecRead: TS3CannedAccessControlList; static;
    class function BucketOwnerFullControl: TS3CannedAccessControlList; static;
    class function BucketOwnerRead: TS3CannedAccessControlList; static;
    class function Private: TS3CannedAccessControlList; static;
    class function PublicRead: TS3CannedAccessControlList; static;
    class function PublicReadWrite: TS3CannedAccessControlList; static;
    class operator Equal(a: TS3CannedAccessControlList; b: TS3CannedAccessControlList): Boolean;
    class operator NotEqual(a: TS3CannedAccessControlList; b: TS3CannedAccessControlList): Boolean;
    class operator Implicit(a: string): TS3CannedAccessControlList;
    property Value: string read FValue;
  end;
  
  TS3GlacierJobTier = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function BULK: TS3GlacierJobTier; static;
    class function STANDARD: TS3GlacierJobTier; static;
    class operator Equal(a: TS3GlacierJobTier; b: TS3GlacierJobTier): Boolean;
    class operator NotEqual(a: TS3GlacierJobTier; b: TS3GlacierJobTier): Boolean;
    class operator Implicit(a: string): TS3GlacierJobTier;
    property Value: string read FValue;
  end;
  
  TS3GranteeTypeIdentifier = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function EmailAddress: TS3GranteeTypeIdentifier; static;
    class function Id: TS3GranteeTypeIdentifier; static;
    class function Uri: TS3GranteeTypeIdentifier; static;
    class operator Equal(a: TS3GranteeTypeIdentifier; b: TS3GranteeTypeIdentifier): Boolean;
    class operator NotEqual(a: TS3GranteeTypeIdentifier; b: TS3GranteeTypeIdentifier): Boolean;
    class operator Implicit(a: string): TS3GranteeTypeIdentifier;
    property Value: string read FValue;
  end;
  
  TS3MetadataDirective = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COPY: TS3MetadataDirective; static;
    class function REPLACE: TS3MetadataDirective; static;
    class operator Equal(a: TS3MetadataDirective; b: TS3MetadataDirective): Boolean;
    class operator NotEqual(a: TS3MetadataDirective; b: TS3MetadataDirective): Boolean;
    class operator Implicit(a: string): TS3MetadataDirective;
    property Value: string read FValue;
  end;
  
  TS3ObjectLockLegalHoldStatus = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function OFF: TS3ObjectLockLegalHoldStatus; static;
    class function ON: TS3ObjectLockLegalHoldStatus; static;
    class operator Equal(a: TS3ObjectLockLegalHoldStatus; b: TS3ObjectLockLegalHoldStatus): Boolean;
    class operator NotEqual(a: TS3ObjectLockLegalHoldStatus; b: TS3ObjectLockLegalHoldStatus): Boolean;
    class operator Implicit(a: string): TS3ObjectLockLegalHoldStatus;
    property Value: string read FValue;
  end;
  
  TS3ObjectLockMode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLIANCE: TS3ObjectLockMode; static;
    class function GOVERNANCE: TS3ObjectLockMode; static;
    class operator Equal(a: TS3ObjectLockMode; b: TS3ObjectLockMode): Boolean;
    class operator NotEqual(a: TS3ObjectLockMode; b: TS3ObjectLockMode): Boolean;
    class operator Implicit(a: string): TS3ObjectLockMode;
    property Value: string read FValue;
  end;
  
  TS3ObjectLockRetentionMode = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function COMPLIANCE: TS3ObjectLockRetentionMode; static;
    class function GOVERNANCE: TS3ObjectLockRetentionMode; static;
    class operator Equal(a: TS3ObjectLockRetentionMode; b: TS3ObjectLockRetentionMode): Boolean;
    class operator NotEqual(a: TS3ObjectLockRetentionMode; b: TS3ObjectLockRetentionMode): Boolean;
    class operator Implicit(a: string): TS3ObjectLockRetentionMode;
    property Value: string read FValue;
  end;
  
  TS3Permission = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function FULL_CONTROL: TS3Permission; static;
    class function READ: TS3Permission; static;
    class function READ_ACP: TS3Permission; static;
    class function WRITE: TS3Permission; static;
    class function WRITE_ACP: TS3Permission; static;
    class operator Equal(a: TS3Permission; b: TS3Permission): Boolean;
    class operator NotEqual(a: TS3Permission; b: TS3Permission): Boolean;
    class operator Implicit(a: string): TS3Permission;
    property Value: string read FValue;
  end;
  
  TS3SSEAlgorithm = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function AES256: TS3SSEAlgorithm; static;
    class function KMS: TS3SSEAlgorithm; static;
    class operator Equal(a: TS3SSEAlgorithm; b: TS3SSEAlgorithm): Boolean;
    class operator NotEqual(a: TS3SSEAlgorithm; b: TS3SSEAlgorithm): Boolean;
    class operator Implicit(a: string): TS3SSEAlgorithm;
    property Value: string read FValue;
  end;
  
  TS3StorageClass = record
  strict private
    FValue: string;
  public
    constructor Create(const AValue: string);
    class function DEEP_ARCHIVE: TS3StorageClass; static;
    class function GLACIER: TS3StorageClass; static;
    class function INTELLIGENT_TIERING: TS3StorageClass; static;
    class function ONEZONE_IA: TS3StorageClass; static;
    class function STANDARD: TS3StorageClass; static;
    class function STANDARD_IA: TS3StorageClass; static;
    class operator Equal(a: TS3StorageClass; b: TS3StorageClass): Boolean;
    class operator NotEqual(a: TS3StorageClass; b: TS3StorageClass): Boolean;
    class operator Implicit(a: string): TS3StorageClass;
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
  
implementation

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

class function TBucketLocationConstraint.ApNortheast1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('ap-northeast-1');
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

class function TBucketLocationConstraint.CnNorth1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('cn-north-1');
end;

class function TBucketLocationConstraint.EU: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('EU');
end;

class function TBucketLocationConstraint.EuCentral1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('eu-central-1');
end;

class function TBucketLocationConstraint.EuWest1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('eu-west-1');
end;

class function TBucketLocationConstraint.SaEast1: TBucketLocationConstraint;
begin
  Result := TBucketLocationConstraint.Create('sa-east-1');
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

{ TFormat }

constructor TFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TFormat.CSV: TFormat;
begin
  Result := TFormat.Create('CSV');
end;

class function TFormat.Parquet: TFormat;
begin
  Result := TFormat.Create('Parquet');
end;

class operator TFormat.Equal(a: TFormat; b: TFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TFormat.NotEqual(a: TFormat; b: TFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TFormat.Implicit(a: string): TFormat;
begin
  Result.FValue := a;;
end;

{ TJobManifestFieldName }

constructor TJobManifestFieldName.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TJobManifestFieldName.Bucket: TJobManifestFieldName;
begin
  Result := TJobManifestFieldName.Create('Bucket');
end;

class function TJobManifestFieldName.Ignore: TJobManifestFieldName;
begin
  Result := TJobManifestFieldName.Create('Ignore');
end;

class function TJobManifestFieldName.Key: TJobManifestFieldName;
begin
  Result := TJobManifestFieldName.Create('Key');
end;

class function TJobManifestFieldName.VersionId: TJobManifestFieldName;
begin
  Result := TJobManifestFieldName.Create('VersionId');
end;

class operator TJobManifestFieldName.Equal(a: TJobManifestFieldName; b: TJobManifestFieldName): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TJobManifestFieldName.NotEqual(a: TJobManifestFieldName; b: TJobManifestFieldName): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TJobManifestFieldName.Implicit(a: string): TJobManifestFieldName;
begin
  Result.FValue := a;;
end;

{ TJobManifestFormat }

constructor TJobManifestFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TJobManifestFormat.S3BatchOperations_CSV_20180820: TJobManifestFormat;
begin
  Result := TJobManifestFormat.Create('S3BatchOperations_CSV_20180820');
end;

class function TJobManifestFormat.S3InventoryReport_CSV_20161130: TJobManifestFormat;
begin
  Result := TJobManifestFormat.Create('S3InventoryReport_CSV_20161130');
end;

class operator TJobManifestFormat.Equal(a: TJobManifestFormat; b: TJobManifestFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TJobManifestFormat.NotEqual(a: TJobManifestFormat; b: TJobManifestFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TJobManifestFormat.Implicit(a: string): TJobManifestFormat;
begin
  Result.FValue := a;;
end;

{ TJobReportFormat }

constructor TJobReportFormat.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TJobReportFormat.Report_CSV_20180820: TJobReportFormat;
begin
  Result := TJobReportFormat.Create('Report_CSV_20180820');
end;

class operator TJobReportFormat.Equal(a: TJobReportFormat; b: TJobReportFormat): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TJobReportFormat.NotEqual(a: TJobReportFormat; b: TJobReportFormat): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TJobReportFormat.Implicit(a: string): TJobReportFormat;
begin
  Result.FValue := a;;
end;

{ TJobReportScope }

constructor TJobReportScope.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TJobReportScope.AllTasks: TJobReportScope;
begin
  Result := TJobReportScope.Create('AllTasks');
end;

class function TJobReportScope.FailedTasksOnly: TJobReportScope;
begin
  Result := TJobReportScope.Create('FailedTasksOnly');
end;

class operator TJobReportScope.Equal(a: TJobReportScope; b: TJobReportScope): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TJobReportScope.NotEqual(a: TJobReportScope; b: TJobReportScope): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TJobReportScope.Implicit(a: string): TJobReportScope;
begin
  Result.FValue := a;;
end;

{ TJobStatus }

constructor TJobStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TJobStatus.Active: TJobStatus;
begin
  Result := TJobStatus.Create('Active');
end;

class function TJobStatus.Cancelled: TJobStatus;
begin
  Result := TJobStatus.Create('Cancelled');
end;

class function TJobStatus.Cancelling: TJobStatus;
begin
  Result := TJobStatus.Create('Cancelling');
end;

class function TJobStatus.Complete: TJobStatus;
begin
  Result := TJobStatus.Create('Complete');
end;

class function TJobStatus.Completing: TJobStatus;
begin
  Result := TJobStatus.Create('Completing');
end;

class function TJobStatus.Failed: TJobStatus;
begin
  Result := TJobStatus.Create('Failed');
end;

class function TJobStatus.Failing: TJobStatus;
begin
  Result := TJobStatus.Create('Failing');
end;

class function TJobStatus.New: TJobStatus;
begin
  Result := TJobStatus.Create('New');
end;

class function TJobStatus.Paused: TJobStatus;
begin
  Result := TJobStatus.Create('Paused');
end;

class function TJobStatus.Pausing: TJobStatus;
begin
  Result := TJobStatus.Create('Pausing');
end;

class function TJobStatus.Preparing: TJobStatus;
begin
  Result := TJobStatus.Create('Preparing');
end;

class function TJobStatus.Ready: TJobStatus;
begin
  Result := TJobStatus.Create('Ready');
end;

class function TJobStatus.Suspended: TJobStatus;
begin
  Result := TJobStatus.Create('Suspended');
end;

class operator TJobStatus.Equal(a: TJobStatus; b: TJobStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TJobStatus.NotEqual(a: TJobStatus; b: TJobStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TJobStatus.Implicit(a: string): TJobStatus;
begin
  Result.FValue := a;;
end;

{ TNetworkOrigin }

constructor TNetworkOrigin.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TNetworkOrigin.Internet: TNetworkOrigin;
begin
  Result := TNetworkOrigin.Create('Internet');
end;

class function TNetworkOrigin.VPC: TNetworkOrigin;
begin
  Result := TNetworkOrigin.Create('VPC');
end;

class operator TNetworkOrigin.Equal(a: TNetworkOrigin; b: TNetworkOrigin): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TNetworkOrigin.NotEqual(a: TNetworkOrigin; b: TNetworkOrigin): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TNetworkOrigin.Implicit(a: string): TNetworkOrigin;
begin
  Result.FValue := a;;
end;

{ TObjectLambdaAllowedFeature }

constructor TObjectLambdaAllowedFeature.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectLambdaAllowedFeature.GetObjectPartNumber: TObjectLambdaAllowedFeature;
begin
  Result := TObjectLambdaAllowedFeature.Create('GetObject-PartNumber');
end;

class function TObjectLambdaAllowedFeature.GetObjectRange: TObjectLambdaAllowedFeature;
begin
  Result := TObjectLambdaAllowedFeature.Create('GetObject-Range');
end;

class operator TObjectLambdaAllowedFeature.Equal(a: TObjectLambdaAllowedFeature; b: TObjectLambdaAllowedFeature): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectLambdaAllowedFeature.NotEqual(a: TObjectLambdaAllowedFeature; b: TObjectLambdaAllowedFeature): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectLambdaAllowedFeature.Implicit(a: string): TObjectLambdaAllowedFeature;
begin
  Result.FValue := a;;
end;

{ TObjectLambdaTransformationConfigurationAction }

constructor TObjectLambdaTransformationConfigurationAction.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TObjectLambdaTransformationConfigurationAction.GetObject: TObjectLambdaTransformationConfigurationAction;
begin
  Result := TObjectLambdaTransformationConfigurationAction.Create('GetObject');
end;

class operator TObjectLambdaTransformationConfigurationAction.Equal(a: TObjectLambdaTransformationConfigurationAction; b: TObjectLambdaTransformationConfigurationAction): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TObjectLambdaTransformationConfigurationAction.NotEqual(a: TObjectLambdaTransformationConfigurationAction; b: TObjectLambdaTransformationConfigurationAction): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TObjectLambdaTransformationConfigurationAction.Implicit(a: string): TObjectLambdaTransformationConfigurationAction;
begin
  Result.FValue := a;;
end;

{ TOperationName }

constructor TOperationName.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOperationName.LambdaInvoke: TOperationName;
begin
  Result := TOperationName.Create('LambdaInvoke');
end;

class function TOperationName.S3DeleteObjectTagging: TOperationName;
begin
  Result := TOperationName.Create('S3DeleteObjectTagging');
end;

class function TOperationName.S3InitiateRestoreObject: TOperationName;
begin
  Result := TOperationName.Create('S3InitiateRestoreObject');
end;

class function TOperationName.S3PutObjectAcl: TOperationName;
begin
  Result := TOperationName.Create('S3PutObjectAcl');
end;

class function TOperationName.S3PutObjectCopy: TOperationName;
begin
  Result := TOperationName.Create('S3PutObjectCopy');
end;

class function TOperationName.S3PutObjectLegalHold: TOperationName;
begin
  Result := TOperationName.Create('S3PutObjectLegalHold');
end;

class function TOperationName.S3PutObjectRetention: TOperationName;
begin
  Result := TOperationName.Create('S3PutObjectRetention');
end;

class function TOperationName.S3PutObjectTagging: TOperationName;
begin
  Result := TOperationName.Create('S3PutObjectTagging');
end;

class operator TOperationName.Equal(a: TOperationName; b: TOperationName): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOperationName.NotEqual(a: TOperationName; b: TOperationName): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOperationName.Implicit(a: string): TOperationName;
begin
  Result.FValue := a;;
end;

{ TOutputSchemaVersion }

constructor TOutputSchemaVersion.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TOutputSchemaVersion.V_1: TOutputSchemaVersion;
begin
  Result := TOutputSchemaVersion.Create('V_1');
end;

class operator TOutputSchemaVersion.Equal(a: TOutputSchemaVersion; b: TOutputSchemaVersion): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TOutputSchemaVersion.NotEqual(a: TOutputSchemaVersion; b: TOutputSchemaVersion): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TOutputSchemaVersion.Implicit(a: string): TOutputSchemaVersion;
begin
  Result.FValue := a;;
end;

{ TRequestedJobStatus }

constructor TRequestedJobStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TRequestedJobStatus.Cancelled: TRequestedJobStatus;
begin
  Result := TRequestedJobStatus.Create('Cancelled');
end;

class function TRequestedJobStatus.Ready: TRequestedJobStatus;
begin
  Result := TRequestedJobStatus.Create('Ready');
end;

class operator TRequestedJobStatus.Equal(a: TRequestedJobStatus; b: TRequestedJobStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TRequestedJobStatus.NotEqual(a: TRequestedJobStatus; b: TRequestedJobStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TRequestedJobStatus.Implicit(a: string): TRequestedJobStatus;
begin
  Result.FValue := a;;
end;

{ TS3CannedAccessControlList }

constructor TS3CannedAccessControlList.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3CannedAccessControlList.AuthenticatedRead: TS3CannedAccessControlList;
begin
  Result := TS3CannedAccessControlList.Create('authenticated-read');
end;

class function TS3CannedAccessControlList.AwsExecRead: TS3CannedAccessControlList;
begin
  Result := TS3CannedAccessControlList.Create('aws-exec-read');
end;

class function TS3CannedAccessControlList.BucketOwnerFullControl: TS3CannedAccessControlList;
begin
  Result := TS3CannedAccessControlList.Create('bucket-owner-full-control');
end;

class function TS3CannedAccessControlList.BucketOwnerRead: TS3CannedAccessControlList;
begin
  Result := TS3CannedAccessControlList.Create('bucket-owner-read');
end;

class function TS3CannedAccessControlList.Private: TS3CannedAccessControlList;
begin
  Result := TS3CannedAccessControlList.Create('private');
end;

class function TS3CannedAccessControlList.PublicRead: TS3CannedAccessControlList;
begin
  Result := TS3CannedAccessControlList.Create('public-read');
end;

class function TS3CannedAccessControlList.PublicReadWrite: TS3CannedAccessControlList;
begin
  Result := TS3CannedAccessControlList.Create('public-read-write');
end;

class operator TS3CannedAccessControlList.Equal(a: TS3CannedAccessControlList; b: TS3CannedAccessControlList): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3CannedAccessControlList.NotEqual(a: TS3CannedAccessControlList; b: TS3CannedAccessControlList): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3CannedAccessControlList.Implicit(a: string): TS3CannedAccessControlList;
begin
  Result.FValue := a;;
end;

{ TS3GlacierJobTier }

constructor TS3GlacierJobTier.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3GlacierJobTier.BULK: TS3GlacierJobTier;
begin
  Result := TS3GlacierJobTier.Create('BULK');
end;

class function TS3GlacierJobTier.STANDARD: TS3GlacierJobTier;
begin
  Result := TS3GlacierJobTier.Create('STANDARD');
end;

class operator TS3GlacierJobTier.Equal(a: TS3GlacierJobTier; b: TS3GlacierJobTier): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3GlacierJobTier.NotEqual(a: TS3GlacierJobTier; b: TS3GlacierJobTier): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3GlacierJobTier.Implicit(a: string): TS3GlacierJobTier;
begin
  Result.FValue := a;;
end;

{ TS3GranteeTypeIdentifier }

constructor TS3GranteeTypeIdentifier.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3GranteeTypeIdentifier.EmailAddress: TS3GranteeTypeIdentifier;
begin
  Result := TS3GranteeTypeIdentifier.Create('emailAddress');
end;

class function TS3GranteeTypeIdentifier.Id: TS3GranteeTypeIdentifier;
begin
  Result := TS3GranteeTypeIdentifier.Create('id');
end;

class function TS3GranteeTypeIdentifier.Uri: TS3GranteeTypeIdentifier;
begin
  Result := TS3GranteeTypeIdentifier.Create('uri');
end;

class operator TS3GranteeTypeIdentifier.Equal(a: TS3GranteeTypeIdentifier; b: TS3GranteeTypeIdentifier): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3GranteeTypeIdentifier.NotEqual(a: TS3GranteeTypeIdentifier; b: TS3GranteeTypeIdentifier): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3GranteeTypeIdentifier.Implicit(a: string): TS3GranteeTypeIdentifier;
begin
  Result.FValue := a;;
end;

{ TS3MetadataDirective }

constructor TS3MetadataDirective.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3MetadataDirective.COPY: TS3MetadataDirective;
begin
  Result := TS3MetadataDirective.Create('COPY');
end;

class function TS3MetadataDirective.REPLACE: TS3MetadataDirective;
begin
  Result := TS3MetadataDirective.Create('REPLACE');
end;

class operator TS3MetadataDirective.Equal(a: TS3MetadataDirective; b: TS3MetadataDirective): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3MetadataDirective.NotEqual(a: TS3MetadataDirective; b: TS3MetadataDirective): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3MetadataDirective.Implicit(a: string): TS3MetadataDirective;
begin
  Result.FValue := a;;
end;

{ TS3ObjectLockLegalHoldStatus }

constructor TS3ObjectLockLegalHoldStatus.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3ObjectLockLegalHoldStatus.OFF: TS3ObjectLockLegalHoldStatus;
begin
  Result := TS3ObjectLockLegalHoldStatus.Create('OFF');
end;

class function TS3ObjectLockLegalHoldStatus.ON: TS3ObjectLockLegalHoldStatus;
begin
  Result := TS3ObjectLockLegalHoldStatus.Create('ON');
end;

class operator TS3ObjectLockLegalHoldStatus.Equal(a: TS3ObjectLockLegalHoldStatus; b: TS3ObjectLockLegalHoldStatus): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3ObjectLockLegalHoldStatus.NotEqual(a: TS3ObjectLockLegalHoldStatus; b: TS3ObjectLockLegalHoldStatus): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3ObjectLockLegalHoldStatus.Implicit(a: string): TS3ObjectLockLegalHoldStatus;
begin
  Result.FValue := a;;
end;

{ TS3ObjectLockMode }

constructor TS3ObjectLockMode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3ObjectLockMode.COMPLIANCE: TS3ObjectLockMode;
begin
  Result := TS3ObjectLockMode.Create('COMPLIANCE');
end;

class function TS3ObjectLockMode.GOVERNANCE: TS3ObjectLockMode;
begin
  Result := TS3ObjectLockMode.Create('GOVERNANCE');
end;

class operator TS3ObjectLockMode.Equal(a: TS3ObjectLockMode; b: TS3ObjectLockMode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3ObjectLockMode.NotEqual(a: TS3ObjectLockMode; b: TS3ObjectLockMode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3ObjectLockMode.Implicit(a: string): TS3ObjectLockMode;
begin
  Result.FValue := a;;
end;

{ TS3ObjectLockRetentionMode }

constructor TS3ObjectLockRetentionMode.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3ObjectLockRetentionMode.COMPLIANCE: TS3ObjectLockRetentionMode;
begin
  Result := TS3ObjectLockRetentionMode.Create('COMPLIANCE');
end;

class function TS3ObjectLockRetentionMode.GOVERNANCE: TS3ObjectLockRetentionMode;
begin
  Result := TS3ObjectLockRetentionMode.Create('GOVERNANCE');
end;

class operator TS3ObjectLockRetentionMode.Equal(a: TS3ObjectLockRetentionMode; b: TS3ObjectLockRetentionMode): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3ObjectLockRetentionMode.NotEqual(a: TS3ObjectLockRetentionMode; b: TS3ObjectLockRetentionMode): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3ObjectLockRetentionMode.Implicit(a: string): TS3ObjectLockRetentionMode;
begin
  Result.FValue := a;;
end;

{ TS3Permission }

constructor TS3Permission.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3Permission.FULL_CONTROL: TS3Permission;
begin
  Result := TS3Permission.Create('FULL_CONTROL');
end;

class function TS3Permission.READ: TS3Permission;
begin
  Result := TS3Permission.Create('READ');
end;

class function TS3Permission.READ_ACP: TS3Permission;
begin
  Result := TS3Permission.Create('READ_ACP');
end;

class function TS3Permission.WRITE: TS3Permission;
begin
  Result := TS3Permission.Create('WRITE');
end;

class function TS3Permission.WRITE_ACP: TS3Permission;
begin
  Result := TS3Permission.Create('WRITE_ACP');
end;

class operator TS3Permission.Equal(a: TS3Permission; b: TS3Permission): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3Permission.NotEqual(a: TS3Permission; b: TS3Permission): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3Permission.Implicit(a: string): TS3Permission;
begin
  Result.FValue := a;;
end;

{ TS3SSEAlgorithm }

constructor TS3SSEAlgorithm.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3SSEAlgorithm.AES256: TS3SSEAlgorithm;
begin
  Result := TS3SSEAlgorithm.Create('AES256');
end;

class function TS3SSEAlgorithm.KMS: TS3SSEAlgorithm;
begin
  Result := TS3SSEAlgorithm.Create('KMS');
end;

class operator TS3SSEAlgorithm.Equal(a: TS3SSEAlgorithm; b: TS3SSEAlgorithm): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3SSEAlgorithm.NotEqual(a: TS3SSEAlgorithm; b: TS3SSEAlgorithm): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3SSEAlgorithm.Implicit(a: string): TS3SSEAlgorithm;
begin
  Result.FValue := a;;
end;

{ TS3StorageClass }

constructor TS3StorageClass.Create(const AValue: string);
begin
  FValue := AValue;
end;

class function TS3StorageClass.DEEP_ARCHIVE: TS3StorageClass;
begin
  Result := TS3StorageClass.Create('DEEP_ARCHIVE');
end;

class function TS3StorageClass.GLACIER: TS3StorageClass;
begin
  Result := TS3StorageClass.Create('GLACIER');
end;

class function TS3StorageClass.INTELLIGENT_TIERING: TS3StorageClass;
begin
  Result := TS3StorageClass.Create('INTELLIGENT_TIERING');
end;

class function TS3StorageClass.ONEZONE_IA: TS3StorageClass;
begin
  Result := TS3StorageClass.Create('ONEZONE_IA');
end;

class function TS3StorageClass.STANDARD: TS3StorageClass;
begin
  Result := TS3StorageClass.Create('STANDARD');
end;

class function TS3StorageClass.STANDARD_IA: TS3StorageClass;
begin
  Result := TS3StorageClass.Create('STANDARD_IA');
end;

class operator TS3StorageClass.Equal(a: TS3StorageClass; b: TS3StorageClass): Boolean;
begin
  Result := a.Value = b.Value;
end;

class operator TS3StorageClass.NotEqual(a: TS3StorageClass; b: TS3StorageClass): Boolean;
begin
  Result := a.Value <> b.Value;
end;

class operator TS3StorageClass.Implicit(a: string): TS3StorageClass;
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

end.
