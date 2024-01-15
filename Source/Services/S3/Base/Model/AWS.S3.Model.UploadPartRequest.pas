unit AWS.S3.Model.UploadPartRequest;

interface

uses
  AWS.S3.Model.Request, 
  System.Classes, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TUploadPartRequest = class;
  
  IUploadPartRequest = interface
    function GetBody: TStream;
    procedure SetBody(const Value: TStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function GetFilePath: string;
    procedure SetFilePath(const Value: string);
    function GetFilePosition: Integer;
    procedure SetFilePosition(const Value: Integer);
    function GetPartSize: Int64;
    procedure SetPartSize(const Value: Int64);
    function GetDisablePayloadSigning: NullableBoolean;
    procedure SetDisablePayloadSigning(const Value: NullableBoolean);
    function GetUseChunkEncoding: Boolean;
    procedure SetUseChunkEncoding(const Value: Boolean);
    function GetCalculateContentMD5Header: Boolean;
    procedure SetCalculateContentMD5Header(const Value: Boolean);
    function GetDisableMD5Stream: NullableBoolean;
    procedure SetDisableMD5Stream(const Value: NullableBoolean);
    function Obj: TUploadPartRequest;
    function IsSetBody: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetUploadId: Boolean;
    property Body: TStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property UploadId: string read GetUploadId write SetUploadId;
    property FilePath: string read GetFilePath write SetFilePath;
    property FilePosition: Integer read GetFilePosition write SetFilePosition;
    property PartSize: Int64 read GetPartSize write SetPartSize;
    property DisablePayloadSigning: NullableBoolean read GetDisablePayloadSigning write SetDisablePayloadSigning;
    property UseChunkEncoding: Boolean read GetUseChunkEncoding write SetUseChunkEncoding;
    property CalculateContentMD5Header: Boolean read GetCalculateContentMD5Header write SetCalculateContentMD5Header;
    property DisableMD5Stream: NullableBoolean read GetDisableMD5Stream write SetDisableMD5Stream;
    property InputStream: TStream read GetBody write SetBody;
    property KeepInputStream: Boolean read GetKeepBody write SetKeepBody;
    property IsSetInputStream: Boolean read IsSetBody;
    property MD5Digest: string read GetContentMD5 write SetContentMD5;
    property IsSetMD5Digest: Boolean read IsSetContentMD5;
  end;
  
  TUploadPartRequest = class(TAmazonS3Request, IUploadPartRequest)
  strict private
    FBody: TStream;
    FKeepBody: Boolean;
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FPartNumber: Nullable<Integer>;
    FRequestPayer: Nullable<TRequestPayer>;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKey: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FUploadId: Nullable<string>;
    FFilePath: string;
    FFilePosition: Integer;
    FPartSize: Int64;
    FDisablePayloadSigning: NullableBoolean;
    FUseChunkEncoding: Boolean;
    FCalculateContentMD5Header: Boolean;
    FDisableMD5Stream: NullableBoolean;
    function GetBody: TStream;
    procedure SetBody(const Value: TStream);
    function GetKeepBody: Boolean;
    procedure SetKeepBody(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function GetFilePath: string;
    procedure SetFilePath(const Value: string);
    function GetFilePosition: Integer;
    procedure SetFilePosition(const Value: Integer);
    function GetPartSize: Int64;
    procedure SetPartSize(const Value: Int64);
    function GetDisablePayloadSigning: NullableBoolean;
    procedure SetDisablePayloadSigning(const Value: NullableBoolean);
    function GetUseChunkEncoding: Boolean;
    procedure SetUseChunkEncoding(const Value: Boolean);
    function GetCalculateContentMD5Header: Boolean;
    procedure SetCalculateContentMD5Header(const Value: Boolean);
    function GetDisableMD5Stream: NullableBoolean;
    procedure SetDisableMD5Stream(const Value: NullableBoolean);
  strict protected
    function Obj: TUploadPartRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBody: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetUploadId: Boolean;
    property Body: TStream read GetBody write SetBody;
    property KeepBody: Boolean read GetKeepBody write SetKeepBody;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property UploadId: string read GetUploadId write SetUploadId;
    property FilePath: string read GetFilePath write SetFilePath;
    property FilePosition: Integer read GetFilePosition write SetFilePosition;
    property PartSize: Int64 read GetPartSize write SetPartSize;
    property DisablePayloadSigning: NullableBoolean read GetDisablePayloadSigning write SetDisablePayloadSigning;
    property UseChunkEncoding: Boolean read GetUseChunkEncoding write SetUseChunkEncoding;
    property CalculateContentMD5Header: Boolean read GetCalculateContentMD5Header write SetCalculateContentMD5Header;
    property DisableMD5Stream: NullableBoolean read GetDisableMD5Stream write SetDisableMD5Stream;
    property InputStream: TStream read GetBody write SetBody;
    property KeepInputStream: Boolean read GetKeepBody write SetKeepBody;
    property IsSetInputStream: Boolean read IsSetBody;
    property MD5Digest: string read GetContentMD5 write SetContentMD5;
    property IsSetMD5Digest: Boolean read IsSetContentMD5;
  end;
  
implementation

{ TUploadPartRequest }

constructor TUploadPartRequest.Create;
begin
  inherited;
  FUseChunkEncoding := True;
end;

destructor TUploadPartRequest.Destroy;
begin
  Body := nil;
  inherited;
end;

function TUploadPartRequest.Obj: TUploadPartRequest;
begin
  Result := Self;
end;

function TUploadPartRequest.GetBody: TStream;
begin
  Result := FBody;
end;

procedure TUploadPartRequest.SetBody(const Value: TStream);
begin
  if FBody <> Value then
  begin
    if not KeepBody then
      FBody.Free;
    FBody := Value;
  end;
end;

function TUploadPartRequest.GetKeepBody: Boolean;
begin
  Result := FKeepBody;
end;

procedure TUploadPartRequest.SetKeepBody(const Value: Boolean);
begin
  FKeepBody := Value;
end;

function TUploadPartRequest.IsSetBody: Boolean;
begin
  Result := FBody <> nil;
end;

function TUploadPartRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TUploadPartRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TUploadPartRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TUploadPartRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TUploadPartRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TUploadPartRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TUploadPartRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TUploadPartRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TUploadPartRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TUploadPartRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TUploadPartRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TUploadPartRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TUploadPartRequest.GetPartNumber: Integer;
begin
  Result := FPartNumber.ValueOrDefault;
end;

procedure TUploadPartRequest.SetPartNumber(const Value: Integer);
begin
  FPartNumber := Value;
end;

function TUploadPartRequest.IsSetPartNumber: Boolean;
begin
  Result := FPartNumber.HasValue;
end;

function TUploadPartRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TUploadPartRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TUploadPartRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TUploadPartRequest.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TUploadPartRequest.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TUploadPartRequest.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TUploadPartRequest.GetSSECustomerKey: string;
begin
  Result := FSSECustomerKey.ValueOrDefault;
end;

procedure TUploadPartRequest.SetSSECustomerKey(const Value: string);
begin
  FSSECustomerKey := Value;
end;

function TUploadPartRequest.IsSetSSECustomerKey: Boolean;
begin
  Result := FSSECustomerKey.HasValue;
end;

function TUploadPartRequest.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TUploadPartRequest.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TUploadPartRequest.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TUploadPartRequest.GetUploadId: string;
begin
  Result := FUploadId.ValueOrDefault;
end;

procedure TUploadPartRequest.SetUploadId(const Value: string);
begin
  FUploadId := Value;
end;

function TUploadPartRequest.IsSetUploadId: Boolean;
begin
  Result := FUploadId.HasValue;
end;

function TUploadPartRequest.GetFilePath: string;
begin
  Result := FFilePath;
end;

procedure TUploadPartRequest.SetFilePath(const Value: string);
begin
  FFilePath := Value;
end;

function TUploadPartRequest.GetFilePosition: Integer;
begin
  Result := FFilePosition;
end;

procedure TUploadPartRequest.SetFilePosition(const Value: Integer);
begin
  FFilePosition := Value;
end;

function TUploadPartRequest.GetPartSize: Int64;
begin
  Result := FPartSize;
end;

procedure TUploadPartRequest.SetPartSize(const Value: Int64);
begin
  FPartSize := Value;
end;

function TUploadPartRequest.GetDisablePayloadSigning: NullableBoolean;
begin
  Result := FDisablePayloadSigning;
end;

procedure TUploadPartRequest.SetDisablePayloadSigning(const Value: NullableBoolean);
begin
  FDisablePayloadSigning := Value;
end;

function TUploadPartRequest.GetUseChunkEncoding: Boolean;
begin
  Result := FUseChunkEncoding;
end;

procedure TUploadPartRequest.SetUseChunkEncoding(const Value: Boolean);
begin
  FUseChunkEncoding := Value;
end;

function TUploadPartRequest.GetCalculateContentMD5Header: Boolean;
begin
  Result := FCalculateContentMD5Header;
end;

procedure TUploadPartRequest.SetCalculateContentMD5Header(const Value: Boolean);
begin
  FCalculateContentMD5Header := Value;
end;

function TUploadPartRequest.GetDisableMD5Stream: NullableBoolean;
begin
  Result := FDisableMD5Stream;
end;

procedure TUploadPartRequest.SetDisableMD5Stream(const Value: NullableBoolean);
begin
  FDisableMD5Stream := Value;
end;

end.
