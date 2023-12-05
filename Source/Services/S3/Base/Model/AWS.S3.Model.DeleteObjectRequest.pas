unit AWS.S3.Model.DeleteObjectRequest;

interface

uses
  AWS.S3.Model.Request, 
  AWS.Nullable, 
  AWS.S3.Enums;

type
  TDeleteObjectRequest = class;
  
  IDeleteObjectRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetBypassGovernanceRetention: Boolean;
    procedure SetBypassGovernanceRetention(const Value: Boolean);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMFA: string;
    procedure SetMFA(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
    function Obj: TDeleteObjectRequest;
    function IsSetBucketName: Boolean;
    function IsSetBypassGovernanceRetention: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetMFA: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property BypassGovernanceRetention: Boolean read GetBypassGovernanceRetention write SetBypassGovernanceRetention;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property MFA: string read GetMFA write SetMFA;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
  TDeleteObjectRequest = class(TAmazonS3Request, IDeleteObjectRequest)
  strict private
    FBucketName: Nullable<string>;
    FBypassGovernanceRetention: Nullable<Boolean>;
    FExpectedBucketOwner: Nullable<string>;
    FKey: Nullable<string>;
    FMFA: Nullable<string>;
    FRequestPayer: Nullable<TRequestPayer>;
    FVersionId: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetBypassGovernanceRetention: Boolean;
    procedure SetBypassGovernanceRetention(const Value: Boolean);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetMFA: string;
    procedure SetMFA(const Value: string);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetVersionId: string;
    procedure SetVersionId(const Value: string);
  strict protected
    function Obj: TDeleteObjectRequest;
  public
    function IsSetBucketName: Boolean;
    function IsSetBypassGovernanceRetention: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetKey: Boolean;
    function IsSetMFA: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetVersionId: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property BypassGovernanceRetention: Boolean read GetBypassGovernanceRetention write SetBypassGovernanceRetention;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Key: string read GetKey write SetKey;
    property MFA: string read GetMFA write SetMFA;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property VersionId: string read GetVersionId write SetVersionId;
  end;
  
implementation

{ TDeleteObjectRequest }

function TDeleteObjectRequest.Obj: TDeleteObjectRequest;
begin
  Result := Self;
end;

function TDeleteObjectRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TDeleteObjectRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TDeleteObjectRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TDeleteObjectRequest.GetBypassGovernanceRetention: Boolean;
begin
  Result := FBypassGovernanceRetention.ValueOrDefault;
end;

procedure TDeleteObjectRequest.SetBypassGovernanceRetention(const Value: Boolean);
begin
  FBypassGovernanceRetention := Value;
end;

function TDeleteObjectRequest.IsSetBypassGovernanceRetention: Boolean;
begin
  Result := FBypassGovernanceRetention.HasValue;
end;

function TDeleteObjectRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TDeleteObjectRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TDeleteObjectRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TDeleteObjectRequest.GetKey: string;
begin
  Result := FKey.ValueOrDefault;
end;

procedure TDeleteObjectRequest.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TDeleteObjectRequest.IsSetKey: Boolean;
begin
  Result := FKey.HasValue;
end;

function TDeleteObjectRequest.GetMFA: string;
begin
  Result := FMFA.ValueOrDefault;
end;

procedure TDeleteObjectRequest.SetMFA(const Value: string);
begin
  FMFA := Value;
end;

function TDeleteObjectRequest.IsSetMFA: Boolean;
begin
  Result := FMFA.HasValue;
end;

function TDeleteObjectRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TDeleteObjectRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TDeleteObjectRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TDeleteObjectRequest.GetVersionId: string;
begin
  Result := FVersionId.ValueOrDefault;
end;

procedure TDeleteObjectRequest.SetVersionId(const Value: string);
begin
  FVersionId := Value;
end;

function TDeleteObjectRequest.IsSetVersionId: Boolean;
begin
  Result := FVersionId.HasValue;
end;

end.
