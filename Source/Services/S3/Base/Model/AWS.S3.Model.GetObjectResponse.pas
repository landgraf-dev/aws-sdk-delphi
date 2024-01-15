unit AWS.S3.Model.GetObjectResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.Nullable, 
  System.Classes, 
  AWS.S3.Enums, 
  AWS.S3.Model.HeadersCollection, 
  AWS.S3.Model.MetadataCollection;

type
  TGetObjectResponse = class;
  
  IGetObjectResponse = interface(IAmazonWebServiceResponse)
    function GetAcceptRanges: string;
    procedure SetAcceptRanges(const Value: string);
    function GetBody: TStream;
    procedure SetBody(const Value: TStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetContentRange: string;
    procedure SetContentRange(const Value: string);
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
    function GetTagCount: Integer;
    procedure SetTagCount(const Value: Integer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function GetWebsiteRedirectLocation: string;
    procedure SetWebsiteRedirectLocation(const Value: string);
    function GetHeaders: THeadersCollection;
    procedure SetHeaders(const Value: THeadersCollection);
    function GetKeepHeaders: Boolean;
    procedure SetKeepHeaders(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRawExpires: string;
    procedure SetRawExpires(const Value: string);
    function Obj: TGetObjectResponse;
    function IsSetAcceptRanges: Boolean;
    function IsSetBody: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetContentRange: Boolean;
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
    function IsSetTagCount: Boolean;
    function IsSetVersionId: Boolean;
    function IsSetWebsiteRedirectLocation: Boolean;
    property AcceptRanges: string read GetAcceptRanges write SetAcceptRanges;
    property Body: TStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property ContentRange: string read GetContentRange write SetContentRange;
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
    property TagCount: Integer read GetTagCount write SetTagCount;
    property VersionId: string read GetVersionId write SetVersionId;
    property WebsiteRedirectLocation: string read GetWebsiteRedirectLocation write SetWebsiteRedirectLocation;
    property Headers: THeadersCollection read GetHeaders write SetHeaders;
    property BucketName: string read GetBucketName write SetBucketName;
    property Key: string read GetKey write SetKey;
    property RawExpires: string read GetRawExpires write SetRawExpires;
    property ResponseStream: TStream read GetBody write SetBody;
    property KeepResponseStream: Boolean read GetKeepBody write SetKeepBody;
    property IsSetResponseStream: Boolean read IsSetBody;
  end;
  
  TGetObjectResponse = class(TAmazonWebServiceResponse, IGetObjectResponse)
  strict private
    FAcceptRanges: Nullable<string>;
    FBody: TStream;
    FKeepBody: Boolean;
    FBucketKeyEnabled: Nullable<Boolean>;
    FContentRange: Nullable<string>;
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
    FTagCount: Nullable<Integer>;
    FVersionId: Nullable<string>;
    FWebsiteRedirectLocation: Nullable<string>;
    FHeaders: THeadersCollection;
    FKeepHeaders: Boolean;
    FBucketName: string;
    FKey: string;
    FRawExpires: string;
    function GetAcceptRanges: string;
    procedure SetAcceptRanges(const Value: string);
    function GetBody: TStream;
    procedure SetBody(const Value: TStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetContentRange: string;
    procedure SetContentRange(const Value: string);
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
    function GetTagCount: Integer;
    procedure SetTagCount(const Value: Integer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function GetWebsiteRedirectLocation: string;
    procedure SetWebsiteRedirectLocation(const Value: string);
    function GetHeaders: THeadersCollection;
    procedure SetHeaders(const Value: THeadersCollection);
    function GetKeepHeaders: Boolean;
    procedure SetKeepHeaders(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRawExpires: string;
    procedure SetRawExpires(const Value: string);
  strict protected
    function Obj: TGetObjectResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAcceptRanges: Boolean;
    function IsSetBody: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetContentRange: Boolean;
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
    function IsSetTagCount: Boolean;
    function IsSetVersionId: Boolean;
    function IsSetWebsiteRedirectLocation: Boolean;
    property AcceptRanges: string read GetAcceptRanges write SetAcceptRanges;
    property Body: TStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property ContentRange: string read GetContentRange write SetContentRange;
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
    property TagCount: Integer read GetTagCount write SetTagCount;
    property VersionId: string read GetVersionId write SetVersionId;
    property WebsiteRedirectLocation: string read GetWebsiteRedirectLocation write SetWebsiteRedirectLocation;
    property Headers: THeadersCollection read GetHeaders write SetHeaders;
    property KeepHeaders: Boolean read GetKeepHeaders write SetKeepHeaders;
    property BucketName: string read GetBucketName write SetBucketName;
    property Key: string read GetKey write SetKey;
    property RawExpires: string read GetRawExpires write SetRawExpires;
    property ResponseStream: TStream read GetBody write SetBody;
    property KeepResponseStream: Boolean read GetKeepBody write SetKeepBody;
    property IsSetResponseStream: Boolean read IsSetBody;
  end;
  
implementation

{ TGetObjectResponse }

constructor TGetObjectResponse.Create;
begin
  inherited;
  FMetadata := TMetadataCollection.Create;
  FHeaders := THeadersCollection.Create;
end;

destructor TGetObjectResponse.Destroy;
begin
  Headers := nil;
  Metadata := nil;
  Body := nil;
  inherited;
end;

function TGetObjectResponse.Obj: TGetObjectResponse;
begin
  Result := Self;
end;

function TGetObjectResponse.GetAcceptRanges: string;
begin
  Result := FAcceptRanges.ValueOrDefault;
end;

procedure TGetObjectResponse.SetAcceptRanges(const Value: string);
begin
  FAcceptRanges := Value;
end;

function TGetObjectResponse.IsSetAcceptRanges: Boolean;
begin
  Result := FAcceptRanges.HasValue;
end;

function TGetObjectResponse.GetBody: TStream;
begin
  Result := FBody;
end;

procedure TGetObjectResponse.SetBody(const Value: TStream);
begin
  if FBody <> Value then
  begin
    if not KeepBody then
      FBody.Free;
    FBody := Value;
  end;
end;

function TGetObjectResponse.GetKeepBody: Boolean;
begin
  Result := FKeepBody;
end;

procedure TGetObjectResponse.SetKeepBody(const Value: Boolean);
begin
  FKeepBody := Value;
end;

function TGetObjectResponse.IsSetBody: Boolean;
begin
  Result := FBody <> nil;
end;

function TGetObjectResponse.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TGetObjectResponse.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TGetObjectResponse.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TGetObjectResponse.GetContentRange: string;
begin
  Result := FContentRange.ValueOrDefault;
end;

procedure TGetObjectResponse.SetContentRange(const Value: string);
begin
  FContentRange := Value;
end;

function TGetObjectResponse.IsSetContentRange: Boolean;
begin
  Result := FContentRange.HasValue;
end;

function TGetObjectResponse.GetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.ValueOrDefault;
end;

procedure TGetObjectResponse.SetDeleteMarker(const Value: Boolean);
begin
  FDeleteMarker := Value;
end;

function TGetObjectResponse.IsSetDeleteMarker: Boolean;
begin
  Result := FDeleteMarker.HasValue;
end;

function TGetObjectResponse.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TGetObjectResponse.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TGetObjectResponse.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TGetObjectResponse.GetExpiration: string;
begin
  Result := FExpiration.ValueOrDefault;
end;

procedure TGetObjectResponse.SetExpiration(const Value: string);
begin
  FExpiration := Value;
end;

function TGetObjectResponse.IsSetExpiration: Boolean;
begin
  Result := FExpiration.HasValue;
end;

function TGetObjectResponse.GetLastModified: TDateTime;
begin
  Result := FLastModified.ValueOrDefault;
end;

procedure TGetObjectResponse.SetLastModified(const Value: TDateTime);
begin
  FLastModified := Value;
end;

function TGetObjectResponse.IsSetLastModified: Boolean;
begin
  Result := FLastModified.HasValue;
end;

function TGetObjectResponse.GetMetadata: TMetadataCollection;
begin
  Result := FMetadata;
end;

procedure TGetObjectResponse.SetMetadata(const Value: TMetadataCollection);
begin
  if FMetadata <> Value then
  begin
    if not KeepMetadata then
      FMetadata.Free;
    FMetadata := Value;
  end;
end;

function TGetObjectResponse.GetKeepMetadata: Boolean;
begin
  Result := FKeepMetadata;
end;

procedure TGetObjectResponse.SetKeepMetadata(const Value: Boolean);
begin
  FKeepMetadata := Value;
end;

function TGetObjectResponse.IsSetMetadata: Boolean;
begin
  Result := (FMetadata <> nil) and (FMetadata.Count > 0);
end;

function TGetObjectResponse.GetMissingMeta: Integer;
begin
  Result := FMissingMeta.ValueOrDefault;
end;

procedure TGetObjectResponse.SetMissingMeta(const Value: Integer);
begin
  FMissingMeta := Value;
end;

function TGetObjectResponse.IsSetMissingMeta: Boolean;
begin
  Result := FMissingMeta.HasValue;
end;

function TGetObjectResponse.GetObjectLockLegalHoldStatus: TObjectLockLegalHoldStatus;
begin
  Result := FObjectLockLegalHoldStatus.ValueOrDefault;
end;

procedure TGetObjectResponse.SetObjectLockLegalHoldStatus(const Value: TObjectLockLegalHoldStatus);
begin
  FObjectLockLegalHoldStatus := Value;
end;

function TGetObjectResponse.IsSetObjectLockLegalHoldStatus: Boolean;
begin
  Result := FObjectLockLegalHoldStatus.HasValue;
end;

function TGetObjectResponse.GetObjectLockMode: TObjectLockMode;
begin
  Result := FObjectLockMode.ValueOrDefault;
end;

procedure TGetObjectResponse.SetObjectLockMode(const Value: TObjectLockMode);
begin
  FObjectLockMode := Value;
end;

function TGetObjectResponse.IsSetObjectLockMode: Boolean;
begin
  Result := FObjectLockMode.HasValue;
end;

function TGetObjectResponse.GetObjectLockRetainUntilDate: TDateTime;
begin
  Result := FObjectLockRetainUntilDate.ValueOrDefault;
end;

procedure TGetObjectResponse.SetObjectLockRetainUntilDate(const Value: TDateTime);
begin
  FObjectLockRetainUntilDate := Value;
end;

function TGetObjectResponse.IsSetObjectLockRetainUntilDate: Boolean;
begin
  Result := FObjectLockRetainUntilDate.HasValue;
end;

function TGetObjectResponse.GetPartsCount: Integer;
begin
  Result := FPartsCount.ValueOrDefault;
end;

procedure TGetObjectResponse.SetPartsCount(const Value: Integer);
begin
  FPartsCount := Value;
end;

function TGetObjectResponse.IsSetPartsCount: Boolean;
begin
  Result := FPartsCount.HasValue;
end;

function TGetObjectResponse.GetReplicationStatus: TReplicationStatus;
begin
  Result := FReplicationStatus.ValueOrDefault;
end;

procedure TGetObjectResponse.SetReplicationStatus(const Value: TReplicationStatus);
begin
  FReplicationStatus := Value;
end;

function TGetObjectResponse.IsSetReplicationStatus: Boolean;
begin
  Result := FReplicationStatus.HasValue;
end;

function TGetObjectResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TGetObjectResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TGetObjectResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TGetObjectResponse.GetRestore: string;
begin
  Result := FRestore.ValueOrDefault;
end;

procedure TGetObjectResponse.SetRestore(const Value: string);
begin
  FRestore := Value;
end;

function TGetObjectResponse.IsSetRestore: Boolean;
begin
  Result := FRestore.HasValue;
end;

function TGetObjectResponse.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TGetObjectResponse.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TGetObjectResponse.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TGetObjectResponse.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TGetObjectResponse.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TGetObjectResponse.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TGetObjectResponse.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TGetObjectResponse.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TGetObjectResponse.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TGetObjectResponse.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TGetObjectResponse.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TGetObjectResponse.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TGetObjectResponse.GetStorageClass: TStorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TGetObjectResponse.SetStorageClass(const Value: TStorageClass);
begin
  FStorageClass := Value;
end;

function TGetObjectResponse.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TGetObjectResponse.GetTagCount: Integer;
begin
  Result := FTagCount.ValueOrDefault;
end;

procedure TGetObjectResponse.SetTagCount(const Value: Integer);
begin
  FTagCount := Value;
end;

function TGetObjectResponse.IsSetTagCount: Boolean;
begin
  Result := FTagCount.HasValue;
end;

function TGetObjectResponse.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TGetObjectResponse.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TGetObjectResponse.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

function TGetObjectResponse.GetWebsiteRedirectLocation: string;
begin
  Result := FWebsiteRedirectLocation.ValueOrDefault;
end;

procedure TGetObjectResponse.SetWebsiteRedirectLocation(const Value: string);
begin
  FWebsiteRedirectLocation := Value;
end;

function TGetObjectResponse.IsSetWebsiteRedirectLocation: Boolean;
begin
  Result := FWebsiteRedirectLocation.HasValue;
end;

function TGetObjectResponse.GetHeaders: THeadersCollection;
begin
  Result := FHeaders;
end;

procedure TGetObjectResponse.SetHeaders(const Value: THeadersCollection);
begin
  if FHeaders <> Value then
  begin
    if not KeepHeaders then
      FHeaders.Free;
    FHeaders := Value;
  end;
end;

function TGetObjectResponse.GetKeepHeaders: Boolean;
begin
  Result := FKeepHeaders;
end;

procedure TGetObjectResponse.SetKeepHeaders(const Value: Boolean);
begin
  FKeepHeaders := Value;
end;

function TGetObjectResponse.GetBucketName: string;
begin
  Result := FBucketName;
end;

procedure TGetObjectResponse.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetObjectResponse.GetKey: string;
begin
  Result := FKey;
end;

procedure TGetObjectResponse.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TGetObjectResponse.GetRawExpires: string;
begin
  Result := FRawExpires;
end;

procedure TGetObjectResponse.SetRawExpires(const Value: string);
begin
  FRawExpires := Value;
end;

end.
