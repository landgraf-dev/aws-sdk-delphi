unit AWS.S3.Model.GetObjectRetentionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums;

type
  TGetObjectRetentionRequest = class;
  
  IGetObjectRetentionRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TGetObjectRetentionRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TGetObjectRetentionRequest = class(TAmazonS3Request, IGetObjectRetentionRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FRequestPayer: Nullable<TRequestPayer>;
    FVersionId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TGetObjectRetentionRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TGetObjectRetentionRequest }

function TGetObjectRetentionRequest.Obj: TGetObjectRetentionRequest;
begin
  Result := Self;
end;

function TGetObjectRetentionRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetObjectRetentionRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetObjectRetentionRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetObjectRetentionRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TGetObjectRetentionRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TGetObjectRetentionRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TGetObjectRetentionRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TGetObjectRetentionRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TGetObjectRetentionRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TGetObjectRetentionRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TGetObjectRetentionRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TGetObjectRetentionRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TGetObjectRetentionRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TGetObjectRetentionRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TGetObjectRetentionRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
