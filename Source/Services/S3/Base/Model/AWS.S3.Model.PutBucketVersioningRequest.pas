unit AWS.S3.Model.PutBucketVersioningRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.VersioningConfiguration;

type
  TPutBucketVersioningRequest = class;
  
  IPutBucketVersioningRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetMFA: string;
    procedure SetMFA(const Value: string);
    function GetVersioningConfig: TVersioningConfiguration;
    procedure SetVersioningConfig(const Value: TVersioningConfiguration);
    function GetKeepVersioningConfig: Boolean;
    procedure SetKeepVersioningConfig(const Value: Boolean);
    function Obj: TPutBucketVersioningRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetMFA: Boolean;
    function IsSetVersioningConfig: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property MFA: string read GetMFA write SetMFA;
    property VersioningConfig: TVersioningConfiguration read GetVersioningConfig write SetVersioningConfig;
    property KeepVersioningConfig: Boolean read GetKeepVersioningConfig write SetKeepVersioningConfig;
  end;
  
  TPutBucketVersioningRequest = class(TAmazonS3Request, IPutBucketVersioningRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FMFA: Nullable<string>;
    FVersioningConfig: TVersioningConfiguration;
    FKeepVersioningConfig: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetMFA: string;
    procedure SetMFA(const Value: string);
    function GetVersioningConfig: TVersioningConfiguration;
    procedure SetVersioningConfig(const Value: TVersioningConfiguration);
    function GetKeepVersioningConfig: Boolean;
    procedure SetKeepVersioningConfig(const Value: Boolean);
  strict protected
    function Obj: TPutBucketVersioningRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetMFA: Boolean;
    function IsSetVersioningConfig: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property MFA: string read GetMFA write SetMFA;
    property VersioningConfig: TVersioningConfiguration read GetVersioningConfig write SetVersioningConfig;
    property KeepVersioningConfig: Boolean read GetKeepVersioningConfig write SetKeepVersioningConfig;
  end;
  
implementation

{ TPutBucketVersioningRequest }

destructor TPutBucketVersioningRequest.Destroy;
begin
  VersioningConfig := nil;
  inherited;
end;

function TPutBucketVersioningRequest.Obj: TPutBucketVersioningRequest;
begin
  Result := Self;
end;

function TPutBucketVersioningRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketVersioningRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketVersioningRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketVersioningRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutBucketVersioningRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutBucketVersioningRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutBucketVersioningRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketVersioningRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketVersioningRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketVersioningRequest.GetMFA: string;
begin
  Result := FMFA.ValueOrDefault;
end;

procedure TPutBucketVersioningRequest.SetMFA(const Value: string);
begin
  FMFA := Value;
end;

function TPutBucketVersioningRequest.IsSetMFA: Boolean;
begin
  Result := FMFA.HasValue;
end;

function TPutBucketVersioningRequest.GetVersioningConfig: TVersioningConfiguration;
begin
  Result := FVersioningConfig;
end;

procedure TPutBucketVersioningRequest.SetVersioningConfig(const Value: TVersioningConfiguration);
begin
  if FVersioningConfig <> Value then
  begin
    if not KeepVersioningConfig then
      FVersioningConfig.Free;
    FVersioningConfig := Value;
  end;
end;

function TPutBucketVersioningRequest.GetKeepVersioningConfig: Boolean;
begin
  Result := FKeepVersioningConfig;
end;

procedure TPutBucketVersioningRequest.SetKeepVersioningConfig(const Value: Boolean);
begin
  FKeepVersioningConfig := Value;
end;

function TPutBucketVersioningRequest.IsSetVersioningConfig: Boolean;
begin
  Result := FVersioningConfig <> nil;
end;

end.
