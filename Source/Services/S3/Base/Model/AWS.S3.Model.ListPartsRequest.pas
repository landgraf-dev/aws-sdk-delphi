unit AWS.S3.Model.ListPartsRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums;

type
  TListPartsRequest = class;
  
  IListPartsRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMaxParts: Integer;
    procedure SetMaxParts(const Value: Integer);
    function GetPartNumberMarker: Integer;
    procedure SetPartNumberMarker(const Value: Integer);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function Obj: TListPartsRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetMaxParts: Boolean;
    function IsSetPartNumberMarker: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetUploadId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property MaxParts: Integer read GetMaxParts write SetMaxParts;
    property PartNumberMarker: Integer read GetPartNumberMarker write SetPartNumberMarker;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
  TListPartsRequest = class(TAmazonS3Request, IListPartsRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FMaxParts: Nullable<Integer>;
    FPartNumberMarker: Nullable<Integer>;
    FRequestPayer: Nullable<TRequestPayer>;
    FUploadId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMaxParts: Integer;
    procedure SetMaxParts(const Value: Integer);
    function GetPartNumberMarker: Integer;
    procedure SetPartNumberMarker(const Value: Integer);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
  strict protected
    function Obj: TListPartsRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetMaxParts: Boolean;
    function IsSetPartNumberMarker: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetUploadId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property MaxParts: Integer read GetMaxParts write SetMaxParts;
    property PartNumberMarker: Integer read GetPartNumberMarker write SetPartNumberMarker;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
implementation

{ TListPartsRequest }

function TListPartsRequest.Obj: TListPartsRequest;
begin
  Result := Self;
end;

function TListPartsRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TListPartsRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TListPartsRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TListPartsRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TListPartsRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TListPartsRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TListPartsRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TListPartsRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TListPartsRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TListPartsRequest.GetMaxParts: Integer;
begin
  Result := FMaxParts.ValueOrDefault;
end;

procedure TListPartsRequest.SetMaxParts(const Value: Integer);
begin
  FMaxParts := Value;
end;

function TListPartsRequest.IsSetMaxParts: Boolean;
begin
  Result := FMaxParts.HasValue;
end;

function TListPartsRequest.GetPartNumberMarker: Integer;
begin
  Result := FPartNumberMarker.ValueOrDefault;
end;

procedure TListPartsRequest.SetPartNumberMarker(const Value: Integer);
begin
  FPartNumberMarker := Value;
end;

function TListPartsRequest.IsSetPartNumberMarker: Boolean;
begin
  Result := FPartNumberMarker.HasValue;
end;

function TListPartsRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TListPartsRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TListPartsRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TListPartsRequest.GetUploadId: string;
begin
  Result := FUploadId.ValueOrDefault;
end;

procedure TListPartsRequest.SetUploadId(const Value: string);
begin
  FUploadId := Value;
end;

function TListPartsRequest.IsSetUploadId: Boolean;
begin
  Result := FUploadId.HasValue;
end;

end.
