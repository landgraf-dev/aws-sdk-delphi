unit AWS.S3.Util.BucketRegionDetector;

interface

uses
  System.Net.HttpClient, System.SysUtils, System.DateUtils,
  AWS.RegionEndpoint,
  AWS.RegionEndpoints,
  AWS.Internal.Util.LruCache,
  AWS.Internal.WebResponseData,
  AWS.Runtime.Credentials,
  AWS.Runtime.Exceptions,
  AWS.S3.Exception,
  AWS.S3.Enums,
  AWS.S3.ClientIntf,
  AWS.S3.Client.Extensions,
  AWS.S3.Internal.HttpUtil,
  AWS.S3.Model.GetPresignedUrlRequest,
  AWS.S3.Util.AmazonS3Uri,
  AWS.SDKUtils;

type
  TBucketRegionDetector = class
  private const
    BucketRegionCacheMaxEntries = 300;
    AuthorizationHeaderMalformedErrorCode = 'AuthorizationHeaderMalformed';
  private
    class var FBucketRegionCache: TLruCache<string, IRegionEndpointEx>;
    class constructor Create;
    class destructor Destroy;
  private
    class function GetBucketRegionNoPipeline(const BucketName: string; Credentials: IImmutableCredentials): string; static;
    class function GetCorrectRegion(RequestedBucketUri: TAmazonS3Uri; serviceException: EAmazonServiceException): string; static;
    class function CheckRegionAndUpdateCache(RequestedBucketUri: TAmazonS3Uri; const ActualRegion: string): string; static;
    class function GetHeadBucketPreSignedUrl(const BucketName: string; Credentials: IImmutableCredentials): string; static;
    class function GetUsEast1ClientFromCredentials(Credentials: IImmutableCredentials): IAmazonS3; static;
  public
    class property BucketRegionCache: TLruCache<string, IRegionEndpointEx> read FBucketRegionCache;
    class function DetectMismatchWithHeadBucketFallback(requestedBucketUri: TAmazonS3Uri;
      serviceException: EAmazonServiceException; credentials: IImmutableCredentials): string; static;
  end;

implementation

uses
  AWS.S3.Client;

{ TBucketRegionDetector }

class function TBucketRegionDetector.CheckRegionAndUpdateCache(RequestedBucketUri: TAmazonS3Uri;
  const ActualRegion: string): string;
begin
  var requestedRegion := '';
  if requestedBucketUri.Region <> nil then
    requestedRegion := requestedBucketUri.Region.SystemName;

  if (ActualRegion <> '') and not string.Equals(requestedRegion, actualRegion) then
  begin
    FBucketRegionCache.AddOrUpdate(requestedBucketUri.Bucket, TRegionEndpoint.GetBySystemName(actualRegion));
    Exit(ActualRegion);
  end;
  Result := '';
end;

class constructor TBucketRegionDetector.Create;
begin
  FBucketRegionCache := TLruCache<string, IRegionEndpointEx>.Create(BucketRegionCacheMaxEntries);
end;

class destructor TBucketRegionDetector.Destroy;
begin
  FBucketRegionCache.Free;
end;

class function TBucketRegionDetector.DetectMismatchWithHeadBucketFallback(requestedBucketUri: TAmazonS3Uri;
  serviceException: EAmazonServiceException; credentials: IImmutableCredentials): string;
begin
  Result := GetCorrectRegion(requestedBucketUri, serviceException);
  if Result = '' then
    Result := CheckRegionAndUpdateCache(requestedBucketUri, GetBucketRegionNoPipeline(requestedBucketUri.Bucket, credentials));
end;

class function TBucketRegionDetector.GetBucketRegionNoPipeline(const BucketName: string;
  Credentials: IImmutableCredentials): string;
begin
  var headBucketPreSignedUrl := GetHeadBucketPreSignedUrl(BucketName, Credentials);
  var s3Client := GetUsEast1ClientFromCredentials(credentials);
  var response := TAmazonS3HttpUtil.GetHead(s3Client, s3Client.Config, headBucketPreSignedUrl, THeaderKeys.XAmzBucketRegion);
  Result := response.HeaderValue;
end;

class function TBucketRegionDetector.GetCorrectRegion(RequestedBucketUri: TAmazonS3Uri;
  serviceException: EAmazonServiceException): string;
begin
  var regionFromExceptionBody := '';
  var regionFromExceptionHeader := '';
  var s3Exception: EAmazonS3Exception := nil;
  if serviceException is EAmazonS3Exception then
    s3Exception := EAmazonS3Exception(serviceException);
  if s3Exception <> nil then
  begin
    if string.Equals(s3Exception.ErrorCode, AuthorizationHeaderMalformedErrorCode) then
      regionFromExceptionBody := CheckRegionAndUpdateCache(requestedBucketUri, s3Exception.Region);

    if regionFromExceptionBody = '' then
    begin
      var innerException: EHttpErrorResponseException := nil;
      if s3Exception.InnerException is EHttpErrorResponseException then
        innerException := s3Exception.InnerException as EHttpErrorResponseException;
      if (innerException <> nil) and (innerException.Response <> nil) and innerException.Response.IsHeaderPresent(THeaderKeys.XAmzBucketRegion) then
        regionFromExceptionHeader := CheckRegionAndUpdateCache(RequestedBucketUri, innerException.Response.GetHeaderValue(THeaderKeys.XAmzBucketRegion));
    end;
  end;
  Result := regionFromExceptionBody;
  if Result = '' then
    Result := regionFromExceptionHeader;
end;

class function TBucketRegionDetector.GetHeadBucketPreSignedUrl(const BucketName: string;
  Credentials: IImmutableCredentials): string;
begin
  // all buckets accessible via USEast1
  var s3Client := GetUsEast1ClientFromCredentials(Credentials);

  // IMPORTANT:
  // This method is called as part of the request pipeline.
  // If the pipeline were to be invoked here it would cause
  // unwanted recursion.
  // As such, the only reason it's OK to use an S3Client here
  // is because this code is using a method that doesn't go
  // through the request pipeline: GetPreSignedURLInternal
  var request: IGetPresignedUrlRequest := TGetPreSignedUrlRequest.Create;
  request.BucketName := BucketName;
  request.Expires := IncDay(TTimeZone.Local.ToLocalTime(S3Client.Config.CorrectedUtcNow), 1);
  request.Verb := THttpVerb.HEAD;
  request.Protocol := TProtocol.HTTP;

  Result := TAmazonS3ClientExtensions.GetPreSignedURLInternal(s3Client, request, False);
end;

class function TBucketRegionDetector.GetUsEast1ClientFromCredentials(Credentials: IImmutableCredentials): IAmazonS3;
begin
  if Credentials = nil then
    Result := TAmazonS3Client.Create(TAnonymousAWSCredentials.Create, TRegionEndpoints.USEast1)
  else
  if Credentials.UseToken then
    Result := TAmazonS3Client.Create(Credentials.AccessKey, Credentials.SecretKey, Credentials.Token, TRegionEndpoints.USEast1)
  else
    Result := TAmazonS3Client.Create(Credentials.AccessKey, Credentials.SecretKey, TRegionEndpoints.USEast1);
end;

end.
