unit AWS.S3.Model.ListObjectsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums;

type
  TListObjectsRequest = class;
  
  IListObjectsRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetMarker: string;
    procedure SetMarker(const Value: string);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function Obj: TListObjectsRequest;
    function IsSetBucketName: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetMarker: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetRequestPayer: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Marker: string read GetMarker write SetMarker;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Prefix: string read GetPrefix write SetPrefix;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
  end;
  
  TListObjectsRequest = class(TAmazonS3Request, IListObjectsRequest)
  strict private
    FBucketName: Nullable<string>;
    FDelimiter: Nullable<string>;
    FEncodingType: Nullable<TEncodingType>;
    FExpectedBucketOwner: Nullable<string>;
    FMarker: Nullable<string>;
    FMaxKeys: Nullable<Integer>;
    FPrefix: Nullable<string>;
    FRequestPayer: Nullable<TRequestPayer>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetMarker: string;
    procedure SetMarker(const Value: string);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
  strict protected
    function Obj: TListObjectsRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetMarker: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetRequestPayer: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Marker: string read GetMarker write SetMarker;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Prefix: string read GetPrefix write SetPrefix;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
  end;
  
implementation

{ TListObjectsRequest }

function TListObjectsRequest.Obj: TListObjectsRequest;
begin
  Result := Self;
end;

function TListObjectsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListObjectsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListObjectsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListObjectsRequest.GetDelimiter: string;
begin
  Result := FDelimiter.ValueOrDefault;
end;

procedure TListObjectsRequest.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

function TListObjectsRequest.IsSetDelimiter: Boolean;
begin
  Result := FDelimiter.HasValue;
end;

function TListObjectsRequest.GetEncodingType: TEncodingType;
begin
  Result := FEncodingType.ValueOrDefault;
end;

procedure TListObjectsRequest.SetEncodingType(const Value: TEncodingType);
begin
  FEncodingType := Value;
end;

function TListObjectsRequest.IsSetEncodingType: Boolean;
begin
  Result := FEncodingType.HasValue;
end;

function TListObjectsRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TListObjectsRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TListObjectsRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TListObjectsRequest.GetMarker: string;
begin
  Result := FMarker.ValueOrDefault;
end;

procedure TListObjectsRequest.SetMarker(const Value: string);
begin
  FMarker := Value;
end;

function TListObjectsRequest.IsSetMarker: Boolean;
begin
  Result := FMarker.HasValue;
end;

function TListObjectsRequest.GetMaxKeys: Integer;
begin
  Result := FMaxKeys.ValueOrDefault;
end;

procedure TListObjectsRequest.SetMaxKeys(const Value: Integer);
begin
  FMaxKeys := Value;
end;

function TListObjectsRequest.IsSetMaxKeys: Boolean;
begin
  Result := FMaxKeys.HasValue;
end;

function TListObjectsRequest.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TListObjectsRequest.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TListObjectsRequest.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TListObjectsRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TListObjectsRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TListObjectsRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

end.
