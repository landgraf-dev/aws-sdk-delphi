unit AWS.S3Control.Model.GetStorageLensConfigurationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3Control.Model.StorageLensConfiguration;

type
  TGetStorageLensConfigurationResponse = class;
  
  IGetStorageLensConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetStorageLensConfiguration: TStorageLensConfiguration;
    procedure SetStorageLensConfiguration(const Value: TStorageLensConfiguration);
    function GetKeepStorageLensConfiguration: Boolean;
    procedure SetKeepStorageLensConfiguration(const Value: Boolean);
    function Obj: TGetStorageLensConfigurationResponse;
    function IsSetStorageLensConfiguration: Boolean;
    property StorageLensConfiguration: TStorageLensConfiguration read GetStorageLensConfiguration write SetStorageLensConfiguration;
    property KeepStorageLensConfiguration: Boolean read GetKeepStorageLensConfiguration write SetKeepStorageLensConfiguration;
  end;
  
  TGetStorageLensConfigurationResponse = class(TAmazonWebServiceResponse, IGetStorageLensConfigurationResponse)
  strict private
    FStorageLensConfiguration: TStorageLensConfiguration;
    FKeepStorageLensConfiguration: Boolean;
    function GetStorageLensConfiguration: TStorageLensConfiguration;
    procedure SetStorageLensConfiguration(const Value: TStorageLensConfiguration);
    function GetKeepStorageLensConfiguration: Boolean;
    procedure SetKeepStorageLensConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetStorageLensConfigurationResponse;
  public
    destructor Destroy; override;
    function IsSetStorageLensConfiguration: Boolean;
    property StorageLensConfiguration: TStorageLensConfiguration read GetStorageLensConfiguration write SetStorageLensConfiguration;
    property KeepStorageLensConfiguration: Boolean read GetKeepStorageLensConfiguration write SetKeepStorageLensConfiguration;
  end;
  
implementation

{ TGetStorageLensConfigurationResponse }

destructor TGetStorageLensConfigurationResponse.Destroy;
begin
  StorageLensConfiguration := nil;
  inherited;
end;

function TGetStorageLensConfigurationResponse.Obj: TGetStorageLensConfigurationResponse;
begin
  Result := Self;
end;

function TGetStorageLensConfigurationResponse.GetStorageLensConfiguration: TStorageLensConfiguration;
begin
  Result := FStorageLensConfiguration;
end;

procedure TGetStorageLensConfigurationResponse.SetStorageLensConfiguration(const Value: TStorageLensConfiguration);
begin
  if FStorageLensConfiguration <> Value then
  begin
    if not KeepStorageLensConfiguration then
      FStorageLensConfiguration.Free;
    FStorageLensConfiguration := Value;
  end;
end;

function TGetStorageLensConfigurationResponse.GetKeepStorageLensConfiguration: Boolean;
begin
  Result := FKeepStorageLensConfiguration;
end;

procedure TGetStorageLensConfigurationResponse.SetKeepStorageLensConfiguration(const Value: Boolean);
begin
  FKeepStorageLensConfiguration := Value;
end;

function TGetStorageLensConfigurationResponse.IsSetStorageLensConfiguration: Boolean;
begin
  Result := FStorageLensConfiguration <> nil;
end;

end.
