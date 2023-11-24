unit AWS.S3.Model.ListVersionsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums;

type
  TListVersionsRequest = class;
  
  IListVersionsRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKeyMarker: string;
    procedure SetKeyMarker(const Value: string);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetVersionIdMarker: string;
    procedure SetVersionIdMarker(const Value: string);
    function Obj: TListVersionsRequest;
    function IsSetBucketName: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKeyMarker: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetVersionIdMarker: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property KeyMarker: string read GetKeyMarker write SetKeyMarker;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Prefix: string read GetPrefix write SetPrefix;
    property VersionIdMarker: string read GetVersionIdMarker write SetVersionIdMarker;
  end;
  
  TListVersionsRequest = class(TAmazonS3Request, IListVersionsRequest)
  strict private
    FBucketName: Nullable<string>;
    FDelimiter: Nullable<string>;
    FEncodingType: Nullable<TEncodingType>;
    FExpectedBucketOwner: Nullable<string>;
    FKeyMarker: Nullable<string>;
    FMaxKeys: Nullable<Integer>;
    FPrefix: Nullable<string>;
    FVersionIdMarker: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKeyMarker: string;
    procedure SetKeyMarker(const Value: string);
    function GetMaxKeys: Integer;
    procedure SetMaxKeys(const Value: Integer);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetVersionIdMarker: string;
    procedure SetVersionIdMarker(const Value: string);
  strict protected
    function Obj: TListVersionsRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKeyMarker: Boolean;
    function IsSetMaxKeys: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetVersionIdMarker: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property KeyMarker: string read GetKeyMarker write SetKeyMarker;
    property MaxKeys: Integer read GetMaxKeys write SetMaxKeys;
    property Prefix: string read GetPrefix write SetPrefix;
    property VersionIdMarker: string read GetVersionIdMarker write SetVersionIdMarker;
  end;
  
implementation

{ TListVersionsRequest }

function TListVersionsRequest.Obj: TListVersionsRequest;
begin
  Result := Self;
end;

function TListVersionsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListVersionsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListVersionsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListVersionsRequest.GetDelimiter: string;
begin
  Result := FDelimiter.ValueOrDefault;
end;

procedure TListVersionsRequest.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

function TListVersionsRequest.IsSetDelimiter: Boolean;
begin
  Result := FDelimiter.HasValue;
end;

function TListVersionsRequest.GetEncodingType: TEncodingType;
begin
  Result := FEncodingType.ValueOrDefault;
end;

procedure TListVersionsRequest.SetEncodingType(const Value: TEncodingType);
begin
  FEncodingType := Value;
end;

function TListVersionsRequest.IsSetEncodingType: Boolean;
begin
  Result := FEncodingType.HasValue;
end;

function TListVersionsRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TListVersionsRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TListVersionsRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TListVersionsRequest.GetKeyMarker: string;
begin
  Result := FKeyMarker.ValueOrDefault;
end;

procedure TListVersionsRequest.SetKeyMarker(const Value: string);
begin
  FKeyMarker := Value;
end;

function TListVersionsRequest.IsSetKeyMarker: Boolean;
begin
  Result := FKeyMarker.HasValue;
end;

function TListVersionsRequest.GetMaxKeys: Integer;
begin
  Result := FMaxKeys.ValueOrDefault;
end;

procedure TListVersionsRequest.SetMaxKeys(const Value: Integer);
begin
  FMaxKeys := Value;
end;

function TListVersionsRequest.IsSetMaxKeys: Boolean;
begin
  Result := FMaxKeys.HasValue;
end;

function TListVersionsRequest.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TListVersionsRequest.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TListVersionsRequest.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TListVersionsRequest.GetVersionIdMarker: string;
begin
  Result := FVersionIdMarker.ValueOrDefault;
end;

procedure TListVersionsRequest.SetVersionIdMarker(const Value: string);
begin
  FVersionIdMarker := Value;
end;

function TListVersionsRequest.IsSetVersionIdMarker: Boolean;
begin
  Result := FVersionIdMarker.HasValue;
end;

end.
