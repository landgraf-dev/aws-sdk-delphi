unit AWS.S3.Model.ListMultipartUploadsResponse;

interface

uses
  Bcl.Types.Nullable, 
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CommonPrefix, 
  AWS.S3.Enums, 
  AWS.S3.Model.MultipartUpload;

type
  TListMultipartUploadsResponse = class;
  
  IListMultipartUploadsResponse = interface(IAmazonWebServiceResponse)
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetCommonPrefixes: TObjectList<TCommonPrefix>;
    procedure SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
    function GetKeepCommonPrefixes: Boolean;
    procedure SetKeepCommonPrefixes(const Value: Boolean);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetKeyMarker: string;
    procedure SetKeyMarker(const Value: string);
    function GetMaxUploads: Integer;
    procedure SetMaxUploads(const Value: Integer);
    function GetNextKeyMarker: string;
    procedure SetNextKeyMarker(const Value: string);
    function GetNextUploadIdMarker: string;
    procedure SetNextUploadIdMarker(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetUploadIdMarker: string;
    procedure SetUploadIdMarker(const Value: string);
    function GetUploads: TObjectList<TMultipartUpload>;
    procedure SetUploads(const Value: TObjectList<TMultipartUpload>);
    function GetKeepUploads: Boolean;
    procedure SetKeepUploads(const Value: Boolean);
    function Obj: TListMultipartUploadsResponse;
    function IsSetBucketName: Boolean;
    function IsSetCommonPrefixes: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetKeyMarker: Boolean;
    function IsSetMaxUploads: Boolean;
    function IsSetNextKeyMarker: Boolean;
    function IsSetNextUploadIdMarker: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetUploadIdMarker: Boolean;
    function IsSetUploads: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property CommonPrefixes: TObjectList<TCommonPrefix> read GetCommonPrefixes write SetCommonPrefixes;
    property KeepCommonPrefixes: Boolean read GetKeepCommonPrefixes write SetKeepCommonPrefixes;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property KeyMarker: string read GetKeyMarker write SetKeyMarker;
    property MaxUploads: Integer read GetMaxUploads write SetMaxUploads;
    property NextKeyMarker: string read GetNextKeyMarker write SetNextKeyMarker;
    property NextUploadIdMarker: string read GetNextUploadIdMarker write SetNextUploadIdMarker;
    property Prefix: string read GetPrefix write SetPrefix;
    property UploadIdMarker: string read GetUploadIdMarker write SetUploadIdMarker;
    property Uploads: TObjectList<TMultipartUpload> read GetUploads write SetUploads;
    property KeepUploads: Boolean read GetKeepUploads write SetKeepUploads;
  end;
  
  TListMultipartUploadsResponse = class(TAmazonWebServiceResponse, IListMultipartUploadsResponse)
  strict private
    FBucketName: Nullable<string>;
    FCommonPrefixes: TObjectList<TCommonPrefix>;
    FKeepCommonPrefixes: Boolean;
    FDelimiter: Nullable<string>;
    FEncodingType: Nullable<TEncodingType>;
    FIsTruncated: Nullable<Boolean>;
    FKeyMarker: Nullable<string>;
    FMaxUploads: Nullable<Integer>;
    FNextKeyMarker: Nullable<string>;
    FNextUploadIdMarker: Nullable<string>;
    FPrefix: Nullable<string>;
    FUploadIdMarker: Nullable<string>;
    FUploads: TObjectList<TMultipartUpload>;
    FKeepUploads: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetCommonPrefixes: TObjectList<TCommonPrefix>;
    procedure SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
    function GetKeepCommonPrefixes: Boolean;
    procedure SetKeepCommonPrefixes(const Value: Boolean);
    function GetDelimiter: string;
    procedure SetDelimiter(const Value: string);
    function GetEncodingType: TEncodingType;
    procedure SetEncodingType(const Value: TEncodingType);
    function GetIsTruncated: Boolean;
    procedure SetIsTruncated(const Value: Boolean);
    function GetKeyMarker: string;
    procedure SetKeyMarker(const Value: string);
    function GetMaxUploads: Integer;
    procedure SetMaxUploads(const Value: Integer);
    function GetNextKeyMarker: string;
    procedure SetNextKeyMarker(const Value: string);
    function GetNextUploadIdMarker: string;
    procedure SetNextUploadIdMarker(const Value: string);
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    function GetUploadIdMarker: string;
    procedure SetUploadIdMarker(const Value: string);
    function GetUploads: TObjectList<TMultipartUpload>;
    procedure SetUploads(const Value: TObjectList<TMultipartUpload>);
    function GetKeepUploads: Boolean;
    procedure SetKeepUploads(const Value: Boolean);
  strict protected
    function Obj: TListMultipartUploadsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetCommonPrefixes: Boolean;
    function IsSetDelimiter: Boolean;
    function IsSetEncodingType: Boolean;
    function IsSetIsTruncated: Boolean;
    function IsSetKeyMarker: Boolean;
    function IsSetMaxUploads: Boolean;
    function IsSetNextKeyMarker: Boolean;
    function IsSetNextUploadIdMarker: Boolean;
    function IsSetPrefix: Boolean;
    function IsSetUploadIdMarker: Boolean;
    function IsSetUploads: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property CommonPrefixes: TObjectList<TCommonPrefix> read GetCommonPrefixes write SetCommonPrefixes;
    property KeepCommonPrefixes: Boolean read GetKeepCommonPrefixes write SetKeepCommonPrefixes;
    property Delimiter: string read GetDelimiter write SetDelimiter;
    property EncodingType: TEncodingType read GetEncodingType write SetEncodingType;
    property IsTruncated: Boolean read GetIsTruncated write SetIsTruncated;
    property KeyMarker: string read GetKeyMarker write SetKeyMarker;
    property MaxUploads: Integer read GetMaxUploads write SetMaxUploads;
    property NextKeyMarker: string read GetNextKeyMarker write SetNextKeyMarker;
    property NextUploadIdMarker: string read GetNextUploadIdMarker write SetNextUploadIdMarker;
    property Prefix: string read GetPrefix write SetPrefix;
    property UploadIdMarker: string read GetUploadIdMarker write SetUploadIdMarker;
    property Uploads: TObjectList<TMultipartUpload> read GetUploads write SetUploads;
    property KeepUploads: Boolean read GetKeepUploads write SetKeepUploads;
  end;
  
implementation

{ TListMultipartUploadsResponse }

constructor TListMultipartUploadsResponse.Create;
begin
  inherited;
  FCommonPrefixes := TObjectList<TCommonPrefix>.Create;
  FUploads := TObjectList<TMultipartUpload>.Create;
end;

destructor TListMultipartUploadsResponse.Destroy;
begin
  Uploads := nil;
  CommonPrefixes := nil;
  inherited;
end;

function TListMultipartUploadsResponse.Obj: TListMultipartUploadsResponse;
begin
  Result := Self;
end;

function TListMultipartUploadsResponse.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListMultipartUploadsResponse.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListMultipartUploadsResponse.GetCommonPrefixes: TObjectList<TCommonPrefix>;
begin
  Result := FCommonPrefixes;
end;

procedure TListMultipartUploadsResponse.SetCommonPrefixes(const Value: TObjectList<TCommonPrefix>);
begin
  if FCommonPrefixes <> Value then
  begin
    if not KeepCommonPrefixes then
      FCommonPrefixes.Free;
    FCommonPrefixes := Value;
  end;
end;

function TListMultipartUploadsResponse.GetKeepCommonPrefixes: Boolean;
begin
  Result := FKeepCommonPrefixes;
end;

procedure TListMultipartUploadsResponse.SetKeepCommonPrefixes(const Value: Boolean);
begin
  FKeepCommonPrefixes := Value;
end;

function TListMultipartUploadsResponse.IsSetCommonPrefixes: Boolean;
begin
  Result := (FCommonPrefixes <> nil) and (FCommonPrefixes.Count > 0);
end;

function TListMultipartUploadsResponse.GetDelimiter: string;
begin
  Result := FDelimiter.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetDelimiter(const Value: string);
begin
  FDelimiter := Value;
end;

function TListMultipartUploadsResponse.IsSetDelimiter: Boolean;
begin
  Result := FDelimiter.HasValue;
end;

function TListMultipartUploadsResponse.GetEncodingType: TEncodingType;
begin
  Result := FEncodingType.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetEncodingType(const Value: TEncodingType);
begin
  FEncodingType := Value;
end;

function TListMultipartUploadsResponse.IsSetEncodingType: Boolean;
begin
  Result := FEncodingType.HasValue;
end;

function TListMultipartUploadsResponse.GetIsTruncated: Boolean;
begin
  Result := FIsTruncated.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetIsTruncated(const Value: Boolean);
begin
  FIsTruncated := Value;
end;

function TListMultipartUploadsResponse.IsSetIsTruncated: Boolean;
begin
  Result := FIsTruncated.HasValue;
end;

function TListMultipartUploadsResponse.GetKeyMarker: string;
begin
  Result := FKeyMarker.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetKeyMarker(const Value: string);
begin
  FKeyMarker := Value;
end;

function TListMultipartUploadsResponse.IsSetKeyMarker: Boolean;
begin
  Result := FKeyMarker.HasValue;
end;

function TListMultipartUploadsResponse.GetMaxUploads: Integer;
begin
  Result := FMaxUploads.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetMaxUploads(const Value: Integer);
begin
  FMaxUploads := Value;
end;

function TListMultipartUploadsResponse.IsSetMaxUploads: Boolean;
begin
  Result := FMaxUploads.HasValue;
end;

function TListMultipartUploadsResponse.GetNextKeyMarker: string;
begin
  Result := FNextKeyMarker.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetNextKeyMarker(const Value: string);
begin
  FNextKeyMarker := Value;
end;

function TListMultipartUploadsResponse.IsSetNextKeyMarker: Boolean;
begin
  Result := FNextKeyMarker.HasValue;
end;

function TListMultipartUploadsResponse.GetNextUploadIdMarker: string;
begin
  Result := FNextUploadIdMarker.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetNextUploadIdMarker(const Value: string);
begin
  FNextUploadIdMarker := Value;
end;

function TListMultipartUploadsResponse.IsSetNextUploadIdMarker: Boolean;
begin
  Result := FNextUploadIdMarker.HasValue;
end;

function TListMultipartUploadsResponse.GetPrefix: string;
begin
  Result := FPrefix.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetPrefix(const Value: string);
begin
  FPrefix := Value;
end;

function TListMultipartUploadsResponse.IsSetPrefix: Boolean;
begin
  Result := FPrefix.HasValue;
end;

function TListMultipartUploadsResponse.GetUploadIdMarker: string;
begin
  Result := FUploadIdMarker.ValueOrDefault;
end;

procedure TListMultipartUploadsResponse.SetUploadIdMarker(const Value: string);
begin
  FUploadIdMarker := Value;
end;

function TListMultipartUploadsResponse.IsSetUploadIdMarker: Boolean;
begin
  Result := FUploadIdMarker.HasValue;
end;

function TListMultipartUploadsResponse.GetUploads: TObjectList<TMultipartUpload>;
begin
  Result := FUploads;
end;

procedure TListMultipartUploadsResponse.SetUploads(const Value: TObjectList<TMultipartUpload>);
begin
  if FUploads <> Value then
  begin
    if not KeepUploads then
      FUploads.Free;
    FUploads := Value;
  end;
end;

function TListMultipartUploadsResponse.GetKeepUploads: Boolean;
begin
  Result := FKeepUploads;
end;

procedure TListMultipartUploadsResponse.SetKeepUploads(const Value: Boolean);
begin
  FKeepUploads := Value;
end;

function TListMultipartUploadsResponse.IsSetUploads: Boolean;
begin
  Result := (FUploads <> nil) and (FUploads.Count > 0);
end;

end.
