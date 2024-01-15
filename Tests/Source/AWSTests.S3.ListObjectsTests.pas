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

procedure TListObjectsTests.TestS3ObjectsContainBucketName;
begin
  var response := Client.ListObjects(TListObjectsTestSetup.FBucketName);

//  for var s3Object in response.S3Objects do
//    CheckEquals(s3Object.BucketName, TListObjectsTestSetup.FBucketName);
end;

initialization
  RegisterTest('AWS.S3', TListObjectsTestSetup.Create(TListObjectsTests.Suite));

end.
