unit AWS.S3.Model.CopyObjectResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CopyObjectResult, 
  AWS.S3.Enums;

type
  TCopyObjectResponse = class;
  
  ICopyObjectResponse = interface(IAmazonWebServiceResponse)
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetCopyObjectResult: TCopyObjectResult;
    procedure SetCopyObjectResult(const Value: TCopyObjectResult);
    function GetKeepCopyObjectResult: Boolean;
    procedure SetKeepCopyObjectResult(const Value: Boolean);
    function GetCopySourceVersionId: string;
    procedure SetCopySourceVersionId(const Value: string);
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
    function Obj: TCopyObjectResponse;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCopyObjectResult: Boolean;
    function IsSetCopySourceVersionId: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSEncryptionContext: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetVersionId: Boolean;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CopyObjectResult: TCopyObjectResult read GetCopyObjectResult write SetCopyObjectResult;
    property KeepCopyObjectResult: Boolean read GetKeepCopyObjectResult write SetKeepCopyObjectResult;
    property CopySourceVersionId: string read GetCopySourceVersionId write SetCopySourceVersionId;
    property Expiration: string read GetExpiration write SetExpiration;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSEncryptionContext: string read GetSSEKMSEncryptionContext write SetSSEKMSEncryptionContext;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TCopyObjectResponse = class(TAmazonWebServiceResponse, ICopyObjectResponse)
  strict private
    FBucketKeyEnabled: Nullable<Boolean>;
    FCopyObjectResult: TCopyObjectResult;
    FKeepCopyObjectResult: Boolean;
    FCopySourceVersionId: Nullable<string>;
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
    function GetCopyObjectResult: TCopyObjectResult;
    procedure SetCopyObjectResult(const Value: TCopyObjectResult);
    function GetKeepCopyObjectResult: Boolean;
    procedure SetKeepCopyObjectResult(const Value: Boolean);
    function GetCopySourceVersionId: string;
    procedure SetCopySourceVersionId(const Value: string);
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
    function Obj: TCopyObjectResponse;
  public
    destructor Destroy; override;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetCopyObjectResult: Boolean;
    function IsSetCopySourceVersionId: Boolean;
    function IsSetExpiration: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSEncryptionContext: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetVersionId: Boolean;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property CopyObjectResult: TCopyObjectResult read GetCopyObjectResult write SetCopyObjectResult;
    property KeepCopyObjectResult: Boolean read GetKeepCopyObjectResult write SetKeepCopyObjectResult;
    property CopySourceVersionId: string read GetCopySourceVersionId write SetCopySourceVersionId;
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

{ TCopyObjectResponse }

destructor TCopyObjectResponse.Destroy;
begin
  CopyObjectResult := nil;
  inherited;
end;

function TCopyObjectResponse.Obj: TCopyObjectResponse;
begin
  Result := Self;
end;

function TCopyObjectResponse.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TCopyObjectResponse.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TCopyObjectResponse.GetCopyObjectResult: TCopyObjectResult;
begin
  Result := FCopyObjectResult;
end;

procedure TCopyObjectResponse.SetCopyObjectResult(const Value: TCopyObjectResult);
begin
  if FCopyObjectResult <> Value then
  begin
    if not KeepCopyObjectResult then
      FCopyObjectResult.Free;
    FCopyObjectResult := Value;
  end;
end;

function TCopyObjectResponse.GetKeepCopyObjectResult: Boolean;
begin
  Result := FKeepCopyObjectResult;
end;

procedure TCopyObjectResponse.SetKeepCopyObjectResult(const Value: Boolean);
begin
  FKeepCopyObjectResult := Value;
end;

function TCopyObjectResponse.IsSetCopyObjectResult: Boolean;
begin
  Result := FCopyObjectResult <> nil;
end;

function TCopyObjectResponse.GetCopySourceVersionId: string;
begin
  Result := FCopySourceVersionId.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetCopySourceVersionId(const Value: string);
begin
  FCopySourceVersionId := Value;
end;

function TCopyObjectResponse.IsSetCopySourceVersionId: Boolean;
begin
  Result := FCopySourceVersionId.HasValue;
end;

function TCopyObjectResponse.GetExpiration: string;
begin
  Result := FExpiration.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetExpiration(const Value: string);
begin
  FExpiration := Value;
end;

function TCopyObjectResponse.IsSetExpiration: Boolean;
begin
  Result := FExpiration.HasValue;
end;

function TCopyObjectResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TCopyObjectResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TCopyObjectResponse.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TCopyObjectResponse.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TCopyObjectResponse.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TCopyObjectResponse.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TCopyObjectResponse.GetSSEKMSEncryptionContext: string;
begin
  Result := FSSEKMSEncryptionContext.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetSSEKMSEncryptionContext(const Value: string);
begin
  FSSEKMSEncryptionContext := Value;
end;

function TCopyObjectResponse.IsSetSSEKMSEncryptionContext: Boolean;
begin
  Result := FSSEKMSEncryptionContext.HasValue;
end;

function TCopyObjectResponse.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TCopyObjectResponse.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TCopyObjectResponse.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TCopyObjectResponse.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TCopyObjectResponse.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TCopyObjectResponse.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TCopyObjectResponse.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
