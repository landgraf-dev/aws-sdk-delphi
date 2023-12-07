unit AWSTests.S3.GetObjectTests;

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
  TGetObjectTestSetup = class(TTestSetup)
  private
    class var FBucketName: string;
    const Content = '0123456789';
  public
    procedure SetUp; override;
    procedure TearDown; override;
  end;

  TGetObjectTests = class(TAWSTestBase<TAmazonS3Client, IAmazonS3>)
  published
    procedure TestRangedGetWithStartAndEnd;
    procedure TestRangedGetWithByteRange;
  end;

implementation

{ TGetObjectTestSetup }

procedure TGetObjectTestSetup.SetUp;
begin
  inherited;
  var Client := TGetObjectTests.Client;
  FBucketName := TS3TestUtils.CreateBucketWithWait(Client);

  var Request: IPutObjectRequest := TPutObjectRequest.Create;
  Request.BucketName := FBucketName;
  Request.ContentBody := Content;
  Request.Key := 'TestObject';
  Client.PutObject(Request);
end;

procedure TGetObjectTestSetup.TearDown;
begin
  TS3TestUtils.DeleteS3BucketWithObjects(TGetObjectTests.Client, FBucketName);
  inherited;
end;

{ TGetObjectTests }

procedure TGetObjectTests.TestRangedGetWithByteRange;
begin
  var Request: IGetObjectRequest := TGetObjectRequest.Create;
  Request.BucketName := TGetObjectTestSetup.FBucketName;
  Request.ByteRange := TByteRange.Create('bytes=-2');
  Request.Key := 'TestObject';
  var Response := Client.GetObject(Request);

  var Reader := TStreamReader.Create(Response.ResponseStream);
  try
    var Text := Reader.ReadToEnd();
    CheckEquals('89', Text);
  finally
      Reader.Free;
  end;
end;

procedure TGetObjectTests.TestRangedGetWithStartAndEnd;
begin
  var Request: IGetObjectRequest := TGetObjectRequest.Create;
  Request.BucketName := TGetObjectTestSetup.FBucketName;
  Request.ByteRange := TByteRange.Create(1, 5);
  Request.Key := 'TestObject';
  var Response := Client.GetObject(Request);

  var Reader := TStreamReader.Create(Response.ResponseStream);
  try
    var Text := Reader.ReadToEnd();
    CheckEquals('12345', Text);
  finally
      Reader.Free;
  end;
end;

initialization
  RegisterTest('AWS.S3', TGetObjectTestSetup.Create(TGetObjectTests.Suite));
end.
