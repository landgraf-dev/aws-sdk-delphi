unit AWS.S3Control.Internal.S3Resource;

interface

uses
  AWS.Runtime.ClientConfig,
  AWS.RegionEndpoint,
  AWS.SDKUtils;

type
{$SCOPEDENUMS ON}
  TS3ResourceType = (AccessPoint, Bucket);

  IS3Resource = interface
    function GetType: TS3ResourceType;
    procedure SetType(const Value: TS3ResourceType);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetFullResourceName: string;

    property &Type: TS3ResourceType read GetType write SetType;
    property Name: string read GetName write SetName;
    property Key: string read GetKey write SetKey;
    property FullResourceName: string read GetFullResourceName;
    procedure ValidateArnWithClientConfig(AConfig: IClientConfig; ARegion: IRegionEndpointEx);
    function GetEndpoint(AConfig: IClientConfig): IUri;
  end;

implementation

end.
