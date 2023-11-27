unit AWS.S3.Model.PutObjectRequest;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums, 
  System.Classes;

type
  TPutObjectRequest = class;
  
  IPutObjectRequest = interface
    function GetACL: TObjectCannedACL;
    procedure SetACL(const Value: TObjectCannedACL);
    function GetBody: TStream;
    procedure SetBody(const Value: TStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
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
    function GetContentLength: Int64;
    procedure SetContentLength(const Value: Int64);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
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
    function GetMetadata: TDictionary<string, string>;
    procedure SetMetadata(const Value: TDictionary<string, string>);
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
    function Obj: TPutObjectRequest;
    function IsSetACL: Boolean;
    function IsSetBody: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentLength: Boolean;
    function IsSetContentMD5: Boolean;
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
    property Body: TStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property BucketName: string read GetBucketName write SetBucketName;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentLength: Int64 read GetContentLength write SetContentLength;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ContentType: string read GetContentType write SetContentType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Expires: TDateTime read GetExpires write SetExpires;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property Key: string read GetKey write SetKey;
    property Metadata: TDictionary<string, string> read GetMetadata write SetMetadata;
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
  end;
  
  TPutObjectRequest = class(TAmazonS3Request, IPutObjectRequest)
  strict private
    FACL: Nullable<TObjectCannedACL>;
    FBody: TStream;
    FKeepBody: Boolean;
    FBucketKeyEnabled: Nullable<Boolean>;
    FBucketName: Nullable<string>;
    FCacheControl: Nullable<string>;
    FContentDisposition: Nullable<string>;
    FContentEncoding: Nullable<string>;
    FContentLanguage: Nullable<string>;
    FContentLength: Nullable<Int64>;
    FContentMD5: Nullable<string>;
    FContentType: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FExpires: Nullable<TDateTime>;
    FGrantFullControl: Nullable<string>;
    FGrantRead: Nullable<string>;
    FGrantReadACP: Nullable<string>;
    FGrantWriteACP: Nullable<string>;
    FKey: Nullable<string>;
    FMetadata: TDictionary<string, string>;
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
    FFilePath: string;
    FContentBody: string;
    FAutoResetStreamPosition: Boolean;
    function GetACL: TObjectCannedACL;
    procedure SetACL(const Value: TObjectCannedACL);
    function GetBody: TStream;
    procedure SetBody(const Value: TStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
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
    function GetContentLength: Int64;
    procedure SetContentLength(const Value: Int64);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
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
    function GetMetadata: TDictionary<string, string>;
    procedure SetMetadata(const Value: TDictionary<string, string>);
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
  strict protected
    function Obj: TPutObjectRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetACL: Boolean;
    function IsSetBody: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentLength: Boolean;
    function IsSetContentMD5: Boolean;
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
    property Body: TStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property BucketName: string read GetBucketName write SetBucketName;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentLength: Int64 read GetContentLength write SetContentLength;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ContentType: string read GetContentType write SetContentType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Expires: TDateTime read GetExpires write SetExpires;
    property GrantFullControl: string read GetGrantFullControl write SetGrantFullControl;
    property GrantRead: string read GetGrantRead write SetGrantRead;
    property GrantReadACP: string read GetGrantReadACP write SetGrantReadACP;
    property GrantWriteACP: string read GetGrantWriteACP write SetGrantWriteACP;
    property Key: string read GetKey write SetKey;
    property Metadata: TDictionary<string, string> read GetMetadata write SetMetadata;
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
    property FilePath: string read FFilePath write FFilePath;
    property ContentBody: string read FContentBody write FContentBody;
    property AutoResetStreamPosition: Boolean read FAutoResetStreamPosition write FAutoResetStreamPosition;
    property InputStream: TStream read GetBody write SetBody;
    property KeepInputStream: Boolean read GetKeepBody write SetKeepBody;
  end;
  
implementation

{ TPutObjectRequest }

constructor TPutObjectRequest.Create;
begin
  inherited;
  FMetadata := TDictionary<string, string>.Create;
end;

destructor TPutObjectRequest.Destroy;
begin
  Metadata := nil;
  Body := nil;
  inherited;
end;

function TPutObjectRequest.Obj: TPutObjectRequest;
begin
  Result := Self;
end;

function TPutObjectRequest.GetACL: TObjectCannedACL;
begin
  Result := FACL.ValueOrDefault;
end;

procedure TPutObjectRequest.SetACL(const Value: TObjectCannedACL);
begin
  FACL := Value;
end;

function TPutObjectRequest.IsSetACL: Boolean;
begin
  Result := FACL.HasValue;
end;

function TPutObjectRequest.GetBody: TStream;
begin
  Result := FBody;
end;

procedure TPutObjectRequest.SetBody(const Value: TStream);
begin
  if FBody <> Value then
  begin
    if not KeepBody then
      FBody.Free;
    FBody := Value;
  end;
end;

function TPutObjectRequest.GetKeepBody: Boolean;
begin
  Result := FKeepBody;
end;

procedure TPutObjectRequest.SetKeepBody(const Value: Boolean);
begin
  FKeepBody := Value;
end;

function TPutObjectRequest.IsSetBody: Boolean;
begin
  Result := FBody <> nil;
end;

function TPutObjectRequest.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TPutObjectRequest.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TPutObjectRequest.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TPutObjectRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutObjectRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutObjectRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutObjectRequest.GetCacheControl: string;
begin
  Result := FCacheControl.ValueOrDefault;
end;

procedure TPutObjectRequest.SetCacheControl(const Value: string);
begin
  FCacheControl := Value;
end;

function TPutObjectRequest.IsSetCacheControl: Boolean;
begin
  Result := FCacheControl.HasValue;
end;

function TPutObjectRequest.GetContentDisposition: string;
begin
  Result := FContentDisposition.ValueOrDefault;
end;

procedure TPutObjectRequest.SetContentDisposition(const Value: string);
begin
  FContentDisposition := Value;
end;

function TPutObjectRequest.IsSetContentDisposition: Boolean;
begin
  Result := FContentDisposition.HasValue;
end;

function TPutObjectRequest.GetContentEncoding: string;
begin
  Result := FContentEncoding.ValueOrDefault;
end;

procedure TPutObjectRequest.SetContentEncoding(const Value: string);
begin
  FContentEncoding := Value;
end;

function TPutObjectRequest.IsSetContentEncoding: Boolean;
begin
  Result := FContentEncoding.HasValue;
end;

function TPutObjectRequest.GetContentLanguage: string;
begin
  Result := FContentLanguage.ValueOrDefault;
end;

procedure TPutObjectRequest.SetContentLanguage(const Value: string);
begin
  FContentLanguage := Value;
end;

function TPutObjectRequest.IsSetContentLanguage: Boolean;
begin
  Result := FContentLanguage.HasValue;
end;

function TPutObjectRequest.GetContentLength: Int64;
begin
  Result := FContentLength.ValueOrDefault;
end;

procedure TPutObjectRequest.SetContentLength(const Value: Int64);
begin
  FContentLength := Value;
end;

function TPutObjectRequest.IsSetContentLength: Boolean;
begin
  Result := FContentLength.HasValue;
end;

function TPutObjectRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutObjectRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutObjectRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutObjectRequest.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TPutObjectRequest.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TPutObjectRequest.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TPutObjectRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutObjectRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutObjectRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutObjectRequest.GetExpires: TDateTime;
begin
  Result := FExpires.ValueOrDefault;
end;

procedure TPutObjectRequest.SetExpires(const Value: TDateTime);
begin
  FExpires := Value;
end;

function TPutObjectRequest.IsSetExpires: Boolean;
begin
  Result := FExpires.HasValue;
end;

function TPutObjectRequest.GetGrantFullControl: string;
begin
  Result := FGrantFullControl.ValueOrDefault;
end;

procedure TPutObjectRequest.SetGrantFullControl(const Value: string);
begin
  FGrantFullControl := Value;
end;

function TPutObjectRequest.IsSetGrantFullControl: Boolean;
begin
  Result := FGrantFullControl.HasValue;
end;

function TPutObjectRequest.GetGrantRead: string;
begin
  Result := FGrantRead.ValueOrDefault;
end;

procedure TPutObjectRequest.SetGrantRead(const Value: string);
begin
  FGrantRead := Value;
end;

function TPutObjectRequest.IsSetGrantRead: Boolean;
begin
  Result := FGrantRead.HasValue;
end;

function TPutObjectRequest.GetGrantReadACP: string;
begin
  Result := FGrantReadACP.ValueOrDefault;
end;

procedure TPutObjectRequest.SetGrantReadACP(const Value: string);
begin
  FGrantReadACP := Value;
end;

function TPutObjectRequest.IsSetGrantReadACP: Boolean;
begin
  Result := FGrantReadACP.HasValue;
end;

function TPutObjectRequest.GetGrantWriteACP: string;
begin
  Result := FGrantWriteACP.ValueOrDefault;
end;

procedure TPutObjectRequest.SetGrantWriteACP(const Value: string);
begin
  FGrantWriteACP := Value;
end;

function TPutObjectRequest.IsSetGrantWriteACP: Boolean;
begin
  Result := FGrantWriteACP.HasValue;
end;

function TPutObjectRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TPutObjectRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TPutObjectRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TPutObjectRequest.GetMetadata: TDictionary<string, string>;
begin
  Result := FMetadata;
end;

procedure TPutObjectRequest.SetMetadata(const Value: TDictionary<string, string>);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TPutObjectRequest.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TPutObjectRequest.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TPutObjectRequest.IsSetMetadata: Boolean;
begin
  Result := (FMetadata <> nil) and (FMetadata.Count > 0);
end;

function TPutObjectRequest.GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
begin
  Result := FObjectLockLegalHoldStatus.ValueOrDefault;
end;

procedure TPutObjectRequest.SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
begin
  FObjectLockLegalHoldStatus := Value;
end;

function TPutObjectRequest.IsSetObjectLockLegalHoldStatus: Boolean;
begin
  Result := FObjectLockLegalHoldStatus.HasValue;
end;

function TPutObjectRequest.GetObjectLockMode: TObjectLockMode;
begin
  Result := FObjectLockMode.ValueOrDefault;
end;

procedure TPutObjectRequest.SetObjectLockMode(const Value: TObjectLockMode);
begin
  FObjectLockMode := Value;
end;

function TPutObjectRequest.IsSetObjectLockMode: Boolean;
begin
  Result := FObjectLockMode.HasValue;
end;

function TPutObjectRequest.GetObjectLockRetainUntilDate: TDateTime;
begin
  Result := FObjectLockRetainUntilDate.ValueOrDefault;
end;

procedure TPutObjectRequest.SetObjectLockRetainUntilDate(const Value: TDateTime);
begin
  FObjectLockRetainUntilDate := Value;
end;

function TPutObjectRequest.IsSetObjectLockRetainUntilDate: Boolean;
begin
  Result := FObjectLockRetainUntilDate.HasValue;
end;

function TPutObjectRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TPutObjectRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TPutObjectRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TPutObjectRequest.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TPutObjectRequest.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TPutObjectRequest.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TPutObjectRequest.GetSSECustomerKey: string;
begin
  Result := FSSECustomerKey.ValueOrDefault;
end;

procedure TPutObjectRequest.SetSSECustomerKey(const Value: string);
begin
  FSSECustomerKey := Value;
end;

function TPutObjectRequest.IsSetSSECustomerKey: Boolean;
begin
  Result := FSSECustomerKey.HasValue;
end;

function TPutObjectRequest.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TPutObjectRequest.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TPutObjectRequest.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TPutObjectRequest.GetSSEKMSEncryptionContext: string;
begin
  Result := FSSEKMSEncryptionContext.ValueOrDefault;
end;

procedure TPutObjectRequest.SetSSEKMSEncryptionContext(const Value: string);
begin
  FSSEKMSEncryptionContext := Value;
end;

function TPutObjectRequest.IsSetSSEKMSEncryptionContext: Boolean;
begin
  Result := FSSEKMSEncryptionContext.HasValue;
end;

function TPutObjectRequest.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TPutObjectRequest.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TPutObjectRequest.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TPutObjectRequest.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TPutObjectRequest.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TPutObjectRequest.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TPutObjectRequest.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TPutObjectRequest.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function TPutObjectRequest.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TPutObjectRequest.GetTagging: string;
begin
  Result := FTagging.ValueOrDefault;
end;

procedure TPutObjectRequest.SetTagging(const Value: string);
begin
  FTagging := Value;
end;

function TPutObjectRequest.IsSetTagging: Boolean;
begin
  Result := FTagging.HasValue;
end;

function TPutObjectRequest.GetWebsiteRedirectLocation: string;
begin
  Result := FWebsiteRedirectLocation.ValueOrDefault;
end;

procedure TPutObjectRequest.SetWebsiteRedirectLocation(const Value: string);
begin
  FWebsiteRedirectLocation := Value;
end;

function TPutObjectRequest.IsSetWebsiteRedirectLocation: Boolean;
begin
  Result := FWebsiteRedirectLocation.HasValue;
end;

end.
