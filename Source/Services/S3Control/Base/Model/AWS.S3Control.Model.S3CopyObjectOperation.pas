unit AWS.S3Control.Model.S3CopyObjectOperation;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.S3Control.Model.S3Grant, 
  AWS.S3Control.Enums, 
  AWS.S3Control.Model.S3ObjectMetadata, 
  AWS.S3Control.Model.S3Tag;

type
  TS3CopyObjectOperation = class;
  
  IS3CopyObjectOperation = interface
    function GetAccessControlGrants: TObjectList<TS3Grant>;
    procedure SetAccessControlGrants(const Value: TObjectList<TS3Grant>);
    function GetKeepAccessControlGrants: Boolean;
    procedure SetKeepAccessControlGrants(const Value: Boolean);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetCannedAccessControlList: TS3CannedAccessControlList;
    procedure SetCannedAccessControlList(const Value: TS3CannedAccessControlList);
    function GetMetadataDirective: TS3MetadataDirective;
    procedure SetMetadataDirective(const Value: TS3MetadataDirective);
    function GetModifiedSinceConstraint: TDateTime;
    procedure SetModifiedSinceConstraint(const Value: TDateTime);
    function GetNewObjectMetadata: TS3ObjectMetadata;
    procedure SetNewObjectMetadata(const Value: TS3ObjectMetadata);
    function GetKeepNewObjectMetadata: Boolean;
    procedure SetKeepNewObjectMetadata(const Value: Boolean);
    function GetNewObjectTagging: TObjectList<TS3Tag>;
    procedure SetNewObjectTagging(const Value: TObjectList<TS3Tag>);
    function GetKeepNewObjectTagging: Boolean;
    procedure SetKeepNewObjectTagging(const Value: Boolean);
    function GetObjectLockLegalHoldStatus: TS3ObjectLockLegalHoldStatus;
    procedure SetObjectLockLegalHoldStatus(const Value: TS3ObjectLockLegalHoldStatus);
    function GetObjectLockMode: TS3ObjectLockMode;
    procedure SetObjectLockMode(const Value: TS3ObjectLockMode);
    function GetObjectLockRetainUntilDate: TDateTime;
    procedure SetObjectLockRetainUntilDate(const Value: TDateTime);
    function GetRedirectLocation: string;
    procedure SetRedirectLocation(const Value: string);
    function GetRequesterPays: Boolean;
    procedure SetRequesterPays(const Value: Boolean);
    function GetSSEAwsKmsKeyId: string;
    procedure SetSSEAwsKmsKeyId(const Value: string);
    function GetStorageClass: TS3StorageClass;
    procedure SetStorageClass(const Value: TS3StorageClass);
    function GetTargetKeyPrefix: string;
    procedure SetTargetKeyPrefix(const Value: string);
    function GetTargetResource: string;
    procedure SetTargetResource(const Value: string);
    function GetUnModifiedSinceConstraint: TDateTime;
    procedure SetUnModifiedSinceConstraint(const Value: TDateTime);
    function Obj: TS3CopyObjectOperation;
    function IsSetAccessControlGrants: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCannedAccessControlList: Boolean;
    function IsSetMetadataDirective: Boolean;
    function IsSetModifiedSinceConstraint: Boolean;
    function IsSetNewObjectMetadata: Boolean;
    function IsSetNewObjectTagging: Boolean;
    function IsSetObjectLockLegalHoldStatus: Boolean;
    function IsSetObjectLockMode: Boolean;
    function IsSetObjectLockRetainUntilDate: Boolean;
    function IsSetRedirectLocation: Boolean;
    function IsSetRequesterPays: Boolean;
    function IsSetSSEAwsKmsKeyId: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetTargetKeyPrefix: Boolean;
    function IsSetTargetResource: Boolean;
    function IsSetUnModifiedSinceConstraint: Boolean;
    property AccessControlGrants: TObjectList<TS3Grant> read GetAccessControlGrants write SetAccessControlGrants;
    property KeepAccessControlGrants: Boolean read GetKeepAccessControlGrants write SetKeepAccessControlGrants;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CannedAccessControlList: TS3CannedAccessControlList read GetCannedAccessControlList write SetCannedAccessControlList;
    property MetadataDirective: TS3MetadataDirective read GetMetadataDirective write SetMetadataDirective;
    property ModifiedSinceConstraint: TDateTime read GetModifiedSinceConstraint write SetModifiedSinceConstraint;
    property NewObjectMetadata: TS3ObjectMetadata read GetNewObjectMetadata write SetNewObjectMetadata;
    property KeepNewObjectMetadata: Boolean read GetKeepNewObjectMetadata write SetKeepNewObjectMetadata;
    property NewObjectTagging: TObjectList<TS3Tag> read GetNewObjectTagging write SetNewObjectTagging;
    property KeepNewObjectTagging: Boolean read GetKeepNewObjectTagging write SetKeepNewObjectTagging;
    property ObjectLockLegalHoldStatus: TS3ObjectLockLegalHoldStatus read GetObjectLockLegalHoldStatus write SetObjectLockLegalHoldStatus;
    property ObjectLockMode: TS3ObjectLockMode read GetObjectLockMode write SetObjectLockMode;
    property ObjectLockRetainUntilDate: TDateTime read GetObjectLockRetainUntilDate write SetObjectLockRetainUntilDate;
    property RedirectLocation: string read GetRedirectLocation write SetRedirectLocation;
    property RequesterPays: Boolean read GetRequesterPays write SetRequesterPays;
    property SSEAwsKmsKeyId: string read GetSSEAwsKmsKeyId write SetSSEAwsKmsKeyId;
    property StorageClass: TS3StorageClass read GetStorageClass write SetStorageClass;
    property TargetKeyPrefix: string read GetTargetKeyPrefix write SetTargetKeyPrefix;
    property TargetResource: string read GetTargetResource write SetTargetResource;
    property UnModifiedSinceConstraint: TDateTime read GetUnModifiedSinceConstraint write SetUnModifiedSinceConstraint;
  end;
  
  TS3CopyObjectOperation = class
  strict private
    FAccessControlGrants: TObjectList<TS3Grant>;
    FKeepAccessControlGrants: Boolean;
    FBucketKeyEnabled: Nullable<Boolean>;
    FCannedAccessControlList: Nullable<TS3CannedAccessControlList>;
    FMetadataDirective: Nullable<TS3MetadataDirective>;
    FModifiedSinceConstraint: Nullable<TDateTime>;
    FNewObjectMetadata: TS3ObjectMetadata;
    FKeepNewObjectMetadata: Boolean;
    FNewObjectTagging: TObjectList<TS3Tag>;
    FKeepNewObjectTagging: Boolean;
    FObjectLockLegalHoldStatus: Nullable<TS3ObjectLockLegalHoldStatus>;
    FObjectLockMode: Nullable<TS3ObjectLockMode>;
    FObjectLockRetainUntilDate: Nullable<TDateTime>;
    FRedirectLocation: Nullable<string>;
    FRequesterPays: Nullable<Boolean>;
    FSSEAwsKmsKeyId: Nullable<string>;
    FStorageClass: Nullable<TS3StorageClass>;
    FTargetKeyPrefix: Nullable<string>;
    FTargetResource: Nullable<string>;
    FUnModifiedSinceConstraint: Nullable<TDateTime>;
    function GetAccessControlGrants: TObjectList<TS3Grant>;
    procedure SetAccessControlGrants(const Value: TObjectList<TS3Grant>);
    function GetKeepAccessControlGrants: Boolean;
    procedure SetKeepAccessControlGrants(const Value: Boolean);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetCannedAccessControlList: TS3CannedAccessControlList;
    procedure SetCannedAccessControlList(const Value: TS3CannedAccessControlList);
    function GetMetadataDirective: TS3MetadataDirective;
    procedure SetMetadataDirective(const Value: TS3MetadataDirective);
    function GetModifiedSinceConstraint: TDateTime;
    procedure SetModifiedSinceConstraint(const Value: TDateTime);
    function GetNewObjectMetadata: TS3ObjectMetadata;
    procedure SetNewObjectMetadata(const Value: TS3ObjectMetadata);
    function GetKeepNewObjectMetadata: Boolean;
    procedure SetKeepNewObjectMetadata(const Value: Boolean);
    function GetNewObjectTagging: TObjectList<TS3Tag>;
    procedure SetNewObjectTagging(const Value: TObjectList<TS3Tag>);
    function GetKeepNewObjectTagging: Boolean;
    procedure SetKeepNewObjectTagging(const Value: Boolean);
    function GetObjectLockLegalHoldStatus: TS3ObjectLockLegalHoldStatus;
    procedure SetObjectLockLegalHoldStatus(const Value: TS3ObjectLockLegalHoldStatus);
    function GetObjectLockMode: TS3ObjectLockMode;
    procedure SetObjectLockMode(const Value: TS3ObjectLockMode);
    function GetObjectLockRetainUntilDate: TDateTime;
    procedure SetObjectLockRetainUntilDate(const Value: TDateTime);
    function GetRedirectLocation: string;
    procedure SetRedirectLocation(const Value: string);
    function GetRequesterPays: Boolean;
    procedure SetRequesterPays(const Value: Boolean);
    function GetSSEAwsKmsKeyId: string;
    procedure SetSSEAwsKmsKeyId(const Value: string);
    function GetStorageClass: TS3StorageClass;
    procedure SetStorageClass(const Value: TS3StorageClass);
    function GetTargetKeyPrefix: string;
    procedure SetTargetKeyPrefix(const Value: string);
    function GetTargetResource: string;
    procedure SetTargetResource(const Value: string);
    function GetUnModifiedSinceConstraint: TDateTime;
    procedure SetUnModifiedSinceConstraint(const Value: TDateTime);
  strict protected
    function Obj: TS3CopyObjectOperation;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccessControlGrants: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCannedAccessControlList: Boolean;
    function IsSetMetadataDirective: Boolean;
    function IsSetModifiedSinceConstraint: Boolean;
    function IsSetNewObjectMetadata: Boolean;
    function IsSetNewObjectTagging: Boolean;
    function IsSetObjectLockLegalHoldStatus: Boolean;
    function IsSetObjectLockMode: Boolean;
    function IsSetObjectLockRetainUntilDate: Boolean;
    function IsSetRedirectLocation: Boolean;
    function IsSetRequesterPays: Boolean;
    function IsSetSSEAwsKmsKeyId: Boolean;
    function IsSetStorageClass: Boolean;
    function IsSetTargetKeyPrefix: Boolean;
    function IsSetTargetResource: Boolean;
    function IsSetUnModifiedSinceConstraint: Boolean;
    property AccessControlGrants: TObjectList<TS3Grant> read GetAccessControlGrants write SetAccessControlGrants;
    property KeepAccessControlGrants: Boolean read GetKeepAccessControlGrants write SetKeepAccessControlGrants;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CannedAccessControlList: TS3CannedAccessControlList read GetCannedAccessControlList write SetCannedAccessControlList;
    property MetadataDirective: TS3MetadataDirective read GetMetadataDirective write SetMetadataDirective;
    property ModifiedSinceConstraint: TDateTime read GetModifiedSinceConstraint write SetModifiedSinceConstraint;
    property NewObjectMetadata: TS3ObjectMetadata read GetNewObjectMetadata write SetNewObjectMetadata;
    property KeepNewObjectMetadata: Boolean read GetKeepNewObjectMetadata write SetKeepNewObjectMetadata;
    property NewObjectTagging: TObjectList<TS3Tag> read GetNewObjectTagging write SetNewObjectTagging;
    property KeepNewObjectTagging: Boolean read GetKeepNewObjectTagging write SetKeepNewObjectTagging;
    property ObjectLockLegalHoldStatus: TS3ObjectLockLegalHoldStatus read GetObjectLockLegalHoldStatus write SetObjectLockLegalHoldStatus;
    property ObjectLockMode: TS3ObjectLockMode read GetObjectLockMode write SetObjectLockMode;
    property ObjectLockRetainUntilDate: TDateTime read GetObjectLockRetainUntilDate write SetObjectLockRetainUntilDate;
    property RedirectLocation: string read GetRedirectLocation write SetRedirectLocation;
    property RequesterPays: Boolean read GetRequesterPays write SetRequesterPays;
    property SSEAwsKmsKeyId: string read GetSSEAwsKmsKeyId write SetSSEAwsKmsKeyId;
    property StorageClass: TS3StorageClass read GetStorageClass write SetStorageClass;
    property TargetKeyPrefix: string read GetTargetKeyPrefix write SetTargetKeyPrefix;
    property TargetResource: string read GetTargetResource write SetTargetResource;
    property UnModifiedSinceConstraint: TDateTime read GetUnModifiedSinceConstraint write SetUnModifiedSinceConstraint;
  end;
  
implementation

{ TS3CopyObjectOperation }

constructor TS3CopyObjectOperation.Create;
begin
  inherited;
  FAccessControlGrants := TObjectList<TS3Grant>.Create;
  FNewObjectTagging := TObjectList<TS3Tag>.Create;
end;

destructor TS3CopyObjectOperation.Destroy;
begin
  NewObjectTagging := nil;
  NewObjectMetadata := nil;
  AccessControlGrants := nil;
  inherited;
end;

function TS3CopyObjectOperation.Obj: TS3CopyObjectOperation;
begin
  Result := Self;
end;

function TS3CopyObjectOperation.GetAccessControlGrants: TObjectList<TS3Grant>;
begin
  Result := FAccessControlGrants;
end;

procedure TS3CopyObjectOperation.SetAccessControlGrants(const Value: TObjectList<TS3Grant>);
begin
  if FAccessControlGrants <> Value then
  begin
    if not KeepAccessControlGrants then
      FAccessControlGrants.Free;
    FAccessControlGrants := Value;
  end;
end;

function TS3CopyObjectOperation.GetKeepAccessControlGrants: Boolean;
begin
  Result := FKeepAccessControlGrants;
end;

procedure TS3CopyObjectOperation.SetKeepAccessControlGrants(const Value: Boolean);
begin
  FKeepAccessControlGrants := Value;
end;

function TS3CopyObjectOperation.IsSetAccessControlGrants: Boolean;
begin
  Result := (FAccessControlGrants <> nil) and (FAccessControlGrants.Count > 0);
end;

function TS3CopyObjectOperation.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TS3CopyObjectOperation.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TS3CopyObjectOperation.GetCannedAccessControlList: TS3CannedAccessControlList;
begin
  Result := FCannedAccessControlList.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetCannedAccessControlList(const Value: TS3CannedAccessControlList);
begin
  FCannedAccessControlList := Value;
end;

function TS3CopyObjectOperation.IsSetCannedAccessControlList: Boolean;
begin
  Result := FCannedAccessControlList.HasValue;
end;

function TS3CopyObjectOperation.GetMetadataDirective: TS3MetadataDirective;
begin
  Result := FMetadataDirective.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetMetadataDirective(const Value: TS3MetadataDirective);
begin
  FMetadataDirective := Value;
end;

function TS3CopyObjectOperation.IsSetMetadataDirective: Boolean;
begin
  Result := FMetadataDirective.HasValue;
end;

function TS3CopyObjectOperation.GetModifiedSinceConstraint: TDateTime;
begin
  Result := FModifiedSinceConstraint.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetModifiedSinceConstraint(const Value: TDateTime);
begin
  FModifiedSinceConstraint := Value;
end;

function TS3CopyObjectOperation.IsSetModifiedSinceConstraint: Boolean;
begin
  Result := FModifiedSinceConstraint.HasValue;
end;

function TS3CopyObjectOperation.GetNewObjectMetadata: TS3ObjectMetadata;
begin
  Result := FNewObjectMetadata;
end;

procedure TS3CopyObjectOperation.SetNewObjectMetadata(const Value: TS3ObjectMetadata);
begin
  if FNewObjectMetadata <> Value then
  begin
    if not KeepNewObjectMetadata then
      FNewObjectMetadata.Free;
    FNewObjectMetadata := Value;
  end;
end;

function TS3CopyObjectOperation.GetKeepNewObjectMetadata: Boolean;
begin
  Result := FKeepNewObjectMetadata;
end;

procedure TS3CopyObjectOperation.SetKeepNewObjectMetadata(const Value: Boolean);
begin
  FKeepNewObjectMetadata := Value;
end;

function TS3CopyObjectOperation.IsSetNewObjectMetadata: Boolean;
begin
  Result := FNewObjectMetadata <> nil;
end;

function TS3CopyObjectOperation.GetNewObjectTagging: TObjectList<TS3Tag>;
begin
  Result := FNewObjectTagging;
end;

procedure TS3CopyObjectOperation.SetNewObjectTagging(const Value: TObjectList<TS3Tag>);
begin
  if FNewObjectTagging <> Value then
  begin
    if not KeepNewObjectTagging then
      FNewObjectTagging.Free;
    FNewObjectTagging := Value;
  end;
end;

function TS3CopyObjectOperation.GetKeepNewObjectTagging: Boolean;
begin
  Result := FKeepNewObjectTagging;
end;

procedure TS3CopyObjectOperation.SetKeepNewObjectTagging(const Value: Boolean);
begin
  FKeepNewObjectTagging := Value;
end;

function TS3CopyObjectOperation.IsSetNewObjectTagging: Boolean;
begin
  Result := (FNewObjectTagging <> nil) and (FNewObjectTagging.Count > 0);
end;

function TS3CopyObjectOperation.GetObjectLockLegalHoldStatus: TS3ObjectLockLegalHoldStatus;
begin
  Result := FObjectLockLegalHoldStatus.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetObjectLockLegalHoldStatus(const Value: TS3ObjectLockLegalHoldStatus);
begin
  FObjectLockLegalHoldStatus := Value;
end;

function TS3CopyObjectOperation.IsSetObjectLockLegalHoldStatus: Boolean;
begin
  Result := FObjectLockLegalHoldStatus.HasValue;
end;

function TS3CopyObjectOperation.GetObjectLockMode: TS3ObjectLockMode;
begin
  Result := FObjectLockMode.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetObjectLockMode(const Value: TS3ObjectLockMode);
begin
  FObjectLockMode := Value;
end;

function TS3CopyObjectOperation.IsSetObjectLockMode: Boolean;
begin
  Result := FObjectLockMode.HasValue;
end;

function TS3CopyObjectOperation.GetObjectLockRetainUntilDate: TDateTime;
begin
  Result := FObjectLockRetainUntilDate.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetObjectLockRetainUntilDate(const Value: TDateTime);
begin
  FObjectLockRetainUntilDate := Value;
end;

function TS3CopyObjectOperation.IsSetObjectLockRetainUntilDate: Boolean;
begin
  Result := FObjectLockRetainUntilDate.HasValue;
end;

function TS3CopyObjectOperation.GetRedirectLocation: string;
begin
  Result := FRedirectLocation.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetRedirectLocation(const Value: string);
begin
  FRedirectLocation := Value;
end;

function TS3CopyObjectOperation.IsSetRedirectLocation: Boolean;
begin
  Result := FRedirectLocation.HasValue;
end;

function TS3CopyObjectOperation.GetRequesterPays: Boolean;
begin
  Result := FRequesterPays.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetRequesterPays(const Value: Boolean);
begin
  FRequesterPays := Value;
end;

function TS3CopyObjectOperation.IsSetRequesterPays: Boolean;
begin
  Result := FRequesterPays.HasValue;
end;

function TS3CopyObjectOperation.GetSSEAwsKmsKeyId: string;
begin
  Result := FSSEAwsKmsKeyId.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetSSEAwsKmsKeyId(const Value: string);
begin
  FSSEAwsKmsKeyId := Value;
end;

function TS3CopyObjectOperation.IsSetSSEAwsKmsKeyId: Boolean;
begin
  Result := FSSEAwsKmsKeyId.HasValue;
end;

function TS3CopyObjectOperation.GetStorageClass: TS3StorageClass;
begin
  Result := FStorageClass.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetStorageClass(const Value: TS3StorageClass);
begin
  FStorageClass := Value;
end;

function TS3CopyObjectOperation.IsSetStorageClass: Boolean;
begin
  Result := FStorageClass.HasValue;
end;

function TS3CopyObjectOperation.GetTargetKeyPrefix: string;
begin
  Result := FTargetKeyPrefix.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetTargetKeyPrefix(const Value: string);
begin
  FTargetKeyPrefix := Value;
end;

function TS3CopyObjectOperation.IsSetTargetKeyPrefix: Boolean;
begin
  Result := FTargetKeyPrefix.HasValue;
end;

function TS3CopyObjectOperation.GetTargetResource: string;
begin
  Result := FTargetResource.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetTargetResource(const Value: string);
begin
  FTargetResource := Value;
end;

function TS3CopyObjectOperation.IsSetTargetResource: Boolean;
begin
  Result := FTargetResource.HasValue;
end;

function TS3CopyObjectOperation.GetUnModifiedSinceConstraint: TDateTime;
begin
  Result := FUnModifiedSinceConstraint.ValueOrDefault;
end;

procedure TS3CopyObjectOperation.SetUnModifiedSinceConstraint(const Value: TDateTime);
begin
  FUnModifiedSinceConstraint := Value;
end;

function TS3CopyObjectOperation.IsSetUnModifiedSinceConstraint: Boolean;
begin
  Result := FUnModifiedSinceConstraint.HasValue;
end;

end.
