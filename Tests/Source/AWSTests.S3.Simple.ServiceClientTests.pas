unit AWSTests.S3.Simple.ServiceClientTests;

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
  TS3ServiceClientTests = class(TAWSTestBase<TAmazonS3Client, IAmazonS3>)
  strict private
    FBucketName: string;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestS3PutWithBodyProperty;
  end;

implementation

{ TS3ServiceClientTests }

procedure TS3ServiceClientTests.SetUp;
begin
  inherited;
  FBucketName := TS3TestUtils.CreateBucket(Client, 's3serviceclienttest');
end;

procedure TS3ServiceClientTests.TearDown;
begin
  TS3TestUtils.DeleteS3BucketWithObjects(Client, FBucketName);
  inherited;
end;

procedure TS3ServiceClientTests.TestS3PutWithBodyProperty;
begin
  var putObjectRequest: IPutObjectRequest := TPutObjectRequest.Create;
  putObjectRequest.BucketName := FBucketName;
  putObjectRequest.ContentBody := 'Hello World';
  putObjectRequest.Key := 'test.txt';
  var putObjectResponse := Client.PutObject(putObjectRequest);

  var getObjectRequest: IGetObjectRequest := TGetObjectRequest.Create;
  getObjectRequest.BucketName := FBucketName;
  getObjectRequest.Key := 'test.txt';
  getObjectRequest.EtagToMatch := putObjectResponse.ETag;

  var getObjectResponse := Client.GetObject(getObjectRequest);
  var reader := TStreamReader.Create(getObjectResponse.ResponseStream);
  try
    CheckEquals(putObjectRequest.ContentBody, reader.ReadToEnd);
  finally
    reader.Free;
  end;
end;

initialization
  RegisterTest('AWS.S3', TS3ServiceClientTests.Suite);
end.
