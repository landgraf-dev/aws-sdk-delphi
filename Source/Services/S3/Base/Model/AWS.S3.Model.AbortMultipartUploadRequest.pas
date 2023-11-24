unit AWS.S3.Model.AbortMultipartUploadRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums;

type
  TAbortMultipartUploadRequest = class;
  
  IAbortMultipartUploadRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
    function Obj: TAbortMultipartUploadRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetUploadId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
  TAbortMultipartUploadRequest = class(TAmazonS3Request, IAbortMultipartUploadRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FRequestPayer: Nullable<TRequestPayer>;
    FUploadId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetUploadId: string;
    procedure SetUploadId(const Value: string);
  strict protected
    function Obj: TAbortMultipartUploadRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetUploadId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property UploadId: string read GetUploadId write SetUploadId;
  end;
  
implementation

{ TAbortMultipartUploadRequest }

function TAbortMultipartUploadRequest.Obj: TAbortMultipartUploadRequest;
begin
  Result := Self;
end;

function TAbortMultipartUploadRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TAbortMultipartUploadRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TAbortMultipartUploadRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TAbortMultipartUploadRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TAbortMultipartUploadRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TAbortMultipartUploadRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TAbortMultipartUploadRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TAbortMultipartUploadRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TAbortMultipartUploadRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TAbortMultipartUploadRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TAbortMultipartUploadRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TAbortMultipartUploadRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TAbortMultipartUploadRequest.GetUploadId: string;
begin
  Result := FUploadId.ValueOrDefault;
end;

procedure TAbortMultipartUploadRequest.SetUploadId(const Value: string);
begin
  FUploadId := Value;
end;

function TAbortMultipartUploadRequest.IsSetUploadId: Boolean;
begin
  Result := FUploadId.HasValue;
end;

end.
