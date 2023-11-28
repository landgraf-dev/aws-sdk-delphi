unit AWS.S3.Model.GetObjectRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums, 
  AWS.S3.Model.ByteRange;

type
  TGetObjectRequest = class;
  
  IGetObjectRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetIfMatch: string;
    procedure SetIfMatch(const Value: string);
    function GetIfModifiedSince: TDateTime;
    procedure SetIfModifiedSince(const Value: TDateTime);
    function GetIfNoneMatch: string;
    procedure SetIfNoneMatch(const Value: string);
    function GetIfUnmodifiedSince: TDateTime;
    procedure SetIfUnmodifiedSince(const Value: TDateTime);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
    function GetRange: string;
    procedure SetRange(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetResponseCacheControl: string;
    procedure SetResponseCacheControl(const Value: string);
    function GetResponseContentDisposition: string;
    procedure SetResponseContentDisposition(const Value: string);
    function GetResponseContentEncoding: string;
    procedure SetResponseContentEncoding(const Value: string);
    function GetResponseContentLanguage: string;
    procedure SetResponseContentLanguage(const Value: string);
    function GetResponseContentType: string;
    procedure SetResponseContentType(const Value: string);
    function GetResponseExpires: TDateTime;
    procedure SetResponseExpires(const Value: TDateTime);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function GetByteRange: TByteRange;
    procedure SetByteRange(const Value: TByteRange);
    function GetKeepByteRange: Boolean;
    procedure SetKeepByteRange(const Value: Boolean);
    function Obj: TGetObjectRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetIfMatch: Boolean;
    function IsSetIfModifiedSince: Boolean;
    function IsSetIfNoneMatch: Boolean;
    function IsSetIfUnmodifiedSince: Boolean;
    function IsSetKey: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetRange: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetResponseCacheControl: Boolean;
    function IsSetResponseContentDisposition: Boolean;
    function IsSetResponseContentEncoding: Boolean;
    function IsSetResponseContentLanguage: Boolean;
    function IsSetResponseContentType: Boolean;
    function IsSetResponseExpires: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property IfMatch: string read GetIfMatch write SetIfMatch;
    property IfModifiedSince: TDateTime read GetIfModifiedSince write SetIfModifiedSince;
    property IfNoneMatch: string read GetIfNoneMatch write SetIfNoneMatch;
    property IfUnmodifiedSince: TDateTime read GetIfUnmodifiedSince write SetIfUnmodifiedSince;
    property Key: string read GetKey write SetKey;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property Range: string read GetRange write SetRange;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property ResponseCacheControl: string read GetResponseCacheControl write SetResponseCacheControl;
    property ResponseContentDisposition: string read GetResponseContentDisposition write SetResponseContentDisposition;
    property ResponseContentEncoding: string read GetResponseContentEncoding write SetResponseContentEncoding;
    property ResponseContentLanguage: string read GetResponseContentLanguage write SetResponseContentLanguage;
    property ResponseContentType: string read GetResponseContentType write SetResponseContentType;
    property ResponseExpires: TDateTime read GetResponseExpires write SetResponseExpires;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property VersionId: string read GetVersionId write SetVersionId;
    property ByteRange: TByteRange read GetByteRange write SetByteRange;
  end;
  
  TGetObjectRequest = class(TAmazonS3Request, IGetObjectRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FIfMatch: Nullable<string>;
    FIfModifiedSince: Nullable<TDateTime>;
    FIfNoneMatch: Nullable<string>;
    FIfUnmodifiedSince: Nullable<TDateTime>;
    FKey: Nullable<string>;
    FPartNumber: Nullable<Integer>;
    FRange: Nullable<string>;
    FRequestPayer: Nullable<TRequestPayer>;
    FResponseCacheControl: Nullable<string>;
    FResponseContentDisposition: Nullable<string>;
    FResponseContentEncoding: Nullable<string>;
    FResponseContentLanguage: Nullable<string>;
    FResponseContentType: Nullable<string>;
    FResponseExpires: Nullable<TDateTime>;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKey: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FVersionId: Nullable<string>;
    FByteRange: TByteRange;
    FKeepByteRange: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetIfMatch: string;
    procedure SetIfMatch(const Value: string);
    function GetIfModifiedSince: TDateTime;
    procedure SetIfModifiedSince(const Value: TDateTime);
    function GetIfNoneMatch: string;
    procedure SetIfNoneMatch(const Value: string);
    function GetIfUnmodifiedSince: TDateTime;
    procedure SetIfUnmodifiedSince(const Value: TDateTime);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetPartNumber: Integer;
    procedure SetPartNumber(const Value: Integer);
    function GetRange: string;
    procedure SetRange(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetResponseCacheControl: string;
    procedure SetResponseCacheControl(const Value: string);
    function GetResponseContentDisposition: string;
    procedure SetResponseContentDisposition(const Value: string);
    function GetResponseContentEncoding: string;
    procedure SetResponseContentEncoding(const Value: string);
    function GetResponseContentLanguage: string;
    procedure SetResponseContentLanguage(const Value: string);
    function GetResponseContentType: string;
    procedure SetResponseContentType(const Value: string);
    function GetResponseExpires: TDateTime;
    procedure SetResponseExpires(const Value: TDateTime);
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function GetByteRange: TByteRange;
    procedure SetByteRange(const Value: TByteRange);
    function GetKeepByteRange: Boolean;
    procedure SetKeepByteRange(const Value: Boolean);
  strict protected
    function Obj: TGetObjectRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetIfMatch: Boolean;
    function IsSetIfModifiedSince: Boolean;
    function IsSetIfNoneMatch: Boolean;
    function IsSetIfUnmodifiedSince: Boolean;
    function IsSetKey: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetRange: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetResponseCacheControl: Boolean;
    function IsSetResponseContentDisposition: Boolean;
    function IsSetResponseContentEncoding: Boolean;
    function IsSetResponseContentLanguage: Boolean;
    function IsSetResponseContentType: Boolean;
    function IsSetResponseExpires: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property IfMatch: string read GetIfMatch write SetIfMatch;
    property IfModifiedSince: TDateTime read GetIfModifiedSince write SetIfModifiedSince;
    property IfNoneMatch: string read GetIfNoneMatch write SetIfNoneMatch;
    property IfUnmodifiedSince: TDateTime read GetIfUnmodifiedSince write SetIfUnmodifiedSince;
    property Key: string read GetKey write SetKey;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property Range: string read GetRange write SetRange;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property ResponseCacheControl: string read GetResponseCacheControl write SetResponseCacheControl;
    property ResponseContentDisposition: string read GetResponseContentDisposition write SetResponseContentDisposition;
    property ResponseContentEncoding: string read GetResponseContentEncoding write SetResponseContentEncoding;
    property ResponseContentLanguage: string read GetResponseContentLanguage write SetResponseContentLanguage;
    property ResponseContentType: string read GetResponseContentType write SetResponseContentType;
    property ResponseExpires: TDateTime read GetResponseExpires write SetResponseExpires;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property VersionId: string read GetVersionId write SetVersionId;
    property ByteRange: TByteRange read GetByteRange write SetByteRange;
    property KeepByteRange: Boolean read GetKeepByteRange write SetKeepByteRange;
  end;
  
implementation

{ TGetObjectRequest }

destructor TGetObjectRequest.Destroy;
begin
  ByteRange := nil;
  inherited;
end;

function TGetObjectRequest.Obj: TGetObjectRequest;
begin
  Result := Self;
end;

function TGetObjectRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetObjectRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetObjectRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetObjectRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TGetObjectRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TGetObjectRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TGetObjectRequest.GetIfMatch: string;
begin
  Result := FIfMatch.ValueOrDefault;
end;

procedure TGetObjectRequest.SetIfMatch(const Value: string);
begin
  FIfMatch := Value;
end;

function TGetObjectRequest.IsSetIfMatch: Boolean;
begin
  Result := FIfMatch.HasValue;
end;

function TGetObjectRequest.GetIfModifiedSince: TDateTime;
begin
  Result := FIfModifiedSince.ValueOrDefault;
end;

procedure TGetObjectRequest.SetIfModifiedSince(const Value: TDateTime);
begin
  FIfModifiedSince := Value;
end;

function TGetObjectRequest.IsSetIfModifiedSince: Boolean;
begin
  Result := FIfModifiedSince.HasValue;
end;

function TGetObjectRequest.GetIfNoneMatch: string;
begin
  Result := FIfNoneMatch.ValueOrDefault;
end;

procedure TGetObjectRequest.SetIfNoneMatch(const Value: string);
begin
  FIfNoneMatch := Value;
end;

function TGetObjectRequest.IsSetIfNoneMatch: Boolean;
begin
  Result := FIfNoneMatch.HasValue;
end;

function TGetObjectRequest.GetIfUnmodifiedSince: TDateTime;
begin
  Result := FIfUnmodifiedSince.ValueOrDefault;
end;

procedure TGetObjectRequest.SetIfUnmodifiedSince(const Value: TDateTime);
begin
  FIfUnmodifiedSince := Value;
end;

function TGetObjectRequest.IsSetIfUnmodifiedSince: Boolean;
begin
  Result := FIfUnmodifiedSince.HasValue;
end;

function TGetObjectRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TGetObjectRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TGetObjectRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TGetObjectRequest.GetPartNumber: Integer;
begin
  Result := FPartNumber.ValueOrDefault;
end;

procedure TGetObjectRequest.SetPartNumber(const Value: Integer);
begin
  FPartNumber := Value;
end;

function TGetObjectRequest.IsSetPartNumber: Boolean;
begin
  Result := FPartNumber.HasValue;
end;

function TGetObjectRequest.GetRange: string;
begin
  Result := FRange.ValueOrDefault;
end;

procedure TGetObjectRequest.SetRange(const Value: string);
begin
  FRange := Value;
end;

function TGetObjectRequest.IsSetRange: Boolean;
begin
  Result := FRange.HasValue;
end;

function TGetObjectRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TGetObjectRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TGetObjectRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TGetObjectRequest.GetResponseCacheControl: string;
begin
  Result := FResponseCacheControl.ValueOrDefault;
end;

procedure TGetObjectRequest.SetResponseCacheControl(const Value: string);
begin
  FResponseCacheControl := Value;
end;

function TGetObjectRequest.IsSetResponseCacheControl: Boolean;
begin
  Result := FResponseCacheControl.HasValue;
end;

function TGetObjectRequest.GetResponseContentDisposition: string;
begin
  Result := FResponseContentDisposition.ValueOrDefault;
end;

procedure TGetObjectRequest.SetResponseContentDisposition(const Value: string);
begin
  FResponseContentDisposition := Value;
end;

function TGetObjectRequest.IsSetResponseContentDisposition: Boolean;
begin
  Result := FResponseContentDisposition.HasValue;
end;

function TGetObjectRequest.GetResponseContentEncoding: string;
begin
  Result := FResponseContentEncoding.ValueOrDefault;
end;

procedure TGetObjectRequest.SetResponseContentEncoding(const Value: string);
begin
  FResponseContentEncoding := Value;
end;

function TGetObjectRequest.IsSetResponseContentEncoding: Boolean;
begin
  Result := FResponseContentEncoding.HasValue;
end;

function TGetObjectRequest.GetResponseContentLanguage: string;
begin
  Result := FResponseContentLanguage.ValueOrDefault;
end;

procedure TGetObjectRequest.SetResponseContentLanguage(const Value: string);
begin
  FResponseContentLanguage := Value;
end;

function TGetObjectRequest.IsSetResponseContentLanguage: Boolean;
begin
  Result := FResponseContentLanguage.HasValue;
end;

function TGetObjectRequest.GetResponseContentType: string;
begin
  Result := FResponseContentType.ValueOrDefault;
end;

procedure TGetObjectRequest.SetResponseContentType(const Value: string);
begin
  FResponseContentType := Value;
end;

function TGetObjectRequest.IsSetResponseContentType: Boolean;
begin
  Result := FResponseContentType.HasValue;
end;

function TGetObjectRequest.GetResponseExpires: TDateTime;
begin
  Result := FResponseExpires.ValueOrDefault;
end;

procedure TGetObjectRequest.SetResponseExpires(const Value: TDateTime);
begin
  FResponseExpires := Value;
end;

function TGetObjectRequest.IsSetResponseExpires: Boolean;
begin
  Result := FResponseExpires.HasValue;
end;

function TGetObjectRequest.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TGetObjectRequest.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TGetObjectRequest.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TGetObjectRequest.GetSSECustomerKey: string;
begin
  Result := FSSECustomerKey.ValueOrDefault;
end;

procedure TGetObjectRequest.SetSSECustomerKey(const Value: string);
begin
  FSSECustomerKey := Value;
end;

function TGetObjectRequest.IsSetSSECustomerKey: Boolean;
begin
  Result := FSSECustomerKey.HasValue;
end;

function TGetObjectRequest.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TGetObjectRequest.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TGetObjectRequest.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TGetObjectRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TGetObjectRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TGetObjectRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

function TGetObjectRequest.GetByteRange: TByteRange;
begin
  Result := FByteRange;
end;

procedure TGetObjectRequest.SetByteRange(const Value: TByteRange);
begin
  if FByteRange <> Value then
  begin
    if not KeepByteRange then
      FByteRange.Free;
    FByteRange := Value;
  end;
end;

function TGetObjectRequest.GetKeepByteRange: Boolean;
begin
  Result := FKeepByteRange;
end;

procedure TGetObjectRequest.SetKeepByteRange(const Value: Boolean);
begin
  FKeepByteRange := Value;
end;

end.
