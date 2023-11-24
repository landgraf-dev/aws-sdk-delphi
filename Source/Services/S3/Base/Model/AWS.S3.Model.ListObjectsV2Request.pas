unit AWS.S3.Model.ListObjectsV2Request;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums;

type
  TListObjectsV2Request = class;
  
  IListObjectsV2Request = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetFetchOwner: Boolean;
    procedure SetFetchOwner(const Value: Boolean);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetStartAfter: string;
    procedure SetStartAfter(const Value: string);
    function Obj: TListObjectsV2Request;
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetFetchOwner: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetStartAfter: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property FetchOwner: Boolean read GetFetchOwner write SetFetchOwner;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Prefix: string read GetPrefix write SetPrefix;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property StartAfter: string read GetStartAfter write SetStartAfter;
  end;
  
  TListObjectsV2Request = class(TAmazonS3Request, IListObjectsV2Request)
  strict private
    FBucketName: Nullable<string>;
    FContinuationToken: Nullable<string>;
    FDelimiter: Nullable<string>;
    FEncodingType: Nullable<TEncodingType>;
    FExpectedBucketOwner: Nullable<string>;
    FFetchOwner: Nullable<Boolean>;
    FMaxKeys: Nullable<Integer>;
    FPrefix: Nullable<string>;
    FRequestPayer: Nullable<TRequestPayer>;
    FStartAfter: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContinuationToken: string;
    procedure SetContinuationToken(const Value: string);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetFetchOwner: Boolean;
    procedure SetFetchOwner(const Value: Boolean);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetStartAfter: string;
    procedure SetStartAfter(const Value: string);
  strict protected
    function Obj: TListObjectsV2Request;
  public
    function IsSetBucketName: Boolean;
    function IsSetContinuationToken: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetFetchOwner: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetStartAfter: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContinuationToken: string read GetContinuationToken write SetContinuationToken;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property FetchOwner: Boolean read GetFetchOwner write SetFetchOwner;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Prefix: string read GetPrefix write SetPrefix;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property StartAfter: string read GetStartAfter write SetStartAfter;
  end;
  
implementation

{ TListObjectsV2Request }

function TListObjectsV2Request.Obj: TListObjectsV2Request;
begin
  Result := Self;
end;

function TListObjectsV2Request.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListObjectsV2Request.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListObjectsV2Request.GetContinuationToken: string;
begin
  Result := FContinuationToken.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetContinuationToken(const Value: string);
begin
  FContinuationToken := Value;
end;

function TListObjectsV2Request.IsSetContinuationToken: Boolean;
begin
  Result := FContinuationToken.HasValue;
end;

function TListObjectsV2Request.GetDelimiter: string;
begin
  Result := FDelimiter.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

function TListObjectsV2Request.IsSetDelimiter: Boolean;
begin
  Result := FDelimiter.HasValue;
end;

function TListObjectsV2Request.GetEncodingType: TEncodingType;
begin
  Result := FEncodingType.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetEncodingType(const Value: TEncodingType);
begin
  FEncodingType := Value;
end;

function TListObjectsV2Request.IsSetEncodingType: Boolean;
begin
  Result := FEncodingType.HasValue;
end;

function TListObjectsV2Request.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TListObjectsV2Request.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TListObjectsV2Request.GetFetchOwner: Boolean;
begin
  Result := FFetchOwner.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetFetchOwner(const Value: Boolean);
begin
  FFetchOwner := Value;
end;

function TListObjectsV2Request.IsSetFetchOwner: Boolean;
begin
  Result := FFetchOwner.HasValue;
end;

function TListObjectsV2Request.GetMaxKeys: Integer;
begin
  Result := FMaxKeys.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetMaxKeys(const Value: Integer);
begin
  FMaxKeys := Value;
end;

function TListObjectsV2Request.IsSetMaxKeys: Boolean;
begin
  Result := FMaxKeys.HasValue;
end;

function TListObjectsV2Request.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TListObjectsV2Request.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TListObjectsV2Request.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TListObjectsV2Request.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TListObjectsV2Request.GetStartAfter: string;
begin
  Result := FStartAfter.ValueOrDefault;
end;

procedure TListObjectsV2Request.SetStartAfter(const Value: string);
begin
  FStartAfter := Value;
end;

function TListObjectsV2Request.IsSetStartAfter: Boolean;
begin
  Result := FStartAfter.HasValue;
end;

end.
