unit AWS.S3.Pipeline.PostMarshallHandler;

interface

uses
  System.SysUtils, System.Character, System.Generics.Collections, System.RegularExpressions,
  AWS.Arn,
  AWS.Internal.PipelineHandler,
  AWS.Internal.Request,
  AWS.Pipeline.EndpointResolver,
  AWS.RegionEndpoint,
  AWS.Runtime.Contexts,
  AWS.Runtime.Exceptions,
  AWS.SDKUtils,
  AWS.S3.ArnExtensions,
  AWS.S3.Config,
  AWS.S3.Enums,
  AWS.S3.Model.ListBucketsRequest,
  AWS.S3.Model.PutBucketRequest,
  AWS.S3.Model.DeleteBucketRequest,
  AWS.S3.Model.CopyObjectRequest,
  AWS.S3.Model.CopyPartRequest,
  AWS.S3.Model.WriteGetObjectResponseRequest;

type
  TAmazonS3PostMarshallHandler = class(TPipelineHandler)
  strict private const
    FS3ObjectLambdaServiceName = 's3-object-lambda';
    AccelerateEndpointSuffix = 's3-accelerate.amazonaws.com';
    AccelerateDualstackEndpointSuffix = 's3-accelerate.dualstack.amazonaws.com';
  strict private
    class var UnsupportedAccelerateRequestTypes: THashSet<TClass>;
    class var SseKeyHeaders: THashSet<string>;
    class var BucketValidationRegex: TRegEx;
    class var DnsValidationRegex1: TRegex;
    class var DnsValidationRegex2: TRegex;
  strict private
    class constructor Create;
    class destructor Destroy;

    class function AccelerateEndpoint(Config: TAmazonS3Config): string; static;

    class function ReplaceHost(Uri: IUri; const NewHost: string): string;
    class function GetBucketName(ResourcePath: string): string; static;
    class procedure ValidateS3AccessPoint(const S3Arn: TArn; S3Config: TAmazonS3Config; Region: IRegionEndpointEx); static;
    class procedure ValidateS3ObjectLambdaAccessPoint(const Arn: TArn; S3Config: TAmazonS3Config; Region: IRegionEndpointEx); static;
    class procedure ValidateOutpostAccessPoint(const Arn: TArn; S3Config: TAmazonS3Config; Region: IRegionEndpointEx); static;
    class function IsDnsCompatibleBucketName(const BucketName: string): Boolean; static;
    class function BucketNameContainsPeriod(const BucketName: string): Boolean; static;
    class function GetAccelerateEndpoint(const BucketName: string; Config: TAmazonS3Config): IUri; static;
    class procedure ValidateHttpsOnlyHeaders(Request: IRequest); static;
    class procedure ValidateSseHeaderValue(Request: IRequest); static;
    class procedure ValidateSseKeyHeaders(Request: IRequest); static;
    class function HasValidFips(const Arn: TArn;S3Config: TAmazonS3Config; Region: IRegionEndpointEx): Boolean; static;
    class function IsValidBucketName(const BucketName: string): Boolean; static;
    class function StringContainsAny(const ToCheck: string; const Values: array of string): Boolean; static;
  strict private
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    class procedure ProcessRequestHandlers(AExecutionContext: TExecutionContext); static;
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3PostMarshallHandler }

class function TAmazonS3PostMarshallHandler.AccelerateEndpoint(Config: TAmazonS3Config): string;
begin
  if Config.UseDualstackEndpoint then
    Result := AccelerateDualstackEndpointSuffix
  else
    Result := AccelerateEndpointSuffix;
end;

class function TAmazonS3PostMarshallHandler.BucketNameContainsPeriod(const BucketName: string): Boolean;
begin
  Result := bucketName.IndexOf('.') >= 0;
end;

class constructor TAmazonS3PostMarshallHandler.Create;
begin
  UnsupportedAccelerateRequestTypes := THashSet<TClass>.Create;
  UnsupportedAccelerateRequestTypes.Add(TListBucketsRequest);
  UnsupportedAccelerateRequestTypes.Add(TPutBucketRequest);
  UnsupportedAccelerateRequestTypes.Add(TDeleteBucketRequest);
  UnsupportedAccelerateRequestTypes.Add(TCopyObjectRequest);
  UnsupportedAccelerateRequestTypes.Add(TCopyPartRequest);

  SseKeyHeaders := THashSet<string>.Create;
  SseKeyHeaders.Add(THeaderKeys.XAmzSSECustomerKeyHeader);
  SseKeyHeaders.Add(THeaderKeys.XAmzServerSideEncryptionAwsKmsKeyIdHeader);

  BucketValidationRegex := TRegEx.Create('^[A-Za-z0-9._\-]+$', [roCompiled]);
  DnsValidationRegex1 := TRegex.Create('^[a-z0-9][a-z0-9.-]+[a-z0-9]$', [roCompiled]);
  DnsValidationRegex2 := TRegEx.Create('(\\d+\\.){3}\\d+', [roCompiled]);

end;

class destructor TAmazonS3PostMarshallHandler.Destroy;
begin
  UnsupportedAccelerateRequestTypes.Free;
  SseKeyHeaders.Free;
end;

class function TAmazonS3PostMarshallHandler.GetAccelerateEndpoint(const BucketName: string; Config: TAmazonS3Config): IUri;
begin
  var Scheme := 'https://';
  if Config.UseHttp then
    Scheme := 'http://';
  Result := TUri.Create(Format('%s%s.%s',
    [Scheme, BucketName, AccelerateEndpoint(Config)]));
end;

class function TAmazonS3PostMarshallHandler.GetBucketName(ResourcePath: string): string;
begin
  ResourcePath := ResourcePath.Trim.Trim(['/', '?']);

  /// If the resource is an outposts resource, we want to handle getting the bucket name
  /// later and just return the trimmed path.
  if TArn.IsArn(resourcePath) and TArnExtensions.IsOutpostArn(TArn.Parse(resourcePath)) then
    Exit(ResourcePath);

  var parts := resourcePath.Split(['/', '?']);
  var bucketName: string := '';
  if Length(parts) > 0 then
    bucketName := parts[0];

  // Check to see if the bucket name is an arn using a '/' to break up the access point prefix and identifier.
  // If it is then bucketName will currently be missing the resource identifier which is the next token in the split.
  //
  // For example a resource path using an arn to get an object will look like this:
  // arn:aws:s3:us-west-2:12345689:accesspoint/mybucket/myobject.txt.
  // We need this method to return "arn:aws:s3:us-west-2:12345689:accesspoint/mybucket" but by splitting on "/"
  // only "arn:aws:s3:us-west-2:12345689:accesspoint" is captured. This if block checks to see it is the resource path has an access point arn and then
  // grab the bucket name which is the next token in the split.
  if TArn.IsArn(bucketName) and bucketName.EndsWith(TArnExtensions.ResourceTypeAccessPoint) then
    bucketName := bucketName + '/' + parts[1];

  Result := bucketName;
end;

class function TAmazonS3PostMarshallHandler.HasValidFips(const Arn: TArn; S3Config: TAmazonS3Config;
  Region: IRegionEndpointEx): Boolean;
begin
  if Arn.Region.Contains('fips') then
    raise EAmazonClientException.Create('Invalid ARN, FIPS region not allowed in ARN');

  if Region.SystemName.StartsWith('fips-') then
  begin
    if Region.SystemName.Contains(Arn.Region) then
      Exit(True)
    else
    if s3Config.UseArnRegion then
      raise EAmazonClientException.Create('Invalid configuration, FIPS region does not match ARN region');
  end;

  Result := False;
end;

procedure TAmazonS3PostMarshallHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

class function TAmazonS3PostMarshallHandler.IsDnsCompatibleBucketName(const BucketName: string): Boolean;
begin
  // Check basic validation
  if not IsValidBucketName(bucketName) then
    Exit(False);

  // Bucket names should between 3 and 63 characters
  if bucketName.Length > 63 then
    Exit(False);

  // Bucket names must only contain lowercase letters, numbers, dots, and dashes
  // and must start and end with a lowercase letter or a number
  if not dnsValidationRegex1.IsMatch(bucketName) then
    Exit(False);

  // Bucket names should not be formatted like an IP address (e.g., 192.168.5.4)
  if dnsValidationRegex2.IsMatch(bucketName) then
    Exit(False);

  // Bucket names cannot contain two adjacent periods or dashes next to periods
  if StringContainsAny(bucketName, ['..', '-.', '.-']) then
    Exit(False);

  Result := True;
end;

class function TAmazonS3PostMarshallHandler.IsValidBucketName(const BucketName: string): Boolean;
begin
  // Check if bucket is null/empty string
  if string.IsNullOrEmpty(bucketName) then
    Exit(False);

  // Check if the bucket name is between 3 and 255 characters
  if (bucketName.Length < 3) or (bucketName.Length > 255) then
    Exit(False);

  // Check if the bucket contains a newline character
  if bucketName.IndexOf(#10) >= 0 then
    Exit(False);

  // Check if bucket only contains:
  //  uppercase letters, lowercase letters, numbers
  //  periods (.), underscores (_), dashes (-)
  if not bucketValidationRegex.IsMatch(bucketName) then
    Exit(False);

  Result := True;
end;

procedure TAmazonS3PostMarshallHandler.PreInvoke(AExecutionContext: TExecutionContext);
begin
  ProcessRequestHandlers(AExecutionContext);
end;

class procedure TAmazonS3PostMarshallHandler.ProcessRequestHandlers(AExecutionContext: TExecutionContext);
begin
  var request := AExecutionContext.RequestContext.Request;
  var config := AExecutionContext.RequestContext.ClientConfig;

  // If the marshalled request has the SSE header and it is set to KMS,
  // force SigV4 for this request.
  // Current operations that may set this header:
  //  CopyObject, CopyPart, InitiateMultipart, PutObject
  var sseHeaderValue: string;
  if request.Headers.TryGetValue(THeaderKeys.XAmzServerSideEncryptionHeader, sseHeaderValue) and
    (sseHeaderValue = TServerSideEncryption.AWSKMS.Value) then
    request.UseSigV4 := True;

  var bucketResourcePathToken := GetBucketName(request.ResourcePath);
  if string.IsNullOrEmpty(bucketResourcePathToken) then
    Exit;

  if not (config is TAmazonS3Config) then
    raise EAmazonClientException.Create('Current config object is not of type AmazonS3Config');
  var s3Config := config as TAmazonS3Config;

  // If a ServiceURL is set the config ClientRegion should be null. Under this case
  // the region needs to be determined from the ServiceURL.
  var regionEndpoint := config.RegionEndpoint;
  if (regionEndpoint = nil) and not string.IsNullOrEmpty(config.ServiceURL) then
  begin
    var regionName := TAWSSDKUtils.DetermineRegion(config.ServiceURL);
    regionEndpoint := TRegionEndpoint.GetBySystemName(regionName);
  end;

  var isHttp: Boolean;
  var removeBucketFromResourcePath := False;

  if TArn.IsArn(bucketResourcePathToken) then
  begin
    var accessPoint: string;
    var s3Arn := TArn.Parse(bucketResourcePathToken);
    var ubUri: string;
    if TArnExtensions.IsService(s3Arn, 's3') and TArnExtensions.TryParseAccessPoint(s3Arn, accessPoint) then
    begin
      ValidateS3AccessPoint(s3Arn, s3Config, regionEndpoint);
      if not string.IsNullOrEmpty(config.ServiceURL) then
      begin
        var ub: IUri := TEndpointResolver.DetermineEndpoint(s3Config, request);
        isHttp := SameText(ub.Scheme, 'http');
        var newHost := Format('{%s}-{%s}.', [accessPoint, s3Arn.AccountId]) + ub.Host;
        ubUri := ReplaceHost(ub, newHost);
      end
      else
      begin
        isHttp := config.UseHttp;
        var scheme := 'https';
        if isHttp then
          scheme := 'http';
        var fipsSuffix := '';
        if (RegionEndpoint <> nil) and RegionEndpoint.SystemName.ToLower.Contains('flips') then
          fipsSuffix := '-fips';

        var dualStack := '';
        if config.UseDualStackEndpoint then
          dualStack := 'dualstack';
        ubUri := Format('%s://%s-%s.s3-accesspoint%s%s.%s.%s',
          [scheme, accessPoint, s3Arn.AccountId, fipsSuffix, dualstack, s3Arn.Region, config.RegionEndpoint.PartitionDnsSuffix]);
      end;
      request.Endpoint := TUri.Create(ubUri);
    end
    else
    if TArnExtensions.IsService(s3Arn, FS3ObjectLambdaServiceName) and TArnExtensions.TryParseAccessPoint(s3Arn, accessPoint) then
    begin
      ValidateS3ObjectLambdaAccessPoint(s3Arn, s3Config, regionEndpoint);

      if not string.IsNullOrEmpty(config.ServiceURL) then
      begin
        var ub: IUri := TEndpointResolver.DetermineEndpoint(s3Config, request);
        isHttp := SameText(ub.Scheme, 'http');
        var newHost := Format('{%s}-{%s}.', [accessPoint, s3Arn.AccountId]) + ub.Host;
        ubUri := ReplaceHost(ub, newHost);
      end
      else
      begin
        isHttp := config.UseHttp;
        var scheme := 'https';
        if isHttp then
          scheme := 'http';
        var fipsSuffix := '';
        if (RegionEndpoint <> nil) and RegionEndpoint.SystemName.ToLower.Contains('flips') then
          fipsSuffix := '-fips';

        ubUri := Format('%s://%s-%s.%s%s.%s.%s',
          [scheme, accessPoint, s3Arn.AccountId, FS3ObjectLambdaServiceName, fipsSuffix, s3Arn.Region, config.RegionEndpoint.PartitionDnsSuffix]);
      end;
      request.Endpoint := TUri.Create(ubUri);
    end
    else
    if TArnExtensions.IsOutpostArn(s3Arn) then
    begin
      var outpost := TArnExtensions.ParseOutpost(s3Arn);
      ValidateOutpostAccessPoint(s3Arn, s3Config, regionEndpoint);
      var region: string;
      if s3Config.UseArnRegion then
        region := s3Arn.Region
      else
        region := regionEndpoint.SystemName;
      bucketResourcePathToken := outpost.FullAccessPointName;


      if not string.IsNullOrEmpty(config.ServiceURL) then
      begin
        var ub: IUri := TEndpointResolver.DetermineEndpoint(s3Config, request);
        isHttp := SameText(ub.Scheme, 'http');
        var newHost := Format('%s-%s.%s.', [outpost.AccessPointName, s3Arn.AccountId, outpost.OutpostId]) + ub.Host;
        ubUri := ReplaceHost(ub, newHost);
      end
      else
      begin
        isHttp := config.UseHttp;
        var scheme := 'https';
        if isHttp then
          scheme := 'http';
        ubUri := Format('%s://{%s}-{%s}.{%s}.s3-outposts.%s.%s',
          [scheme, outpost.AccessPointName, s3Arn.AccountId, outpost.OutpostId, region, config.RegionEndpoint.PartitionDnsSuffix]);
      end;
      request.Endpoint := TUri.Create(ubUri);
    end
    else
      raise EAmazonClientException.Create('Invalid ARN specified for bucket name. Only access point ARNs are allowed for the value of bucket name.');

    request.OverrideSigningServiceName := s3Arn.Service;
    // The access point arn can be using a region different from the configured region for the service client.
    // If so be sure to set the authentication region so the signer will use the correct region.
    request.AuthenticationRegion := s3Arn.Region;
    request.UseSigV4 := True;
    removeBucketFromResourcePath := True;
  end
  else
  begin
    // If path style is not forced and the bucket name is DNS
    // compatible modify the endpoint to use virtual host style
    // addressing
    var bucketIsDnsCompatible := IsDnsCompatibleBucketName(bucketResourcePathToken);
    var ub: IUri := TEndpointResolver.DetermineEndpoint(s3Config, request);
    isHttp := SameText(ub.Scheme, 'http');

    if not s3Config.ForcePathStyle and bucketIsDnsCompatible then
    begin
      // If using HTTPS, bucketName cannot contain a period
      if isHttp or (bucketResourcePathToken.IndexOf('.') < 0) then
      begin
        // Add bucket to host
        request.Endpoint := TUri.Create(ReplaceHost(ub, bucketResourcePathToken + '.' + ub.Host));
        removeBucketFromResourcePath := true;
      end;
    end;

    if request.OriginalRequest.ClassType = TWriteGetObjectResponseRequest then
    begin
      if not string.IsNullOrEmpty(config.ServiceURL) then
      begin
        ub := TEndpointResolver.DetermineEndpoint(s3Config, request);
        isHttp := SameText(ub.Scheme, 'http');
      end
      else
      begin
        isHttp := s3Config.UseHttp;
        var scheme := 'https';
        if isHttp then
          scheme := 'http';
        var region := regionEndpoint.SystemName;
        if regionEndpoint.SystemName = 'us-east-1-regional' then
          region := 'us-east-1';
        var requestRoute := '';
        request.Headers.TryGetValue('x-amz-request-route', requestRoute);
        ub := TUri.Create(Format('%s://%s.%s.%s.%s',
         [scheme, requestRoute, FS3ObjectLambdaServiceName, region, config.RegionEndpoint.PartitionDnsSuffix]));
      end;

      request.Endpoint := ub;
      request.OverrideSigningServiceName := FS3ObjectLambdaServiceName;
      request.UseSigV4 := True;
    end;

    if s3Config.UseAccelerateEndpoint then
    begin
      // Validate if bucket name is accelerate compatible and enable acceleration by using
      // Accelerate endpoint for this request

      if not bucketIsDnsCompatible or BucketNameContainsPeriod(bucketResourcePathToken) then
        raise EAmazonClientException.Create(
          'S3 accelerate is enabled for this request but the bucket name is not accelerate compatible.' +
          ' The bucket name must be DNS compatible (http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html)' +
          ' and must not contain any period (.) characters to be accelerate compatible.');

      var originalRequest := request.OriginalRequest;
      var accelerateSupportedApi := not UnsupportedAccelerateRequestTypes.Contains(originalRequest.ClassType);

      // Skip requests which are not supported
      if accelerateSupportedApi then
      begin
        request.Endpoint := GetAccelerateEndpoint(bucketResourcePathToken, s3Config);

        if request.UseSigV4 and (s3Config.RegionEndpoint <> nil) then
          request.AlternateEndpoint := s3Config.RegionEndpoint;
      end;
    end;
  end;

  if removeBucketFromResourcePath then
  begin
    // Remove bucket from resource path but retain in canonical resource
    // prefix, so it gets included when we sign the request later
    var resourcePath := request.ResourcePath;
    var canonicalBucketName := '/' + bucketResourcePathToken;
    if resourcePath.IndexOf(canonicalBucketName) = 0 then
      resourcePath := resourcePath.Substring(canonicalBucketName.Length);

    request.ResourcePath := resourcePath;
    request.CanonicalResourcePrefix := canonicalBucketName;
  end;

  // Some parameters should not be sent over HTTP, just HTTPS
  if isHttp then
    ValidateHttpsOnlyHeaders(request);
end;

class function TAmazonS3PostMarshallHandler.ReplaceHost(Uri: IUri; const NewHost: string): string;
begin
  Result := StringReplace(Uri.AbsoluteUri, '//' + Uri.Host, '//' + NewHost, [rfIgnoreCase]);
end;

class function TAmazonS3PostMarshallHandler.StringContainsAny(const ToCheck: string; const Values: array of string): Boolean;
begin
  for var Value in Values do
    if ToCheck.IndexOf(value) >= 0 then
      Exit(True);
  Result := False;
end;

class procedure TAmazonS3PostMarshallHandler.ValidateHttpsOnlyHeaders(Request: IRequest);
begin
  ValidateSseKeyHeaders(Request);
  ValidateSseHeaderValue(Request);
end;

class procedure TAmazonS3PostMarshallHandler.ValidateOutpostAccessPoint(const Arn: TArn; S3Config: TAmazonS3Config;
  Region: IRegionEndpointEx);
begin
  if s3Config.UseAccelerateEndpoint then
    raise EAmazonClientException.Create('Invalid configuration outpost access points do not support accelerate');

  if s3Config.UseDualstackEndpoint then
    raise EAmazonClientException.Create('Invalid configuration outpost access points do not support dualstack');

  if string.IsNullOrEmpty(arn.AccountId) then
    raise EAmazonClientException.Create('Account ID is missing in outpost access point ARN');

  if string.IsNullOrEmpty(arn.Region) then
    raise EAmazonClientException.Create('AWS region is missing in outpost access point ARN');

  if not string.Equals(region.PartitionName, arn.Partition) then
    raise EAmazonClientException.Create('Invalid configuration, cross partition outpost access point ARN');

  if region.SystemName.StartsWith('fips-') or (s3Config.UseArnRegion and Arn.Region.StartsWith('fips-')) then
    raise EAmazonClientException.Create('Invalid configuration outpost access points do not support Fips- regions');

  if not s3Config.UseArnRegion and not string.Equals(arn.Region, region.SystemName) then
    raise EAmazonClientException.Create('Invalid configuration, cross region outpost access point ARN');
end;

class procedure TAmazonS3PostMarshallHandler.ValidateS3AccessPoint(const S3Arn: TArn; S3Config: TAmazonS3Config;
  Region: IRegionEndpointEx);
begin
  if s3Config.UseAccelerateEndpoint then
    raise EAmazonClientException.Create(
      'The request is using an access point ARN for the bucket name and the S3 service client is configured to use accelerate endpoints which is not supported. ' +
      'To use this access point create a new S3 service client with the UseAccelerateEndpoint property set to false.');

  if string.IsNullOrEmpty(s3Arn.AccountId) then
    raise EAmazonClientException.Create('Account ID is missing in access point ARN');

  if string.IsNullOrEmpty(s3Arn.Region) then
    raise EAmazonClientException.Create('AWS region is missing in access point ARN');

  if HasValidFips(s3Arn, s3Config, region) then
    Exit;

  if region.PartitionName <> s3Arn.Partition then
    raise EAmazonClientException.Create('The access point used in the request is in a different AWS partition then the region configured for the AmazonS3Client.');

  if s3Arn.Region = region.SystemName then
    Exit;

  if not s3Config.UseArnRegion then
    raise EAmazonClientException.CreateFmt(
      'The S3 service client is configured for region %s but the access point is in %s. ' +
      'By default the SDK doesn''t allow cross region calls. If you want to enable cross region calls set the environment AWS_S3_USE_ARN_REGION or the AmazonS3Config.UseArnRegion property to value "true".',
      [region.SystemName, s3Arn.Region]);
end;

class procedure TAmazonS3PostMarshallHandler.ValidateS3ObjectLambdaAccessPoint(const Arn: TArn; S3Config: TAmazonS3Config;
  Region: IRegionEndpointEx);
begin
  var arnString := Arn.ToString;
  for var ch in arnString do
    if not ch.IsLetterOrDigit and (ch <> ':') and (ch <> '/') and (ch <> '-') then
      raise EAmazonClientException.Create('Invalid Arn. S3ObjectLambda arns can only contain alphanumeric characters, :, / and -');

  if Length(Arn.Resource.Split([':'])) > 2 then
    raise EAmazonClientException.Create('Invalid ARN, Access Point ARN contains sub resources');

  if s3Config.UseAccelerateEndpoint then
    raise EAmazonClientException.Create('Invalid configuration S3ObjectLambda access points do not support accelerate');

  if s3Config.UseDualstackEndpoint then
    raise EAmazonClientException.Create('Invalid configuration S3ObjectLambda access points do not support dualstack');

  if HasValidFips(arn, s3Config, region) then // will throw on invalid configs
    Exit;

  if string.IsNullOrEmpty(arn.AccountId) then
    raise EAmazonClientException.Create('Account ID is missing in S3ObjectLambda access point ARN');

  if string.IsNullOrEmpty(arn.Region) then
    raise EAmazonClientException.Create('AWS region is missing in S3ObjectLambda access point ARN');

  if not string.Equals(region.PartitionName, arn.Partition) then
    raise EAmazonClientException.Create('Invalid configuration, cross partition S3ObjectLambda access point ARN');

  if not s3Config.UseArnRegion and not string.Equals(arn.Region, region.SystemName) then
    raise EAmazonClientException.Create('Invalid configuration, cross region S3ObjectLambda access point ARN');
end;

class procedure TAmazonS3PostMarshallHandler.ValidateSseHeaderValue(Request: IRequest);
begin
  var sseHeaderValue: string;
  if Request.Headers.TryGetValue(THeaderKeys.XAmzServerSideEncryptionHeader, sseHeaderValue) and
    string.Equals(sseHeaderValue, TServerSideEncryptionMethod.AWSKMS.Value) then
    raise EAmazonClientException.Create('Request specifying Server Side Encryption with AWS KMS managed keys can only be transmitted over HTTPS');
end;

class procedure TAmazonS3PostMarshallHandler.ValidateSseKeyHeaders(Request: IRequest);
begin
  var foundHttpsOnlyHeaders: TArray<string>;
  var Found := TList<string>.Create;
  try
    for var Kvp in Request.Headers do
    begin
      if (Kvp.Value <> '') and SseKeyHeaders.Contains(Kvp.Key) then
        Found.Add(Kvp.Key);
    end;
    foundHttpsOnlyHeaders := Found.ToArray;
  finally
    Found.Free;
  end;

  if Length(foundHttpsOnlyHeaders) > 0 then
  begin
    var message := string.Format('Request contains headers which can only be transmitted over HTTPS: %s',
      [string.Join(', ', foundHttpsOnlyHeaders)]);
    raise EAmazonClientException.Create(message);
  end;
end;

end.
