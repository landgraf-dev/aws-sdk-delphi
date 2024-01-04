unit AWS.S3.Model.CompleteMultipartUploadResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TCompleteMultipartUploadResponse = class;
  
  ICompleteMultipartUploadResponse = interface(IAmazonWebServiceResponse)
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetExpiration: string;
    procedure SetExpiration(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLocation: string;
    procedure SetLocation(const Value: string);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TCompleteMultipartUploadResponse;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetETag: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetKey: Boolean;
    function IsSetLocation: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetVersionId: Boolean;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property BucketName: string read GetBucketName write SetBucketName;
    property ETag: string read GetETag write SetETag;
    property Expiration: string read GetExpiration write SetExpiration;
    property Key: string read GetKey write SetKey;
    property Location: string read GetLocation write SetLocation;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TCompleteMultipartUploadResponse = class(TAmazonWebServiceResponse, ICompleteMultipartUploadResponse)
  strict private
    FBucketKeyEnabled: Nullable<Boolean>;
    FBucketName: Nullable<string>;
    FETag: Nullable<string>;
    FExpiration: Nullable<string>;
    FKey: Nullable<string>;
    FLocation: Nullable<string>;
    FRequestCharged: Nullable<TRequestCharged>;
    FSSEKMSKeyId: Nullable<string>;
    FServerSideEncryption: Nullable<TServerSideEncryption>;
    FVersionId: Nullable<string>;
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetExpiration: string;
    procedure SetExpiration(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLocation: string;
    procedure SetLocation(const Value: string);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TCompleteMultipartUploadResponse;
  public
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetETag: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetKey: Boolean;
    function IsSetLocation: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetVersionId: Boolean;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property BucketName: string read GetBucketName write SetBucketName;
    property ETag: string read GetETag write SetETag;
    property Expiration: string read GetExpiration write SetExpiration;
    property Key: string read GetKey write SetKey;
    property Location: string read GetLocation write SetLocation;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TCompleteMultipartUploadResponse }

function TCompleteMultipartUploadResponse.Obj: TCompleteMultipartUploadResponse;
begin
  Result := Self;
end;

function TCompleteMultipartUploadResponse.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TCompleteMultipartUploadResponse.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TCompleteMultipartUploadResponse.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TCompleteMultipartUploadResponse.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TCompleteMultipartUploadResponse.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TCompleteMultipartUploadResponse.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TCompleteMultipartUploadResponse.GetExpiration: string;
begin
  Result := FExpiration.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetExpiration(const Value: string);
begin
  FExpiration := Value;
end;

function TCompleteMultipartUploadResponse.IsSetExpiration: Boolean;
begin
  Result := FExpiration.HasValue;
end;

function TCompleteMultipartUploadResponse.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TCompleteMultipartUploadResponse.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TCompleteMultipartUploadResponse.GetLocation: string;
begin
  Result := FLocation.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetLocation(const Value: string);
begin
  FLocation := Value;
end;

function TCompleteMultipartUploadResponse.IsSetLocation: Boolean;
begin
  Result := FLocation.HasValue;
end;

function TCompleteMultipartUploadResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TCompleteMultipartUploadResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TCompleteMultipartUploadResponse.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TCompleteMultipartUploadResponse.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TCompleteMultipartUploadResponse.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TCompleteMultipartUploadResponse.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TCompleteMultipartUploadResponse.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TCompleteMultipartUploadResponse.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TCompleteMultipartUploadResponse.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
