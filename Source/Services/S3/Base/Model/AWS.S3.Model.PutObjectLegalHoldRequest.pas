unit AWS.S3.Model.PutObjectLegalHoldRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.ObjectLockLegalHold, 
  AWS.S3.Enums;

type
  TPutObjectLegalHoldRequest = class;
  
  IPutObjectLegalHoldRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLegalHold: TObjectLockLegalHold;
    procedure SetLegalHold(const Value: TObjectLockLegalHold);
    function GetKeepLegalHold: Boolean;
    procedure SetKeepLegalHold(const Value: Boolean);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TPutObjectLegalHoldRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetLegalHold: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property LegalHold: TObjectLockLegalHold read GetLegalHold write SetLegalHold;
    property KeepLegalHold: Boolean read GetKeepLegalHold write SetKeepLegalHold;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TPutObjectLegalHoldRequest = class(TAmazonS3Request, IPutObjectLegalHoldRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FLegalHold: TObjectLockLegalHold;
    FKeepLegalHold: Boolean;
    FRequestPayer: Nullable<TRequestPayer>;
    FVersionId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetLegalHold: TObjectLockLegalHold;
    procedure SetLegalHold(const Value: TObjectLockLegalHold);
    function GetKeepLegalHold: Boolean;
    procedure SetKeepLegalHold(const Value: Boolean);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TPutObjectLegalHoldRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetLegalHold: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property LegalHold: TObjectLockLegalHold read GetLegalHold write SetLegalHold;
    property KeepLegalHold: Boolean read GetKeepLegalHold write SetKeepLegalHold;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TPutObjectLegalHoldRequest }

destructor TPutObjectLegalHoldRequest.Destroy;
begin
  LegalHold := nil;
  inherited;
end;

function TPutObjectLegalHoldRequest.Obj: TPutObjectLegalHoldRequest;
begin
  Result := Self;
end;

function TPutObjectLegalHoldRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutObjectLegalHoldRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutObjectLegalHoldRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutObjectLegalHoldRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutObjectLegalHoldRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutObjectLegalHoldRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutObjectLegalHoldRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutObjectLegalHoldRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutObjectLegalHoldRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutObjectLegalHoldRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TPutObjectLegalHoldRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TPutObjectLegalHoldRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TPutObjectLegalHoldRequest.GetLegalHold: TObjectLockLegalHold;
begin
  Result := FLegalHold;
end;

procedure TPutObjectLegalHoldRequest.SetLegalHold(const Value: TObjectLockLegalHold);
begin
  if FLegalHold <> Value then
  begin
    if not KeepLegalHold then
      FLegalHold.Free;
    FLegalHold := Value;
  end;
end;

function TPutObjectLegalHoldRequest.GetKeepLegalHold: Boolean;
begin
  Result := FKeepLegalHold;
end;

procedure TPutObjectLegalHoldRequest.SetKeepLegalHold(const Value: Boolean);
begin
  FKeepLegalHold := Value;
end;

function TPutObjectLegalHoldRequest.IsSetLegalHold: Boolean;
begin
  Result := FLegalHold <> nil;
end;

function TPutObjectLegalHoldRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TPutObjectLegalHoldRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TPutObjectLegalHoldRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TPutObjectLegalHoldRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TPutObjectLegalHoldRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TPutObjectLegalHoldRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
