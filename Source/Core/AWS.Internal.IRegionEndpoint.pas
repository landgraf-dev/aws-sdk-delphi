unit AWS.Internal.IRegionEndpoint;

interface

uses
  System.Generics.Collections;

type
  IEndpoint = interface
    function GetHostName: string;
    function GetAuthRegion: string;
    function GetSignatureVersionOverride: string;
    property HostName: string read GetHostName;
    property AuthRegion: string read GetAuthRegion;
    property SignatureVersionOverride: string read GetSignatureVersionOverride;
  end;

  IRegionEndpoint = interface
    function GetRegionName: string;
    function GetDisplayName: string;
    function GetEndpointForService(const AServiceName: string; ADualStack: Boolean): IEndpoint;
    property RegionName: string read GetRegionName;
    property DisplayName: string read GetDisplayName;
  end;

  IRegionEndpointProvider = interface
    function AllRegionEndpoints: TEnumerable<IRegionEndpoint>;
    function GetRegionEndpoint(const ARegionName: string): IRegionEndpoint;
  end;

  TEndpoint = class(TInterfacedObject, IEndpoint)
  strict private
    FHostName: string;
    FAuthRegion: string;
    FSignatureVersionOverride: string;
    function GetHostName: string;
    function GetAuthRegion: string;
    function GetSignatureVersionOverride: string;
  public
    constructor Create(const AHostName, AAuthRegion, ASignatureVersionOverride: string);
    property HostName: string read GetHostName;
    property AuthRegion: string read GetAuthRegion;
    property SignatureVersionOverride: string read GetSignatureVersionOverride;
  end;

implementation

{ TEndpoint }

constructor TEndpoint.Create(const AHostName, AAuthRegion, ASignatureVersionOverride: string);
begin
  inherited Create;
  FHostName := AHostName;
  FAuthRegion := AAuthRegion;
  FSignatureVersionOverride := ASignatureVersionOverride;
end;

function TEndpoint.GetAuthRegion: string;
begin
  Result := FAuthRegion;
end;

function TEndpoint.GetHostName: string;
begin
  Result := FHostName;
end;

function TEndpoint.GetSignatureVersionOverride: string;
begin
  Result := FSignatureVersionOverride;
end;

end.
