unit AWS.S3.Model.PutLifecycleConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.LifecycleConfiguration;

type
  TPutLifecycleConfigurationRequest = class;
  
  IPutLifecycleConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetConfiguration: TLifecycleConfiguration;
    procedure SetConfiguration(const Value: TLifecycleConfiguration);
    function GetKeepConfiguration: Boolean;
    procedure SetKeepConfiguration(const Value: Boolean);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function Obj: TPutLifecycleConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetConfiguration: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Configuration: TLifecycleConfiguration read GetConfiguration write SetConfiguration;
    property KeepConfiguration: Boolean read GetKeepConfiguration write SetKeepConfiguration;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
  TPutLifecycleConfigurationRequest = class(TAmazonS3Request, IPutLifecycleConfigurationRequest)
  strict private
    FBucketName: Nullable<string>;
    FConfiguration: TLifecycleConfiguration;
    FKeepConfiguration: Boolean;
    FExpectedBucketOwner: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetConfiguration: TLifecycleConfiguration;
    procedure SetConfiguration(const Value: TLifecycleConfiguration);
    function GetKeepConfiguration: Boolean;
    procedure SetKeepConfiguration(const Value: Boolean);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
  strict protected
    function Obj: TPutLifecycleConfigurationRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetConfiguration: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property Configuration: TLifecycleConfiguration read GetConfiguration write SetConfiguration;
    property KeepConfiguration: Boolean read GetKeepConfiguration write SetKeepConfiguration;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
  end;
  
implementation

{ TPutLifecycleConfigurationRequest }

destructor TPutLifecycleConfigurationRequest.Destroy;
begin
  Configuration := nil;
  inherited;
end;

function TPutLifecycleConfigurationRequest.Obj: TPutLifecycleConfigurationRequest;
begin
  Result := Self;
end;

function TPutLifecycleConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutLifecycleConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutLifecycleConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutLifecycleConfigurationRequest.GetConfiguration: TLifecycleConfiguration;
begin
  Result := FConfiguration;
end;

procedure TPutLifecycleConfigurationRequest.SetConfiguration(const Value: TLifecycleConfiguration);
begin
  if FConfiguration <> Value then
  begin
    if not KeepConfiguration then
      FConfiguration.Free;
    FConfiguration := Value;
  end;
end;

function TPutLifecycleConfigurationRequest.GetKeepConfiguration: Boolean;
begin
  Result := FKeepConfiguration;
end;

procedure TPutLifecycleConfigurationRequest.SetKeepConfiguration(const Value: Boolean);
begin
  FKeepConfiguration := Value;
end;

function TPutLifecycleConfigurationRequest.IsSetConfiguration: Boolean;
begin
  Result := FConfiguration <> nil;
end;

function TPutLifecycleConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutLifecycleConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutLifecycleConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

end.
