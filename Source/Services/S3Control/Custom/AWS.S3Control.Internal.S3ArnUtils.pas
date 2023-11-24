unit AWS.S3Control.Internal.S3ArnUtils;

interface

uses
  System.SysUtils, System.Character, System.TypInfo, System.Generics.Collections,
  AWS.Arn,
  AWS.Internal.ParameterDictionary,
  AWS.Internal.Request,
  AWS.Runtime.ClientConfig,
  AWS.Runtime.Exceptions,
  AWS.SDKUtils,
  AWS.S3Control.Config,
  AWS.S3Control.Internal.S3Resource,
  AWS.S3Control.Internal.S3OutpostResource,
  AWS.S3Control.Model.CreateAccessPointRequest,
  AWS.S3Control.Model.CreateBucketRequest,
  AWS.S3Control.Model.ListRegionalBucketsRequest;

type
  TS3ArnUtils = class
  strict private
    class var FSeparators: array of Char;
  strict private
    class function DictionaryContainsArn(DictValues: TDictionary<string, string>; var Arn: TArn): Boolean; overload; static;
    class function DictionaryContainsArn(DictValues: IParameterDictionary; var Arn: TArn): Boolean; overload; static;

  public
    class constructor Create;
    class function GetAccountIdBasedOnArn(const ARequestAccountId, AArnAccountId: string): string;
    class function RequestContainsArn(ARequest: IRequest; var Arn: TArn): Boolean; static;
    class procedure ReplacePathResourceArns(DictValues: TDictionary<string, string>; const BucketOrAccessPointName: string); overload; static;
    class procedure ReplacePathResourceArns(DictValues: IParameterDictionary; const BucketOrAccessPointName: string); overload; static;
    class function DoesRequestHaveOutpostId(Request: TObject; var OutpostId: string): Boolean; static;
    class function GetNonStandardOutpostIdEndpoint(Config: IClientConfig): IUri;

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

    /// <summary>
    /// Check if the ARN has a valid service name
    /// </summary>
    /// <param name="Arn">The ARN which is being validated</param>
    class function IsValidService(const Arn: TArn): Boolean; static;
{$ENDREGION}
  end;

implementation

{ TS3ArnUtils }

class constructor TS3ArnUtils.Create;
begin
  SetLength(FSeparators, 2);
  FSeparators[0] := '/';
  FSeparators[1] := '?';
end;

class function TS3ArnUtils.DictionaryContainsArn(DictValues: TDictionary<string, string>; var Arn: TArn): Boolean;
begin
  for var kvp in DictValues do
    if TArn.TryParse(kvp.Value, Arn) then
      Exit(True);
  Result := False;
end;

class function TS3ArnUtils.DictionaryContainsArn(DictValues: IParameterDictionary; var Arn: TArn): Boolean;
begin
  for var value in DictValues.Values do
    if TArn.TryParse(value, Arn) then
      Exit(True);
  Result := False;
end;

class function TS3ArnUtils.DoesRequestHaveOutpostId(Request: TObject; var OutpostId: string): Boolean;
begin
  OutpostId := '';
  if Request is TCreateBucketRequest then
    OutpostId := TCreateBucketRequest(Request).OutpostId;

  if (OutpostId = '') and (Request is TListRegionalBucketsRequest) then
    OutpostId := TListRegionalBucketsRequest(Request).OutpostId;

  if (OutpostId = '') and (Request is TCreateAccessPointRequest) then
    OutpostId := TCreateAccessPointRequest(Request).OutpostId;

  Result := OutpostId <> '';
end;

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

class function TS3ArnUtils.GetNonStandardOutpostIdEndpoint(Config: IClientConfig): IUri;
begin
  var Url: string;
  if Config.UseHttp then
    Url := 'http'
  else
    Url := 'https';

  Url := Format('%s://s3-outposts.%s.%s', [Url, config.RegionEndpoint.SystemName, config.RegionEndpoint.PartitionDnsSuffix]);
  Result := TUri.Create(Url);
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

class function TS3ArnUtils.IsValidService(const Arn: TArn): Boolean;
begin
  Result := Arn.Service.Equals(TS3OutpostResource.S3OutpostsService);
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

  Result := TS3OutpostResource.Create(Arn);
  (Result as TS3OutpostResource).OutpostId := parts[1];

  var enum := GetEnumValue(TypeInfo(TS3ResourceType), parts[2]);
  if enum = -1 then
    raise EArgumentException.Create('Invalid TS3ResourceType value: ' + parts[2]);
  Result.&Type := TS3ResourceType(enum);
  Result.Name := parts[3];
  if Length(parts) > 4 then
    Result.Key := parts[4];
end;

class procedure TS3ArnUtils.ReplacePathResourceArns(DictValues: TDictionary<string, string>;
  const BucketOrAccessPointName: string);
begin
  var dummy: TArn;
  for var kvp in DictValues do
    if TArn.TryParse(kvp.Value, dummy) then
    begin
      DictValues[kvp.Key] := BucketOrAccessPointName;
      Exit;
    end;
end;

class procedure TS3ArnUtils.ReplacePathResourceArns(DictValues: IParameterDictionary; const BucketOrAccessPointName: string);
begin
  var dummy: TArn;
  var keys := DictValues.Keys;
  var values := DictValues.Values;
  for var I := 0 to DictValues.Count - 1 do
    if TArn.TryParse(values[I], dummy) then
    begin
      DictValues[Keys[I]] := BucketOrAccessPointName;
      Exit;
    end;
end;

class function TS3ArnUtils.RequestContainsArn(ARequest: IRequest; var Arn: TArn): Boolean;
begin
  if (ARequest.OriginalRequest <> nil) and (ARequest.OriginalRequest is TCreateAccessPointRequest) then
  begin
    var createAccessPointRequest := ARequest.OriginalRequest as TCreateAccessPointRequest;
    if createAccessPointRequest.IsSetBucket and TArn.TryParse(createAccessPointRequest.Bucket.Trim.Trim(FSeparators), Arn) then
      Exit(True);
  end;

  Result := DictionaryContainsArn(ARequest.PathResources, Arn) or DictionaryContainsArn(ARequest.Parameters, Arn);
end;

end.
