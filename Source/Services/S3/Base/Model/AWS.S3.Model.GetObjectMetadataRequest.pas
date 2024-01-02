unit AWS.S3.Model.GetObjectMetadataRequest;

interface

uses
  AWS.S3.Model.Request, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TGetObjectMetadataRequest = class;
  
  IGetObjectMetadataRequest = interface
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
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TGetObjectMetadataRequest;
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
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TGetObjectMetadataRequest = class(TAmazonS3Request, IGetObjectMetadataRequest)
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
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKey: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FVersionId: Nullable<string>;
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
    function GetSSECustomerAlgorithm: string;
    procedure SetSSECustomerAlgorithm(const Value: string);
    function GetSSECustomerKey: string;
    procedure SetSSECustomerKey(const Value: string);
    function GetSSECustomerKeyMD5: string;
    procedure SetSSECustomerKeyMD5(const Value: string);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TGetObjectMetadataRequest;
  public
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
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TGetObjectMetadataRequest }

function TGetObjectMetadataRequest.Obj: TGetObjectMetadataRequest;
begin
  Result := Self;
end;

function TGetObjectMetadataRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetObjectMetadataRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetObjectMetadataRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TGetObjectMetadataRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TGetObjectMetadataRequest.GetIfMatch: string;
begin
  Result := FIfMatch.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetIfMatch(const Value: string);
begin
  FIfMatch := Value;
end;

function TGetObjectMetadataRequest.IsSetIfMatch: Boolean;
begin
  Result := FIfMatch.HasValue;
end;

function TGetObjectMetadataRequest.GetIfModifiedSince: TDateTime;
begin
  Result := FIfModifiedSince.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetIfModifiedSince(const Value: TDateTime);
begin
  FIfModifiedSince := Value;
end;

function TGetObjectMetadataRequest.IsSetIfModifiedSince: Boolean;
begin
  Result := FIfModifiedSince.HasValue;
end;

function TGetObjectMetadataRequest.GetIfNoneMatch: string;
begin
  Result := FIfNoneMatch.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetIfNoneMatch(const Value: string);
begin
  FIfNoneMatch := Value;
end;

function TGetObjectMetadataRequest.IsSetIfNoneMatch: Boolean;
begin
  Result := FIfNoneMatch.HasValue;
end;

function TGetObjectMetadataRequest.GetIfUnmodifiedSince: TDateTime;
begin
  Result := FIfUnmodifiedSince.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetIfUnmodifiedSince(const Value: TDateTime);
begin
  FIfUnmodifiedSince := Value;
end;

function TGetObjectMetadataRequest.IsSetIfUnmodifiedSince: Boolean;
begin
  Result := FIfUnmodifiedSince.HasValue;
end;

function TGetObjectMetadataRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TGetObjectMetadataRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TGetObjectMetadataRequest.GetPartNumber: Integer;
begin
  Result := FPartNumber.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetPartNumber(const Value: Integer);
begin
  FPartNumber := Value;
end;

function TGetObjectMetadataRequest.IsSetPartNumber: Boolean;
begin
  Result := FPartNumber.HasValue;
end;

function TGetObjectMetadataRequest.GetRange: string;
begin
  Result := FRange.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetRange(const Value: string);
begin
  FRange := Value;
end;

function TGetObjectMetadataRequest.IsSetRange: Boolean;
begin
  Result := FRange.HasValue;
end;

function TGetObjectMetadataRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TGetObjectMetadataRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TGetObjectMetadataRequest.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TGetObjectMetadataRequest.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TGetObjectMetadataRequest.GetSSECustomerKey: string;
begin
  Result := FSSECustomerKey.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetSSECustomerKey(const Value: string);
begin
  FSSECustomerKey := Value;
end;

function TGetObjectMetadataRequest.IsSetSSECustomerKey: Boolean;
begin
  Result := FSSECustomerKey.HasValue;
end;

function TGetObjectMetadataRequest.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TGetObjectMetadataRequest.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TGetObjectMetadataRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TGetObjectMetadataRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TGetObjectMetadataRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
