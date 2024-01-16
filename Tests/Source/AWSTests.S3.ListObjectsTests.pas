unit AWSTests.S3.ListObjectsTests;

interface

uses
  System.Generics.Collections, System.SysUtils, System.StrUtils, System.Classes,
  TestFramework, TestExtensions,
  AWSTests.TestBase,
  AWS.Runtime.Model,
  AWS.RegionEndpoints,
  AWS.S3,
  AWS.S3.Model.ByteRange,
  AWSTests.S3.TestUtils;

type
  TListObjectsTestSetup = class(TTestSetup)
  private
    class var FBucketName: string;
    class var keys: TList<string>;
    const Content = 'Test content';
  public
    procedure SetUp; override;
    procedure TearDown; override;
  end;

  TListObjectsTests = class(TAWSTestBase<TAmazonS3Client, IAmazonS3>)
  published
    procedure TestS3ObjectsContainBucketName;
    procedure TestListV2;
  end;

implementation

{ TListObjectsTestSetup }

procedure TListObjectsTestSetup.SetUp;
begin
  inherited;
  keys := TList<string>.Create;
  keys.Add('a/b/c');
  keys.Add('a/b/d');
  keys.Add('a/e');
  keys.Add('a/f');

  FBucketName := TS3TestUtils.CreateBucketWithWait(TListObjectsTests.Client);

  for var key in keys do
  begin
    if key.EndsWith('/') then
      Continue;

    var request: IPutObjectRequest := TPutObjectRequest.Create;
    request.BucketName := FBucketName;
    request.Key := key;
    request.ContentBody := Content;
    TListObjectsTests.Client.PutObject(request);
  end;
end;

procedure TListObjectsTestSetup.TearDown;
begin
  keys.Free;
  TS3TestUtils.DeleteS3BucketWithObjects(TListObjectsTests.Client, FBucketName);
  inherited;
end;

{ TListObjectsTests }

procedure TListObjectsTests.TestListV2;
begin
  var BucketName := TListObjectsTestSetup.FBucketName;
  var keys := TListObjectsTestSetup.keys;

  var request: IListObjectsV2Request := TListObjectsV2Request.Create;
  request.BucketName := BucketName;
  request.StartAfter := keys[0];
  request.FetchOwner := True;
  var response := Client.ListObjectsV2(request);
  Check(not response.IsTruncated);
  CheckEquals(keys.Count - 1, response.KeyCount);
  CheckEquals(keys.Count - 1, response.S3Objects.Count);
  ChecKEquals('', response.ContinuationToken);
  CheckNotNull(response.S3Objects[0].Owner);

  request := TListObjectsV2Request.Create;
  request.BucketName := BucketName;
  request.MaxKeys := 1;
  request.StartAfter := keys[0];
  request.FetchOwner := True;
  response := Client.ListObjectsV2(request);
  Check(response.IsTruncated);
  CheckEquals(1, response.KeyCount);
  CheckEquals(1, response.MaxKeys);
  CheckEquals(1, response.S3Objects.Count);
  CheckEquals('', response.ContinuationToken);
  Check(response.NextContinuationToken <> '');
  CheckNotNull(response.S3Objects[0].Owner);
//  CheckEquals(response.S3Objects[0].BucketName, bucketName);

  request := TListObjectsV2Request.Create;
  request.BucketName := BucketName;
  request.MaxKeys := 1;
  request.FetchOwner := True;
  request.ContinuationToken := response.NextContinuationToken;
  response := Client.ListObjectsV2(request);
  Check(response.IsTruncated);
  CheckEquals(1, response.KeyCount);
  CheckEquals(1, response.MaxKeys);
  Check(response.ContinuationToken <> '');
  Check(response.NextContinuationToken <> '');
  CheckEquals(1, response.S3Objects.Count);
  CheckNotNull(response.S3Objects[0].Owner);
//  CheckEquals(response.S3Objects[0].BucketName, bucketName);

  request := TListObjectsV2Request.Create;
  request.BucketName := BucketName;
  request.MaxKeys := 1;
  response := Client.ListObjectsV2(request);
  Check(response.IsTruncated);
  CheckEquals(1, response.KeyCount);
  CheckEquals(1, response.MaxKeys);
  CheckEquals(1, response.S3Objects.Count);
  Check(response.ContinuationToken = '');
  Check(response.NextContinuationToken <> '');
  CheckNull(response.S3Objects[0].Owner);
//  CheckEquals(response.S3Objects[0].BucketName, bucketName);

  request := TListObjectsV2Request.Create;
  request.BucketName := BucketName;
  request.MaxKeys := 1;
  request.ContinuationToken := response.NextContinuationToken;
  response := Client.ListObjectsV2(request);
  Check(response.IsTruncated);
  CheckEquals(1, response.KeyCount);
  CheckEquals(1, response.MaxKeys);
  Check(response.ContinuationToken <> '');
  Check(response.NextContinuationToken <> '');
  CheckEquals(1, response.S3Objects.Count);
  CheckNull(response.S3Objects[0].Owner);
//  CheckEquals(response.S3Objects[0].BucketName, bucketName);
end;

procedure TListObjectsTests.TestS3ObjectsContainBucketName;
begin
  var response := Client.ListObjects(TListObjectsTestSetup.FBucketName);

//  for var s3Object in response.S3Objects do
//    CheckEquals(s3Object.BucketName, TListObjectsTestSetup.FBucketName);
end;

initialization
  RegisterTest('AWS.S3', TListObjectsTestSetup.Create(TListObjectsTests.Suite));

end.
