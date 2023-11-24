unit AWS.S3.Model.GetObjectLockConfigurationResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.S3.Model.ObjectLockConfiguration;

type
  TGetObjectLockConfigurationResponse = class;
  
  IGetObjectLockConfigurationResponse = interface(IAmazonWebServiceResponse)
    function GetObjectLockConfiguration: TObjectLockConfiguration;
    procedure SetObjectLockConfiguration(const Value: TObjectLockConfiguration);
    function GetKeepObjectLockConfiguration: Boolean;
    procedure SetKeepObjectLockConfiguration(const Value: Boolean);
    function Obj: TGetObjectLockConfigurationResponse;
    function IsSetObjectLockConfiguration: Boolean;
    property ObjectLockConfiguration: TObjectLockConfiguration read GetObjectLockConfiguration write SetObjectLockConfiguration;
    property KeepObjectLockConfiguration: Boolean read GetKeepObjectLockConfiguration write SetKeepObjectLockConfiguration;
  end;
  
  TGetObjectLockConfigurationResponse = class(TAmazonWebServiceResponse, IGetObjectLockConfigurationResponse)
  strict private
    FObjectLockConfiguration: TObjectLockConfiguration;
    FKeepObjectLockConfiguration: Boolean;
    function GetObjectLockConfiguration: TObjectLockConfiguration;
    procedure SetObjectLockConfiguration(const Value: TObjectLockConfiguration);
    function GetKeepObjectLockConfiguration: Boolean;
    procedure SetKeepObjectLockConfiguration(const Value: Boolean);
  strict protected
    function Obj: TGetObjectLockConfigurationResponse;
  public
    destructor Destroy; override;
    function IsSetObjectLockConfiguration: Boolean;
    property ObjectLockConfiguration: TObjectLockConfiguration read GetObjectLockConfiguration write SetObjectLockConfiguration;
    property KeepObjectLockConfiguration: Boolean read GetKeepObjectLockConfiguration write SetKeepObjectLockConfiguration;
  end;
  
implementation

{ TGetObjectLockConfigurationResponse }

destructor TGetObjectLockConfigurationResponse.Destroy;
begin
  ObjectLockConfiguration := nil;
  inherited;
end;

function TGetObjectLockConfigurationResponse.Obj: TGetObjectLockConfigurationResponse;
begin
  Result := Self;
end;

function TGetObjectLockConfigurationResponse.GetObjectLockConfiguration: TObjectLockConfiguration;
begin
  Result := FObjectLockConfiguration;
end;

procedure TGetObjectLockConfigurationResponse.SetObjectLockConfiguration(const Value: TObjectLockConfiguration);
begin
  if FObjectLockConfiguration <> Value then
  begin
    if not KeepObjectLockConfiguration then
      FObjectLockConfiguration.Free;
    FObjectLockConfiguration := Value;
  end;
end;

function TGetObjectLockConfigurationResponse.GetKeepObjectLockConfiguration: Boolean;
begin
  Result := FKeepObjectLockConfiguration;
end;

procedure TGetObjectLockConfigurationResponse.SetKeepObjectLockConfiguration(const Value: Boolean);
begin
  FKeepObjectLockConfiguration := Value;
end;

function TGetObjectLockConfigurationResponse.IsSetObjectLockConfiguration: Boolean;
begin
  Result := FObjectLockConfiguration <> nil;
end;

end.
