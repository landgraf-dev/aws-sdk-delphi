unit AWS.S3.Model.WriteGetObjectResponseRequest;

interface

uses
  System.Generics.Collections, 
  AWS.S3.Model.Request, 
  AWS.Nullable, 
  System.Classes, 
  AWS.S3.Enums, 
  AWS.Auth.Signer;

type
  TWriteGetObjectResponseRequest = class;
  
  IWriteGetObjectResponseRequest = interface
    function GetAcceptRanges: string;
    procedure SetAcceptRanges(const Value: string);
    function GetBody: TStream;
    procedure SetBody(const Value: TStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
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
    function GetContentLength: Int64;
    procedure SetContentLength(const Value: Int64);
    function GetContentRange: string;
    procedure SetContentRange(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetDeleteMarker: Boolean;
    procedure SetDeleteMarker(const Value: Boolean);
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetErrorCode: string;
    procedure SetErrorCode(const Value: string);
    function GetErrorMessage: string;
    procedure SetErrorMessage(const Value: string);
    function GetExpiration: string;
    procedure SetExpiration(const Value: string);
    function GetExpires: TDateTime;
    procedure SetExpires(const Value: TDateTime);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetMetadata: TDictionary<string, string>;
    procedure SetMetadata(const Value: TDictionary<string, string>);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetMissingMeta: Integer;
    procedure SetMissingMeta(const Value: Integer);
    function GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
    procedure SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
    function GetObjectLockMode: TObjectLockMode;
    procedure SetObjectLockMode(const Value: TObjectLockMode);
    function GetObjectLockRetainUntilDate: TDateTime;
    procedure SetObjectLockRetainUntilDate(const Value: TDateTime);
    function GetPartsCount: Integer;
    procedure SetPartsCount(const Value: Integer);
    function GetReplicationStatus: TReplicationStatus;
    procedure SetReplicationStatus(const Value: TReplicationStatus);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetRequestRoute: string;
    procedure SetRequestRoute(const Value: string);
    function GetRequestToken: string;
    procedure SetRequestToken(const Value: string);
    function GetRestore: string;
    procedure SetRestore(const Value: string);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetStatusCode: Integer;
    procedure SetStatusCode(const Value: Integer);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetTagCount: Integer;
    procedure SetTagCount(const Value: Integer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TWriteGetObjectResponseRequest;
    function CreateSigner: TAbstractAWSSigner;
    function IsSetAcceptRanges: Boolean;
    function IsSetBody: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentLength: Boolean;
    function IsSetContentRange: Boolean;
    function IsSetContentType: Boolean;
    function IsSetDeleteMarker: Boolean;
    function IsSetETag: Boolean;
    function IsSetErrorCode: Boolean;
    function IsSetErrorMessage: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetExpires: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetMissingMeta: Boolean;
    function IsSetObjectLockLegalHoldStatus: Boolean;
    function IsSetObjectLockMode: Boolean;
    function IsSetObjectLockRetainUntilDate: Boolean;
    function IsSetPartsCount: Boolean;
    function IsSetReplicationStatus: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetRequestRoute: Boolean;
    function IsSetRequestToken: Boolean;
    function IsSetRestore: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetStatusCode: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetTagCount: Boolean;
    function IsSetVersionId: Boolean;
    property AcceptRanges: string read GetAcceptRanges write SetAcceptRanges;
    property Body: TStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentLength: Int64 read GetContentLength write SetContentLength;
    property ContentRange: string read GetContentRange write SetContentRange;
    property ContentType: string read GetContentType write SetContentType;
    property DeleteMarker: Boolean read GetDeleteMarker write SetDeleteMarker;
    property ETag: string read GetETag write SetETag;
    property ErrorCode: string read GetErrorCode write SetErrorCode;
    property ErrorMessage: string read GetErrorMessage write SetErrorMessage;
    property Expiration: string read GetExpiration write SetExpiration;
    property Expires: TDateTime read GetExpires write SetExpires;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Metadata: TDictionary<string, string> read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property MissingMeta: Integer read GetMissingMeta write SetMissingMeta;
    property ObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus read GetObjectLockLegalHoldStatus write SetObjectLockLegalHoldStatus;
    property ObjectLockMode: TObjectLockMode read GetObjectLockMode write SetObjectLockMode;
    property ObjectLockRetainUntilDate: TDateTime read GetObjectLockRetainUntilDate write SetObjectLockRetainUntilDate;
    property PartsCount: Integer read GetPartsCount write SetPartsCount;
    property ReplicationStatus: TReplicationStatus read GetReplicationStatus write SetReplicationStatus;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property RequestRoute: string read GetRequestRoute write SetRequestRoute;
    property RequestToken: string read GetRequestToken write SetRequestToken;
    property Restore: string read GetRestore write SetRestore;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property StatusCode: Integer read GetStatusCode write SetStatusCode;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property TagCount: Integer read GetTagCount write SetTagCount;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TWriteGetObjectResponseRequest = class(TAmazonS3Request, IWriteGetObjectResponseRequest)
  strict private
    FAcceptRanges: Nullable<string>;
    FBody: TStream;
    FKeepBody: Boolean;
    FBucketKeyEnabled: Nullable<Boolean>;
    FCacheControl: Nullable<string>;
    FContentDisposition: Nullable<string>;
    FContentEncoding: Nullable<string>;
    FContentLanguage: Nullable<string>;
    FContentLength: Nullable<Int64>;
    FContentRange: Nullable<string>;
    FContentType: Nullable<string>;
    FDeleteMarker: Nullable<Boolean>;
    FETag: Nullable<string>;
    FErrorCode: Nullable<string>;
    FErrorMessage: Nullable<string>;
    FExpiration: Nullable<string>;
    FExpires: Nullable<TDateTime>;
    FLastModified: Nullable<TDateTime>;
    FMetadata: TDictionary<string, string>;
    FKeepMetadata: Boolean;
    FMissingMeta: Nullable<Integer>;
    FObjectLockLegalHoldStatus: Nullable<TObjectLockLegalHoldStatus>;
    FObjectLockMode: Nullable<TObjectLockMode>;
    FObjectLockRetainUntilDate: Nullable<TDateTime>;
    FPartsCount: Nullable<Integer>;
    FReplicationStatus: Nullable<TReplicationStatus>;
    FRequestCharged: Nullable<TRequestCharged>;
    FRequestRoute: Nullable<string>;
    FRequestToken: Nullable<string>;
    FRestore: Nullable<string>;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FSSEKMSKeyId: Nullable<string>;
    FServerSideEncryption: Nullable<TServerSideEncryption>;
    FStatusCode: Nullable<Integer>;
    FStorageClass: Nullable<TStorageClass>;
    FTagCount: Nullable<Integer>;
    FVersionId: Nullable<string>;
    function GetAcceptRanges: string;
    procedure SetAcceptRanges(const Value: string);
    function GetBody: TStream;
    procedure SetBody(const Value: TStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
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
    function GetContentLength: Int64;
    procedure SetContentLength(const Value: Int64);
    function GetContentRange: string;
    procedure SetContentRange(const Value: string);
    function GetContentType: string;
    procedure SetContentType(const Value: string);
    function GetDeleteMarker: Boolean;
    procedure SetDeleteMarker(const Value: Boolean);
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetErrorCode: string;
    procedure SetErrorCode(const Value: string);
    function GetErrorMessage: string;
    procedure SetErrorMessage(const Value: string);
    function GetExpiration: string;
    procedure SetExpiration(const Value: string);
    function GetExpires: TDateTime;
    procedure SetExpires(const Value: TDateTime);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetMetadata: TDictionary<string, string>;
    procedure SetMetadata(const Value: TDictionary<string, string>);
    function GetKeepMetadata: Boolean;
    procedure SetKeepMetadata(const Value: Boolean);
    function GetMissingMeta: Integer;
    procedure SetMissingMeta(const Value: Integer);
    function GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
    procedure SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
    function GetObjectLockMode: TObjectLockMode;
    procedure SetObjectLockMode(const Value: TObjectLockMode);
    function GetObjectLockRetainUntilDate: TDateTime;
    procedure SetObjectLockRetainUntilDate(const Value: TDateTime);
    function GetPartsCount: Integer;
    procedure SetPartsCount(const Value: Integer);
    function GetReplicationStatus: TReplicationStatus;
    procedure SetReplicationStatus(const Value: TReplicationStatus);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetRequestRoute: string;
    procedure SetRequestRoute(const Value: string);
    function GetRequestToken: string;
    procedure SetRequestToken(const Value: string);
    function GetRestore: string;
    procedure SetRestore(const Value: string);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetStatusCode: Integer;
    procedure SetStatusCode(const Value: Integer);
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetTagCount: Integer;
    procedure SetTagCount(const Value: Integer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TWriteGetObjectResponseRequest;
    function CreateSigner: TAbstractAWSSigner; override;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAcceptRanges: Boolean;
    function IsSetBody: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCacheControl: Boolean;
    function IsSetContentDisposition: Boolean;
    function IsSetContentEncoding: Boolean;
    function IsSetContentLanguage: Boolean;
    function IsSetContentLength: Boolean;
    function IsSetContentRange: Boolean;
    function IsSetContentType: Boolean;
    function IsSetDeleteMarker: Boolean;
    function IsSetETag: Boolean;
    function IsSetErrorCode: Boolean;
    function IsSetErrorMessage: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetExpires: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetMissingMeta: Boolean;
    function IsSetObjectLockLegalHoldStatus: Boolean;
    function IsSetObjectLockMode: Boolean;
    function IsSetObjectLockRetainUntilDate: Boolean;
    function IsSetPartsCount: Boolean;
    function IsSetReplicationStatus: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetRequestRoute: Boolean;
    function IsSetRequestToken: Boolean;
    function IsSetRestore: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetStatusCode: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetTagCount: Boolean;
    function IsSetVersionId: Boolean;
    property AcceptRanges: string read GetAcceptRanges write SetAcceptRanges;
    property Body: TStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CacheControl: string read GetCacheControl write SetCacheControl;
    property ContentDisposition: string read GetContentDisposition write SetContentDisposition;
    property ContentEncoding: string read GetContentEncoding write SetContentEncoding;
    property ContentLanguage: string read GetContentLanguage write SetContentLanguage;
    property ContentLength: Int64 read GetContentLength write SetContentLength;
    property ContentRange: string read GetContentRange write SetContentRange;
    property ContentType: string read GetContentType write SetContentType;
    property DeleteMarker: Boolean read GetDeleteMarker write SetDeleteMarker;
    property ETag: string read GetETag write SetETag;
    property ErrorCode: string read GetErrorCode write SetErrorCode;
    property ErrorMessage: string read GetErrorMessage write SetErrorMessage;
    property Expiration: string read GetExpiration write SetExpiration;
    property Expires: TDateTime read GetExpires write SetExpires;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Metadata: TDictionary<string, string> read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property MissingMeta: Integer read GetMissingMeta write SetMissingMeta;
    property ObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus read GetObjectLockLegalHoldStatus write SetObjectLockLegalHoldStatus;
    property ObjectLockMode: TObjectLockMode read GetObjectLockMode write SetObjectLockMode;
    property ObjectLockRetainUntilDate: TDateTime read GetObjectLockRetainUntilDate write SetObjectLockRetainUntilDate;
    property PartsCount: Integer read GetPartsCount write SetPartsCount;
    property ReplicationStatus: TReplicationStatus read GetReplicationStatus write SetReplicationStatus;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property RequestRoute: string read GetRequestRoute write SetRequestRoute;
    property RequestToken: string read GetRequestToken write SetRequestToken;
    property Restore: string read GetRestore write SetRestore;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property StatusCode: Integer read GetStatusCode write SetStatusCode;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property TagCount: Integer read GetTagCount write SetTagCount;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TWriteGetObjectResponseRequest }

constructor TWriteGetObjectResponseRequest.Create;
begin
  inherited;
  FMetadata := TDictionary<string, string>.Create;
end;

destructor TWriteGetObjectResponseRequest.Destroy;
begin
  Metadata := nil;
  Body := nil;
  inherited;
end;

function TWriteGetObjectResponseRequest.Obj: TWriteGetObjectResponseRequest;
begin
  Result := Self;
end;

function TWriteGetObjectResponseRequest.GetAcceptRanges: string;
begin
  Result := FAcceptRanges.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetAcceptRanges(const Value: string);
begin
  FAcceptRanges := Value;
end;

function TWriteGetObjectResponseRequest.IsSetAcceptRanges: Boolean;
begin
  Result := FAcceptRanges.HasValue;
end;

function TWriteGetObjectResponseRequest.GetBody: TStream;
begin
  Result := FBody;
end;

procedure TWriteGetObjectResponseRequest.SetBody(const Value: TStream);
begin
  if FBody <> Value then
  begin
    if not KeepBody then
      FBody.Free;
    FBody := Value;
  end;
end;

function TWriteGetObjectResponseRequest.GetKeepBody: Boolean;
begin
  Result := FKeepBody;
end;

procedure TWriteGetObjectResponseRequest.SetKeepBody(const Value: Boolean);
begin
  FKeepBody := Value;
end;

function TWriteGetObjectResponseRequest.IsSetBody: Boolean;
begin
  Result := FBody <> nil;
end;

function TWriteGetObjectResponseRequest.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TWriteGetObjectResponseRequest.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TWriteGetObjectResponseRequest.GetCacheControl: string;
begin
  Result := FCacheControl.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetCacheControl(const Value: string);
begin
  FCacheControl := Value;
end;

function TWriteGetObjectResponseRequest.IsSetCacheControl: Boolean;
begin
  Result := FCacheControl.HasValue;
end;

function TWriteGetObjectResponseRequest.GetContentDisposition: string;
begin
  Result := FContentDisposition.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetContentDisposition(const Value: string);
begin
  FContentDisposition := Value;
end;

function TWriteGetObjectResponseRequest.IsSetContentDisposition: Boolean;
begin
  Result := FContentDisposition.HasValue;
end;

function TWriteGetObjectResponseRequest.GetContentEncoding: string;
begin
  Result := FContentEncoding.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetContentEncoding(const Value: string);
begin
  FContentEncoding := Value;
end;

function TWriteGetObjectResponseRequest.IsSetContentEncoding: Boolean;
begin
  Result := FContentEncoding.HasValue;
end;

function TWriteGetObjectResponseRequest.GetContentLanguage: string;
begin
  Result := FContentLanguage.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetContentLanguage(const Value: string);
begin
  FContentLanguage := Value;
end;

function TWriteGetObjectResponseRequest.IsSetContentLanguage: Boolean;
begin
  Result := FContentLanguage.HasValue;
end;

function TWriteGetObjectResponseRequest.GetContentLength: Int64;
begin
  Result := FContentLength.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetContentLength(const Value: Int64);
begin
  FContentLength := Value;
end;

function TWriteGetObjectResponseRequest.IsSetContentLength: Boolean;
begin
  Result := FContentLength.HasValue;
end;

function TWriteGetObjectResponseRequest.GetContentRange: string;
begin
  Result := FContentRange.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetContentRange(const Value: string);
begin
  FContentRange := Value;
end;

function TWriteGetObjectResponseRequest.IsSetContentRange: Boolean;
begin
  Result := FContentRange.HasValue;
end;

function TWriteGetObjectResponseRequest.GetContentType: string;
begin
  Result := FContentType.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetContentType(const Value: string);
begin
  FContentType := Value;
end;

function TWriteGetObjectResponseRequest.IsSetContentType: Boolean;
begin
  Result := FContentType.HasValue;
end;

function TWriteGetObjectResponseRequest.GetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetDeleteMarker(const Value: Boolean);
begin
  FDeleteMarker := Value;
end;

function TWriteGetObjectResponseRequest.IsSetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.HasValue;
end;

function TWriteGetObjectResponseRequest.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TWriteGetObjectResponseRequest.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TWriteGetObjectResponseRequest.GetErrorCode: string;
begin
  Result := FErrorCode.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetErrorCode(const Value: string);
begin
  FErrorCode := Value;
end;

function TWriteGetObjectResponseRequest.IsSetErrorCode: Boolean;
begin
  Result := FErrorCode.HasValue;
end;

function TWriteGetObjectResponseRequest.GetErrorMessage: string;
begin
  Result := FErrorMessage.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetErrorMessage(const Value: string);
begin
  FErrorMessage := Value;
end;

function TWriteGetObjectResponseRequest.IsSetErrorMessage: Boolean;
begin
  Result := FErrorMessage.HasValue;
end;

function TWriteGetObjectResponseRequest.GetExpiration: string;
begin
  Result := FExpiration.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetExpiration(const Value: string);
begin
  FExpiration := Value;
end;

function TWriteGetObjectResponseRequest.IsSetExpiration: Boolean;
begin
  Result := FExpiration.HasValue;
end;

function TWriteGetObjectResponseRequest.GetExpires: TDateTime;
begin
  Result := FExpires.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetExpires(const Value: TDateTime);
begin
  FExpires := Value;
end;

function TWriteGetObjectResponseRequest.IsSetExpires: Boolean;
begin
  Result := FExpires.HasValue;
end;

function TWriteGetObjectResponseRequest.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TWriteGetObjectResponseRequest.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

function TWriteGetObjectResponseRequest.GetMetadata: TDictionary<string, string>;
begin
  Result := FMetadata;
end;

procedure TWriteGetObjectResponseRequest.SetMetadata(const Value: TDictionary<string, string>);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TWriteGetObjectResponseRequest.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TWriteGetObjectResponseRequest.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TWriteGetObjectResponseRequest.IsSetMetadata: Boolean;
begin
  Result := (FMetadata <> nil) and (FMetadata.Count > 0);
end;

function TWriteGetObjectResponseRequest.GetMissingMeta: Integer;
begin
  Result := FMissingMeta.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetMissingMeta(const Value: Integer);
begin
  FMissingMeta := Value;
end;

function TWriteGetObjectResponseRequest.IsSetMissingMeta: Boolean;
begin
  Result := FMissingMeta.HasValue;
end;

function TWriteGetObjectResponseRequest.GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
begin
  Result := FObjectLockLegalHoldStatus.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
begin
  FObjectLockLegalHoldStatus := Value;
end;

function TWriteGetObjectResponseRequest.IsSetObjectLockLegalHoldStatus: Boolean;
begin
  Result := FObjectLockLegalHoldStatus.HasValue;
end;

function TWriteGetObjectResponseRequest.GetObjectLockMode: TObjectLockMode;
begin
  Result := FObjectLockMode.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetObjectLockMode(const Value: TObjectLockMode);
begin
  FObjectLockMode := Value;
end;

function TWriteGetObjectResponseRequest.IsSetObjectLockMode: Boolean;
begin
  Result := FObjectLockMode.HasValue;
end;

function TWriteGetObjectResponseRequest.GetObjectLockRetainUntilDate: TDateTime;
begin
  Result := FObjectLockRetainUntilDate.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetObjectLockRetainUntilDate(const Value: TDateTime);
begin
  FObjectLockRetainUntilDate := Value;
end;

function TWriteGetObjectResponseRequest.IsSetObjectLockRetainUntilDate: Boolean;
begin
  Result := FObjectLockRetainUntilDate.HasValue;
end;

function TWriteGetObjectResponseRequest.GetPartsCount: Integer;
begin
  Result := FPartsCount.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetPartsCount(const Value: Integer);
begin
  FPartsCount := Value;
end;

function TWriteGetObjectResponseRequest.IsSetPartsCount: Boolean;
begin
  Result := FPartsCount.HasValue;
end;

function TWriteGetObjectResponseRequest.GetReplicationStatus: TReplicationStatus;
begin
  Result := FReplicationStatus.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetReplicationStatus(const Value: TReplicationStatus);
begin
  FReplicationStatus := Value;
end;

function TWriteGetObjectResponseRequest.IsSetReplicationStatus: Boolean;
begin
  Result := FReplicationStatus.HasValue;
end;

function TWriteGetObjectResponseRequest.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TWriteGetObjectResponseRequest.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TWriteGetObjectResponseRequest.GetRequestRoute: string;
begin
  Result := FRequestRoute.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetRequestRoute(const Value: string);
begin
  FRequestRoute := Value;
end;

function TWriteGetObjectResponseRequest.IsSetRequestRoute: Boolean;
begin
  Result := FRequestRoute.HasValue;
end;

function TWriteGetObjectResponseRequest.GetRequestToken: string;
begin
  Result := FRequestToken.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetRequestToken(const Value: string);
begin
  FRequestToken := Value;
end;

function TWriteGetObjectResponseRequest.IsSetRequestToken: Boolean;
begin
  Result := FRequestToken.HasValue;
end;

function TWriteGetObjectResponseRequest.GetRestore: string;
begin
  Result := FRestore.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetRestore(const Value: string);
begin
  FRestore := Value;
end;

function TWriteGetObjectResponseRequest.IsSetRestore: Boolean;
begin
  Result := FRestore.HasValue;
end;

function TWriteGetObjectResponseRequest.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TWriteGetObjectResponseRequest.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TWriteGetObjectResponseRequest.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TWriteGetObjectResponseRequest.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TWriteGetObjectResponseRequest.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TWriteGetObjectResponseRequest.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TWriteGetObjectResponseRequest.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TWriteGetObjectResponseRequest.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TWriteGetObjectResponseRequest.GetStatusCode: Integer;
begin
  Result := FStatusCode.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetStatusCode(const Value: Integer);
begin
  FStatusCode := Value;
end;

function TWriteGetObjectResponseRequest.IsSetStatusCode: Boolean;
begin
  Result := FStatusCode.HasValue;
end;

function TWriteGetObjectResponseRequest.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function TWriteGetObjectResponseRequest.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TWriteGetObjectResponseRequest.GetTagCount: Integer;
begin
  Result := FTagCount.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetTagCount(const Value: Integer);
begin
  FTagCount := Value;
end;

function TWriteGetObjectResponseRequest.IsSetTagCount: Boolean;
begin
  Result := FTagCount.HasValue;
end;

function TWriteGetObjectResponseRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TWriteGetObjectResponseRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TWriteGetObjectResponseRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

function TWriteGetObjectResponseRequest.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create(False);
end;

end.
