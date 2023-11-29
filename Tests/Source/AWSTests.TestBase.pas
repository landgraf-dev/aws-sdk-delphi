unit AWSTests.TestBase;

interface

uses
  System.SysUtils, System.TypInfo,
  TestFramework,
  AWS.Runtime.Client;

type
  TAWSTestBase = class(TTestCase)
  public
  end;

  TAWSTestBase<T: TAmazonServiceClient, constructor; I: IAmazonService> = class(TTestCase)
  strict private
    class var FClientObj: T;
    class var FClient: I;
  private
    class function GetClient: I; static;
    class procedure SetClient(const Value: I); static;
  public
    class property Client: I read GetClient write SetClient;
  end;

implementation

{ TAWSTestBase<T, I> }

class function TAWSTestBase<T, I>.GetClient: I;
begin
  if FClient = nil then
  begin
    var GUID: TGUID;
    GUID := GetTypeData(TypeInfo(I))^.Guid;
    FClientObj := T.Create;
    if not Supports(FClientObj, GUID, FClient) then
      raise Exception.Create('Interface not supported');
  end;
  Result := FClient;
end;

class procedure TAWSTestBase<T, I>.SetClient(const Value: I);
begin
  FClient := Value;
end;

end.
