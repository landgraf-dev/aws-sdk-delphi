unit AWS.S3.Model.PutObjectResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TPutObjectResponse = class;
  
  IPutObjectResponse = interface(IAmazonWebServiceResponse)
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetExpiration: string;
    procedure SetExpiration(const Value: string);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetSSEKMSEncryptionContext: string;
    procedure SetSSEKMSEncryptionContext(const Value: string);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TPutObjectResponse;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetETag: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSEncryptionContext: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetVersionId: Boolean;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property ETag: string read GetETag write SetETag;
    property Expiration: string read GetExpiration write SetExpiration;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSEncryptionContext: string read GetSSEKMSEncryptionContext write SetSSEKMSEncryptionContext;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TPutObjectResponse = class(TAmazonWebServiceResponse, IPutObjectResponse)
  strict private
    FBucketKeyEnabled: Nullable<Boolean>;
    FETag: Nullable<string>;
    FExpiration: Nullable<string>;
    FRequestCharged: Nullable<TRequestCharged>;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FSSEKMSEncryptionContext: Nullable<string>;
    FSSEKMSKeyId: Nullable<string>;
    FServerSideEncryption: Nullable<TServerSideEncryption>;
    FVersionId: Nullable<string>;
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetETag: string;
    procedure SetETag(const Value: string);
    function GetExpiration: string;
    procedure SetExpiration(const Value: string);
    function GetRequestCharged: TRequestCharged;
    procedure SetRequestCharged(const Value: TRequestCharged);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetSSEKMSEncryptionContext: string;
    procedure SetSSEKMSEncryptionContext(const Value: string);
    function GetSSEKMSKeyId: string;
    procedure SetSSEKMSKeyId(const Value: string);
    function GetServerSideEncryption: TServerSideEncryption;
    procedure SetServerSideEncryption(const Value: TServerSideEncryption);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TPutObjectResponse;
  public
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetETag: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSEncryptionContext: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetVersionId: Boolean;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property ETag: string read GetETag write SetETag;
    property Expiration: string read GetExpiration write SetExpiration;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSEncryptionContext: string read GetSSEKMSEncryptionContext write SetSSEKMSEncryptionContext;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TPutObjectResponse }

function TPutObjectResponse.Obj: TPutObjectResponse;
begin
  Result := Self;
end;

function TPutObjectResponse.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TPutObjectResponse.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TPutObjectResponse.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TPutObjectResponse.GetETag: string;
begin
  Result := FETag.ValueOrDefault;
end;

procedure TPutObjectResponse.SetETag(const Value: string);
begin
  FETag := Value;
end;

function TPutObjectResponse.IsSetETag: Boolean;
begin
  Result := FETag.HasValue;
end;

function TPutObjectResponse.GetExpiration: string;
begin
  Result := FExpiration.ValueOrDefault;
end;

procedure TPutObjectResponse.SetExpiration(const Value: string);
begin
  FExpiration := Value;
end;

function TPutObjectResponse.IsSetExpiration: Boolean;
begin
  Result := FExpiration.HasValue;
end;

function TPutObjectResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TPutObjectResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TPutObjectResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TPutObjectResponse.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TPutObjectResponse.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TPutObjectResponse.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TPutObjectResponse.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TPutObjectResponse.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TPutObjectResponse.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TPutObjectResponse.GetSSEKMSEncryptionContext: string;
begin
  Result := FSSEKMSEncryptionContext.ValueOrDefault;
end;

procedure TPutObjectResponse.SetSSEKMSEncryptionContext(const Value: string);
begin
  FSSEKMSEncryptionContext := Value;
end;

function TPutObjectResponse.IsSetSSEKMSEncryptionContext: Boolean;
begin
  Result := FSSEKMSEncryptionContext.HasValue;
end;

function TPutObjectResponse.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TPutObjectResponse.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TPutObjectResponse.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TPutObjectResponse.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TPutObjectResponse.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TPutObjectResponse.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TPutObjectResponse.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TPutObjectResponse.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TPutObjectResponse.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
