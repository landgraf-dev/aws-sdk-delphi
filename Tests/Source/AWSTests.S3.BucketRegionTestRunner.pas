unit AWSTests.S3.BucketRegionTestRunner;

interface

uses
  System.SysUtils, System.DateUtils,
  AWS.Runtime.ClientConfig,
  AWS.RegionEndpoint,
  AWS.RegionEndpoints,
  AWS.S3,
  AWS.S3.Config,
  AWS.S3.Internal.AWSConfigsS3,
  AWS.S3.Util.BucketRegionDetector;

type
  TBucketRegionTestRunner = class
  private const
    TestObjectKey = 'test.txt';
    TestContent = 'some stuff';
    TemporaryRedirectMaxExpirationHours = 5;
    BucketPrefix = 's3-region-bucket-tests-';
  public
    USEast1Client: IAmazonS3;
    USWest1Client: IAmazonS3;
    GetObjectMetadataRequest: IGetObjectMetadataRequest;
    PutObjectRequest: IPutObjectRequest;
    PreSignedUrlRequest: IGetPreSignedUrlRequest;
    TestBucket: TBucket;
    TestBucketIsReady: Boolean;
  private
    FListBucketsResponse: IListBucketsResponse;
    FOriginalUseSignatureVersion4: Boolean;
    FOriginalUseSigV4SetExplicitly: Boolean;
    procedure CreateAndCheckTestBucket;
  public
    constructor Create(UseSigV4: Boolean; UseSigV4SetExplicitly: Boolean = false); reintroduce;
    destructor Destroy; override;

    function BucketName: string;
  end;

implementation

{ TBucketRegionTestRunner }

function TBucketRegionTestRunner.BucketName: string;
begin
  if TestBucket <> nil then
    Result := TestBucket.BucketName
  else
    Result := '';
end;

constructor TBucketRegionTestRunner.Create(UseSigV4, UseSigV4SetExplicitly: Boolean);
begin
  FOriginalUseSignatureVersion4 := TAWSConfigsS3.UseSignatureVersion4;
  FOriginalUseSigV4SetExplicitly := TAWSConfigsS3.UseSigV4SetExplicitly;
  TAWSConfigsS3.UseSignatureVersion4 := UseSigV4;
  TAWSConfigsS3.UseSigV4SetExplicitly := UseSigV4SetExplicitly;

  var usEast1ClientConfig: IClientConfig := TAmazonS3Config.Create;
  if UseSigV4 then
    usEast1ClientConfig.SignatureVersion := '4'
  else
    usEast1ClientConfig.SignatureVersion := '2';
  usEast1ClientConfig.RegionEndpoint := TRegionEndpoints.USEast1;
  USEast1Client := TAmazonS3Client.Create(usEast1ClientConfig);

//  var sessionCredentials := TAmazonSecurityTokenServiceClient.Create.GetSessionToken.Credentials;
//  USEast1ClientWithSessionCredentials := TAmazonS3Client.Create(sessionCredentials, usEast1ClientConfig);

  var usWest1ClientConfig: IClientConfig := TAmazonS3Config.Create;
  if UseSigV4 then
    usWest1ClientConfig.SignatureVersion := '4'
  else
    usWest1ClientConfig.SignatureVersion := '2';
  usWest1ClientConfig.RegionEndpoint := TRegionEndpoints.USWest1;

  USWest1Client := TAmazonS3Client.Create(usWest1ClientConfig);

  CreateAndCheckTestBucket;
  if TestBucketIsReady then
  begin
    GetObjectMetadataRequest := TGetObjectMetadataRequest.Create;
    GetObjectMetadataRequest.BucketName := BucketName;
    GetObjectMetadataRequest.Key := TestObjectKey;

    PutObjectRequest := TPutObjectRequest.Create;
    PutObjectRequest.BucketName := BucketName;
    PutObjectRequest.Key := TestObjectKey;
    PutObjectRequest.ContentBody := TestContent;

    PreSignedUrlRequest := TGetPreSignedUrlRequest.Create;
    PreSignedUrlRequest.BucketName := BucketName;
    PreSignedUrlRequest.Key := TBucketRegionTestRunner.TestObjectKey;
    PreSignedUrlRequest.Expires := Now.IncHour(1);
  end;
end;

procedure TBucketRegionTestRunner.CreateAndCheckTestBucket;
begin
  TestBucketIsReady := False;

  FListBucketsResponse := USWest1Client.ListBuckets;

  TestBucket := nil;
  for var Bucket in FListBucketsResponse.Buckets do
    if Bucket.BucketName.StartsWith(BucketPrefix) then
    begin
      TestBucket := Bucket;
      Break;
    end;

  if TestBucket = nil then
  begin
    // add ticks to bucket name because the bucket namespace is shared globally
    var bucketName := BucketPrefix + IntToStr(DateTimeToMilliseconds(Now));

    // Create the bucket but don't run the test.
    // If the bucket is ready the next time this test runs we'll test then.
    var Request: IPutBucketRequest := TPutBucketRequest.Create;
    Request.BucketRegionName := 'us-west-1';
    Request.BucketName := bucketName;
    USWest1Client.PutBucket(Request);
  end
  else
  if TestBucket.CreationDate.IncHour(TemporaryRedirectMaxExpirationHours) < Now then
  begin
    TBucketRegionDetector.BucketRegionCache.Clear;
    TestBucketIsReady := True;
  end;
end;

destructor TBucketRegionTestRunner.Destroy;
begin
  TAWSConfigsS3.UseSignatureVersion4 := FOriginalUseSignatureVersion4;
  TAWSConfigsS3.UseSigV4SetExplicitly := FOriginalUseSigV4SetExplicitly;
  inherited;
end;

end.
