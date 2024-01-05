unit AWSTests.S3.BucketRegionTests;

interface

uses
  System.Generics.Collections, System.SysUtils, System.StrUtils, System.Classes,
  TestFramework, TestExtensions,
  AWSTests.TestBase,
  AWS.RegionEndpoint,
  AWS.Runtime.Model,
  AWS.RegionEndpoints,
  AWS.S3,
  AWS.S3.Util.BucketRegionDetector,
  AWSTests.S3.TestUtils,
  AWSTests.S3.BucketRegionTestRunner;

type
  TBucketRegionTests = class(TAWSTestBase)
  strict private
    runner: TBucketRegionTestRunner;
    function GetHttpStatusCode(const Url: string): Integer;
  public
    procedure TearDown; override;
  published
    procedure HappyCaseSigV2;
    procedure HappyCaseSigV4;
    procedure HappyCaseGetObjectMetedata;
    procedure GetObjectMetedataSessionCredentials;
    procedure HappyCaseDoesS3BucketExist;
    procedure BucketRecreatedInDifferentRegion;
    procedure GetPreSignedUrlSigV2;
    procedure GetPreSignedUrlSigV4ImplicitlySet;
    procedure GetPreSignedUrlSigV4ExplicitlySet;
    procedure DeleteBucketUsingS3RegionUSEast1Enum;
  end;

implementation

{ TBucketRegionTests }

procedure TBucketRegionTests.BucketRecreatedInDifferentRegion;
begin
  Check(False);
end;

procedure TBucketRegionTests.DeleteBucketUsingS3RegionUSEast1Enum;
begin
  Check(False);
end;

function TBucketRegionTests.GetHttpStatusCode(const Url: string): Integer;
begin
end;

procedure TBucketRegionTests.GetObjectMetedataSessionCredentials;
begin
  Check(False);
end;

procedure TBucketRegionTests.GetPreSignedUrlSigV2;
begin
  Check(False);
end;

procedure TBucketRegionTests.GetPreSignedUrlSigV4ExplicitlySet;
begin
  Check(False);
end;

procedure TBucketRegionTests.GetPreSignedUrlSigV4ImplicitlySet;
begin
  Check(False);
end;

procedure TBucketRegionTests.HappyCaseDoesS3BucketExist;
begin
  Check(False);
end;

procedure TBucketRegionTests.HappyCaseGetObjectMetedata;
begin
  Check(False);
end;

procedure TBucketRegionTests.HappyCaseSigV2;
begin
  // make sure we're not using the cache with SigV2 requests
  runner := TBucketRegionTestRunner.Create(False);
  if runner.TestBucketIsReady then
  begin
    runner.USEast1Client.PutObject(runner.PutObjectRequest);
    var cachedRegion: IRegionEndpointEx;
    Check(not TBucketRegionDetector.BucketRegionCache.TryGetValue(runner.BucketName, cachedRegion));
    Check(cachedRegion = nil);
  end;
end;

procedure TBucketRegionTests.HappyCaseSigV4;
begin
  Check(False);
end;

procedure TBucketRegionTests.TearDown;
begin
  FreeAndNil(runner);
  inherited;
end;

initialization
  RegisterTest('AWS.S3', TBucketRegionTests.Suite);

end.
