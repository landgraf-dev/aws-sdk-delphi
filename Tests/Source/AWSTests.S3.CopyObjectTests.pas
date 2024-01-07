unit AWSTests.S3.CopyObjectTests;

interface

uses
  System.Generics.Collections, System.SysUtils, System.StrUtils, System.Classes, System.IOUtils, System.DateUtils,
  TestFramework, TestExtensions,
  AWSTests.TestBase,
  AWSTests.S3.TestUtils,
  AWSTests.UtilityMethods,
  AWS.Runtime.Model,
  AWS.RegionEndpoints,
  AWS.S3,
  AWS.S3.Exception,
  AWS.S3.Enums;

type
  TCopyObjectTests = class(TAWSTestBase<TAmazonS3Client, IAmazonS3>)
  private const
    testContent = 'This is the content body!';
    testKey = 'testKey.txt';
  private
    FEastBucketName: string;
    FWestBucketName: string;
    FUsEastClient: IAmazonS3;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestCopyObject;
  end;

implementation

{ TCopyObjectTests }

procedure TCopyObjectTests.SetUp;
begin
  inherited;
  FUsEastClient := TAmazonS3Client.Create(TRegionEndpoints.USEast1);
  FEastBucketName := TS3TestUtils.CreateBucketWithWait(FUsEastClient);
  var Request: IPutObjectRequest := TPutObjectRequest.Create;
  Request.BucketName := FEastBucketName;
  Request.Key := TestKey;
  Request.ContentBody := TestContent;
  FUsEastClient.PutObject(Request);
  var UsWestClient := TAmazonS3Client.Create(TRegionEndpoints.USWest1);
  FWestBucketName := TS3TestUtils.CreateBucketWithWait(UsWestClient);
end;

procedure TCopyObjectTests.TearDown;
begin
  TS3TestUtils.DeleteS3BucketWithObjects(Client, FEastBucketName);
  TS3TestUtils.DeleteS3BucketWithObjects(Client, FWestBucketName);
  inherited;
end;

procedure TCopyObjectTests.TestCopyObject;
begin
  var request: ICopyObjectRequest := TCopyObjectRequest.Create;
  request.SourceBucket := FEastBucketName;
  request.SourceKey := TestKey;
  request.DestinationBucket := FWestBucketName;
  request.DestinationKey := TestKey;
  var response := FUsEastClient.CopyObject(request);
end;

initialization
  RegisterTest('AWS.S3', TCopyObjectTests.Suite);

end.
