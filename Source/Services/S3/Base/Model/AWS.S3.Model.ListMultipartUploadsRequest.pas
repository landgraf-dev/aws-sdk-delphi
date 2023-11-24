unit AWS.S3.Model.ListMultipartUploadsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums;

type
  TListMultipartUploadsRequest = class;
  
  IListMultipartUploadsRequest = interface
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
    function GetMaxUploads: Integer;
    procedure SetMaxUploads(const Value: Integer);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetUploadIdMarker: string;
    procedure SetUploadIdMarker(const Value: string);
    function Obj: TListMultipartUploadsRequest;
    function IsSetBucketName: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKeyMarker: Boolean;
    function IsSetMaxUploads: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetUploadIdMarker: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property KeyMarker: string read GetKeyMarker write SetKeyMarker;
    property MaxUploads: Integer read GetMaxUploads write SetMaxUploads;
    property Prefix: string read GetPrefix write SetPrefix;
    property UploadIdMarker: string read GetUploadIdMarker write SetUploadIdMarker;
  end;
  
  TListMultipartUploadsRequest = class(TAmazonS3Request, IListMultipartUploadsRequest)
  strict private
    FBucketName: Nullable<string>;
    FDelimiter: Nullable<string>;
    FEncodingType: Nullable<TEncodingType>;
    FExpectedBucketOwner: Nullable<string>;
    FKeyMarker: Nullable<string>;
    FMaxUploads: Nullable<Integer>;
    FPrefix: Nullable<string>;
    FUploadIdMarker: Nullable<string>;
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
    function GetMaxUploads: Integer;
    procedure SetMaxUploads(const Value: Integer);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetUploadIdMarker: string;
    procedure SetUploadIdMarker(const Value: string);
  strict protected
    function Obj: TListMultipartUploadsRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKeyMarker: Boolean;
    function IsSetMaxUploads: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetUploadIdMarker: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property KeyMarker: string read GetKeyMarker write SetKeyMarker;
    property MaxUploads: Integer read GetMaxUploads write SetMaxUploads;
    property Prefix: string read GetPrefix write SetPrefix;
    property UploadIdMarker: string read GetUploadIdMarker write SetUploadIdMarker;
  end;
  
implementation

{ TListMultipartUploadsRequest }

function TListMultipartUploadsRequest.Obj: TListMultipartUploadsRequest;
begin
  Result := Self;
end;

function TListMultipartUploadsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListMultipartUploadsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListMultipartUploadsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListMultipartUploadsRequest.GetDelimiter: string;
begin
  Result := FDelimiter.ValueOrDefault;
end;

procedure TListMultipartUploadsRequest.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

function TListMultipartUploadsRequest.IsSetDelimiter: Boolean;
begin
  Result := FDelimiter.HasValue;
end;

function TListMultipartUploadsRequest.GetEncodingType: TEncodingType;
begin
  Result := FEncodingType.ValueOrDefault;
end;

procedure TListMultipartUploadsRequest.SetEncodingType(const Value: TEncodingType);
begin
  FEncodingType := Value;
end;

function TListMultipartUploadsRequest.IsSetEncodingType: Boolean;
begin
  Result := FEncodingType.HasValue;
end;

function TListMultipartUploadsRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TListMultipartUploadsRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TListMultipartUploadsRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TListMultipartUploadsRequest.GetKeyMarker: string;
begin
  Result := FKeyMarker.ValueOrDefault;
end;

procedure TListMultipartUploadsRequest.SetKeyMarker(const Value: string);
begin
  FKeyMarker := Value;
end;

function TListMultipartUploadsRequest.IsSetKeyMarker: Boolean;
begin
  Result := FKeyMarker.HasValue;
end;

function TListMultipartUploadsRequest.GetMaxUploads: Integer;
begin
  Result := FMaxUploads.ValueOrDefault;
end;

procedure TListMultipartUploadsRequest.SetMaxUploads(const Value: Integer);
begin
  FMaxUploads := Value;
end;

function TListMultipartUploadsRequest.IsSetMaxUploads: Boolean;
begin
  Result := FMaxUploads.HasValue;
end;

function TListMultipartUploadsRequest.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TListMultipartUploadsRequest.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TListMultipartUploadsRequest.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TListMultipartUploadsRequest.GetUploadIdMarker: string;
begin
  Result := FUploadIdMarker.ValueOrDefault;
end;

procedure TListMultipartUploadsRequest.SetUploadIdMarker(const Value: string);
begin
  FUploadIdMarker := Value;
end;

function TListMultipartUploadsRequest.IsSetUploadIdMarker: Boolean;
begin
  Result := FUploadIdMarker.HasValue;
end;

end.
