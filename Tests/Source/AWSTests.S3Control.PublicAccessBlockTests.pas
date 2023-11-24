unit AWSTests.S3Control.PublicAccessBlockTests;

interface

uses
  System.Generics.Collections, System.SysUtils, System.StrUtils, System.Classes,
  TestFramework,
  AWSTests.TestBase,
  AWS.S3Control,
  AWS.Runtime.Model,
  AWS.RegionEndpoints;

type
  TPublicAccessBlockTests = class(TAWSTestBase)
  private
    FClient: IAmazonS3Control;
    FAccountId: string;
    function Client: IAmazonS3Control;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
  end;

implementation

{ TPublicAccessBlockTests }

function TPublicAccessBlockTests.Client: IAmazonS3Control;
begin
  if FClient = nil then
    FClient := TAmazonS3ControlClient.Create;
  Result := FClient;
end;

procedure TPublicAccessBlockTests.SetUp;
begin
  inherited;
end;

procedure TPublicAccessBlockTests.TearDown;
begin
  FClient := nil;
  inherited;
end;

end.
