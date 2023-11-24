unit AWS.S3.Model.GetBucketInventoryConfigurationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.InventoryConfiguration;

type
  TGetBucketInventoryConfigurationResponse = class;
  
  IGetBucketInventoryConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetInventoryConfiguration: TInventoryConfiguration;
    procedure SetInventoryConfiguration(const Value: TInventoryConfiguration);
    function GetKeepInventoryConfiguration: Boolean;
    procedure SetKeepInventoryConfiguration(const Value: Boolean);
    function Obj: TGetBucketInventoryConfigurationResponse;
    function IsSetInventoryConfiguration: Boolean;
    property InventoryConfiguration: TInventoryConfiguration read GetInventoryConfiguration write SetInventoryConfiguration;
    property KeepInventoryConfiguration: Boolean read GetKeepInventoryConfiguration write SetKeepInventoryConfiguration;
  end;
  
  TGetBucketInventoryConfigurationResponse = class(TAmazonWebServiceResponse, IGetBucketInventoryConfigurationResponse)
  strict private
    FInventoryConfiguration: TInventoryConfiguration;
    FKeepInventoryConfiguration: Boolean;
    function GetInventoryConfiguration: TInventoryConfiguration;
    procedure SetInventoryConfiguration(const Value: TInventoryConfiguration);
    function GetKeepInventoryConfiguration: Boolean;
    procedure SetKeepInventoryConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetBucketInventoryConfigurationResponse;
  public
    destructor Destroy; override;
    function IsSetInventoryConfiguration: Boolean;
    property InventoryConfiguration: TInventoryConfiguration read GetInventoryConfiguration write SetInventoryConfiguration;
    property KeepInventoryConfiguration: Boolean read GetKeepInventoryConfiguration write SetKeepInventoryConfiguration;
  end;
  
implementation

{ TGetBucketInventoryConfigurationResponse }

destructor TGetBucketInventoryConfigurationResponse.Destroy;
begin
  InventoryConfiguration := nil;
  inherited;
end;

function TGetBucketInventoryConfigurationResponse.Obj: TGetBucketInventoryConfigurationResponse;
begin
  Result := Self;
end;

function TGetBucketInventoryConfigurationResponse.GetInventoryConfiguration: TInventoryConfiguration;
begin
  Result := FInventoryConfiguration;
end;

procedure TGetBucketInventoryConfigurationResponse.SetInventoryConfiguration(const Value: TInventoryConfiguration);
begin
  if FInventoryConfiguration <> Value then
  begin
    if not KeepInventoryConfiguration then
      FInventoryConfiguration.Free;
    FInventoryConfiguration := Value;
  end;
end;

function TGetBucketInventoryConfigurationResponse.GetKeepInventoryConfiguration: Boolean;
begin
  Result := FKeepInventoryConfiguration;
end;

procedure TGetBucketInventoryConfigurationResponse.SetKeepInventoryConfiguration(const Value: Boolean);
begin
  FKeepInventoryConfiguration := Value;
end;

function TGetBucketInventoryConfigurationResponse.IsSetInventoryConfiguration: Boolean;
begin
  Result := FInventoryConfiguration <> nil;
end;

end.
