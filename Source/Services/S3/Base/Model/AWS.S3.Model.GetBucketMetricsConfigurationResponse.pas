unit AWS.S3.Model.GetBucketMetricsConfigurationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.MetricsConfiguration;

type
  TGetBucketMetricsConfigurationResponse = class;
  
  IGetBucketMetricsConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetMetricsConfiguration: TMetricsConfiguration;
    procedure SetMetricsConfiguration(const Value: TMetricsConfiguration);
    function GetKeepMetricsConfiguration: Boolean;
    procedure SetKeepMetricsConfiguration(const Value: Boolean);
    function Obj: TGetBucketMetricsConfigurationResponse;
    function IsSetMetricsConfiguration: Boolean;
    property MetricsConfiguration: TMetricsConfiguration read GetMetricsConfiguration write SetMetricsConfiguration;
    property KeepMetricsConfiguration: Boolean read GetKeepMetricsConfiguration write SetKeepMetricsConfiguration;
  end;
  
  TGetBucketMetricsConfigurationResponse = class(TAmazonWebServiceResponse, IGetBucketMetricsConfigurationResponse)
  strict private
    FMetricsConfiguration: TMetricsConfiguration;
    FKeepMetricsConfiguration: Boolean;
    function GetMetricsConfiguration: TMetricsConfiguration;
    procedure SetMetricsConfiguration(const Value: TMetricsConfiguration);
    function GetKeepMetricsConfiguration: Boolean;
    procedure SetKeepMetricsConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetBucketMetricsConfigurationResponse;
  public
    destructor Destroy; override;
    function IsSetMetricsConfiguration: Boolean;
    property MetricsConfiguration: TMetricsConfiguration read GetMetricsConfiguration write SetMetricsConfiguration;
    property KeepMetricsConfiguration: Boolean read GetKeepMetricsConfiguration write SetKeepMetricsConfiguration;
  end;
  
implementation

{ TGetBucketMetricsConfigurationResponse }

destructor TGetBucketMetricsConfigurationResponse.Destroy;
begin
  MetricsConfiguration := nil;
  inherited;
end;

function TGetBucketMetricsConfigurationResponse.Obj: TGetBucketMetricsConfigurationResponse;
begin
  Result := Self;
end;

function TGetBucketMetricsConfigurationResponse.GetMetricsConfiguration: TMetricsConfiguration;
begin
  Result := FMetricsConfiguration;
end;

procedure TGetBucketMetricsConfigurationResponse.SetMetricsConfiguration(const Value: TMetricsConfiguration);
begin
  if FMetricsConfiguration <> Value then
  begin
    if not KeepMetricsConfiguration then
      FMetricsConfiguration.Free;
    FMetricsConfiguration := Value;
  end;
end;

function TGetBucketMetricsConfigurationResponse.GetKeepMetricsConfiguration: Boolean;
begin
  Result := FKeepMetricsConfiguration;
end;

procedure TGetBucketMetricsConfigurationResponse.SetKeepMetricsConfiguration(const Value: Boolean);
begin
  FKeepMetricsConfiguration := Value;
end;

function TGetBucketMetricsConfigurationResponse.IsSetMetricsConfiguration: Boolean;
begin
  Result := FMetricsConfiguration <> nil;
end;

end.
