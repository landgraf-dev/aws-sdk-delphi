unit AWS.S3.Model.CopyObjectRequest;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.Request, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TCopyObjectRequest = class;
  
  ICopyObjectRequest = interface
    function GetACL: TObjectCannedACL;
    procedure SetACL(const Value: TObjectCannedACL);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetCacheControl: string;
    procedure SetCacheControl(const Value: string);
    function GetContentDisposition: string;
    procedure SetContentDisposition(const Value: string);
    function GetContentEncoding: string;
    procedure SetContentEncoding(const Value: string);
    function GetContentLanguage: string;
    procedure SetContentLanguage(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetCopySourceIfMatch: string;
    procedure SetCopySourceIfMatch(const Value: string);
    function GetCopySourceIfModifiedSince: TDateTime;
    procedure SetCopySourceIfModifiedSince(const Value: TDateTime);
    function GetCopySourceIfNoneMatch: string;
    procedure SetCopySourceIfNoneMatch(const Value: string);
    function GetCopySourceIfUnmodifiedSince: TDateTime;
    procedure SetCopySourceIfUnmodifiedSince(const Value: TDateTime);
    function GetCopySourceSSECustomerAlgorithm: string;
    procedure SetCopySourceSSECustomerAlgorithm(const Value: string);
    function GetCopySourceSSECustomerKey: string;
    procedure SetCopySourceSSECustomerKey(const Value: string);
    function GetCopySourceSSECustomerKeyMD5: string;
    procedure SetCopySourceSSECustomerKeyMD5(const Value: string);
    function GetDestinationBucket: string;
    procedure SetDestinationBucket(const Value: string);
    function GetDestinationKey: string;
    procedure SetDestinationKey(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetExpectedSourceBucketOwner: string;
    procedure SetExpectedSourceBucketOwner(const Value: string);
    function GetExpires: TDateTime;
    procedure SetExpires(const Value: TDateTime);
    function GetGrantFullControl: string;
    procedure SetGrantFullControl(const Value: string);
    function GetGrantRead: string;
    procedure SetGrantRead(const Value: string);
    function GetGrantReadACP: string;
    procedure SetGrantReadACP(const Value: string);
    function GetGrantWriteACP: string;
    procedure SetGrantWriteACP(const Value: string);
    function GetMetadata: TDictionary<string, string>;
    procedure SetMetadata(const Value: TDictionary<string, string>);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetMetadataDirective: TMetadataDirective;
    procedure SetMetadataDirective(const Value: TMetadataDirective);
    function GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
    procedure SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
    function GetObjectLockMode: TObjectLockMode;
    procedure SetObjectLockMode(const Value: TObjectLockMode);
    function GetObjectLockRetainUntilDate: TDateTime;
    procedure SetObjectLockRetainUntilDate(const Value: TDateTime);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetSSEKMSEncryptionContext: string;
    procedure SetSSEKMSEncryptionContext(const Value: string);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetSourceBucket: string;
    procedure SetSourceBucket(const Value: string);
    function GetSourceKey: string;
    procedure SetSourceKey(const Value: string);
    function GetSourceVersionId: string;
    procedure SetSourceVersionId(const Value: string);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetTagging: string;
    procedure SetTagging(const Value: string);
    function GetTaggingDirective: TTaggingDirective;
    procedure SetTaggingDirective(const Value: TTaggingDirective);
    function GetWebsiteRedirectLocation: string;
    procedure SetWebsiteRedirectLocation(const Value: string);
    function Obj: TCopyObjectRequest;
    function IsSetACL: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentType: Boolean;
    function IsSetCopySourceIfMatch: Boolean;
    function IsSetCopySourceIfModifiedSince: Boolean;
    function IsSetCopySourceIfNoneMatch: Boolean;
    function IsSetCopySourceIfUnmodifiedSince: Boolean;
    function IsSetCopySourceSSECustomerAlgorithm: Boolean;
    function IsSetCopySourceSSECustomerKey: Boolean;
    function IsSetCopySourceSSECustomerKeyMD5: Boolean;
    function IsSetDestinationBucket: Boolean;
    function IsSetDestinationKey: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetExpectedSourceBucketOwner: Boolean;
    function IsSetExpires: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWriteACP: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetMetadataDirective: Boolean;
    function IsSetObjectLockLegalHoldStatus: Boolean;
    function IsSetObjectLockMode: Boolean;
    function IsSetObjectLockRetainUntilDate: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSEncryptionContext: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetSourceBucket: Boolean;
    function IsSetSourceKey: Boolean;
    function IsSetSourceVersionId: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetTagging: Boolean;
    function IsSetTaggingDirective: Boolean;
    function IsSetWebsiteRedirectLocation: Boolean;
    property ACL: TObjectCannedACL read GetACL write SetACL;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentType: string read GetContentType write SetContentType;
    property CopySourceIfMatch: string read GetCopySourceIfMatch write SetCopySourceIfMatch;
    property CopySourceIfModifiedSince: TDateTime read GetCopySourceIfModifiedSince write SetCopySourceIfModifiedSince;
    property CopySourceIfNoneMatch: string read GetCopySourceIfNoneMatch write SetCopySourceIfNoneMatch;
    property CopySourceIfUnmodifiedSince: TDateTime read GetCopySourceIfUnmodifiedSince write SetCopySourceIfUnmodifiedSince;
    property CopySourceSSECustomerAlgorithm: string read GetCopySourceSSECustomerAlgorithm write SetCopySourceSSECustomerAlgorithm;
    property CopySourceSSECustomerKey: string read GetCopySourceSSECustomerKey write SetCopySourceSSECustomerKey;
    property CopySourceSSECustomerKeyMD5: string read GetCopySourceSSECustomerKeyMD5 write SetCopySourceSSECustomerKeyMD5;
    property DestinationBucket: string read GetDestinationBucket write SetDestinationBucket;
    property DestinationKey: string read GetDestinationKey write SetDestinationKey;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ExpectedSourceBucketOwner: string read GetExpectedSourceBucketOwner write SetExpectedSourceBucketOwner;
    property Expires: TDateTime read GetExpires write SetExpires;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property Metadata: TDictionary<string, string> read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property MetadataDirective: TMetadataDirective read GetMetadataDirective write SetMetadataDirective;
    property ObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus read GetObjectLockLegalHoldStatus write SetObjectLockLegalHoldStatus;
    property ObjectLockMode: TObjectLockMode read GetObjectLockMode write SetObjectLockMode;
    property ObjectLockRetainUntilDate: TDateTime read GetObjectLockRetainUntilDate write SetObjectLockRetainUntilDate;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSEncryptionContext: string read GetSSEKMSEncryptionContext write SetSSEKMSEncryptionContext;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property SourceBucket: string read GetSourceBucket write SetSourceBucket;
    property SourceKey: string read GetSourceKey write SetSourceKey;
    property SourceVersionId: string read GetSourceVersionId write SetSourceVersionId;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property Tagging: string read GetTagging write SetTagging;
    property TaggingDirective: TTaggingDirective read GetTaggingDirective write SetTaggingDirective;
    property WebsiteRedirectLocation: string read GetWebsiteRedirectLocation write SetWebsiteRedirectLocation;
  end;
  
  TCopyObjectRequest = class(TAmazonS3Request, ICopyObjectRequest)
  strict private
    FACL: Nullable<TObjectCannedACL>;
    FBucketKeyEnabled: Nullable<Boolean>;
    FCacheControl: Nullable<string>;
    FContentDisposition: Nullable<string>;
    FContentEncoding: Nullable<string>;
    FContentLanguage: Nullable<string>;
    FContentType: Nullable<string>;
    FCopySourceIfMatch: Nullable<string>;
    FCopySourceIfModifiedSince: Nullable<TDateTime>;
    FCopySourceIfNoneMatch: Nullable<string>;
    FCopySourceIfUnmodifiedSince: Nullable<TDateTime>;
    FCopySourceSSECustomerAlgorithm: Nullable<string>;
    FCopySourceSSECustomerKey: Nullable<string>;
    FCopySourceSSECustomerKeyMD5: Nullable<string>;
    FDestinationBucket: Nullable<string>;
    FDestinationKey: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FExpectedSourceBucketOwner: Nullable<string>;
    FExpires: Nullable<TDateTime>;
    FGrantFullControl: Nullable<string>;
    FGrantRead: Nullable<string>;
    FGrantReadACP: Nullable<string>;
    FGrantWriteACP: Nullable<string>;
    FMetadata: TDictionary<string, string>;
    FKeepMetadata: Boolean;
    FMetadataDirective: Nullable<TMetadataDirective>;
    FObjectLockLegalHoldStatus: Nullable<TObjectLockLegalHoldStatus>;
    FObjectLockMode: Nullable<TObjectLockMode>;
    FObjectLockRetainUntilDate: Nullable<TDateTime>;
    FRequestPayer: Nullable<TRequestPayer>;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKey: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FSSEKMSEncryptionContext: Nullable<string>;
    FSSEKMSKeyId: Nullable<string>;
    FServerSideEncryption: Nullable<TServerSideEncryption>;
    FSourceBucket: Nullable<string>;
    FSourceKey: Nullable<string>;
    FSourceVersionId: Nullable<string>;
    FStorageClass: Nullable<TStorageClass>;
    FTagging: Nullable<string>;
    FTaggingDirective: Nullable<TTaggingDirective>;
    FWebsiteRedirectLocation: Nullable<string>;
    function GetACL: TObjectCannedACL;
    procedure SetACL(const Value: TObjectCannedACL);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetCacheControl: string;
    procedure SetCacheControl(const Value: string);
    function GetContentDisposition: string;
    procedure SetContentDisposition(const Value: string);
    function GetContentEncoding: string;
    procedure SetContentEncoding(const Value: string);
    function GetContentLanguage: string;
    procedure SetContentLanguage(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetCopySourceIfMatch: string;
    procedure SetCopySourceIfMatch(const Value: string);
    function GetCopySourceIfModifiedSince: TDateTime;
    procedure SetCopySourceIfModifiedSince(const Value: TDateTime);
    function GetCopySourceIfNoneMatch: string;
    procedure SetCopySourceIfNoneMatch(const Value: string);
    function GetCopySourceIfUnmodifiedSince: TDateTime;
    procedure SetCopySourceIfUnmodifiedSince(const Value: TDateTime);
    function GetCopySourceSSECustomerAlgorithm: string;
    procedure SetCopySourceSSECustomerAlgorithm(const Value: string);
    function GetCopySourceSSECustomerKey: string;
    procedure SetCopySourceSSECustomerKey(const Value: string);
    function GetCopySourceSSECustomerKeyMD5: string;
    procedure SetCopySourceSSECustomerKeyMD5(const Value: string);
    function GetDestinationBucket: string;
    procedure SetDestinationBucket(const Value: string);
    function GetDestinationKey: string;
    procedure SetDestinationKey(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetExpectedSourceBucketOwner: string;
    procedure SetExpectedSourceBucketOwner(const Value: string);
    function GetExpires: TDateTime;
    procedure SetExpires(const Value: TDateTime);
    function GetGrantFullControl: string;
    procedure SetGrantFullControl(const Value: string);
    function GetGrantRead: string;
    procedure SetGrantRead(const Value: string);
    function GetGrantReadACP: string;
    procedure SetGrantReadACP(const Value: string);
    function GetGrantWriteACP: string;
    procedure SetGrantWriteACP(const Value: string);
    function GetMetadata: TDictionary<string, string>;
    procedure SetMetadata(const Value: TDictionary<string, string>);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetMetadataDirective: TMetadataDirective;
    procedure SetMetadataDirective(const Value: TMetadataDirective);
    function GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
    procedure SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
    function GetObjectLockMode: TObjectLockMode;
    procedure SetObjectLockMode(const Value: TObjectLockMode);
    function GetObjectLockRetainUntilDate: TDateTime;
    procedure SetObjectLockRetainUntilDate(const Value: TDateTime);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetSSEKMSEncryptionContext: string;
    procedure SetSSEKMSEncryptionContext(const Value: string);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetSourceBucket: string;
    procedure SetSourceBucket(const Value: string);
    function GetSourceKey: string;
    procedure SetSourceKey(const Value: string);
    function GetSourceVersionId: string;
    procedure SetSourceVersionId(const Value: string);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetTagging: string;
    procedure SetTagging(const Value: string);
    function GetTaggingDirective: TTaggingDirective;
    procedure SetTaggingDirective(const Value: TTaggingDirective);
    function GetWebsiteRedirectLocation: string;
    procedure SetWebsiteRedirectLocation(const Value: string);
  strict protected
    function Obj: TCopyObjectRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetACL: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentType: Boolean;
    function IsSetCopySourceIfMatch: Boolean;
    function IsSetCopySourceIfModifiedSince: Boolean;
    function IsSetCopySourceIfNoneMatch: Boolean;
    function IsSetCopySourceIfUnmodifiedSince: Boolean;
    function IsSetCopySourceSSECustomerAlgorithm: Boolean;
    function IsSetCopySourceSSECustomerKey: Boolean;
    function IsSetCopySourceSSECustomerKeyMD5: Boolean;
    function IsSetDestinationBucket: Boolean;
    function IsSetDestinationKey: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetExpectedSourceBucketOwner: Boolean;
    function IsSetExpires: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWriteACP: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetMetadataDirective: Boolean;
    function IsSetObjectLockLegalHoldStatus: Boolean;
    function IsSetObjectLockMode: Boolean;
    function IsSetObjectLockRetainUntilDate: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSEncryptionContext: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetSourceBucket: Boolean;
    function IsSetSourceKey: Boolean;
    function IsSetSourceVersionId: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetTagging: Boolean;
    function IsSetTaggingDirective: Boolean;
    function IsSetWebsiteRedirectLocation: Boolean;
    property ACL: TObjectCannedACL read GetACL write SetACL;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentType: string read GetContentType write SetContentType;
    property CopySourceIfMatch: string read GetCopySourceIfMatch write SetCopySourceIfMatch;
    property CopySourceIfModifiedSince: TDateTime read GetCopySourceIfModifiedSince write SetCopySourceIfModifiedSince;
    property CopySourceIfNoneMatch: string read GetCopySourceIfNoneMatch write SetCopySourceIfNoneMatch;
    property CopySourceIfUnmodifiedSince: TDateTime read GetCopySourceIfUnmodifiedSince write SetCopySourceIfUnmodifiedSince;
    property CopySourceSSECustomerAlgorithm: string read GetCopySourceSSECustomerAlgorithm write SetCopySourceSSECustomerAlgorithm;
    property CopySourceSSECustomerKey: string read GetCopySourceSSECustomerKey write SetCopySourceSSECustomerKey;
    property CopySourceSSECustomerKeyMD5: string read GetCopySourceSSECustomerKeyMD5 write SetCopySourceSSECustomerKeyMD5;
    property DestinationBucket: string read GetDestinationBucket write SetDestinationBucket;
    property DestinationKey: string read GetDestinationKey write SetDestinationKey;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ExpectedSourceBucketOwner: string read GetExpectedSourceBucketOwner write SetExpectedSourceBucketOwner;
    property Expires: TDateTime read GetExpires write SetExpires;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property Metadata: TDictionary<string, string> read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property MetadataDirective: TMetadataDirective read GetMetadataDirective write SetMetadataDirective;
    property ObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus read GetObjectLockLegalHoldStatus write SetObjectLockLegalHoldStatus;
    property ObjectLockMode: TObjectLockMode read GetObjectLockMode write SetObjectLockMode;
    property ObjectLockRetainUntilDate: TDateTime read GetObjectLockRetainUntilDate write SetObjectLockRetainUntilDate;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSEncryptionContext: string read GetSSEKMSEncryptionContext write SetSSEKMSEncryptionContext;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property SourceBucket: string read GetSourceBucket write SetSourceBucket;
    property SourceKey: string read GetSourceKey write SetSourceKey;
    property SourceVersionId: string read GetSourceVersionId write SetSourceVersionId;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property Tagging: string read GetTagging write SetTagging;
    property TaggingDirective: TTaggingDirective read GetTaggingDirective write SetTaggingDirective;
    property WebsiteRedirectLocation: string read GetWebsiteRedirectLocation write SetWebsiteRedirectLocation;
  end;
  
implementation

{ TCopyObjectRequest }

constructor TCopyObjectRequest.Create;
begin
  inherited;
  FMetadata := TDictionary<string, string>.Create;
end;

destructor TCopyObjectRequest.Destroy;
begin
  Metadata := nil;
  inherited;
end;

function TCopyObjectRequest.Obj: TCopyObjectRequest;
begin
  Result := Self;
end;

function TCopyObjectRequest.GetACL: TObjectCannedACL;
begin
  Result := FACL.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetACL(const Value: TObjectCannedACL);
begin
  FACL := Value;
end;

function TCopyObjectRequest.IsSetACL: Boolean;
begin
  Result := FACL.HasValue;
end;

function TCopyObjectRequest.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TCopyObjectRequest.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TCopyObjectRequest.GetCacheControl: string;
begin
  Result := FCacheControl.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetCacheControl(const Value: string);
begin
  FCacheControl := Value;
end;

function TCopyObjectRequest.IsSetCacheControl: Boolean;
begin
  Result := FCacheControl.HasValue;
end;

function TCopyObjectRequest.GetContentDisposition: string;
begin
  Result := FContentDisposition.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetContentDisposition(const Value: string);
begin
  FContentDisposition := Value;
end;

function TCopyObjectRequest.IsSetContentDisposition: Boolean;
begin
  Result := FContentDisposition.HasValue;
end;

function TCopyObjectRequest.GetContentEncoding: string;
begin
  Result := FContentEncoding.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetContentEncoding(const Value: string);
begin
  FContentEncoding := Value;
end;

function TCopyObjectRequest.IsSetContentEncoding: Boolean;
begin
  Result := FContentEncoding.HasValue;
end;

function TCopyObjectRequest.GetContentLanguage: string;
begin
  Result := FContentLanguage.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetContentLanguage(const Value: string);
begin
  FContentLanguage := Value;
end;

function TCopyObjectRequest.IsSetContentLanguage: Boolean;
begin
  Result := FContentLanguage.HasValue;
end;

function TCopyObjectRequest.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TCopyObjectRequest.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TCopyObjectRequest.GetCopySourceIfMatch: string;
begin
  Result := FCopySourceIfMatch.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetCopySourceIfMatch(const Value: string);
begin
  FCopySourceIfMatch := Value;
end;

function TCopyObjectRequest.IsSetCopySourceIfMatch: Boolean;
begin
  Result := FCopySourceIfMatch.HasValue;
end;

function TCopyObjectRequest.GetCopySourceIfModifiedSince: TDateTime;
begin
  Result := FCopySourceIfModifiedSince.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetCopySourceIfModifiedSince(const Value: TDateTime);
begin
  FCopySourceIfModifiedSince := Value;
end;

function TCopyObjectRequest.IsSetCopySourceIfModifiedSince: Boolean;
begin
  Result := FCopySourceIfModifiedSince.HasValue;
end;

function TCopyObjectRequest.GetCopySourceIfNoneMatch: string;
begin
  Result := FCopySourceIfNoneMatch.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetCopySourceIfNoneMatch(const Value: string);
begin
  FCopySourceIfNoneMatch := Value;
end;

function TCopyObjectRequest.IsSetCopySourceIfNoneMatch: Boolean;
begin
  Result := FCopySourceIfNoneMatch.HasValue;
end;

function TCopyObjectRequest.GetCopySourceIfUnmodifiedSince: TDateTime;
begin
  Result := FCopySourceIfUnmodifiedSince.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetCopySourceIfUnmodifiedSince(const Value: TDateTime);
begin
  FCopySourceIfUnmodifiedSince := Value;
end;

function TCopyObjectRequest.IsSetCopySourceIfUnmodifiedSince: Boolean;
begin
  Result := FCopySourceIfUnmodifiedSince.HasValue;
end;

function TCopyObjectRequest.GetCopySourceSSECustomerAlgorithm: string;
begin
  Result := FCopySourceSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetCopySourceSSECustomerAlgorithm(const Value: string);
begin
  FCopySourceSSECustomerAlgorithm := Value;
end;

function TCopyObjectRequest.IsSetCopySourceSSECustomerAlgorithm: Boolean;
begin
  Result := FCopySourceSSECustomerAlgorithm.HasValue;
end;

function TCopyObjectRequest.GetCopySourceSSECustomerKey: string;
begin
  Result := FCopySourceSSECustomerKey.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetCopySourceSSECustomerKey(const Value: string);
begin
  FCopySourceSSECustomerKey := Value;
end;

function TCopyObjectRequest.IsSetCopySourceSSECustomerKey: Boolean;
begin
  Result := FCopySourceSSECustomerKey.HasValue;
end;

function TCopyObjectRequest.GetCopySourceSSECustomerKeyMD5: string;
begin
  Result := FCopySourceSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetCopySourceSSECustomerKeyMD5(const Value: string);
begin
  FCopySourceSSECustomerKeyMD5 := Value;
end;

function TCopyObjectRequest.IsSetCopySourceSSECustomerKeyMD5: Boolean;
begin
  Result := FCopySourceSSECustomerKeyMD5.HasValue;
end;

function TCopyObjectRequest.GetDestinationBucket: string;
begin
  Result := FDestinationBucket.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetDestinationBucket(const Value: string);
begin
  FDestinationBucket := Value;
end;

function TCopyObjectRequest.IsSetDestinationBucket: Boolean;
begin
  Result := FDestinationBucket.HasValue;
end;

function TCopyObjectRequest.GetDestinationKey: string;
begin
  Result := FDestinationKey.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetDestinationKey(const Value: string);
begin
  FDestinationKey := Value;
end;

function TCopyObjectRequest.IsSetDestinationKey: Boolean;
begin
  Result := FDestinationKey.HasValue;
end;

function TCopyObjectRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TCopyObjectRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TCopyObjectRequest.GetExpectedSourceBucketOwner: string;
begin
  Result := FExpectedSourceBucketOwner.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetExpectedSourceBucketOwner(const Value: string);
begin
  FExpectedSourceBucketOwner := Value;
end;

function TCopyObjectRequest.IsSetExpectedSourceBucketOwner: Boolean;
begin
  Result := FExpectedSourceBucketOwner.HasValue;
end;

function TCopyObjectRequest.GetExpires: TDateTime;
begin
  Result := FExpires.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetExpires(const Value: TDateTime);
begin
  FExpires := Value;
end;

function TCopyObjectRequest.IsSetExpires: Boolean;
begin
  Result := FExpires.HasValue;
end;

function TCopyObjectRequest.GetGrantFullControl: string;
begin
  Result := FGrantFullControl.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetGrantFullControl(const Value: string);
begin
  FGrantFullControl := Value;
end;

function TCopyObjectRequest.IsSetGrantFullControl: Boolean;
begin
  Result := FGrantFullControl.HasValue;
end;

function TCopyObjectRequest.GetGrantRead: string;
begin
  Result := FGrantRead.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetGrantRead(const Value: string);
begin
  FGrantRead := Value;
end;

function TCopyObjectRequest.IsSetGrantRead: Boolean;
begin
  Result := FGrantRead.HasValue;
end;

function TCopyObjectRequest.GetGrantReadACP: string;
begin
  Result := FGrantReadACP.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetGrantReadACP(const Value: string);
begin
  FGrantReadACP := Value;
end;

function TCopyObjectRequest.IsSetGrantReadACP: Boolean;
begin
  Result := FGrantReadACP.HasValue;
end;

function TCopyObjectRequest.GetGrantWriteACP: string;
begin
  Result := FGrantWriteACP.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetGrantWriteACP(const Value: string);
begin
  FGrantWriteACP := Value;
end;

function TCopyObjectRequest.IsSetGrantWriteACP: Boolean;
begin
  Result := FGrantWriteACP.HasValue;
end;

function TCopyObjectRequest.GetMetadata: TDictionary<string, string>;
begin
  Result := FMetadata;
end;

procedure TCopyObjectRequest.SetMetadata(const Value: TDictionary<string, string>);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TCopyObjectRequest.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TCopyObjectRequest.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TCopyObjectRequest.IsSetMetadata: Boolean;
begin
  Result := (FMetadata <> nil) and (FMetadata.Count > 0);
end;

function TCopyObjectRequest.GetMetadataDirective: TMetadataDirective;
begin
  Result := FMetadataDirective.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetMetadataDirective(const Value: TMetadataDirective);
begin
  FMetadataDirective := Value;
end;

function TCopyObjectRequest.IsSetMetadataDirective: Boolean;
begin
  Result := FMetadataDirective.HasValue;
end;

function TCopyObjectRequest.GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
begin
  Result := FObjectLockLegalHoldStatus.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
begin
  FObjectLockLegalHoldStatus := Value;
end;

function TCopyObjectRequest.IsSetObjectLockLegalHoldStatus: Boolean;
begin
  Result := FObjectLockLegalHoldStatus.HasValue;
end;

function TCopyObjectRequest.GetObjectLockMode: TObjectLockMode;
begin
  Result := FObjectLockMode.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetObjectLockMode(const Value: TObjectLockMode);
begin
  FObjectLockMode := Value;
end;

function TCopyObjectRequest.IsSetObjectLockMode: Boolean;
begin
  Result := FObjectLockMode.HasValue;
end;

function TCopyObjectRequest.GetObjectLockRetainUntilDate: TDateTime;
begin
  Result := FObjectLockRetainUntilDate.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetObjectLockRetainUntilDate(const Value: TDateTime);
begin
  FObjectLockRetainUntilDate := Value;
end;

function TCopyObjectRequest.IsSetObjectLockRetainUntilDate: Boolean;
begin
  Result := FObjectLockRetainUntilDate.HasValue;
end;

function TCopyObjectRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TCopyObjectRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TCopyObjectRequest.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TCopyObjectRequest.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TCopyObjectRequest.GetSSECustomerKey: string;
begin
  Result := FSSECustomerKey.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetSSECustomerKey(const Value: string);
begin
  FSSECustomerKey := Value;
end;

function TCopyObjectRequest.IsSetSSECustomerKey: Boolean;
begin
  Result := FSSECustomerKey.HasValue;
end;

function TCopyObjectRequest.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TCopyObjectRequest.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TCopyObjectRequest.GetSSEKMSEncryptionContext: string;
begin
  Result := FSSEKMSEncryptionContext.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetSSEKMSEncryptionContext(const Value: string);
begin
  FSSEKMSEncryptionContext := Value;
end;

function TCopyObjectRequest.IsSetSSEKMSEncryptionContext: Boolean;
begin
  Result := FSSEKMSEncryptionContext.HasValue;
end;

function TCopyObjectRequest.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TCopyObjectRequest.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TCopyObjectRequest.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TCopyObjectRequest.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TCopyObjectRequest.GetSourceBucket: string;
begin
  Result := FSourceBucket.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetSourceBucket(const Value: string);
begin
  FSourceBucket := Value;
end;

function TCopyObjectRequest.IsSetSourceBucket: Boolean;
begin
  Result := FSourceBucket.HasValue;
end;

function TCopyObjectRequest.GetSourceKey: string;
begin
  Result := FSourceKey.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetSourceKey(const Value: string);
begin
  FSourceKey := Value;
end;

function TCopyObjectRequest.IsSetSourceKey: Boolean;
begin
  Result := FSourceKey.HasValue;
end;

function TCopyObjectRequest.GetSourceVersionId: string;
begin
  Result := FSourceVersionId.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetSourceVersionId(const Value: string);
begin
  FSourceVersionId := Value;
end;

function TCopyObjectRequest.IsSetSourceVersionId: Boolean;
begin
  Result := FSourceVersionId.HasValue;
end;

function TCopyObjectRequest.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function TCopyObjectRequest.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TCopyObjectRequest.GetTagging: string;
begin
  Result := FTagging.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetTagging(const Value: string);
begin
  FTagging := Value;
end;

function TCopyObjectRequest.IsSetTagging: Boolean;
begin
  Result := FTagging.HasValue;
end;

function TCopyObjectRequest.GetTaggingDirective: TTaggingDirective;
begin
  Result := FTaggingDirective.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetTaggingDirective(const Value: TTaggingDirective);
begin
  FTaggingDirective := Value;
end;

function TCopyObjectRequest.IsSetTaggingDirective: Boolean;
begin
  Result := FTaggingDirective.HasValue;
end;

function TCopyObjectRequest.GetWebsiteRedirectLocation: string;
begin
  Result := FWebsiteRedirectLocation.ValueOrDefault;
end;

procedure TCopyObjectRequest.SetWebsiteRedirectLocation(const Value: string);
begin
  FWebsiteRedirectLocation := Value;
end;

function TCopyObjectRequest.IsSetWebsiteRedirectLocation: Boolean;
begin
  Result := FWebsiteRedirectLocation.HasValue;
end;

end.
