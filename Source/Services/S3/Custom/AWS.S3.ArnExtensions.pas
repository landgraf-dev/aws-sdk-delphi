unit AWS.S3.ArnExtensions;

interface

uses
  System.SysUtils,
  AWS.Arn,
  AWS.Runtime.Exceptions,
  AWS.S3.S3OutpostResource;

type
  TArnExtensions = class
  public const
    ResourceTypeAccessPoint = 'accesspoint';
    ResourceTypeBucketName = 'bucket_name';
    ResourceTypeOutpostAccessPoint = 'outpost';
  public
    class function IsService(const Arn: TArn; const ServiceName: string): Boolean; static;
    class function TryParseAccessPoint(const Arn: TArn; var AccessPoint: string): Boolean; static;
    class function IsOutpostArn(const Arn: TArn): Boolean; static;
    class function ParseOutpost(const Arn: TArn): TS3OutpostResource; static;
  end;

implementation

{ TArnExtensions }

class function TArnExtensions.IsOutpostArn(const Arn: TArn): Boolean;
begin
  if arn.Resource = '' then
    Result := False
  else
    Result := Arn.Resource.StartsWith(ResourceTypeOutpostAccessPoint);
end;

class function TArnExtensions.IsService(const Arn: TArn; const ServiceName: string): Boolean;
begin
  Result := Arn.Service = serviceName;
end;

class function TArnExtensions.ParseOutpost(const Arn: TArn): TS3OutpostResource;
begin
  if string.IsNullOrEmpty(Arn.Resource) then
    raise EAmazonClientException.Create('Arn Resource can not be null');

  if not IsOutpostArn(arn) then
    raise EAmazonClientException.CreateFmt('Arn Resource: %s does not resemble an outpost access point', [Arn.Resource]);

  var outpostAccessPointString := Arn.Resource;
  var parts := outpostAccessPointString.Split(['/', ':'], 5);
  if (Length(parts) < 4) or not string.Equals(parts[2], 'accesspoint') then
    raise EAmazonClientException.CreateFmt('Invalid ARN: %s, outpost resource format is incorrect', [Arn.ToString]);

  var outpost := TS3OutpostResource.Create(Arn);
  outpost.OutpostId := parts[1];
  outpost.AccessPointName := parts[3];
  if Length(parts) > 4 then
    outpost.Key := parts[4];

  Result := outpost;
end;

class function TArnExtensions.TryParseAccessPoint(const Arn: TArn; var AccessPoint: string): Boolean;
begin
  AccessPoint := '';

  if string.IsNullOrEmpty(Arn.Resource) then
    Exit(False);

  if Arn.Resource.StartsWith(ResourceTypeAccessPoint + ':') or Arn.Resource.StartsWith(ResourceTypeAccessPoint + '/') then
  begin
    AccessPoint := Arn.Resource.Substring(ResourceTypeAccessPoint.Length + 1);
    Exit(True);
  end;

  Result := False;
end;

end.
