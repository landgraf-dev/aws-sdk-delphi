unit AWS.S3.Model.GetObjectMetadataResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.S3.Enums, 
  AWS.S3.Model.HeadersCollection, 
  AWS.S3.Model.MetadataCollection;

type
  TGetObjectMetadataResponse = class;
  
  IGetObjectMetadataResponse = interface(IAmazonWebServiceResponse)
    function GetAcceptRanges: string;
    procedure SetAcceptRanges(const Value: string);
    function GetArchiveStatus: TArchiveStatus;
    procedure SetArchiveStatus(const Value: TArchiveStatus);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetDeleteMarker: Boolean;
    procedure SetDeleteMarker(const Value: Boolean);
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetExpiration: string;
    procedure SetExpiration(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetMetadata: TMetadataCollection;
    procedure SetMetadata(const Value: TMetadataCollection);
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
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function GetWebsiteRedirectLocation: string;
    procedure SetWebsiteRedirectLocation(const Value: string);
    function GetHeaders: THeadersCollection;
    procedure SetHeaders(const Value: THeadersCollection);
    function GetKeepHeaders: Boolean;
    procedure SetKeepHeaders(const Value: Boolean);
    function GetContentRange: string;
    procedure SetContentRange(const Value: string);
    function GetRawExpires: string;
    procedure SetRawExpires(const Value: string);
    function Obj: TGetObjectMetadataResponse;
    function IsSetAcceptRanges: Boolean;
    function IsSetArchiveStatus: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetDeleteMarker: Boolean;
    function IsSetETag: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetMissingMeta: Boolean;
    function IsSetObjectLockLegalHoldStatus: Boolean;
    function IsSetObjectLockMode: Boolean;
    function IsSetObjectLockRetainUntilDate: Boolean;
    function IsSetPartsCount: Boolean;
    function IsSetReplicationStatus: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetRestore: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetVersionId: Boolean;
    function IsSetWebsiteRedirectLocation: Boolean;
    property AcceptRanges: string read GetAcceptRanges write SetAcceptRanges;
    property ArchiveStatus: TArchiveStatus read GetArchiveStatus write SetArchiveStatus;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property DeleteMarker: Boolean read GetDeleteMarker write SetDeleteMarker;
    property ETag: string read GetETag write SetETag;
    property Expiration: string read GetExpiration write SetExpiration;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Metadata: TMetadataCollection read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property MissingMeta: Integer read GetMissingMeta write SetMissingMeta;
    property ObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus read GetObjectLockLegalHoldStatus write SetObjectLockLegalHoldStatus;
    property ObjectLockMode: TObjectLockMode read GetObjectLockMode write SetObjectLockMode;
    property ObjectLockRetainUntilDate: TDateTime read GetObjectLockRetainUntilDate write SetObjectLockRetainUntilDate;
    property PartsCount: Integer read GetPartsCount write SetPartsCount;
    property ReplicationStatus: TReplicationStatus read GetReplicationStatus write SetReplicationStatus;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property Restore: string read GetRestore write SetRestore;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property VersionId: string read GetVersionId write SetVersionId;
    property WebsiteRedirectLocation: string read GetWebsiteRedirectLocation write SetWebsiteRedirectLocation;
    property Headers: THeadersCollection read GetHeaders write SetHeaders;
    property ContentRange: string read GetContentRange write SetContentRange;
    property RawExpires: string read GetRawExpires write SetRawExpires;
  end;
  
  TGetObjectMetadataResponse = class(TAmazonWebServiceResponse, IGetObjectMetadataResponse)
  strict private
    FAcceptRanges: Nullable<string>;
    FArchiveStatus: Nullable<TArchiveStatus>;
    FBucketKeyEnabled: Nullable<Boolean>;
    FDeleteMarker: Nullable<Boolean>;
    FETag: Nullable<string>;
    FExpiration: Nullable<string>;
    FLastModified: Nullable<TDateTime>;
    FMetadata: TMetadataCollection;
    FKeepMetadata: Boolean;
    FMissingMeta: Nullable<Integer>;
    FObjectLockLegalHoldStatus: Nullable<TObjectLockLegalHoldStatus>;
    FObjectLockMode: Nullable<TObjectLockMode>;
    FObjectLockRetainUntilDate: Nullable<TDateTime>;
    FPartsCount: Nullable<Integer>;
    FReplicationStatus: Nullable<TReplicationStatus>;
    FRequestCharged: Nullable<TRequestCharged>;
    FRestore: Nullable<string>;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FSSEKMSKeyId: Nullable<string>;
    FServerSideEncryption: Nullable<TServerSideEncryption>;
    FStorageClass: Nullable<TStorageClass>;
    FVersionId: Nullable<string>;
    FWebsiteRedirectLocation: Nullable<string>;
    FHeaders: THeadersCollection;
    FKeepHeaders: Boolean;
    FContentRange: string;
    FRawExpires: string;
    function GetAcceptRanges: string;
    procedure SetAcceptRanges(const Value: string);
    function GetArchiveStatus: TArchiveStatus;
    procedure SetArchiveStatus(const Value: TArchiveStatus);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetDeleteMarker: Boolean;
    procedure SetDeleteMarker(const Value: Boolean);
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetExpiration: string;
    procedure SetExpiration(const Value: string);
    function GetLastModified: TDateTime;
    procedure SetLastModified(const Value: TDateTime);
    function GetMetadata: TMetadataCollection;
    procedure SetMetadata(const Value: TMetadataCollection);
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
    function GetStorageClass: TStorageClass;
    procedure SetStorageClass(const Value: TStorageClass);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function GetWebsiteRedirectLocation: string;
    procedure SetWebsiteRedirectLocation(const Value: string);
    function GetHeaders: THeadersCollection;
    procedure SetHeaders(const Value: THeadersCollection);
    function GetKeepHeaders: Boolean;
    procedure SetKeepHeaders(const Value: Boolean);
    function GetContentRange: string;
    procedure SetContentRange(const Value: string);
    function GetRawExpires: string;
    procedure SetRawExpires(const Value: string);
  strict protected
    function Obj: TGetObjectMetadataResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAcceptRanges: Boolean;
    function IsSetArchiveStatus: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetDeleteMarker: Boolean;
    function IsSetETag: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetLastModified: Boolean;
    function IsSetMetadata: Boolean;
    function IsSetMissingMeta: Boolean;
    function IsSetObjectLockLegalHoldStatus: Boolean;
    function IsSetObjectLockMode: Boolean;
    function IsSetObjectLockRetainUntilDate: Boolean;
    function IsSetPartsCount: Boolean;
    function IsSetReplicationStatus: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetRestore: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetVersionId: Boolean;
    function IsSetWebsiteRedirectLocation: Boolean;
    property AcceptRanges: string read GetAcceptRanges write SetAcceptRanges;
    property ArchiveStatus: TArchiveStatus read GetArchiveStatus write SetArchiveStatus;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property DeleteMarker: Boolean read GetDeleteMarker write SetDeleteMarker;
    property ETag: string read GetETag write SetETag;
    property Expiration: string read GetExpiration write SetExpiration;
    property LastModified: TDateTime read GetLastModified write SetLastModified;
    property Metadata: TMetadataCollection read GetMetadata write SetMetadata;
    property KeepMetadata: Boolean read GetKeepMetadata write SetKeepMetadata;
    property MissingMeta: Integer read GetMissingMeta write SetMissingMeta;
    property ObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus read GetObjectLockLegalHoldStatus write SetObjectLockLegalHoldStatus;
    property ObjectLockMode: TObjectLockMode read GetObjectLockMode write SetObjectLockMode;
    property ObjectLockRetainUntilDate: TDateTime read GetObjectLockRetainUntilDate write SetObjectLockRetainUntilDate;
    property PartsCount: Integer read GetPartsCount write SetPartsCount;
    property ReplicationStatus: TReplicationStatus read GetReplicationStatus write SetReplicationStatus;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property Restore: string read GetRestore write SetRestore;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property StorageClass: TStorageClass read GetStorageClass write SetStorageClass;
    property VersionId: string read GetVersionId write SetVersionId;
    property WebsiteRedirectLocation: string read GetWebsiteRedirectLocation write SetWebsiteRedirectLocation;
    property Headers: THeadersCollection read GetHeaders write SetHeaders;
    property KeepHeaders: Boolean read GetKeepHeaders write SetKeepHeaders;
    property ContentRange: string read GetContentRange write SetContentRange;
    property RawExpires: string read GetRawExpires write SetRawExpires;
  end;
  
implementation

{ TGetObjectMetadataResponse }

constructor TGetObjectMetadataResponse.Create;
begin
  inherited;
  FMetadata := TMetadataCollection.Create;
  FHeaders := THeadersCollection.Create;
end;

destructor TGetObjectMetadataResponse.Destroy;
begin
  Headers := nil;
  Metadata := nil;
  inherited;
end;

function TGetObjectMetadataResponse.Obj: TGetObjectMetadataResponse;
begin
  Result := Self;
end;

function TGetObjectMetadataResponse.GetAcceptRanges: string;
begin
  Result := FAcceptRanges.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetAcceptRanges(const Value: string);
begin
  FAcceptRanges := Value;
end;

function TGetObjectMetadataResponse.IsSetAcceptRanges: Boolean;
begin
  Result := FAcceptRanges.HasValue;
end;

function TGetObjectMetadataResponse.GetArchiveStatus: TArchiveStatus;
begin
  Result := FArchiveStatus.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetArchiveStatus(const Value: TArchiveStatus);
begin
  FArchiveStatus := Value;
end;

function TGetObjectMetadataResponse.IsSetArchiveStatus: Boolean;
begin
  Result := FArchiveStatus.HasValue;
end;

function TGetObjectMetadataResponse.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TGetObjectMetadataResponse.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TGetObjectMetadataResponse.GetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetDeleteMarker(const Value: Boolean);
begin
  FDeleteMarker := Value;
end;

function TGetObjectMetadataResponse.IsSetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.HasValue;
end;

function TGetObjectMetadataResponse.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TGetObjectMetadataResponse.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TGetObjectMetadataResponse.GetExpiration: string;
begin
  Result := FExpiration.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetExpiration(const Value: string);
begin
  FExpiration := Value;
end;

function TGetObjectMetadataResponse.IsSetExpiration: Boolean;
begin
  Result := FExpiration.HasValue;
end;

function TGetObjectMetadataResponse.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TGetObjectMetadataResponse.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

function TGetObjectMetadataResponse.GetMetadata: TMetadataCollection;
begin
  Result := FMetadata;
end;

procedure TGetObjectMetadataResponse.SetMetadata(const Value: TMetadataCollection);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TGetObjectMetadataResponse.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TGetObjectMetadataResponse.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TGetObjectMetadataResponse.IsSetMetadata: Boolean;
begin
  Result := (FMetadata <> nil) and (FMetadata.Count > 0);
end;

function TGetObjectMetadataResponse.GetMissingMeta: Integer;
begin
  Result := FMissingMeta.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetMissingMeta(const Value: Integer);
begin
  FMissingMeta := Value;
end;

function TGetObjectMetadataResponse.IsSetMissingMeta: Boolean;
begin
  Result := FMissingMeta.HasValue;
end;

function TGetObjectMetadataResponse.GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
begin
  Result := FObjectLockLegalHoldStatus.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
begin
  FObjectLockLegalHoldStatus := Value;
end;

function TGetObjectMetadataResponse.IsSetObjectLockLegalHoldStatus: Boolean;
begin
  Result := FObjectLockLegalHoldStatus.HasValue;
end;

function TGetObjectMetadataResponse.GetObjectLockMode: TObjectLockMode;
begin
  Result := FObjectLockMode.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetObjectLockMode(const Value: TObjectLockMode);
begin
  FObjectLockMode := Value;
end;

function TGetObjectMetadataResponse.IsSetObjectLockMode: Boolean;
begin
  Result := FObjectLockMode.HasValue;
end;

function TGetObjectMetadataResponse.GetObjectLockRetainUntilDate: TDateTime;
begin
  Result := FObjectLockRetainUntilDate.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetObjectLockRetainUntilDate(const Value: TDateTime);
begin
  FObjectLockRetainUntilDate := Value;
end;

function TGetObjectMetadataResponse.IsSetObjectLockRetainUntilDate: Boolean;
begin
  Result := FObjectLockRetainUntilDate.HasValue;
end;

function TGetObjectMetadataResponse.GetPartsCount: Integer;
begin
  Result := FPartsCount.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetPartsCount(const Value: Integer);
begin
  FPartsCount := Value;
end;

function TGetObjectMetadataResponse.IsSetPartsCount: Boolean;
begin
  Result := FPartsCount.HasValue;
end;

function TGetObjectMetadataResponse.GetReplicationStatus: TReplicationStatus;
begin
  Result := FReplicationStatus.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetReplicationStatus(const Value: TReplicationStatus);
begin
  FReplicationStatus := Value;
end;

function TGetObjectMetadataResponse.IsSetReplicationStatus: Boolean;
begin
  Result := FReplicationStatus.HasValue;
end;

function TGetObjectMetadataResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TGetObjectMetadataResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TGetObjectMetadataResponse.GetRestore: string;
begin
  Result := FRestore.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetRestore(const Value: string);
begin
  FRestore := Value;
end;

function TGetObjectMetadataResponse.IsSetRestore: Boolean;
begin
  Result := FRestore.HasValue;
end;

function TGetObjectMetadataResponse.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TGetObjectMetadataResponse.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TGetObjectMetadataResponse.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TGetObjectMetadataResponse.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TGetObjectMetadataResponse.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TGetObjectMetadataResponse.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TGetObjectMetadataResponse.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TGetObjectMetadataResponse.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TGetObjectMetadataResponse.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function TGetObjectMetadataResponse.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TGetObjectMetadataResponse.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TGetObjectMetadataResponse.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

function TGetObjectMetadataResponse.GetWebsiteRedirectLocation: string;
begin
  Result := FWebsiteRedirectLocation.ValueOrDefault;
end;

procedure TGetObjectMetadataResponse.SetWebsiteRedirectLocation(const Value: string);
begin
  FWebsiteRedirectLocation := Value;
end;

function TGetObjectMetadataResponse.IsSetWebsiteRedirectLocation: Boolean;
begin
  Result := FWebsiteRedirectLocation.HasValue;
end;

function TGetObjectMetadataResponse.GetHeaders: THeadersCollection;
begin
  Result := FHeaders;
end;

procedure TGetObjectMetadataResponse.SetHeaders(const Value: THeadersCollection);
begin
  if FHeaders <> Value then
  begin
    if not KeepHeaders then
      FHeaders.Free;
    FHeaders := Value;
  end;
end;

function TGetObjectMetadataResponse.GetKeepHeaders: Boolean;
begin
  Result := FKeepHeaders;
end;

procedure TGetObjectMetadataResponse.SetKeepHeaders(const Value: Boolean);
begin
  FKeepHeaders := Value;
end;

function TGetObjectMetadataResponse.GetContentRange: string;
begin
  Result := FContentRange;
end;

procedure TGetObjectMetadataResponse.SetContentRange(const Value: string);
begin
  FContentRange := Value;
end;

function TGetObjectMetadataResponse.GetRawExpires: string;
begin
  Result := FRawExpires;
end;

procedure TGetObjectMetadataResponse.SetRawExpires(const Value: string);
begin
  FRawExpires := Value;
end;

end.
