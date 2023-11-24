unit AWS.S3.Model.GetBucketAnalyticsConfigurationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.AnalyticsConfiguration;

type
  TGetBucketAnalyticsConfigurationResponse = class;
  
  IGetBucketAnalyticsConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetAnalyticsConfiguration: TAnalyticsConfiguration;
    procedure SetAnalyticsConfiguration(const Value: TAnalyticsConfiguration);
    function GetKeepAnalyticsConfiguration: Boolean;
    procedure SetKeepAnalyticsConfiguration(const Value: Boolean);
    function Obj: TGetBucketAnalyticsConfigurationResponse;
    function IsSetAnalyticsConfiguration: Boolean;
    property AnalyticsConfiguration: TAnalyticsConfiguration read GetAnalyticsConfiguration write SetAnalyticsConfiguration;
    property KeepAnalyticsConfiguration: Boolean read GetKeepAnalyticsConfiguration write SetKeepAnalyticsConfiguration;
  end;
  
  TGetBucketAnalyticsConfigurationResponse = class(TAmazonWebServiceResponse, IGetBucketAnalyticsConfigurationResponse)
  strict private
    FAnalyticsConfiguration: TAnalyticsConfiguration;
    FKeepAnalyticsConfiguration: Boolean;
    function GetAnalyticsConfiguration: TAnalyticsConfiguration;
    procedure SetAnalyticsConfiguration(const Value: TAnalyticsConfiguration);
    function GetKeepAnalyticsConfiguration: Boolean;
    procedure SetKeepAnalyticsConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetBucketAnalyticsConfigurationResponse;
  public
    destructor Destroy; override;
    function IsSetAnalyticsConfiguration: Boolean;
    property AnalyticsConfiguration: TAnalyticsConfiguration read GetAnalyticsConfiguration write SetAnalyticsConfiguration;
    property KeepAnalyticsConfiguration: Boolean read GetKeepAnalyticsConfiguration write SetKeepAnalyticsConfiguration;
  end;
  
implementation

{ TGetBucketAnalyticsConfigurationResponse }

destructor TGetBucketAnalyticsConfigurationResponse.Destroy;
begin
  AnalyticsConfiguration := nil;
  inherited;
end;

function TGetBucketAnalyticsConfigurationResponse.Obj: TGetBucketAnalyticsConfigurationResponse;
begin
  Result := Self;
end;

function TGetBucketAnalyticsConfigurationResponse.GetAnalyticsConfiguration: TAnalyticsConfiguration;
begin
  Result := FAnalyticsConfiguration;
end;

procedure TGetBucketAnalyticsConfigurationResponse.SetAnalyticsConfiguration(const Value: TAnalyticsConfiguration);
begin
  if FAnalyticsConfiguration <> Value then
  begin
    if not KeepAnalyticsConfiguration then
      FAnalyticsConfiguration.Free;
    FAnalyticsConfiguration := Value;
  end;
end;

function TGetBucketAnalyticsConfigurationResponse.GetKeepAnalyticsConfiguration: Boolean;
begin
  Result := FKeepAnalyticsConfiguration;
end;

procedure TGetBucketAnalyticsConfigurationResponse.SetKeepAnalyticsConfiguration(const Value: Boolean);
begin
  FKeepAnalyticsConfiguration := Value;
end;

function TGetBucketAnalyticsConfigurationResponse.IsSetAnalyticsConfiguration: Boolean;
begin
  Result := FAnalyticsConfiguration <> nil;
end;

end.
