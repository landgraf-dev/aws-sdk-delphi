unit AWS.S3.Model.PutObjectTaggingRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Enums, 
  AWS.S3.Model.Tagging;

type
  TPutObjectTaggingRequest = class;
  
  IPutObjectTaggingRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetTagging: TTagging;
    procedure SetTagging(const Value: TTagging);
    function GetKeepTagging: Boolean;
    procedure SetKeepTagging(const Value: Boolean);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TPutObjectTaggingRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetTagging: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property Tagging: TTagging read GetTagging write SetTagging;
    property KeepTagging: Boolean read GetKeepTagging write SetKeepTagging;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TPutObjectTaggingRequest = class(TAmazonS3Request, IPutObjectTaggingRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FRequestPayer: Nullable<TRequestPayer>;
    FTagging: TTagging;
    FKeepTagging: Boolean;
    FVersionId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetTagging: TTagging;
    procedure SetTagging(const Value: TTagging);
    function GetKeepTagging: Boolean;
    procedure SetKeepTagging(const Value: Boolean);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TPutObjectTaggingRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetTagging: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property Tagging: TTagging read GetTagging write SetTagging;
    property KeepTagging: Boolean read GetKeepTagging write SetKeepTagging;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TPutObjectTaggingRequest }

destructor TPutObjectTaggingRequest.Destroy;
begin
  Tagging := nil;
  inherited;
end;

function TPutObjectTaggingRequest.Obj: TPutObjectTaggingRequest;
begin
  Result := Self;
end;

function TPutObjectTaggingRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutObjectTaggingRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutObjectTaggingRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutObjectTaggingRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutObjectTaggingRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutObjectTaggingRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutObjectTaggingRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutObjectTaggingRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutObjectTaggingRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutObjectTaggingRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TPutObjectTaggingRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TPutObjectTaggingRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TPutObjectTaggingRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TPutObjectTaggingRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TPutObjectTaggingRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TPutObjectTaggingRequest.GetTagging: TTagging;
begin
  Result := FTagging;
end;

procedure TPutObjectTaggingRequest.SetTagging(const Value: TTagging);
begin
  if FTagging <> Value then
  begin
    if not KeepTagging then
      FTagging.Free;
    FTagging := Value;
  end;
end;

function TPutObjectTaggingRequest.GetKeepTagging: Boolean;
begin
  Result := FKeepTagging;
end;

procedure TPutObjectTaggingRequest.SetKeepTagging(const Value: Boolean);
begin
  FKeepTagging := Value;
end;

function TPutObjectTaggingRequest.IsSetTagging: Boolean;
begin
  Result := FTagging <> nil;
end;

function TPutObjectTaggingRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TPutObjectTaggingRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TPutObjectTaggingRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
