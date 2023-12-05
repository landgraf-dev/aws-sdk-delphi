unit AWS.S3.Model.InitiateMultipartUploadResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TInitiateMultipartUploadResponse = class;
  
  IInitiateMultipartUploadResponse = interface(IAmazonWebServiceResponse)
    function GetAbortDate: TDateTime;
    procedure SetAbortDate(const Value: TDateTime);
    function GetAbortRuleId: string;
    procedure SetAbortRuleId(const Value: string);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
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
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function Obj: TInitiateMultipartUploadResponse;
    function IsSetAbortDate: Boolean;
    function IsSetAbortRuleId: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSEncryptionContext: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetUploadId: Boolean;
    property AbortDate: TDateTime read GetAbortDate write SetAbortDate;
    property AbortRuleId: string read GetAbortRuleId write SetAbortRuleId;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property BucketName: string read GetBucketName write SetBucketName;
    property Key: string read GetKey write SetKey;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSEncryptionContext: string read GetSSEKMSEncryptionContext write SetSSEKMSEncryptionContext;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
  TInitiateMultipartUploadResponse = class(TAmazonWebServiceResponse, IInitiateMultipartUploadResponse)
  strict private
    FAbortDate: Nullable<TDateTime>;
    FAbortRuleId: Nullable<string>;
    FBucketKeyEnabled: Nullable<Boolean>;
    FBucketName: Nullable<string>;
    FKey: Nullable<string>;
    FRequestCharged: Nullable<TRequestCharged>;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FSSEKMSEncryptionContext: Nullable<string>;
    FSSEKMSKeyId: Nullable<string>;
    FServerSideEncryption: Nullable<TServerSideEncryption>;
    FUploadId: Nullable<string>;
    function GetAbortDate: TDateTime;
    procedure SetAbortDate(const Value: TDateTime);
    function GetAbortRuleId: string;
    procedure SetAbortRuleId(const Value: string);
    function GetBucketKeyEnabled: Boolean;
    procedure SetBucketKeyEnabled(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
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
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
  strict protected
    function Obj: TInitiateMultipartUploadResponse;
  public
    function IsSetAbortDate: Boolean;
    function IsSetAbortRuleId: Boolean;
    function IsSetBucketKeyEnabled: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestCharged: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSSEKMSEncryptionContext: Boolean;
    function IsSetSSEKMSKeyId: Boolean;
    function IsSetServerSideEncryption: Boolean;
    function IsSetUploadId: Boolean;
    property AbortDate: TDateTime read GetAbortDate write SetAbortDate;
    property AbortRuleId: string read GetAbortRuleId write SetAbortRuleId;
    property BucketKeyEnabled: Boolean read GetBucketKeyEnabled write SetBucketKeyEnabled;
    property BucketName: string read GetBucketName write SetBucketName;
    property Key: string read GetKey write SetKey;
    property RequestCharged: TRequestCharged read GetRequestCharged write SetRequestCharged;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SSEKMSEncryptionContext: string read GetSSEKMSEncryptionContext write SetSSEKMSEncryptionContext;
    property SSEKMSKeyId: string read GetSSEKMSKeyId write SetSSEKMSKeyId;
    property ServerSideEncryption: TServerSideEncryption read GetServerSideEncryption write SetServerSideEncryption;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
implementation

{ TInitiateMultipartUploadResponse }

function TInitiateMultipartUploadResponse.Obj: TInitiateMultipartUploadResponse;
begin
  Result := Self;
end;

function TInitiateMultipartUploadResponse.GetAbortDate: TDateTime;
begin
  Result := FAbortDate.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetAbortDate(const Value: TDateTime);
begin
  FAbortDate := Value;
end;

function TInitiateMultipartUploadResponse.IsSetAbortDate: Boolean;
begin
  Result := FAbortDate.HasValue;
end;

function TInitiateMultipartUploadResponse.GetAbortRuleId: string;
begin
  Result := FAbortRuleId.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetAbortRuleId(const Value: string);
begin
  FAbortRuleId := Value;
end;

function TInitiateMultipartUploadResponse.IsSetAbortRuleId: Boolean;
begin
  Result := FAbortRuleId.HasValue;
end;

function TInitiateMultipartUploadResponse.GetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetBucketKeyEnabled(const Value: Boolean);
begin
  FBucketKeyEnabled := Value;
end;

function TInitiateMultipartUploadResponse.IsSetBucketKeyEnabled: Boolean;
begin
  Result := FBucketKeyEnabled.HasValue;
end;

function TInitiateMultipartUploadResponse.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TInitiateMultipartUploadResponse.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TInitiateMultipartUploadResponse.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TInitiateMultipartUploadResponse.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TInitiateMultipartUploadResponse.GetRequestCharged: TRequestCharged;
begin
  Result := FRequestCharged.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetRequestCharged(const Value: TRequestCharged);
begin
  FRequestCharged := Value;
end;

function TInitiateMultipartUploadResponse.IsSetRequestCharged: Boolean;
begin
  Result := FRequestCharged.HasValue;
end;

function TInitiateMultipartUploadResponse.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TInitiateMultipartUploadResponse.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TInitiateMultipartUploadResponse.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TInitiateMultipartUploadResponse.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TInitiateMultipartUploadResponse.GetSSEKMSEncryptionContext: string;
begin
  Result := FSSEKMSEncryptionContext.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetSSEKMSEncryptionContext(const Value: string);
begin
  FSSEKMSEncryptionContext := Value;
end;

function TInitiateMultipartUploadResponse.IsSetSSEKMSEncryptionContext: Boolean;
begin
  Result := FSSEKMSEncryptionContext.HasValue;
end;

function TInitiateMultipartUploadResponse.GetSSEKMSKeyId: string;
begin
  Result := FSSEKMSKeyId.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetSSEKMSKeyId(const Value: string);
begin
  FSSEKMSKeyId := Value;
end;

function TInitiateMultipartUploadResponse.IsSetSSEKMSKeyId: Boolean;
begin
  Result := FSSEKMSKeyId.HasValue;
end;

function TInitiateMultipartUploadResponse.GetServerSideEncryption: TServerSideEncryption;
begin
  Result := FServerSideEncryption.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetServerSideEncryption(const Value: TServerSideEncryption);
begin
  FServerSideEncryption := Value;
end;

function TInitiateMultipartUploadResponse.IsSetServerSideEncryption: Boolean;
begin
  Result := FServerSideEncryption.HasValue;
end;

function TInitiateMultipartUploadResponse.GetUploadId: string;
begin
  Result := FUploadId.ValueOrDefault;
end;

procedure TInitiateMultipartUploadResponse.SetUploadId(const Value: string);
begin
  FUploadId := Value;
end;

function TInitiateMultipartUploadResponse.IsSetUploadId: Boolean;
begin
  Result := FUploadId.HasValue;
end;

end.
