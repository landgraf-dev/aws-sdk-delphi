unit AWS.S3Control.Internal.S3OutpostResource;

interface

uses
  System.SysUtils, System.Character,
  AWS.Arn,
  AWS.Runtime.ClientConfig,
  AWS.RegionEndpoint,
  AWS.Runtime.Exceptions,
  AWS.S3Control.Config,
  AWS.S3Control.ConfigExtension,
  AWS.S3Control.Internal.S3Resource,
  AWS.SDKUtils;

type
  TS3OutpostResource = class(TInterfacedObject, IS3Resource)
  public const
    S3OutpostsService = 's3-outposts';
  strict private
    FArn: TArn;
    FType: TS3ResourceType;
    FName: string;
    FKey: string;
    FOutpostId: string;
    function GetTypeString(InCaps, HasSpaces: Boolean): string;
  public
    class function IsValidOutpostId(const OutpostId: string): Boolean; static;
  strict private
    function GetType: TS3ResourceType;
    procedure SetType(const Value: TS3ResourceType);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetKey: string;
    procedure SetKey(const Value: string);
    function GetFullResourceName: string;
  private
    procedure SetOutpostId(const Value: string);
  public
    constructor Create(const AArn: TArn); reintroduce;
    procedure ValidateArnWithClientConfig(AConfig: IClientConfig; ARegion: IRegionEndpointEx);
    function GetEndpoint(AConfig: IClientConfig): IUri;
    property &Type: TS3ResourceType read GetType write SetType;
    property Name: string read GetName write SetName;
    property Key: string read GetKey write SetKey;
    property FullResourceName: string read GetFullResourceName;
    property OutpostId: string read FOutpostId write SetOutpostId;
  end;

implementation

{ TS3OutpostResource }

constructor TS3OutpostResource.Create(const AArn: TArn);
begin
  inherited Create;
  FArn := AArn;
end;

function TS3OutpostResource.GetEndpoint(AConfig: IClientConfig): IUri;
begin
  var s3Config: TAmazonS3ControlConfig := AConfig as TAmazonS3ControlConfig;
  var region: string;
  if s3Config.UseArnRegion then
    region := FArn.Region
  else
    region := s3Config.RegionEndpoint.SystemName;

  var scheme: string;
  if AConfig.UseHttp then
    scheme := 'http'
  else
    scheme := 'https';

  Result := TUri.Create(
    Format('%s://s3-outposts.%s.%s',
      [scheme, region, AConfig.RegionEndpoint.PartitionDnsSuffix]));
end;

function TS3OutpostResource.GetFullResourceName: string;
begin
  Result :=
    Format('arn:%s:%s:%:', [FArn.Partition, FArn.Service, FArn.Region]) +
    Format('%s:outpost:%s:', [FArn.AccountId, OutpostId]) +
    Format('%s:%s', [GetTypeString(false, false), Name]);
end;

function TS3OutpostResource.GetKey: string;
begin
  Result := FKey;
end;

function TS3OutpostResource.GetName: string;
begin
  Result := FName;
end;

function TS3OutpostResource.GetType: TS3ResourceType;
begin
  Result := FType;
end;

function TS3OutpostResource.GetTypeString(InCaps, HasSpaces: Boolean): string;
begin
  case FType of
    TS3ResourceType.AccessPoint:
      if HasSpaces then
      begin
        if InCaps then
          Result := 'Access Point'
        else
          Result := 'access point';
      end
      else
      begin
        if InCaps then
          Result := 'AccessPoint'
        else
          Result := 'accesspoint';
      end;
    TS3ResourceType.Bucket:
      if InCaps then
        Result := 'Bucket'
      else
        Result := 'bucket';
  else
    Result := '';
  end;
end;

class function TS3OutpostResource.IsValidOutpostId(const OutpostId: string): Boolean;
begin
  for var C in OutpostId do
    if not C.IsLetterOrDigit and (C <> '-') then
      Exit(False);

  Result := (Length(OutpostId) <= 63) and (Length(OutpostId) >= 1);
end;

procedure TS3OutpostResource.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TS3OutpostResource.SetName(const Value: string);
begin
  var accessPointOrBucketString := GetTypeString(true, true);
  if string.IsNullOrEmpty(Value) then
    raise EAmazonClientException.CreateFmt('%s can not be null', [accessPointOrBucketString]);

  for var C in Value do
    if not C.IsLetterOrDigit and (C <> '-') then
      raise EAmazonClientException.CreateFmt('Invalid ARN, %s Name contains invalid character, %s',
        [accessPointOrBucketString, C]);

  FName := Value;
end;

procedure TS3OutpostResource.SetOutpostId(const Value: string);
begin
  if not TS3OutpostResource.IsValidOutpostId(Value) then
    raise EAmazonClientException.CreateFmt('Invalid outpost ID: %s. ID must contain only alphanumeric characters and dashes', [Value]);

  FOutpostId := Value;
end;

procedure TS3OutpostResource.SetType(const Value: TS3ResourceType);
begin
  FType := Value;
end;

procedure TS3OutpostResource.ValidateArnWithClientConfig(AConfig: IClientConfig; ARegion: IRegionEndpointEx);
begin
  var s3Config := AConfig as TAmazonS3ControlConfig;
  var accessPointOrBucketString := GetTypeString(False, True);
  var capitalizedAccessPointOrBucketString := GetTypeString(True, True);
  if not FArn.Service.Equals(S3OutpostsService) then
    raise EAmazonClientException.Create('Invalid ARN, not S3 Outposts ARN');

  if s3Config.UseDualstackEndpoint then
    raise EAmazonClientException.CreateFmt('Invalid configuration Outpost %ss do not support dualstack', [capitalizedAccessPointOrBucketString]);

  if string.IsNullOrEmpty(FArn.AccountId) then
    raise EAmazonClientException.CreateFmt('Account ID is missing in %s ARN', [capitalizedAccessPointOrBucketString]);

  if string.IsNullOrEmpty(FArn.Region) then
    raise EAmazonClientException.CreateFmt('AWS region is missing in %s ARN', [capitalizedAccessPointOrBucketString]);

  if (s3Config.RegionEndpoint <> nil) and not string.Equals(ARegion.PartitionName, FArn.Partition) then
    raise EAmazonClientException.CreateFmt('Invalid configuration, cross partition Outpost %s ARN', [capitalizedAccessPointOrBucketString]);

  if (s3Config.UseArnRegion and FArn.Region.StartsWith('fips-')) or
     (not s3Config.UseArnRegion and ARegion.SystemName.StartsWith('fips-')) then
    raise EAmazonClientException.CreateFmt('Invalid configuration Outpost %ss do not support Fips- regions', [capitalizedAccessPointOrBucketString]);

  if not s3Config.UseArnRegion and not string.Equals(FArn.Region, ARegion.SystemName) then
    raise EAmazonClientException.CreateFmt('Invalid configuration, cross region Outpost %s ARN', [capitalizedAccessPointOrBucketString]);
end;

end.
