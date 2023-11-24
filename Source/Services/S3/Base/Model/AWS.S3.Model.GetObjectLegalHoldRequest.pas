unit AWS.S3.Model.GetObjectLegalHoldRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums;

type
  TGetObjectLegalHoldRequest = class;
  
  IGetObjectLegalHoldRequest = interface
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
    function Obj: TGetObjectLegalHoldRequest;
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
  
  TGetObjectLegalHoldRequest = class(TAmazonS3Request, IGetObjectLegalHoldRequest)
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
    function Obj: TGetObjectLegalHoldRequest;
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

{ TGetObjectLegalHoldRequest }

function TGetObjectLegalHoldRequest.Obj: TGetObjectLegalHoldRequest;
begin
  Result := Self;
end;

function TGetObjectLegalHoldRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TGetObjectLegalHoldRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TGetObjectLegalHoldRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TGetObjectLegalHoldRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TGetObjectLegalHoldRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TGetObjectLegalHoldRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TGetObjectLegalHoldRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TGetObjectLegalHoldRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TGetObjectLegalHoldRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TGetObjectLegalHoldRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TGetObjectLegalHoldRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TGetObjectLegalHoldRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TGetObjectLegalHoldRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TGetObjectLegalHoldRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TGetObjectLegalHoldRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
