unit AWS.S3.Model.CopyPartRequest;

interface

uses
  AWS.S3.Model.Request, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TCopyPartRequest = class;
  
  ICopyPartRequest = interface
    function GetCopySourceIfMatch: string;
    procedure SetCopySourceIfMatch(const Value: string);
    function GetCopySourceIfModifiedSince: TDateTime;
    procedure SetCopySourceIfModifiedSince(const Value: TDateTime);
    function GetCopySourceIfNoneMatch: string;
    procedure SetCopySourceIfNoneMatch(const Value: string);
    function GetCopySourceIfUnmodifiedSince: TDateTime;
    procedure SetCopySourceIfUnmodifiedSince(const Value: TDateTime);
    function GetCopySourceRange: string;
    procedure SetCopySourceRange(const Value: string);
    function GetCopySourceSSECustomerAlgorithm: string;
    procedure SetCopySourceSSECustomerAlgorithm(const Value: string);
    function GetCopySourceSSECustomerKey: string;
    procedure SetCopySourceSSECustomerKey(const Value: string);
    function GetCopySourceSSECustomerKeyMD5: string;
    procedure SetCopySourceSSECustomerKeyMD5(const Value: string);
    function GetDestinationBucket: string;
    procedure SetDestinationBucket(const Value: string);
    function GetDestinationKey: string;
    procedure SetDestinationKey(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetExpectedSourceBucketOwner: string;
    procedure SetExpectedSourceBucketOwner(const Value: string);
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
    function GetSourceBucket: string;
    procedure SetSourceBucket(const Value: string);
    function GetSourceKey: string;
    procedure SetSourceKey(const Value: string);
    function GetSourceVersionId: string;
    procedure SetSourceVersionId(const Value: string);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function Obj: TCopyPartRequest;
    function IsSetCopySourceIfMatch: Boolean;
    function IsSetCopySourceIfModifiedSince: Boolean;
    function IsSetCopySourceIfNoneMatch: Boolean;
    function IsSetCopySourceIfUnmodifiedSince: Boolean;
    function IsSetCopySourceRange: Boolean;
    function IsSetCopySourceSSECustomerAlgorithm: Boolean;
    function IsSetCopySourceSSECustomerKey: Boolean;
    function IsSetCopySourceSSECustomerKeyMD5: Boolean;
    function IsSetDestinationBucket: Boolean;
    function IsSetDestinationKey: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetExpectedSourceBucketOwner: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSourceBucket: Boolean;
    function IsSetSourceKey: Boolean;
    function IsSetSourceVersionId: Boolean;
    function IsSetUploadId: Boolean;
    property CopySourceIfMatch: string read GetCopySourceIfMatch write SetCopySourceIfMatch;
    property CopySourceIfModifiedSince: TDateTime read GetCopySourceIfModifiedSince write SetCopySourceIfModifiedSince;
    property CopySourceIfNoneMatch: string read GetCopySourceIfNoneMatch write SetCopySourceIfNoneMatch;
    property CopySourceIfUnmodifiedSince: TDateTime read GetCopySourceIfUnmodifiedSince write SetCopySourceIfUnmodifiedSince;
    property CopySourceRange: string read GetCopySourceRange write SetCopySourceRange;
    property CopySourceSSECustomerAlgorithm: string read GetCopySourceSSECustomerAlgorithm write SetCopySourceSSECustomerAlgorithm;
    property CopySourceSSECustomerKey: string read GetCopySourceSSECustomerKey write SetCopySourceSSECustomerKey;
    property CopySourceSSECustomerKeyMD5: string read GetCopySourceSSECustomerKeyMD5 write SetCopySourceSSECustomerKeyMD5;
    property DestinationBucket: string read GetDestinationBucket write SetDestinationBucket;
    property DestinationKey: string read GetDestinationKey write SetDestinationKey;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ExpectedSourceBucketOwner: string read GetExpectedSourceBucketOwner write SetExpectedSourceBucketOwner;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SourceBucket: string read GetSourceBucket write SetSourceBucket;
    property SourceKey: string read GetSourceKey write SetSourceKey;
    property SourceVersionId: string read GetSourceVersionId write SetSourceVersionId;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
  TCopyPartRequest = class(TAmazonS3Request, ICopyPartRequest)
  strict private
    FCopySourceIfMatch: Nullable<string>;
    FCopySourceIfModifiedSince: Nullable<TDateTime>;
    FCopySourceIfNoneMatch: Nullable<string>;
    FCopySourceIfUnmodifiedSince: Nullable<TDateTime>;
    FCopySourceRange: Nullable<string>;
    FCopySourceSSECustomerAlgorithm: Nullable<string>;
    FCopySourceSSECustomerKey: Nullable<string>;
    FCopySourceSSECustomerKeyMD5: Nullable<string>;
    FDestinationBucket: Nullable<string>;
    FDestinationKey: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FExpectedSourceBucketOwner: Nullable<string>;
    FPartNumber: Nullable<Integer>;
    FRequestPayer: Nullable<TRequestPayer>;
    FSSECustomerAlgorithm: Nullable<string>;
    FSSECustomerKey: Nullable<string>;
    FSSECustomerKeyMD5: Nullable<string>;
    FSourceBucket: Nullable<string>;
    FSourceKey: Nullable<string>;
    FSourceVersionId: Nullable<string>;
    FUploadId: Nullable<string>;
    function GetCopySourceIfMatch: string;
    procedure SetCopySourceIfMatch(const Value: string);
    function GetCopySourceIfModifiedSince: TDateTime;
    procedure SetCopySourceIfModifiedSince(const Value: TDateTime);
    function GetCopySourceIfNoneMatch: string;
    procedure SetCopySourceIfNoneMatch(const Value: string);
    function GetCopySourceIfUnmodifiedSince: TDateTime;
    procedure SetCopySourceIfUnmodifiedSince(const Value: TDateTime);
    function GetCopySourceRange: string;
    procedure SetCopySourceRange(const Value: string);
    function GetCopySourceSSECustomerAlgorithm: string;
    procedure SetCopySourceSSECustomerAlgorithm(const Value: string);
    function GetCopySourceSSECustomerKey: string;
    procedure SetCopySourceSSECustomerKey(const Value: string);
    function GetCopySourceSSECustomerKeyMD5: string;
    procedure SetCopySourceSSECustomerKeyMD5(const Value: string);
    function GetDestinationBucket: string;
    procedure SetDestinationBucket(const Value: string);
    function GetDestinationKey: string;
    procedure SetDestinationKey(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetExpectedSourceBucketOwner: string;
    procedure SetExpectedSourceBucketOwner(const Value: string);
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
    function GetSourceBucket: string;
    procedure SetSourceBucket(const Value: string);
    function GetSourceKey: string;
    procedure SetSourceKey(const Value: string);
    function GetSourceVersionId: string;
    procedure SetSourceVersionId(const Value: string);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
  strict protected
    function Obj: TCopyPartRequest;
  public
    function IsSetCopySourceIfMatch: Boolean;
    function IsSetCopySourceIfModifiedSince: Boolean;
    function IsSetCopySourceIfNoneMatch: Boolean;
    function IsSetCopySourceIfUnmodifiedSince: Boolean;
    function IsSetCopySourceRange: Boolean;
    function IsSetCopySourceSSECustomerAlgorithm: Boolean;
    function IsSetCopySourceSSECustomerKey: Boolean;
    function IsSetCopySourceSSECustomerKeyMD5: Boolean;
    function IsSetDestinationBucket: Boolean;
    function IsSetDestinationKey: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetExpectedSourceBucketOwner: Boolean;
    function IsSetPartNumber: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetSSECustomerAlgorithm: Boolean;
    function IsSetSSECustomerKey: Boolean;
    function IsSetSSECustomerKeyMD5: Boolean;
    function IsSetSourceBucket: Boolean;
    function IsSetSourceKey: Boolean;
    function IsSetSourceVersionId: Boolean;
    function IsSetUploadId: Boolean;
    property CopySourceIfMatch: string read GetCopySourceIfMatch write SetCopySourceIfMatch;
    property CopySourceIfModifiedSince: TDateTime read GetCopySourceIfModifiedSince write SetCopySourceIfModifiedSince;
    property CopySourceIfNoneMatch: string read GetCopySourceIfNoneMatch write SetCopySourceIfNoneMatch;
    property CopySourceIfUnmodifiedSince: TDateTime read GetCopySourceIfUnmodifiedSince write SetCopySourceIfUnmodifiedSince;
    property CopySourceRange: string read GetCopySourceRange write SetCopySourceRange;
    property CopySourceSSECustomerAlgorithm: string read GetCopySourceSSECustomerAlgorithm write SetCopySourceSSECustomerAlgorithm;
    property CopySourceSSECustomerKey: string read GetCopySourceSSECustomerKey write SetCopySourceSSECustomerKey;
    property CopySourceSSECustomerKeyMD5: string read GetCopySourceSSECustomerKeyMD5 write SetCopySourceSSECustomerKeyMD5;
    property DestinationBucket: string read GetDestinationBucket write SetDestinationBucket;
    property DestinationKey: string read GetDestinationKey write SetDestinationKey;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ExpectedSourceBucketOwner: string read GetExpectedSourceBucketOwner write SetExpectedSourceBucketOwner;
    property PartNumber: Integer read GetPartNumber write SetPartNumber;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property SSECustomerAlgorithm: string read GetSSECustomerAlgorithm write SetSSECustomerAlgorithm;
    property SSECustomerKey: string read GetSSECustomerKey write SetSSECustomerKey;
    property SSECustomerKeyMD5: string read GetSSECustomerKeyMD5 write SetSSECustomerKeyMD5;
    property SourceBucket: string read GetSourceBucket write SetSourceBucket;
    property SourceKey: string read GetSourceKey write SetSourceKey;
    property SourceVersionId: string read GetSourceVersionId write SetSourceVersionId;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
implementation

{ TCopyPartRequest }

function TCopyPartRequest.Obj: TCopyPartRequest;
begin
  Result := Self;
end;

function TCopyPartRequest.GetCopySourceIfMatch: string;
begin
  Result := FCopySourceIfMatch.ValueOrDefault;
end;

procedure TCopyPartRequest.SetCopySourceIfMatch(const Value: string);
begin
  FCopySourceIfMatch := Value;
end;

function TCopyPartRequest.IsSetCopySourceIfMatch: Boolean;
begin
  Result := FCopySourceIfMatch.HasValue;
end;

function TCopyPartRequest.GetCopySourceIfModifiedSince: TDateTime;
begin
  Result := FCopySourceIfModifiedSince.ValueOrDefault;
end;

procedure TCopyPartRequest.SetCopySourceIfModifiedSince(const Value: TDateTime);
begin
  FCopySourceIfModifiedSince := Value;
end;

function TCopyPartRequest.IsSetCopySourceIfModifiedSince: Boolean;
begin
  Result := FCopySourceIfModifiedSince.HasValue;
end;

function TCopyPartRequest.GetCopySourceIfNoneMatch: string;
begin
  Result := FCopySourceIfNoneMatch.ValueOrDefault;
end;

procedure TCopyPartRequest.SetCopySourceIfNoneMatch(const Value: string);
begin
  FCopySourceIfNoneMatch := Value;
end;

function TCopyPartRequest.IsSetCopySourceIfNoneMatch: Boolean;
begin
  Result := FCopySourceIfNoneMatch.HasValue;
end;

function TCopyPartRequest.GetCopySourceIfUnmodifiedSince: TDateTime;
begin
  Result := FCopySourceIfUnmodifiedSince.ValueOrDefault;
end;

procedure TCopyPartRequest.SetCopySourceIfUnmodifiedSince(const Value: TDateTime);
begin
  FCopySourceIfUnmodifiedSince := Value;
end;

function TCopyPartRequest.IsSetCopySourceIfUnmodifiedSince: Boolean;
begin
  Result := FCopySourceIfUnmodifiedSince.HasValue;
end;

function TCopyPartRequest.GetCopySourceRange: string;
begin
  Result := FCopySourceRange.ValueOrDefault;
end;

procedure TCopyPartRequest.SetCopySourceRange(const Value: string);
begin
  FCopySourceRange := Value;
end;

function TCopyPartRequest.IsSetCopySourceRange: Boolean;
begin
  Result := FCopySourceRange.HasValue;
end;

function TCopyPartRequest.GetCopySourceSSECustomerAlgorithm: string;
begin
  Result := FCopySourceSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TCopyPartRequest.SetCopySourceSSECustomerAlgorithm(const Value: string);
begin
  FCopySourceSSECustomerAlgorithm := Value;
end;

function TCopyPartRequest.IsSetCopySourceSSECustomerAlgorithm: Boolean;
begin
  Result := FCopySourceSSECustomerAlgorithm.HasValue;
end;

function TCopyPartRequest.GetCopySourceSSECustomerKey: string;
begin
  Result := FCopySourceSSECustomerKey.ValueOrDefault;
end;

procedure TCopyPartRequest.SetCopySourceSSECustomerKey(const Value: string);
begin
  FCopySourceSSECustomerKey := Value;
end;

function TCopyPartRequest.IsSetCopySourceSSECustomerKey: Boolean;
begin
  Result := FCopySourceSSECustomerKey.HasValue;
end;

function TCopyPartRequest.GetCopySourceSSECustomerKeyMD5: string;
begin
  Result := FCopySourceSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TCopyPartRequest.SetCopySourceSSECustomerKeyMD5(const Value: string);
begin
  FCopySourceSSECustomerKeyMD5 := Value;
end;

function TCopyPartRequest.IsSetCopySourceSSECustomerKeyMD5: Boolean;
begin
  Result := FCopySourceSSECustomerKeyMD5.HasValue;
end;

function TCopyPartRequest.GetDestinationBucket: string;
begin
  Result := FDestinationBucket.ValueOrDefault;
end;

procedure TCopyPartRequest.SetDestinationBucket(const Value: string);
begin
  FDestinationBucket := Value;
end;

function TCopyPartRequest.IsSetDestinationBucket: Boolean;
begin
  Result := FDestinationBucket.HasValue;
end;

function TCopyPartRequest.GetDestinationKey: string;
begin
  Result := FDestinationKey.ValueOrDefault;
end;

procedure TCopyPartRequest.SetDestinationKey(const Value: string);
begin
  FDestinationKey := Value;
end;

function TCopyPartRequest.IsSetDestinationKey: Boolean;
begin
  Result := FDestinationKey.HasValue;
end;

function TCopyPartRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TCopyPartRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TCopyPartRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TCopyPartRequest.GetExpectedSourceBucketOwner: string;
begin
  Result := FExpectedSourceBucketOwner.ValueOrDefault;
end;

procedure TCopyPartRequest.SetExpectedSourceBucketOwner(const Value: string);
begin
  FExpectedSourceBucketOwner := Value;
end;

function TCopyPartRequest.IsSetExpectedSourceBucketOwner: Boolean;
begin
  Result := FExpectedSourceBucketOwner.HasValue;
end;

function TCopyPartRequest.GetPartNumber: Integer;
begin
  Result := FPartNumber.ValueOrDefault;
end;

procedure TCopyPartRequest.SetPartNumber(const Value: Integer);
begin
  FPartNumber := Value;
end;

function TCopyPartRequest.IsSetPartNumber: Boolean;
begin
  Result := FPartNumber.HasValue;
end;

function TCopyPartRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TCopyPartRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TCopyPartRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TCopyPartRequest.GetSSECustomerAlgorithm: string;
begin
  Result := FSSECustomerAlgorithm.ValueOrDefault;
end;

procedure TCopyPartRequest.SetSSECustomerAlgorithm(const Value: string);
begin
  FSSECustomerAlgorithm := Value;
end;

function TCopyPartRequest.IsSetSSECustomerAlgorithm: Boolean;
begin
  Result := FSSECustomerAlgorithm.HasValue;
end;

function TCopyPartRequest.GetSSECustomerKey: string;
begin
  Result := FSSECustomerKey.ValueOrDefault;
end;

procedure TCopyPartRequest.SetSSECustomerKey(const Value: string);
begin
  FSSECustomerKey := Value;
end;

function TCopyPartRequest.IsSetSSECustomerKey: Boolean;
begin
  Result := FSSECustomerKey.HasValue;
end;

function TCopyPartRequest.GetSSECustomerKeyMD5: string;
begin
  Result := FSSECustomerKeyMD5.ValueOrDefault;
end;

procedure TCopyPartRequest.SetSSECustomerKeyMD5(const Value: string);
begin
  FSSECustomerKeyMD5 := Value;
end;

function TCopyPartRequest.IsSetSSECustomerKeyMD5: Boolean;
begin
  Result := FSSECustomerKeyMD5.HasValue;
end;

function TCopyPartRequest.GetSourceBucket: string;
begin
  Result := FSourceBucket.ValueOrDefault;
end;

procedure TCopyPartRequest.SetSourceBucket(const Value: string);
begin
  FSourceBucket := Value;
end;

function TCopyPartRequest.IsSetSourceBucket: Boolean;
begin
  Result := FSourceBucket.HasValue;
end;

function TCopyPartRequest.GetSourceKey: string;
begin
  Result := FSourceKey.ValueOrDefault;
end;

procedure TCopyPartRequest.SetSourceKey(const Value: string);
begin
  FSourceKey := Value;
end;

function TCopyPartRequest.IsSetSourceKey: Boolean;
begin
  Result := FSourceKey.HasValue;
end;

function TCopyPartRequest.GetSourceVersionId: string;
begin
  Result := FSourceVersionId.ValueOrDefault;
end;

procedure TCopyPartRequest.SetSourceVersionId(const Value: string);
begin
  FSourceVersionId := Value;
end;

function TCopyPartRequest.IsSetSourceVersionId: Boolean;
begin
  Result := FSourceVersionId.HasValue;
end;

function TCopyPartRequest.GetUploadId: string;
begin
  Result := FUploadId.ValueOrDefault;
end;

procedure TCopyPartRequest.SetUploadId(const Value: string);
begin
  FUploadId := Value;
end;

function TCopyPartRequest.IsSetUploadId: Boolean;
begin
  Result := FUploadId.HasValue;
end;

end.
