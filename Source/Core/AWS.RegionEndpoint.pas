unit AWS.RegionEndpoint;

interface

uses
  System.Generics.Collections, System.SysUtils,
  AWS.Internal.IRegionEndpoint;

type
  IRegionEndpointEx = interface
    function GetSystemName: string;
    function GetDisplayName: string;
    function GetPartitionName: string;
    function GetPartitionDnsSuffix: string;

    function GetEndpointForService(const AServiceName: string; ADualStack: Boolean): IEndpoint;
    property SystemName: string read GetSystemName;
    property DisplayName: string read GetDisplayName;
    property PartitionName: string read GetPartitionName;
    property PartitionDnsSuffix: string read GetPartitionDnsSuffix;
  end;

  TRegionEndpoint = class(TInterfacedObject, IRegionEndpointEx)
  strict private
    class var FHashBySystemName: TList<IRegionEndpointEx>;
    class var FRegionEndpointProvider: IRegionEndpointProvider;
  strict private
    class constructor Create;
    class destructor Destroy;
    class function GetRegionEndpointProvider: IRegionEndpointProvider; static;
    class function InternalTryGetEndpoint(const ASystemName: string; var AEndpoint: IRegionEndpointEx): Boolean;
    class property RegionEndpointProvider: IRegionEndpointProvider read GetRegionEndpointProvider;
  public
    class function GetBySystemName(const ASystemName: string): IRegionEndpointEx;
    class function GetEndpoint(const ASystemName: string; ADisplayName: string): IRegionEndpointEx;
  strict private
    FSystemName: string;
    FDisplayName: string;
    FPartitionName: string;
    FPartitionDnsSuffix: string;
    function GetSystemName: string;
    function GetDisplayName: string;
    function GetPartitionName: string;
    function GetPartitionDnsSuffix: string;
    function InternedRegionEndpoint: IRegionEndpoint;
  public
    constructor Create(const ASystemName, ADisplayName: string);
    function GetEndpointForService(const AServiceName: string; ADualStack: Boolean): IEndpoint;
    property SystemName: string read GetSystemName;
    property DisplayName: string read GetDisplayName;
    property PartitionName: string read GetPartitionName;
    property PartitionDnsSuffix: string read GetPartitionDnsSuffix;
  end;

implementation

uses
  AWS.Internal.RegionEndpointV3;

{ TRegionEndpoint }

class constructor TRegionEndpoint.Create;
begin
  FHashBySystemName := TList<IRegionEndpointEx>.Create;
end;

constructor TRegionEndpoint.Create(const ASystemName, ADisplayName: string);
begin
  inherited Create;
  FSystemName := ASystemName;
  FDisplayName := ADisplayName;
end;

class destructor TRegionEndpoint.Destroy;
begin
  FHashBySystemName.Free;
end;

class function TRegionEndpoint.GetBySystemName(const ASystemName: string): IRegionEndpointEx;
begin
  Result := GetEndpoint(ASystemName, '');
end;

function TRegionEndpoint.GetDisplayName: string;
begin
  Result := FDisplayName;
end;

class function TRegionEndpoint.GetEndpoint(const ASystemName: string; ADisplayName: string): IRegionEndpointEx;
begin
  if ADisplayName = '' then
  begin
    TMonitor.Enter(FHashBySystemName);
    try
      if InternalTryGetEndpoint(ASystemName, Result) then
        Exit;
      ADisplayName := RegionEndpointProvider.GetRegionEndpoint(ASystemName).DisplayName;
    finally
      TMonitor.Exit(FHashBySystemName);
    end;
  end;

  TMonitor.Enter(FHashBySystemName);
  try
    if InternalTryGetEndpoint(ASystemName, Result) then
      Exit;

    Result := TRegionEndpoint.Create(ASystemName, ADisplayName);
    FHashBySystemName.Add(Result);
  finally
    TMonitor.Exit(FHashBySystemName);
  end;
end;

function TRegionEndpoint.GetEndpointForService(const AServiceName: string; ADualStack: Boolean): IEndpoint;
begin
  Result := InternedRegionEndpoint.GetEndpointForService(AServiceName, ADualStack);
end;

function TRegionEndpoint.GetPartitionDnsSuffix: string;
begin
  Result := FPartitionDnsSuffix;
end;

function TRegionEndpoint.GetPartitionName: string;
begin
  Result := FPartitionName;
end;

class function TRegionEndpoint.GetRegionEndpointProvider: IRegionEndpointProvider;
begin
  {TODO: Different implementation}
  if FRegionEndpointProvider = nil then
    FRegionEndpointProvider := TRegionEndpointProviderV3.Create;
  Result := FRegionEndpointProvider;
end;

function TRegionEndpoint.GetSystemName: string;
begin
  Result := FSystemName;
end;

class function TRegionEndpoint.InternalTryGetEndpoint(const ASystemName: string;
  var AEndpoint: IRegionEndpointEx): Boolean;
var
  LocalEndpoint: IRegionEndpointEx;
begin
  for LocalEndpoint in FHashBySystemName do
    if SameText(ASystemName, LocalEndpoint.SystemName) then
    begin
      AEndpoint := LocalEndpoint;
      Exit(True);
    end;
  AEndpoint := nil;
  Result := False;
end;

function TRegionEndpoint.InternedRegionEndpoint: IRegionEndpoint;
begin
  Result := RegionEndpointProvider.GetRegionEndpoint(SystemName);
end;

end.
