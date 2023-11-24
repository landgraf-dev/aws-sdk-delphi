unit AWS.S3.Model.PutBucketReplicationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.ReplicationConfiguration;

type
  TPutBucketReplicationRequest = class;
  
  IPutBucketReplicationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetReplicationConfiguration: TReplicationConfiguration;
    procedure SetReplicationConfiguration(const Value: TReplicationConfiguration);
    function GetKeepReplicationConfiguration: Boolean;
    procedure SetKeepReplicationConfiguration(const Value: Boolean);
    function GetToken: string;
    procedure SetToken(const Value: string);
    function Obj: TPutBucketReplicationRequest;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetReplicationConfiguration: Boolean;
    function IsSetToken: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ReplicationConfiguration: TReplicationConfiguration read GetReplicationConfiguration write SetReplicationConfiguration;
    property KeepReplicationConfiguration: Boolean read GetKeepReplicationConfiguration write SetKeepReplicationConfiguration;
    property Token: string read GetToken write SetToken;
  end;
  
  TPutBucketReplicationRequest = class(TAmazonS3Request, IPutBucketReplicationRequest)
  strict private
    FBucketName: Nullable<string>;
    FContentMD5: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FReplicationConfiguration: TReplicationConfiguration;
    FKeepReplicationConfiguration: Boolean;
    FToken: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetContentMD5: string;
    procedure SetContentMD5(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetReplicationConfiguration: TReplicationConfiguration;
    procedure SetReplicationConfiguration(const Value: TReplicationConfiguration);
    function GetKeepReplicationConfiguration: Boolean;
    procedure SetKeepReplicationConfiguration(const Value: Boolean);
    function GetToken: string;
    procedure SetToken(const Value: string);
  strict protected
    function Obj: TPutBucketReplicationRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetContentMD5: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetReplicationConfiguration: Boolean;
    function IsSetToken: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ContentMD5: string read GetContentMD5 write SetContentMD5;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property ReplicationConfiguration: TReplicationConfiguration read GetReplicationConfiguration write SetReplicationConfiguration;
    property KeepReplicationConfiguration: Boolean read GetKeepReplicationConfiguration write SetKeepReplicationConfiguration;
    property Token: string read GetToken write SetToken;
  end;
  
implementation

{ TPutBucketReplicationRequest }

destructor TPutBucketReplicationRequest.Destroy;
begin
  ReplicationConfiguration := nil;
  inherited;
end;

function TPutBucketReplicationRequest.Obj: TPutBucketReplicationRequest;
begin
  Result := Self;
end;

function TPutBucketReplicationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketReplicationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketReplicationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketReplicationRequest.GetContentMD5: string;
begin
  Result := FContentMD5.ValueOrDefault;
end;

procedure TPutBucketReplicationRequest.SetContentMD5(const Value: string);
begin
  FContentMD5 := Value;
end;

function TPutBucketReplicationRequest.IsSetContentMD5: Boolean;
begin
  Result := FContentMD5.HasValue;
end;

function TPutBucketReplicationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketReplicationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketReplicationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketReplicationRequest.GetReplicationConfiguration: TReplicationConfiguration;
begin
  Result := FReplicationConfiguration;
end;

procedure TPutBucketReplicationRequest.SetReplicationConfiguration(const Value: TReplicationConfiguration);
begin
  if FReplicationConfiguration <> Value then
  begin
    if not KeepReplicationConfiguration then
      FReplicationConfiguration.Free;
    FReplicationConfiguration := Value;
  end;
end;

function TPutBucketReplicationRequest.GetKeepReplicationConfiguration: Boolean;
begin
  Result := FKeepReplicationConfiguration;
end;

procedure TPutBucketReplicationRequest.SetKeepReplicationConfiguration(const Value: Boolean);
begin
  FKeepReplicationConfiguration := Value;
end;

function TPutBucketReplicationRequest.IsSetReplicationConfiguration: Boolean;
begin
  Result := FReplicationConfiguration <> nil;
end;

function TPutBucketReplicationRequest.GetToken: string;
begin
  Result := FToken.ValueOrDefault;
end;

procedure TPutBucketReplicationRequest.SetToken(const Value: string);
begin
  FToken := Value;
end;

function TPutBucketReplicationRequest.IsSetToken: Boolean;
begin
  Result := FToken.HasValue;
end;

end.
