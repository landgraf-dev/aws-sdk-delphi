unit AWS.S3.Model.InitiateMultipartUploadRequest;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.Request, 
  AWS.Nullable, 
  AWS.S3.Enums, 
  AWS.S3.Model.HeadersCollection, 
  AWS.S3.Model.MetadataCollection;

type
  TInitiateMultipartUploadRequest = class;
  
  IInitiateMultipartUploadRequest = interface
    function GetACL: TObjectCannedACL;
    procedure SetACL(const Value: TObjectCannedACL);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
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
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
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
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMetadata: TMetadataCollection;
    procedure SetMetadata(const Value: TMetadataCollection);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
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
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetTagging: string;
    procedure SetTagging(const Value: string);
    function GetWebsiteRedirectLocation: string;
    procedure SetWebsiteRedirectLocation(const Value: string);
    function GetHeaders: THeadersCollection;
    procedure SetHeaders(const Value: THeadersCollection);
    function GetKeepHeaders: Boolean;
    procedure SetKeepHeaders(const Value: Boolean);
    function Obj: TInitiateMultipartUploadRequest;
    function IsSetACL: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetExpires: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWriteACP: Boolean;
    function IsSetKey: Boolean;
    function IsSetMetadata: Boolean;
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
    function IsSetStorageClass: Boolean;
    function IsSetTagging: Boolean;
    function IsSetWebsiteRedirectLocation: Boolean;
    property ACL: TObjectCannedACL read GetACL write SetACL;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property BucketName: string read GetBucketName write SetBucketName;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentType: string read GetContentType write SetContentType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Expires: TDateTime read GetExpires write SetExpires;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property Key: string read GetKey write SetKey;
    property Metadata: TMetadataCollection read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
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
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property Tagging: string read GetTagging write SetTagging;
    property WebsiteRedirectLocation: string read GetWebsiteRedirectLocation write SetWebsiteRedirectLocation;
    property Headers: THeadersCollection read GetHeaders write SetHeaders;
  end;
  
  TInitiateMultipartUploadRequest = class(TAmazonS3Request, IInitiateMultipartUploadRequest)
  strict private
    FACL: Nullable<TObjectCannedACL>;
    FBucketKeyEnabled: Nullable<Boolean>;
    FBucketName: Nullable<string>;
    FCacheControl: Nullable<string>;
    FContentDisposition: Nullable<string>;
    FContentEncoding: Nullable<string>;
    FContentLanguage: Nullable<string>;
    FContentType: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FExpires: Nullable<TDateTime>;
    FGrantFullControl: Nullable<string>;
    FGrantRead: Nullable<string>;
    FGrantReadACP: Nullable<string>;
    FGrantWriteACP: Nullable<string>;
    FKey: Nullable<string>;
    FMetadata: TMetadataCollection;
    FKeepMetadata: Boolean;
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
    FStorageClass: Nullable<TStorageClass>;
    FTagging: Nullable<string>;
    FWebsiteRedirectLocation: Nullable<string>;
    FHeaders: THeadersCollection;
    FKeepHeaders: Boolean;
    function GetACL: TObjectCannedACL;
    procedure SetACL(const Value: TObjectCannedACL);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
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
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
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
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMetadata: TMetadataCollection;
    procedure SetMetadata(const Value: TMetadataCollection);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
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
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetTagging: string;
    procedure SetTagging(const Value: string);
    function GetWebsiteRedirectLocation: string;
    procedure SetWebsiteRedirectLocation(const Value: string);
    function GetHeaders: THeadersCollection;
    procedure SetHeaders(const Value: THeadersCollection);
    function GetKeepHeaders: Boolean;
    procedure SetKeepHeaders(const Value: Boolean);
  strict protected
    function Obj: TInitiateMultipartUploadRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetACL: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetExpires: Boolean;
    function IsSetGrantFullControl: Boolean;
    function IsSetGrantRead: Boolean;
    function IsSetGrantReadACP: Boolean;
    function IsSetGrantWriteACP: Boolean;
    function IsSetKey: Boolean;
    function IsSetMetadata: Boolean;
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
    function IsSetStorageClass: Boolean;
    function IsSetTagging: Boolean;
    function IsSetWebsiteRedirectLocation: Boolean;
    property ACL: TObjectCannedACL read GetACL write SetACL;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property BucketName: string read GetBucketName write SetBucketName;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentType: string read GetContentType write SetContentType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Expires: TDateTime read GetExpires write SetExpires;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property Key: string read GetKey write SetKey;
    property Metadata: TMetadataCollection read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
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
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property Tagging: string read GetTagging write SetTagging;
    property WebsiteRedirectLocation: string read GetWebsiteRedirectLocation write SetWebsiteRedirectLocation;
    property Headers: THeadersCollection read GetHeaders write SetHeaders;
    property KeepHeaders: Boolean read GetKeepHeaders write SetKeepHeaders;
  end;
  
implementation

{ TInitiateMultipartUploadRequest }

constructor TInitiateMultipartUploadRequest.Create;
begin
  inherited;
  FMetadata := TMetadataCollection.Create;
  FHeaders := THeadersCollection.Create;
end;

destructor TInitiateMultipartUploadRequest.Destroy;
begin
  Headers := nil;
  Metadata := nil;
  inherited;
end;

function TInitiateMultipartUploadRequest.Obj: TInitiateMultipartUploadRequest;
begin
  Result := Self;
end;

function TInitiateMultipartUploadRequest.GetACL: TObjectCannedACL;
begin
  Result := FACL.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetACL(const Value: TObjectCannedACL);
begin
  FACL := Value;
end;

function TInitiateMultipartUploadRequest.IsSetACL: Boolean;
begin
  Result := FACL.HasValue;
end;

function TInitiateMultipartUploadRequest.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TInitiateMultipartUploadRequest.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TInitiateMultipartUploadRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TInitiateMultipartUploadRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TInitiateMultipartUploadRequest.GetCacheControl: string;
begin
  Result := FCacheControl.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetCacheControl(const Value: string);
begin
  FCacheControl := Value;
end;

function TInitiateMultipartUploadRequest.IsSetCacheControl: Boolean;
begin
  Result := FCacheControl.HasValue;
end;

function TInitiateMultipartUploadRequest.GetContentDisposition: string;
begin
  Result := FContentDisposition.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetContentDisposition(const Value: string);
begin
  FContentDisposition := Value;
end;

function TInitiateMultipartUploadRequest.IsSetContentDisposition: Boolean;
begin
  Result := FContentDisposition.HasValue;
end;

function TInitiateMultipartUploadRequest.GetContentEncoding: string;
begin
  Result := FContentEncoding.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetContentEncoding(const Value: string);
begin
  FContentEncoding := Value;
end;

function TInitiateMultipartUploadRequest.IsSetContentEncoding: Boolean;
begin
  Result := FContentEncoding.HasValue;
end;

function TInitiateMultipartUploadRequest.GetContentLanguage: string;
begin
  Result := FContentLanguage.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetContentLanguage(const Value: string);
begin
  FContentLanguage := Value;
end;

function TInitiateMultipartUploadRequest.IsSetContentLanguage: Boolean;
begin
  Result := FContentLanguage.HasValue;
end;

function TInitiateMultipartUploadRequest.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TInitiateMultipartUploadRequest.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TInitiateMultipartUploadRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TInitiateMultipartUploadRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TInitiateMultipartUploadRequest.GetExpires: TDateTime;
begin
  Result := FExpires.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetExpires(const Value: TDateTime);
begin
  FExpires := Value;
end;

function TInitiateMultipartUploadRequest.IsSetExpires: Boolean;
begin
  Result := FExpires.HasValue;
end;

function TInitiateMultipartUploadRequest.GetGrantFullControl: string;
begin
  Result := FGrantFullControl.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetGrantFullControl(const Value: string);
begin
  FGrantFullControl := Value;
end;

function TInitiateMultipartUploadRequest.IsSetGrantFullControl: Boolean;
begin
  Result := FGrantFullControl.HasValue;
end;

function TInitiateMultipartUploadRequest.GetGrantRead: string;
begin
  Result := FGrantRead.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetGrantRead(const Value: string);
begin
  FGrantRead := Value;
end;

function TInitiateMultipartUploadRequest.IsSetGrantRead: Boolean;
begin
  Result := FGrantRead.HasValue;
end;

function TInitiateMultipartUploadRequest.GetGrantReadACP: string;
begin
  Result := FGrantReadACP.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetGrantReadACP(const Value: string);
begin
  FGrantReadACP := Value;
end;

function TInitiateMultipartUploadRequest.IsSetGrantReadACP: Boolean;
begin
  Result := FGrantReadACP.HasValue;
end;

function TInitiateMultipartUploadRequest.GetGrantWriteACP: string;
begin
  Result := FGrantWriteACP.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetGrantWriteACP(const Value: string);
begin
  FGrantWriteACP := Value;
end;

function TInitiateMultipartUploadRequest.IsSetGrantWriteACP: Boolean;
begin
  Result := FGrantWriteACP.HasValue;
end;

function TInitiateMultipartUploadRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TInitiateMultipartUploadRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TInitiateMultipartUploadRequest.GetMetadata: TMetadataCollection;
begin
  Result := FMetadata;
end;

procedure TInitiateMultipartUploadRequest.SetMetadata(const Value: TMetadataCollection);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TInitiateMultipartUploadRequest.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TInitiateMultipartUploadRequest.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TInitiateMultipartUploadRequest.IsSetMetadata: Boolean;
begin
  Result := (FMetadata <> nil) and (FMetadata.Count > 0);
end;

function TInitiateMultipartUploadRequest.GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
begin
  Result := FObjectLockLegalHoldStatus.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
begin
  FObjectLockLegalHoldStatus := Value;
end;

function TInitiateMultipartUploadRequest.IsSetObjectLockLegalHoldStatus: Boolean;
begin
  Result := FObjectLockLegalHoldStatus.HasValue;
end;

function TInitiateMultipartUploadRequest.GetObjectLockMode: TObjectLockMode;
begin
  Result := FObjectLockMode.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetObjectLockMode(const Value: TObjectLockMode);
begin
  FObjectLockMode := Value;
end;

function TInitiateMultipartUploadRequest.IsSetObjectLockMode: Boolean;
begin
  Result := FObjectLockMode.HasValue;
end;

function TInitiateMultipartUploadRequest.GetObjectLockRetainUntilDate: TDateTime;
begin
  Result := FObjectLockRetainUntilDate.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetObjectLockRetainUntilDate(const Value: TDateTime);
begin
  FObjectLockRetainUntilDate := Value;
end;

function TInitiateMultipartUploadRequest.IsSetObjectLockRetainUntilDate: Boolean;
begin
  Result := FObjectLockRetainUntilDate.HasValue;
end;

function TInitiateMultipartUploadRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TInitiateMultipartUploadRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TInitiateMultipartUploadRequest.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TInitiateMultipartUploadRequest.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TInitiateMultipartUploadRequest.GetSSECustomerKey: string;
begin
  Result := FSSECustomerKey.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetSSECustomerKey(const Value: string);
begin
  FSSECustomerKey := Value;
end;

function TInitiateMultipartUploadRequest.IsSetSSECustomerKey: Boolean;
begin
  Result := FSSECustomerKey.HasValue;
end;

function TInitiateMultipartUploadRequest.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TInitiateMultipartUploadRequest.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TInitiateMultipartUploadRequest.GetSSEKMSEncryptionContext: string;
begin
  Result := FSSEKMSEncryptionContext.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetSSEKMSEncryptionContext(const Value: string);
begin
  FSSEKMSEncryptionContext := Value;
end;

function TInitiateMultipartUploadRequest.IsSetSSEKMSEncryptionContext: Boolean;
begin
  Result := FSSEKMSEncryptionContext.HasValue;
end;

function TInitiateMultipartUploadRequest.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TInitiateMultipartUploadRequest.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TInitiateMultipartUploadRequest.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TInitiateMultipartUploadRequest.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TInitiateMultipartUploadRequest.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function TInitiateMultipartUploadRequest.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TInitiateMultipartUploadRequest.GetTagging: string;
begin
  Result := FTagging.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetTagging(const Value: string);
begin
  FTagging := Value;
end;

function TInitiateMultipartUploadRequest.IsSetTagging: Boolean;
begin
  Result := FTagging.HasValue;
end;

function TInitiateMultipartUploadRequest.GetWebsiteRedirectLocation: string;
begin
  Result := FWebsiteRedirectLocation.ValueOrDefault;
end;

procedure TInitiateMultipartUploadRequest.SetWebsiteRedirectLocation(const Value: string);
begin
  FWebsiteRedirectLocation := Value;
end;

function TInitiateMultipartUploadRequest.IsSetWebsiteRedirectLocation: Boolean;
begin
  Result := FWebsiteRedirectLocation.HasValue;
end;

function TInitiateMultipartUploadRequest.GetHeaders: THeadersCollection;
begin
  Result := FHeaders;
end;

procedure TInitiateMultipartUploadRequest.SetHeaders(const Value: THeadersCollection);
begin
  if FHeaders <> Value then
  begin
    if not KeepHeaders then
      FHeaders.Free;
    FHeaders := Value;
  end;
end;

function TInitiateMultipartUploadRequest.GetKeepHeaders: Boolean;
begin
  Result := FKeepHeaders;
end;

procedure TInitiateMultipartUploadRequest.SetKeepHeaders(const Value: Boolean);
begin
  FKeepHeaders := Value;
end;

end.
