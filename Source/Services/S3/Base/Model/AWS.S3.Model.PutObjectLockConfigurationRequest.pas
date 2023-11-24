unit AWS.S3.Model.PutObjectLockConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.ObjectLockConfiguration, 
  AWS.S3.Enums;

type
  TPutObjectLockConfigurationRequest = class;
  
  IPutObjectLockConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetObjectLockConfiguration: TObjectLockConfiguration;
    procedure SetObjectLockConfiguration(const Value: TObjectLockConfiguration);
    function GetKeepObjectLockConfiguration: Boolean;
    procedure SetKeepObjectLockConfiguration(const Value: Boolean);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetToken: string;
    procedure SetToken(const Value: string);
    function Obj: TPutObjectLockConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetObjectLockConfiguration: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetToken: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ObjectLockConfiguration: TObjectLockConfiguration read GetObjectLockConfiguration write SetObjectLockConfiguration;
    property KeepObjectLockConfiguration: Boolean read GetKeepObjectLockConfiguration write SetKeepObjectLockConfiguration;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property Token: string read GetToken write SetToken;
  end;
  
  TPutObjectLockConfigurationRequest = class(TAmazonS3Request, IPutObjectLockConfigurationRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FObjectLockConfiguration: TObjectLockConfiguration;
    FKeepObjectLockConfiguration: Boolean;
    FRequestPayer: Nullable<TRequestPayer>;
    FToken: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetObjectLockConfiguration: TObjectLockConfiguration;
    procedure SetObjectLockConfiguration(const Value: TObjectLockConfiguration);
    function GetKeepObjectLockConfiguration: Boolean;
    procedure SetKeepObjectLockConfiguration(const Value: Boolean);
    function GetRequestPayer: TRequestPayer;
    procedure SetRequestPayer(const Value: TRequestPayer);
    function GetToken: string;
    procedure SetToken(const Value: string);
  strict protected
    function Obj: TPutObjectLockConfigurationRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetObjectLockConfiguration: Boolean;
    function IsSetRequestPayer: Boolean;
    function IsSetToken: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ObjectLockConfiguration: TObjectLockConfiguration read GetObjectLockConfiguration write SetObjectLockConfiguration;
    property KeepObjectLockConfiguration: Boolean read GetKeepObjectLockConfiguration write SetKeepObjectLockConfiguration;
    property RequestPayer: TRequestPayer read GetRequestPayer write SetRequestPayer;
    property Token: string read GetToken write SetToken;
  end;
  
implementation

{ TPutObjectLockConfigurationRequest }

destructor TPutObjectLockConfigurationRequest.Destroy;
begin
  ObjectLockConfiguration := nil;
  inherited;
end;

function TPutObjectLockConfigurationRequest.Obj: TPutObjectLockConfigurationRequest;
begin
  Result := Self;
end;

function TPutObjectLockConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutObjectLockConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutObjectLockConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutObjectLockConfigurationRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutObjectLockConfigurationRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutObjectLockConfigurationRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutObjectLockConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutObjectLockConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutObjectLockConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutObjectLockConfigurationRequest.GetObjectLockConfiguration: TObjectLockConfiguration;
begin
  Result := FObjectLockConfiguration;
end;

procedure TPutObjectLockConfigurationRequest.SetObjectLockConfiguration(const Value: TObjectLockConfiguration);
begin
  if FObjectLockConfiguration <> Value then
  begin
    if not KeepObjectLockConfiguration then
      FObjectLockConfiguration.Free;
    FObjectLockConfiguration := Value;
  end;
end;

function TPutObjectLockConfigurationRequest.GetKeepObjectLockConfiguration: Boolean;
begin
  Result := FKeepObjectLockConfiguration;
end;

procedure TPutObjectLockConfigurationRequest.SetKeepObjectLockConfiguration(const Value: Boolean);
begin
  FKeepObjectLockConfiguration := Value;
end;

function TPutObjectLockConfigurationRequest.IsSetObjectLockConfiguration: Boolean;
begin
  Result := FObjectLockConfiguration <> nil;
end;

function TPutObjectLockConfigurationRequest.GetRequestPayer: TRequestPayer;
begin
  Result := FRequestPayer.ValueOrDefault;
end;

procedure TPutObjectLockConfigurationRequest.SetRequestPayer(const Value: TRequestPayer);
begin
  FRequestPayer := Value;
end;

function TPutObjectLockConfigurationRequest.IsSetRequestPayer: Boolean;
begin
  Result := FRequestPayer.HasValue;
end;

function TPutObjectLockConfigurationRequest.GetToken: string;
begin
  Result := FToken.ValueOrDefault;
end;

procedure TPutObjectLockConfigurationRequest.SetToken(const Value: string);
begin
  FToken := Value;
end;

function TPutObjectLockConfigurationRequest.IsSetToken: Boolean;
begin
  Result := FToken.HasValue;
end;

end.
