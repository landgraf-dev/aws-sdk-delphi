unit AWS.S3.Model.PutObjectRetentionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums, 
  AWS.S3.Model.ObjectLockRetention;

type
  TPutObjectRetentionRequest = class;
  
  IPutObjectRetentionRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetBypassGovernanceRetention: Boolean;
    procedure SetBypassGovernanceRetention(const Value: Boolean);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetRetention: TObjectLockRetention;
    procedure SetRetention(const Value: TObjectLockRetention);
    function GetKeepRetention: Boolean;
    procedure SetKeepRetention(const Value: Boolean);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TPutObjectRetentionRequest;
    function IsSetBucketName: Boolean;
    function IsSetBypassGovernanceRetention: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetRetention: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property BypassGovernanceRetention: Boolean read GetBypassGovernanceRetention write SetBypassGovernanceRetention;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property Retention: TObjectLockRetention read GetRetention write SetRetention;
    property KeepRetention: Boolean read GetKeepRetention write SetKeepRetention;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TPutObjectRetentionRequest = class(TAmazonS3Request, IPutObjectRetentionRequest)
  strict private
    FBucketName: Nullable<string>;
    FBypassGovernanceRetention: Nullable<Boolean>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FRequestPayer: Nullable<TRequestPayer>;
    FRetention: TObjectLockRetention;
    FKeepRetention: Boolean;
    FVersionId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetBypassGovernanceRetention: Boolean;
    procedure SetBypassGovernanceRetention(const Value: Boolean);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetRetention: TObjectLockRetention;
    procedure SetRetention(const Value: TObjectLockRetention);
    function GetKeepRetention: Boolean;
    procedure SetKeepRetention(const Value: Boolean);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TPutObjectRetentionRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetBypassGovernanceRetention: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetRetention: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property BypassGovernanceRetention: Boolean read GetBypassGovernanceRetention write SetBypassGovernanceRetention;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property Retention: TObjectLockRetention read GetRetention write SetRetention;
    property KeepRetention: Boolean read GetKeepRetention write SetKeepRetention;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TPutObjectRetentionRequest }

destructor TPutObjectRetentionRequest.Destroy;
begin
  Retention := nil;
  inherited;
end;

function TPutObjectRetentionRequest.Obj: TPutObjectRetentionRequest;
begin
  Result := Self;
end;

function TPutObjectRetentionRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutObjectRetentionRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutObjectRetentionRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutObjectRetentionRequest.GetBypassGovernanceRetention: Boolean;
begin
  Result := FBypassGovernanceRetention.ValueOrDefault;
end;

procedure TPutObjectRetentionRequest.SetBypassGovernanceRetention(const Value: Boolean);
begin
  FBypassGovernanceRetention := Value;
end;

function TPutObjectRetentionRequest.IsSetBypassGovernanceRetention: Boolean;
begin
  Result := FBypassGovernanceRetention.HasValue;
end;

function TPutObjectRetentionRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutObjectRetentionRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutObjectRetentionRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutObjectRetentionRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutObjectRetentionRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutObjectRetentionRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutObjectRetentionRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TPutObjectRetentionRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TPutObjectRetentionRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TPutObjectRetentionRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TPutObjectRetentionRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TPutObjectRetentionRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TPutObjectRetentionRequest.GetRetention: TObjectLockRetention;
begin
  Result := FRetention;
end;

procedure TPutObjectRetentionRequest.SetRetention(const Value: TObjectLockRetention);
begin
  if FRetention <> Value then
  begin
    if not KeepRetention then
      FRetention.Free;
    FRetention := Value;
  end;
end;

function TPutObjectRetentionRequest.GetKeepRetention: Boolean;
begin
  Result := FKeepRetention;
end;

procedure TPutObjectRetentionRequest.SetKeepRetention(const Value: Boolean);
begin
  FKeepRetention := Value;
end;

function TPutObjectRetentionRequest.IsSetRetention: Boolean;
begin
  Result := FRetention <> nil;
end;

function TPutObjectRetentionRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TPutObjectRetentionRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TPutObjectRetentionRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
