unit AWS.S3.Model.PutBucketMetricsConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.MetricsConfiguration;

type
  TPutBucketMetricsConfigurationRequest = class;
  
  IPutBucketMetricsConfigurationRequest = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMetricsConfiguration: TMetricsConfiguration;
    procedure SetMetricsConfiguration(const Value: TMetricsConfiguration);
    function GetKeepMetricsConfiguration: Boolean;
    procedure SetKeepMetricsConfiguration(const Value: Boolean);
    function Obj: TPutBucketMetricsConfigurationRequest;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    function IsSetMetricsConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
    property MetricsConfiguration: TMetricsConfiguration read GetMetricsConfiguration write SetMetricsConfiguration;
    property KeepMetricsConfiguration: Boolean read GetKeepMetricsConfiguration write SetKeepMetricsConfiguration;
  end;
  
  TPutBucketMetricsConfigurationRequest = class(TAmazonS3Request, IPutBucketMetricsConfigurationRequest)
  strict private
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FId: Nullable<string>;
    FMetricsConfiguration: TMetricsConfiguration;
    FKeepMetricsConfiguration: Boolean;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMetricsConfiguration: TMetricsConfiguration;
    procedure SetMetricsConfiguration(const Value: TMetricsConfiguration);
    function GetKeepMetricsConfiguration: Boolean;
    procedure SetKeepMetricsConfiguration(const Value: Boolean);
  strict protected
    function Obj: TPutBucketMetricsConfigurationRequest;
  public
    destructor Destroy; override;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    function IsSetMetricsConfiguration: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
    property MetricsConfiguration: TMetricsConfiguration read GetMetricsConfiguration write SetMetricsConfiguration;
    property KeepMetricsConfiguration: Boolean read GetKeepMetricsConfiguration write SetKeepMetricsConfiguration;
  end;
  
implementation

{ TPutBucketMetricsConfigurationRequest }

destructor TPutBucketMetricsConfigurationRequest.Destroy;
begin
  MetricsConfiguration := nil;
  inherited;
end;

function TPutBucketMetricsConfigurationRequest.Obj: TPutBucketMetricsConfigurationRequest;
begin
  Result := Self;
end;

function TPutBucketMetricsConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketMetricsConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketMetricsConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketMetricsConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketMetricsConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketMetricsConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketMetricsConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TPutBucketMetricsConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TPutBucketMetricsConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TPutBucketMetricsConfigurationRequest.GetMetricsConfiguration: TMetricsConfiguration;
begin
  Result := FMetricsConfiguration;
end;

procedure TPutBucketMetricsConfigurationRequest.SetMetricsConfiguration(const Value: TMetricsConfiguration);
begin
  if FMetricsConfiguration <> Value then
  begin
    if not KeepMetricsConfiguration then
      FMetricsConfiguration.Free;
    FMetricsConfiguration := Value;
  end;
end;

function TPutBucketMetricsConfigurationRequest.GetKeepMetricsConfiguration: Boolean;
begin
  Result := FKeepMetricsConfiguration;
end;

procedure TPutBucketMetricsConfigurationRequest.SetKeepMetricsConfiguration(const Value: Boolean);
begin
  FKeepMetricsConfiguration := Value;
end;

function TPutBucketMetricsConfigurationRequest.IsSetMetricsConfiguration: Boolean;
begin
  Result := FMetricsConfiguration <> nil;
end;

end.
