unit AWS.S3.Model.PutBucketEncryptionRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.ServerSideEncryptionConfiguration;

type
  TPutBucketEncryptionRequest = class;
  
  IPutBucketEncryptionRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration;
    procedure SetServerSideEncryptionConfiguration(const Value: TServerSideEncryptionConfiguration);
    function GetKeepServerSideEncryptionConfiguration: Boolean;
    procedure SetKeepServerSideEncryptionConfiguration(const Value: Boolean);
    function Obj: TPutBucketEncryptionRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetServerSideEncryptionConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration read GetServerSideEncryptionConfiguration write SetServerSideEncryptionConfiguration;
    property KeepServerSideEncryptionConfiguration: Boolean read GetKeepServerSideEncryptionConfiguration write SetKeepServerSideEncryptionConfiguration;
  end;
  
  TPutBucketEncryptionRequest = class(TAmazonS3Request, IPutBucketEncryptionRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration;
    FKeepServerSideEncryptionConfiguration: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration;
    procedure SetServerSideEncryptionConfiguration(const Value: TServerSideEncryptionConfiguration);
    function GetKeepServerSideEncryptionConfiguration: Boolean;
    procedure SetKeepServerSideEncryptionConfiguration(const Value: Boolean);
  strict protected
    function Obj: TPutBucketEncryptionRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetServerSideEncryptionConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration read GetServerSideEncryptionConfiguration write SetServerSideEncryptionConfiguration;
    property KeepServerSideEncryptionConfiguration: Boolean read GetKeepServerSideEncryptionConfiguration write SetKeepServerSideEncryptionConfiguration;
  end;
  
implementation

{ TPutBucketEncryptionRequest }

destructor TPutBucketEncryptionRequest.Destroy;
begin
  ServerSideEncryptionConfiguration := nil;
  inherited;
end;

function TPutBucketEncryptionRequest.Obj: TPutBucketEncryptionRequest;
begin
  Result := Self;
end;

function TPutBucketEncryptionRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketEncryptionRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketEncryptionRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketEncryptionRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutBucketEncryptionRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutBucketEncryptionRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutBucketEncryptionRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketEncryptionRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketEncryptionRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketEncryptionRequest.GetServerSideEncryptionConfiguration: TServerSideEncryptionConfiguration;
begin
  Result := FServerSideEncryptionConfiguration;
end;

procedure TPutBucketEncryptionRequest.SetServerSideEncryptionConfiguration(const Value: TServerSideEncryptionConfiguration);
begin
  if FServerSideEncryptionConfiguration <> Value then
  begin
    if not KeepServerSideEncryptionConfiguration then
      FServerSideEncryptionConfiguration.Free;
    FServerSideEncryptionConfiguration := Value;
  end;
end;

function TPutBucketEncryptionRequest.GetKeepServerSideEncryptionConfiguration: Boolean;
begin
  Result := FKeepServerSideEncryptionConfiguration;
end;

procedure TPutBucketEncryptionRequest.SetKeepServerSideEncryptionConfiguration(const Value: Boolean);
begin
  FKeepServerSideEncryptionConfiguration := Value;
end;

function TPutBucketEncryptionRequest.IsSetServerSideEncryptionConfiguration: Boolean;
begin
  Result := FServerSideEncryptionConfiguration <> nil;
end;

end.
