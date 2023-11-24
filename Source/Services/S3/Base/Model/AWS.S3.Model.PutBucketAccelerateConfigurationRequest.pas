unit AWS.S3.Model.PutBucketAccelerateConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.AccelerateConfiguration;

type
  TPutBucketAccelerateConfigurationRequest = class;
  
  IPutBucketAccelerateConfigurationRequest = interface
    function GetAccelerateConfiguration: TAccelerateConfiguration;
    procedure SetAccelerateConfiguration(const Value: TAccelerateConfiguration);
    function GetKeepAccelerateConfiguration: Boolean;
    procedure SetKeepAccelerateConfiguration(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TPutBucketAccelerateConfigurationRequest;
    function IsSetAccelerateConfiguration: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property AccelerateConfiguration: TAccelerateConfiguration read GetAccelerateConfiguration write SetAccelerateConfiguration;
    property KeepAccelerateConfiguration: Boolean read GetKeepAccelerateConfiguration write SetKeepAccelerateConfiguration;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TPutBucketAccelerateConfigurationRequest = class(TAmazonS3Request, IPutBucketAccelerateConfigurationRequest)
  strict private
    FAccelerateConfiguration: TAccelerateConfiguration;
    FKeepAccelerateConfiguration: Boolean;
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    function GetAccelerateConfiguration: TAccelerateConfiguration;
    procedure SetAccelerateConfiguration(const Value: TAccelerateConfiguration);
    function GetKeepAccelerateConfiguration: Boolean;
    procedure SetKeepAccelerateConfiguration(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: TPutBucketAccelerateConfigurationRequest;
  public
    destructor Destroy; override;
    function IsSetAccelerateConfiguration: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property AccelerateConfiguration: TAccelerateConfiguration read GetAccelerateConfiguration write SetAccelerateConfiguration;
    property KeepAccelerateConfiguration: Boolean read GetKeepAccelerateConfiguration write SetKeepAccelerateConfiguration;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TPutBucketAccelerateConfigurationRequest }

destructor TPutBucketAccelerateConfigurationRequest.Destroy;
begin
  AccelerateConfiguration := nil;
  inherited;
end;

function TPutBucketAccelerateConfigurationRequest.Obj: TPutBucketAccelerateConfigurationRequest;
begin
  Result := Self;
end;

function TPutBucketAccelerateConfigurationRequest.GetAccelerateConfiguration: TAccelerateConfiguration;
begin
  Result := FAccelerateConfiguration;
end;

procedure TPutBucketAccelerateConfigurationRequest.SetAccelerateConfiguration(const Value: TAccelerateConfiguration);
begin
  if FAccelerateConfiguration <> Value then
  begin
    if not KeepAccelerateConfiguration then
      FAccelerateConfiguration.Free;
    FAccelerateConfiguration := Value;
  end;
end;

function TPutBucketAccelerateConfigurationRequest.GetKeepAccelerateConfiguration: Boolean;
begin
  Result := FKeepAccelerateConfiguration;
end;

procedure TPutBucketAccelerateConfigurationRequest.SetKeepAccelerateConfiguration(const Value: Boolean);
begin
  FKeepAccelerateConfiguration := Value;
end;

function TPutBucketAccelerateConfigurationRequest.IsSetAccelerateConfiguration: Boolean;
begin
  Result := FAccelerateConfiguration <> nil;
end;

function TPutBucketAccelerateConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketAccelerateConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketAccelerateConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketAccelerateConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketAccelerateConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketAccelerateConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
