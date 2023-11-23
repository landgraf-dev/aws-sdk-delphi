unit AWS.S3Control.Internal.S3ArnUtils;

interface

uses
  System.SysUtils,
  AWS.Arn,
  AWS.Runtime.Exceptions,
  AWS.S3Control.Internal.S3Resource,
  AWS.S3Control.Internal.S3OutpostResource;

type
  TS3ArnUtils = class
  public
    class function GetAccountIdBasedOnArn(const ARequestAccountId, AArnAccountId: string): string;

{$REGION 'TArn extensions'}
  private
    const ArnSplit: array[0..1] of Char = ('/', ':');
    const ResourceTypeAccessPoint = 'accesspoint';
    const ResourceTypeBucketArn = 'bucket';
    const ResourceTypeOutpost = 'outpost';
  public
    /// <summary>
    /// Check if aws ARN resembles an outpost ARN
    /// </summary>
    /// <param name="Arn">An AWS ARN to parse</param>
    /// <returns>True if the ARN contains an outpost resource identifier.</returns>
    class function IsOutpostArn(const Arn: TArn): Boolean; static;


    /// <summary>
    /// Parse an ARN to extract information on S3 outpost access point or bucket ARN
    /// and if it is not found or properly formatted, throw an exception
    /// </summary>
    /// <param name="Arn">The ARN to be parsed into an S3 Outposts resource</param>
    /// <returns>An IS3Resource of type TS3OutpostResource</returns>
    class function ParseOutpost(const Arn: TArn): IS3Resource; static;
{$ENDREGION}
  end;

implementation

{ TS3ArnUtils }

class function TS3ArnUtils.GetAccountIdBasedOnArn(const ARequestAccountId, AArnAccountId: string): string;
begin
  if not string.IsNullOrEmpty(AArnAccountId) and not string.IsNullOrEmpty(ARequestAccountId)
    and not string.Equals(AArnAccountId, ARequestAccountId) then
    raise EAmazonClientException.Create('Account ID mismatch, the Account ID cannot be specified in an ARN and in the accountId field');

  if string.IsNullOrEmpty(AArnAccountId) and string.IsNullOrEmpty(ARequestAccountId) then
    raise EAmazonClientException.Create('Invalid ARN, Account ID not set');

  if ARequestAccountId <> '' then
    Result := ARequestAccountId
  else
    Result := AArnAccountId;
end;

class function TS3ArnUtils.IsOutpostArn(const Arn: TArn): Boolean;
begin
  var AnyStartsWithResource := False;
  for var C in ArnSplit do
    if Arn.Resource.StartsWith(ResourceTypeOutpost + C) then
    begin
      AnyStartsWithResource := True;
      Break;
    end;
  Result := not string.IsNullOrEmpty(Arn.Resource) and
    (AnyStartsWithResource or Arn.Resource.Equals(ResourceTypeOutpost));
end;

class function TS3ArnUtils.ParseOutpost(const Arn: TArn): IS3Resource;
begin
  if string.IsNullOrEmpty(Arn.Resource) then
    raise EAmazonClientException.Create('ARN resource can not be empty');

  if not IsOutpostArn(Arn) then
    raise EAmazonClientException.Create('ARN resource does not resemble an outpost access point');

  var parts := Arn.Resource.Split(ArnSplit, 5);
  if (Length(parts) < 4) or (not string.Equals(parts[2], 'accesspoint') and not string.Equals(parts[2], 'bucket')) then
    raise EAmazonClientException.Create('Invalid ARN, outpost resource format is incorrect');

  Result := TS3OutpostResource.Create(arn)
  {
      OutpostId = parts[1],
      Type = (S3ResourceType)Enum.Parse(typeof(S3ResourceType), parts[2], true),
      Name = parts[3],
      Key = parts.Length > 4 ? parts[4] : null
  };
end;

end.
