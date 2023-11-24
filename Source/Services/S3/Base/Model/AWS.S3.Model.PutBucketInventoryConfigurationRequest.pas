unit AWS.S3.Model.PutBucketInventoryConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.InventoryConfiguration;

type
  TPutBucketInventoryConfigurationRequest = class;
  
  IPutBucketInventoryConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetInventoryConfiguration: TInventoryConfiguration;
    procedure SetInventoryConfiguration(const Value: TInventoryConfiguration);
    function GetKeepInventoryConfiguration: Boolean;
    procedure SetKeepInventoryConfiguration(const Value: Boolean);
    function Obj: TPutBucketInventoryConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    function IsSetInventoryConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
    property InventoryConfiguration: TInventoryConfiguration read GetInventoryConfiguration write SetInventoryConfiguration;
    property KeepInventoryConfiguration: Boolean read GetKeepInventoryConfiguration write SetKeepInventoryConfiguration;
  end;
  
  TPutBucketInventoryConfigurationRequest = class(TAmazonS3Request, IPutBucketInventoryConfigurationRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FId: Nullable<string>;
    FInventoryConfiguration: TInventoryConfiguration;
    FKeepInventoryConfiguration: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetInventoryConfiguration: TInventoryConfiguration;
    procedure SetInventoryConfiguration(const Value: TInventoryConfiguration);
    function GetKeepInventoryConfiguration: Boolean;
    procedure SetKeepInventoryConfiguration(const Value: Boolean);
  strict protected
    function Obj: TPutBucketInventoryConfigurationRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    function IsSetInventoryConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
    property InventoryConfiguration: TInventoryConfiguration read GetInventoryConfiguration write SetInventoryConfiguration;
    property KeepInventoryConfiguration: Boolean read GetKeepInventoryConfiguration write SetKeepInventoryConfiguration;
  end;
  
implementation

{ TPutBucketInventoryConfigurationRequest }

destructor TPutBucketInventoryConfigurationRequest.Destroy;
begin
  InventoryConfiguration := nil;
  inherited;
end;

function TPutBucketInventoryConfigurationRequest.Obj: TPutBucketInventoryConfigurationRequest;
begin
  Result := Self;
end;

function TPutBucketInventoryConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketInventoryConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketInventoryConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketInventoryConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketInventoryConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketInventoryConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketInventoryConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TPutBucketInventoryConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TPutBucketInventoryConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TPutBucketInventoryConfigurationRequest.GetInventoryConfiguration: TInventoryConfiguration;
begin
  Result := FInventoryConfiguration;
end;

procedure TPutBucketInventoryConfigurationRequest.SetInventoryConfiguration(const Value: TInventoryConfiguration);
begin
  if FInventoryConfiguration <> Value then
  begin
    if not KeepInventoryConfiguration then
      FInventoryConfiguration.Free;
    FInventoryConfiguration := Value;
  end;
end;

function TPutBucketInventoryConfigurationRequest.GetKeepInventoryConfiguration: Boolean;
begin
  Result := FKeepInventoryConfiguration;
end;

procedure TPutBucketInventoryConfigurationRequest.SetKeepInventoryConfiguration(const Value: Boolean);
begin
  FKeepInventoryConfiguration := Value;
end;

function TPutBucketInventoryConfigurationRequest.IsSetInventoryConfiguration: Boolean;
begin
  Result := FInventoryConfiguration <> nil;
end;

end.
