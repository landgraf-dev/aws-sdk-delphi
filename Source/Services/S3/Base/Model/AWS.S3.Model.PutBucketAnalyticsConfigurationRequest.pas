unit AWS.S3.Model.PutBucketAnalyticsConfigurationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.S3.Model.Request, 
  AWS.S3.Model.AnalyticsConfiguration;

type
  TPutBucketAnalyticsConfigurationRequest = class;
  
  IPutBucketAnalyticsConfigurationRequest = interface
    function GetAnalyticsConfiguration: TAnalyticsConfiguration;
    procedure SetAnalyticsConfiguration(const Value: TAnalyticsConfiguration);
    function GetKeepAnalyticsConfiguration: Boolean;
    procedure SetKeepAnalyticsConfiguration(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function Obj: TPutBucketAnalyticsConfigurationRequest;
    function IsSetAnalyticsConfiguration: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property AnalyticsConfiguration: TAnalyticsConfiguration read GetAnalyticsConfiguration write SetAnalyticsConfiguration;
    property KeepAnalyticsConfiguration: Boolean read GetKeepAnalyticsConfiguration write SetKeepAnalyticsConfiguration;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
  TPutBucketAnalyticsConfigurationRequest = class(TAmazonS3Request, IPutBucketAnalyticsConfigurationRequest)
  strict private
    FAnalyticsConfiguration: TAnalyticsConfiguration;
    FKeepAnalyticsConfiguration: Boolean;
    FBucketName: Nullable<string>;
    FExpectedBucketOwner: Nullable<string>;
    FId: Nullable<string>;
    function GetAnalyticsConfiguration: TAnalyticsConfiguration;
    procedure SetAnalyticsConfiguration(const Value: TAnalyticsConfiguration);
    function GetKeepAnalyticsConfiguration: Boolean;
    procedure SetKeepAnalyticsConfiguration(const Value: Boolean);
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetExpectedBucketOwner: string;
    procedure SetExpectedBucketOwner(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
  strict protected
    function Obj: TPutBucketAnalyticsConfigurationRequest;
  public
    destructor Destroy; override;
    function IsSetAnalyticsConfiguration: Boolean;
    function IsSetBucketName: Boolean;
    function IsSetExpectedBucketOwner: Boolean;
    function IsSetId: Boolean;
    property AnalyticsConfiguration: TAnalyticsConfiguration read GetAnalyticsConfiguration write SetAnalyticsConfiguration;
    property KeepAnalyticsConfiguration: Boolean read GetKeepAnalyticsConfiguration write SetKeepAnalyticsConfiguration;
    property BucketName: string read GetBucketName write SetBucketName;
    property ExpectedBucketOwner: string read GetExpectedBucketOwner write SetExpectedBucketOwner;
    property Id: string read GetId write SetId;
  end;
  
implementation

{ TPutBucketAnalyticsConfigurationRequest }

destructor TPutBucketAnalyticsConfigurationRequest.Destroy;
begin
  AnalyticsConfiguration := nil;
  inherited;
end;

function TPutBucketAnalyticsConfigurationRequest.Obj: TPutBucketAnalyticsConfigurationRequest;
begin
  Result := Self;
end;

function TPutBucketAnalyticsConfigurationRequest.GetAnalyticsConfiguration: TAnalyticsConfiguration;
begin
  Result := FAnalyticsConfiguration;
end;

procedure TPutBucketAnalyticsConfigurationRequest.SetAnalyticsConfiguration(const Value: TAnalyticsConfiguration);
begin
  if FAnalyticsConfiguration <> Value then
  begin
    if not KeepAnalyticsConfiguration then
      FAnalyticsConfiguration.Free;
    FAnalyticsConfiguration := Value;
  end;
end;

function TPutBucketAnalyticsConfigurationRequest.GetKeepAnalyticsConfiguration: Boolean;
begin
  Result := FKeepAnalyticsConfiguration;
end;

procedure TPutBucketAnalyticsConfigurationRequest.SetKeepAnalyticsConfiguration(const Value: Boolean);
begin
  FKeepAnalyticsConfiguration := Value;
end;

function TPutBucketAnalyticsConfigurationRequest.IsSetAnalyticsConfiguration: Boolean;
begin
  Result := FAnalyticsConfiguration <> nil;
end;

function TPutBucketAnalyticsConfigurationRequest.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TPutBucketAnalyticsConfigurationRequest.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TPutBucketAnalyticsConfigurationRequest.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TPutBucketAnalyticsConfigurationRequest.GetExpectedBucketOwner: string;
begin
  Result := FExpectedBucketOwner.ValueOrDefault;
end;

procedure TPutBucketAnalyticsConfigurationRequest.SetExpectedBucketOwner(const Value: string);
begin
  FExpectedBucketOwner := Value;
end;

function TPutBucketAnalyticsConfigurationRequest.IsSetExpectedBucketOwner: Boolean;
begin
  Result := FExpectedBucketOwner.HasValue;
end;

function TPutBucketAnalyticsConfigurationRequest.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TPutBucketAnalyticsConfigurationRequest.SetId(const Value: string);
begin
  FId := Value;
end;

function TPutBucketAnalyticsConfigurationRequest.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

end.
