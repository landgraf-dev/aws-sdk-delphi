unit AWS.S3.Util.S3Constants;

interface

type
  TS3Constants = class
  public const
    PutObjectDefaultTimeout = 20 * 60 * 1000;

    MaxNumberOfParts = 10000;
    DefaultBufferSize = 8192;

    S3DefaultEndpoint = 's3.amazonaws.com';
    S3AlternateDefaultEndpoint = 's3-external-1.amazonaws.com';

    // Bucket Validation constants
    MinBucketLength = 3;
    MaxBucketLength = 63;

    // The maximum number of keys that can be passed into a DeleteObjects call.
    MULTIPLE_OBJECT_DELETE_LIMIT = 1000;

    AmzGrantHeaderRead        = 'x-amz-grant-read';
    AmzGrantHeaderWrite       = 'x-amz-grant-write';
    AmzGrantHeaderReadAcp     = 'x-amz-grant-read-acp';
    AmzGrantHeaderWriteAcp    = 'x-amz-grant-write-acp';
    AmzGrantHeaderRestoreObject = 'x-amz-grant-restore-object';
    AmzGrantHeaderFullControl = 'x-amz-grant-full-control';

    // Fields for POST uploads
    PostFormDataObjectKey = 'key';
    PostFormDataAcl = 'acl';
    PostFormDataRedirect = 'success_action_redirect';
    PostFormDataStatus = 'success_action_status';
    PostFormDataContentType = 'Content-Type';
    PostFormDataMetaPrefix = 'x-amz-meta-';
    PostFormDataXAmzPrefix = 'x-amz-';
    PostFormDataAccessKeyId = 'AWSAccessKeyId';
    PostFormDataPolicy = 'Policy';
    PostFormDataSignature = 'Signature';
    PostFormDataXAmzSignature = 'x-amz-signature';
    PostFormDataXAmzAlgorithm = 'x-amz-algorithm';
    PostFormDataXAmzCredential = 'x-amz-credential';
    PostFormDataXAmzDate = 'x-amz-date';
    PostFormDataSecurityToken = 'x-amz-security-token';

    AmzHeaderArchiveStatus = 'x-amz-archive-status';
    AmzHeaderBucketKeyEnabled = 'x-amz-server-side-encryption-bucket-key-enabled';
    AmzHeaderExpectedBucketOwner = 'x-amz-expected-bucket-owner';
    AmzHeaderExpectedSourceBucketOwner = 'x-amz-source-expected-bucket-owner';
    AmzHeaderMultipartPartsCount    = 'x-amz-mp-parts-count';
    AmzHeaderRequestPayer           = 'x-amz-request-payer';
    AmzHeaderRequestCharged         = 'x-amz-request-charged';
    AmzHeaderTagging                = 'x-amz-tagging';
    AmzHeaderTaggingDirective       = 'x-amz-tagging-directive';
    AmzHeaderTaggingCount           = 'x-amz-tagging-count';

    AmzHeaderRestoreOutputPath      = 'x-amz-restore-output-path';

    // Commonly used static strings
    EncryptionInstructionfileSuffix = 'INSTRUCTION_SUFFIX';
    EncryptionInstructionfileSuffixV2 = '.instruction';

    // Bucket Version strings
    BucketVersions: array[0..2] of string = ( '', 'V1', 'V2' );

    REGION_US_EAST_1 = 'us-east-1';
    REGION_EU_WEST_1 = 'eu-west-1';

    // Metadata Directives as strings
    MetadataDirectives: array[0..1] of string = ( 'COPY', 'REPLACE' );

    // S3 Bucket Versioning Configuration statuses
    VersioningOff = 'Off';
    VersioningSuspended = 'Suspended';
    VersioningEnabled = 'Enabled';

    // Error Codes
    NoSuchBucketPolicy = 'NoSuchBucketPolicy';
    NoSuchWebsiteConfiguration = 'NoSuchWebsiteConfiguration';
    NoSuchLifecycleConfiguration = 'NoSuchLifecycleConfiguration';
    NoSuchCORSConfiguration = 'NoSuchCORSConfiguration';
  end;

implementation

end.
