unit AWS.S3.Model.RestoreObjectRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums;

type
  TRestoreObjectRequest = class;
  
  IRestoreObjectRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TRestoreObjectRequest;
    function IsSetBucketName: Boolean;
    function IsSetDays: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Days: Integer read GetDays write SetDays;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TRestoreObjectRequest = class(TAmazonS3Request, IRestoreObjectRequest)
  strict private
    FBucketName: Nullable<string>;
    FDays: Nullable<Integer>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FRequestPayer: Nullable<TRequestPayer>;
    FVersionId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetDays: Integer;
    procedure SetDays(const Value: Integer);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TRestoreObjectRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetDays: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Days: Integer read GetDays write SetDays;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TRestoreObjectRequest }

function TRestoreObjectRequest.Obj: TRestoreObjectRequest;
begin
  Result := Self;
end;

function TRestoreObjectRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TRestoreObjectRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TRestoreObjectRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TRestoreObjectRequest.GetDays: Integer;
begin
  Result := FDays.ValueOrDefault;
end;

procedure TRestoreObjectRequest.SetDays(const Value: Integer);
begin
  FDays := Value;
end;

function TRestoreObjectRequest.IsSetDays: Boolean;
begin
  Result := FDays.HasValue;
end;

function TRestoreObjectRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TRestoreObjectRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TRestoreObjectRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TRestoreObjectRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TRestoreObjectRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TRestoreObjectRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TRestoreObjectRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TRestoreObjectRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TRestoreObjectRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TRestoreObjectRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TRestoreObjectRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TRestoreObjectRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
