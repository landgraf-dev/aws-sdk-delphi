unit AWSTests.S3.Simple.PutObjectTests;

interface

uses
  System.Generics.Collections, System.SysUtils, System.StrUtils, System.Classes, System.IOUtils,
  TestFramework, TestExtensions,
  AWSTests.TestBase,
  AWSTests.S3.TestUtils,
  AWS.Runtime.Model,
  AWS.RegionEndpoints,
  AWS.S3,
  AWS.S3.Enums;

type
  TPutObjectTests = class(TAWSTestBase<TAmazonS3Client, IAmazonS3>)
  private const
    TestContent = 'This is the content body!';
    TestKey = 'test-key.json.gz';
  private
    FBucketName: string;
    FFilePath: string;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure SimpleTest;
  end;

implementation

{ TPutObjectTests }

procedure TPutObjectTests.SetUp;
begin
  inherited;
  FFilePath := TPath.Combine(TPath.GetTempPath, 'PutObjectFile.txt');
  TFile.WriteAllText(FFilePath, 'This is some sample text.!!');
  FBucketName := TS3TestUtils.CreateBucket(Client, 'PutObjectTest');
end;

procedure TPutObjectTests.SimpleTest;
begin
  var Versioning := Client.GetBucketVersioning(FBucketName);
  var Status := Versioning.Status;
  CheckEquals(TBucketVersioningStatus.Off.Value, Status.Value);

  var objects := Client.ListObjects(FBucketName).Contents;
  Check(objects <> nil);
  var count := objects.Count;

  var key := 'test.txt';
  var contents := 'Sample content';
  var putRequest: IPutObjectRequest := TPutObjectRequest.Create;
  putRequest.BucketName := FBucketName;
  putRequest.Key := key;
  putRequest.ContentBody := contents;
  var putResult := Client.PutObject(putRequest);
  var etag := putResult.ETag;
  Check(etag <> '');

  objects := Client.ListObjects(FBucketName).Contents;
  Check(objects <> nil);
  CheckEquals(count + 1, objects.Count);

//  var metadataResult := Client.GetObjectMetadata(FBucketName, key);
//  CheckEquals(etag, metadataResult.ETag);

  Client.DeleteObject(FBucketName, key);

  objects := Client.ListObjects(FBucketName).Contents;
  Check(objects <> nil);
  CheckEquals(count, objects.Count);
end;

procedure TPutObjectTests.TearDown;
begin
  TS3TestUtils.DeleteS3BucketWithObjects(Client, FBucketName);
  if TFile.Exists(FFilePath) then
    TFile.Delete(FFilePath);
  inherited;
end;

initialization
  RegisterTest('AWS.S3', TPutObjectTests.Suite);
end.
