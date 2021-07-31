unit AWS.RegionEndpoints;

interface

uses
  AWS.RegionEndpoint;

type
  TRegionEndpoints = class
  strict private
    class var FAFSouth1: IRegionEndpointEx;
    class var FAPEast1: IRegionEndpointEx;
    class var FAPNortheast1: IRegionEndpointEx;
    class var FAPNortheast2: IRegionEndpointEx;
    class var FAPNortheast3: IRegionEndpointEx;
    class var FAPSouth1: IRegionEndpointEx;
    class var FAPSoutheast1: IRegionEndpointEx;
    class var FAPSoutheast2: IRegionEndpointEx;
    class var FCACentral1: IRegionEndpointEx;
    class var FEUCentral1: IRegionEndpointEx;
    class var FEUNorth1: IRegionEndpointEx;
    class var FEUSouth1: IRegionEndpointEx;
    class var FEUWest1: IRegionEndpointEx;
    class var FEUWest2: IRegionEndpointEx;
    class var FEUWest3: IRegionEndpointEx;
    class var FMESouth1: IRegionEndpointEx;
    class var FSAEast1: IRegionEndpointEx;
    class var FUSEast1: IRegionEndpointEx;
    class var FUSEast2: IRegionEndpointEx;
    class var FUSWest1: IRegionEndpointEx;
    class var FUSWest2: IRegionEndpointEx;
    class var FCNNorth1: IRegionEndpointEx;
    class var FCNNorthWest1: IRegionEndpointEx;
    class var FUSGovCloudEast1: IRegionEndpointEx;
    class var FUSGovCloudWest1: IRegionEndpointEx;
    class var FUSIsoEast1: IRegionEndpointEx;
    class var FUSIsobEast1: IRegionEndpointEx;
  public
    class constructor Create;
    class property AFSouth1: IRegionEndpointEx read FAFSouth1;
    class property APEast1: IRegionEndpointEx read FAPEast1;
    class property APNortheast1: IRegionEndpointEx read FAPNortheast1;
    class property APNortheast2: IRegionEndpointEx read FAPNortheast2;
    class property APNortheast3: IRegionEndpointEx read FAPNortheast3;
    class property APSouth1: IRegionEndpointEx read FAPSouth1;
    class property APSoutheast1: IRegionEndpointEx read FAPSoutheast1;
    class property APSoutheast2: IRegionEndpointEx read FAPSoutheast2;
    class property CACentral1: IRegionEndpointEx read FCACentral1;
    class property EUCentral1: IRegionEndpointEx read FEUCentral1;
    class property EUNorth1: IRegionEndpointEx read FEUNorth1;
    class property EUSouth1: IRegionEndpointEx read FEUSouth1;
    class property EUWest1: IRegionEndpointEx read FEUWest1;
    class property EUWest2: IRegionEndpointEx read FEUWest2;
    class property EUWest3: IRegionEndpointEx read FEUWest3;
    class property MESouth1: IRegionEndpointEx read FMESouth1;
    class property SAEast1: IRegionEndpointEx read FSAEast1;
    class property USEast1: IRegionEndpointEx read FUSEast1;
    class property USEast2: IRegionEndpointEx read FUSEast2;
    class property USWest1: IRegionEndpointEx read FUSWest1;
    class property USWest2: IRegionEndpointEx read FUSWest2;
    class property CNNorth1: IRegionEndpointEx read FCNNorth1;
    class property CNNorthWest1: IRegionEndpointEx read FCNNorthWest1;
    class property USGovCloudEast1: IRegionEndpointEx read FUSGovCloudEast1;
    class property USGovCloudWest1: IRegionEndpointEx read FUSGovCloudWest1;
    class property USIsoEast1: IRegionEndpointEx read FUSIsoEast1;
    class property USIsobEast1: IRegionEndpointEx read FUSIsobEast1;
  end;
  
implementation

{ TRegionEndpoints }

class constructor TRegionEndpoints.Create;
begin
  FAFSouth1 := TRegionEndpoint.GetEndpoint('af-south-1', 'Africa (Cape Town)');
  FAPEast1 := TRegionEndpoint.GetEndpoint('ap-east-1', 'Asia Pacific (Hong Kong)');
  FAPNortheast1 := TRegionEndpoint.GetEndpoint('ap-northeast-1', 'Asia Pacific (Tokyo)');
  FAPNortheast2 := TRegionEndpoint.GetEndpoint('ap-northeast-2', 'Asia Pacific (Seoul)');
  FAPNortheast3 := TRegionEndpoint.GetEndpoint('ap-northeast-3', 'Asia Pacific (Osaka)');
  FAPSouth1 := TRegionEndpoint.GetEndpoint('ap-south-1', 'Asia Pacific (Mumbai)');
  FAPSoutheast1 := TRegionEndpoint.GetEndpoint('ap-southeast-1', 'Asia Pacific (Singapore)');
  FAPSoutheast2 := TRegionEndpoint.GetEndpoint('ap-southeast-2', 'Asia Pacific (Sydney)');
  FCACentral1 := TRegionEndpoint.GetEndpoint('ca-central-1', 'Canada (Central)');
  FEUCentral1 := TRegionEndpoint.GetEndpoint('eu-central-1', 'Europe (Frankfurt)');
  FEUNorth1 := TRegionEndpoint.GetEndpoint('eu-north-1', 'Europe (Stockholm)');
  FEUSouth1 := TRegionEndpoint.GetEndpoint('eu-south-1', 'Europe (Milan)');
  FEUWest1 := TRegionEndpoint.GetEndpoint('eu-west-1', 'Europe (Ireland)');
  FEUWest2 := TRegionEndpoint.GetEndpoint('eu-west-2', 'Europe (London)');
  FEUWest3 := TRegionEndpoint.GetEndpoint('eu-west-3', 'Europe (Paris)');
  FMESouth1 := TRegionEndpoint.GetEndpoint('me-south-1', 'Middle East (Bahrain)');
  FSAEast1 := TRegionEndpoint.GetEndpoint('sa-east-1', 'South America (Sao Paulo)');
  FUSEast1 := TRegionEndpoint.GetEndpoint('us-east-1', 'US East (N. Virginia)');
  FUSEast2 := TRegionEndpoint.GetEndpoint('us-east-2', 'US East (Ohio)');
  FUSWest1 := TRegionEndpoint.GetEndpoint('us-west-1', 'US West (N. California)');
  FUSWest2 := TRegionEndpoint.GetEndpoint('us-west-2', 'US West (Oregon)');
  FCNNorth1 := TRegionEndpoint.GetEndpoint('cn-north-1', 'China (Beijing)');
  FCNNorthWest1 := TRegionEndpoint.GetEndpoint('cn-northwest-1', 'China (Ningxia)');
  FUSGovCloudEast1 := TRegionEndpoint.GetEndpoint('us-gov-east-1', 'AWS GovCloud (US-East)');
  FUSGovCloudWest1 := TRegionEndpoint.GetEndpoint('us-gov-west-1', 'AWS GovCloud (US-West)');
  FUSIsoEast1 := TRegionEndpoint.GetEndpoint('us-iso-east-1', 'US ISO East');
  FUSIsobEast1 := TRegionEndpoint.GetEndpoint('us-isob-east-1', 'US ISOB East (Ohio)');
end;

end.
