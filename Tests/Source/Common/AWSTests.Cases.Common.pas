unit AWSTests.Cases.Common;

interface

uses
  TestFramework,
  AWS.Internal.IRegionEndpoint;

type
  TRegionProviderTests = class(TTestCase)
  strict private
    FProvider: IRegionEndpointProvider;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure RegionEndpoint;
    procedure ServiceEndpoint;
  end;

implementation

uses
  AWS.Internal.RegionEndpointV3;

{ TRegionTests }

procedure TRegionProviderTests.RegionEndpoint;
var
  Region: IRegionEndpoint;
begin
  Region := FProvider.GetRegionEndpoint('us-east-1');
  CheckEquals('us-east-1', Region.RegionName);
  CheckEquals('US East (N. Virginia)', Region.DisplayName);
end;

procedure TRegionProviderTests.ServiceEndpoint;
var
  Endpoint: IEndpoint;
begin
  Endpoint := FProvider.GetRegionEndpoint('us-east-1').GetEndpointForService('sqs', False);
  CheckEquals('sqs.us-east-1.amazonaws.com', Endpoint.HostName);
  CheckEquals('', Endpoint.AuthRegion);
  CheckEquals('', Endpoint.SignatureVersionOverride);
end;

procedure TRegionProviderTests.SetUp;
begin
  inherited;
  FProvider := TRegionEndpointProviderV3.Create;
end;

procedure TRegionProviderTests.TearDown;
begin
  FProvider := nil;
  inherited;
end;

initialization
  RegisterTest(TRegionProviderTests.Suite);
end.
