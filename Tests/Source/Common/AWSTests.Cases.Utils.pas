unit AWSTests.Cases.Utils;

interface

uses
  TestFramework,
  AWS.SDKUtils;

type
  TAWSUtilTests = class(TTestCase)
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestCompressSpaces;
    procedure TestDetermineRegionFromURL;
    procedure TestCanonicalizeResourcePath;
  end;

implementation

{ TAWSUtilTests }

procedure TAWSUtilTests.TestCanonicalizeResourcePath;
begin
  CheckEquals('/', TAWSSDKUtils.CanonicalizeResourcePath(nil, ''));
  CheckEquals('/', TAWSSDKUtils.CanonicalizeResourcePath(TUri.Create('https://ec2.us-west-1.amazonaws.com'), ''));
  CheckEquals('/custompath', TAWSSDKUtils.CanonicalizeResourcePath(TUri.Create('https://customhost/custompath'), ''));

  CheckEquals(
      '/vx_folder/1.0%5Cdatafiles%5Cfile.json',
      TAWSSDKUtils.CanonicalizeResourcePath(nil, '/vx_folder/1.0\datafiles\file.json'));

  CheckEquals(
      '/vx_folder/1.0%5Cdatafiles%5Cfile.json',
      TAWSSDKUtils.CanonicalizeResourcePath(TUri.Create('https://s3-eu-west-1.amazonaws.com/'), '/vx_folder/1.0\datafiles\file.json'));

  CheckEquals(
      '/custompath/vx_folder/1.0%5Cdatafiles%5Cfile.json',
      TAWSSDKUtils.CanonicalizeResourcePath(TUri.Create('https://customhost/custompath'), '/vx_folder/1.0\datafiles\file.json'));
end;

procedure TAWSUtilTests.TestCompressSpaces;
begin
  CheckEquals('', TAWSSDKUtils.CompressSpaces(''));
  CheckEquals(' ', TAWSSDKUtils.CompressSpaces(' '));
  CheckEquals(' ', TAWSSDKUtils.CompressSpaces('  '));
  CheckEquals(' ', TAWSSDKUtils.CompressSpaces('        '));
  CheckEquals('Testnospaces', TAWSSDKUtils.CompressSpaces('Testnospaces'));
  CheckEquals(' Test no spaces ', TAWSSDKUtils.CompressSpaces(' Test no spaces '));
  CheckEquals(' Test no spaces ', TAWSSDKUtils.CompressSpaces(' Test  no  spaces '));
  CheckEquals(' Test no spaces ', TAWSSDKUtils.CompressSpaces(' Test no      spaces '));
  CheckEquals(' Test no spaces ', TAWSSDKUtils.CompressSpaces('   Test no spaces    '));
  CheckEquals(' Test no spaces ', TAWSSDKUtils.CompressSpaces(' Test no    spaces '));
  CheckEquals(' Test no spaces ', TAWSSDKUtils.CompressSpaces('  Test  no  spaces  '));
  CheckEquals('Test no spaces', TAWSSDKUtils.CompressSpaces('Test no spaces'));
  CheckEquals('Test no spaces', TAWSSDKUtils.CompressSpaces('Test  no     spaces'));
  CheckEquals('Test no spaces', TAWSSDKUtils.CompressSpaces('Test  no  spaces'));
  CheckEquals('Test no spaces', TAWSSDKUtils.CompressSpaces('Test no  spaces'));
end;

procedure TAWSUtilTests.TestDetermineRegionFromURL;
begin
  CheckEquals('eu-west-1', TAWSSDKUtils.DetermineRegion('https://autoscaling.eu-west-1.amazonaws.com/'));
  CheckEquals('eu-west-1', TAWSSDKUtils.DetermineRegion('https://cognito-identity.eu-west-1.amazonaws.com/'));
  CheckEquals('us-east-1', TAWSSDKUtils.DetermineRegion('https://route53.amazonaws.com/'));
  CheckEquals('us-east-1', TAWSSDKUtils.DetermineRegion('https://s3.amazonaws.com/'));
  CheckEquals('us-east-1', TAWSSDKUtils.DetermineRegion('https://s3-external-1.amazonaws.com/'));
  CheckEquals('eu-central-1', TAWSSDKUtils.DetermineRegion('https://s3-eu-central-1.amazonaws.com/'));
  CheckEquals('eu-central-1', TAWSSDKUtils.DetermineRegion('https://s3.eu-central-1.amazonaws.com/'));
  CheckEquals('us-west-2', TAWSSDKUtils.DetermineRegion('https://streams.dynamodb.us-west-2.amazonaws.com/'));
  CheckEquals('us-west-2', TAWSSDKUtils.DetermineRegion('https://s3-control.us-west-2.amazonaws.com/'));
  CheckEquals('', TAWSSDKUtils.DetermineRegion('https://bucket-name.s3-accelerate.amazonaws.com/'));
end;

procedure TAWSUtilTests.SetUp;
begin
  inherited;

end;

procedure TAWSUtilTests.TearDown;
begin
  inherited;

end;

initialization
  RegisterTest(TAWSUtilTests.Suite);
end.
