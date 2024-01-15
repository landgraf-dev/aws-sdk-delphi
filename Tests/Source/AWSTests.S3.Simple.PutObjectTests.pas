unit AWSTests.S3.Simple.PutObjectTests;

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
  TPutObjectTests = class(TAWSTestBase<TAmazonS3Client, IAmazonS3>)
  private const
    TestContent = 'This is the content body!';
    TestKey = 'test-key.json.gz';
  private
    FBucketName: string;
    FFilePath: string;
    function CreatePutObjectRequest: IPutObjectRequest;
  protected
    procedure SimplePutObjectTest(UseChunkEncoding: Boolean);
    procedure SimplePathPutObjectTest(UseChunkEncoding: Boolean);
    procedure GzipTest(UseChunkEncoding: Boolean);
    procedure PutObjectWithContentEncoding(UseChunkEncoding: Boolean);
    procedure PutObjectWithContentEncodingIdentity(UseChunkEncoding: Boolean);
    procedure PutObjectWithoutContentEncoding(UseChunkEncoding: Boolean);

    function TestPutAndGet(Request: IPutObjectRequest): IGetObjectMetadataResponse;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure SimpleTest;
    procedure TestHttpErrorResponseUnmarshalling;
    procedure SimplePutObjectTest_Chunked;
    procedure SimplePutObjectTest_NotChunked;
    procedure SimplePathPutObjectTest_Chunked;
    procedure SimplePathPutObjectTest_NotChunked;
    procedure GzipTest_Chunked;
    procedure GzipTest_NotChunked;
    procedure PutObjectWithContentEncoding_Chunked;
    procedure PutObjectWithContentEncoding_NotChunked;
    procedure PutObjectWithContentEncodingIdentity_Chunked;
    procedure PutObjectWithContentEncodingIdentity_NotChunked;
    procedure PutObjectWithoutContentEncoding_Chunked;
    procedure PutObjectWithoutContentEncoding_NotChunked;
  end;

implementation

{ TPutObjectTests }

function TPutObjectTests.CreatePutObjectRequest: IPutObjectRequest;
begin
  Result := TPutObjectRequest.Create;
  Result.BucketName := FBucketName;
  Result.Key := IntToStr(DateTimeToFileDate(Now)) + TestKey;
  Result.ContentBody := TestContent;
end;

procedure TPutObjectTests.GzipTest(UseChunkEncoding: Boolean);
begin
  var request := CreatePutObjectRequest;
  request.UseChunkEncoding := UseChunkEncoding;
  request.Headers.ContentEncoding := 'gzip';

  TestPutAndGet(request);
end;

procedure TPutObjectTests.GzipTest_Chunked;
begin
  GzipTest(True);
end;

procedure TPutObjectTests.GzipTest_NotChunked;
begin
  GzipTest(False);
end;

procedure TPutObjectTests.PutObjectWithContentEncoding(UseChunkEncoding: Boolean);
begin
  var request := CreatePutObjectRequest;
  request.UseChunkEncoding := UseChunkEncoding;
  request.Headers.ContentEncoding := 'gzip';
  request.Headers.ContentDisposition := 'disposition';

  var meta := TestPutAndGet(request);
  CheckEquals('disposition', meta.Headers.ContentDisposition);
  CheckEquals('gzip', meta.Headers.ContentEncoding);
end;

procedure TPutObjectTests.PutObjectWithContentEncodingIdentity(UseChunkEncoding: Boolean);
begin
  var request := CreatePutObjectRequest;
  request.UseChunkEncoding := UseChunkEncoding;
  request.Headers.ContentEncoding := 'identity';
  request.Headers.ContentDisposition := 'disposition';

  var meta := TestPutAndGet(request);
  CheckEquals('disposition', meta.Headers.ContentDisposition);
  CheckEquals('identity', meta.Headers.ContentEncoding);
end;

procedure TPutObjectTests.PutObjectWithContentEncodingIdentity_Chunked;
begin
  PutObjectWithContentEncodingIdentity(True);
end;

procedure TPutObjectTests.PutObjectWithContentEncodingIdentity_NotChunked;
begin
  PutObjectWithContentEncodingIdentity(False);
end;

procedure TPutObjectTests.PutObjectWithContentEncoding_Chunked;
begin
  PutObjectWithContentEncoding(True);
end;

procedure TPutObjectTests.PutObjectWithContentEncoding_NotChunked;
begin
  PutObjectWithContentEncoding(False);
end;

procedure TPutObjectTests.PutObjectWithoutContentEncoding(UseChunkEncoding: Boolean);
begin
  var request := CreatePutObjectRequest;
  request.UseChunkEncoding := UseChunkEncoding;
  request.Headers.ContentDisposition := 'disposition';
  var meta := TestPutAndGet(request);
  CheckEquals('disposition', meta.Headers.ContentDisposition);
  CheckEquals('', meta.Headers.ContentEncoding);
end;

procedure TPutObjectTests.PutObjectWithoutContentEncoding_Chunked;
begin
  PutObjectWithoutContentEncoding(True);
end;

procedure TPutObjectTests.PutObjectWithoutContentEncoding_NotChunked;
begin
  PutObjectWithoutContentEncoding(False);
end;

procedure TPutObjectTests.SetUp;
begin
  inherited;
  FFilePath := TPath.Combine(TPath.GetTempPath, 'PutObjectFile.txt');
  TFile.WriteAllText(FFilePath, 'This is some sample text.!!');
  FBucketName := TS3TestUtils.CreateBucket(Client, 'PutObjectTest', True);
end;

procedure TPutObjectTests.SimplePathPutObjectTest(UseChunkEncoding: Boolean);
var
  request: IPutObjectRequest;
begin
  request := TPutObjectRequest.Create;
  request.BucketName := FBucketName;
  request.FilePath := FFilePath;
  request.ACL := TObjectCannedACL.AuthenticatedRead;
  request.UseChunkEncoding := UseChunkEncoding;
  var response := Client.PutObject(request);
  Status(Format('S3 generated ETag: %s', [response.ETag]));
  Check(response.ETag.Length > 0, 'etag empty');
end;

procedure TPutObjectTests.SimplePathPutObjectTest_Chunked;
begin
  SimplePathPutObjectTest(True);
end;

procedure TPutObjectTests.SimplePathPutObjectTest_NotChunked;
begin
  SimplePathPutObjectTest(False);
end;

procedure TPutObjectTests.SimplePutObjectTest(UseChunkEncoding: Boolean);
var
  request: IPutObjectRequest;
begin
  request := TPutObjectRequest.Create;
  request.BucketName := FBucketName;
  request.Key := 'contentBodyPut' + IntToStr(Random(MaxInt));
  request.ContentBody := TestContent;
  request.ACL := TObjectCannedACL.AuthenticatedRead;
  request.UseChunkEncoding := useChunkEncoding;
  var response := Client.PutObject(request);
  Status(Format('S3 generated ETag: %s', [response.ETag]));
  Check(response.ETag.Length > 0, 'etag empty');
end;

procedure TPutObjectTests.SimplePutObjectTest_Chunked;
begin
  SimplePutObjectTest(True);
end;

procedure TPutObjectTests.SimplePutObjectTest_NotChunked;
begin
  SimplePutObjectTest(False);
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

  var metadataResult := Client.GetObjectMetadata(FBucketName, key);
  CheckEquals(etag, metadataResult.ETag);

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

procedure TPutObjectTests.TestHttpErrorResponseUnmarshalling;
begin
  CheckRaise<EAmazonS3Exception>(
    procedure
    var
      Request: IPutObjectRequest;
    begin
      Request := TPutObjectRequest.Create;
      Request.BucketName := TUtilityMethods.GenerateName('NonExistentBucket');
      Request.Key := '1';
      Request.ContentBody := 'TestContent';
      Client.PutObject(Request);
    end,
    procedure(E: EAmazonS3Exception)
    begin
      var Expected := 'The specified bucket does not exist';
      var Actual := Copy(E.Message, 1, Length(Expected));
      CheckEquals(Expected, Actual);
    end);
end;

function TPutObjectTests.TestPutAndGet(Request: IPutObjectRequest): IGetObjectMetadataResponse;
begin
  Client.PutObject(Request);
  var key := Request.Key;
  var Response := Client.GetObject(FBucketName, key);
  var Reader := TStreamReader.Create(Response.ResponseStream);
  try
    var contents := Reader.ReadToEnd;
    CheckEquals(TestContent, contents);
  finally
    Reader.Free;
  end;

  Result := Client.GetObjectMetadata(FBucketName, key);
end;

initialization
  RegisterTest('AWS.S3', TPutObjectTests.Suite);
end.
