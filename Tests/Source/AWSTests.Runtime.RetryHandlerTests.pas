unit AWSTests.Runtime.RetryHandlerTests;

interface

uses
  System.SysUtils, System.TimeSpan, System.DateUtils,
  TestFramework,
  AWSTests.Runtime.PipelineTestBase,
  AWS.Lib.Uri,
  AWS.Configs,
  AWS.Runtime.Exceptions,
  AWS.Runtime.ClientConfig,
  AWS.Internal.DefaultRetryPolicy,
  AWS.S3.Config,
  AWS.S3.Exception,
  AWS.SDKUtils,
  AWS.Pipeline.RetryHandler;

type
  TRetryHandlerTests = class(TRuntimePipelineTestBase<TRetryHandler>)
  private const
    MAX_RETRIES = 2;
    MAX_INVALID_ENDPOINT_RETRIES = 2;
  private
    class constructor Create;
  published
    procedure RetryForIOException;
    procedure RetryForHttpStatus500;
    procedure RetryForHttpStatus421;
    procedure ChangeSkewBasedOnRequestEndpointAndNotConfigEndpoint;
  end;

implementation

{ TRetryHandlerTests }

procedure TRetryHandlerTests.ChangeSkewBasedOnRequestEndpointAndNotConfigEndpoint;
begin
  var configEndpoint: IUri := TUri.Create('https://s3.amazonaws.com');
  var requestEndpoint: IUri := TUri.Create('https://bucketname.s3.amazonaws.com');

  TCorrectClockSkew.SetClockCorrectionForEndpoint(configEndpoint.AbsoluteUri, TTimeSpan.FromHours(-1));
  TCorrectClockSkew.SetClockCorrectionForEndpoint(requestEndpoint.AbsoluteUri, TTimeSpan.Zero);

  CheckEquals(TTimeSpan.Zero, TCorrectClockSkew.GetClockCorrectionForEndpoint(requestEndpoint.AbsoluteUri));

  Tester.Reset;
  Tester.Action := procedure(callCount: Integer)
    begin
      var timeString := FormatDateTime(TAWSSDKUtils.ISO8601BasicDateTimeFormat, TTimeZone.Local.ToUniversalTime(Now).IncHour(-1));
      var exception := EAmazonS3Exception.Create('(' + timeString + ' - ');
      exception.ErrorCode := 'RequestTimeTooSkewed';
      raise exception;
    end;

  CheckRaise<EAmazonServiceException>(procedure
    begin
      var request := CreateTestContext;
      request.RequestContext.Request.Endpoint := requestEndpoint;
      RuntimePipeline.InvokeSync(request);
    end);

  // RetryPolicy should see that the clock skew for bucketname.s3.amazonaws.com is zero and change it to ~ -1 hour
  CheckEquals(True, TCorrectClockSkew.GetClockCorrectionForEndpoint(requestEndpoint.AbsoluteUri) < TTimeSpan.FromMinutes(-55));
end;

class constructor TRetryHandlerTests.Create;
begin
  var config := TAmazonS3Config.Create;
  config.ServiceUrl := 'https://s3.amazonaws.com';
  config.MaxErrorRetry := MAX_RETRIES;
  Handler := TRetryHandler.Create(TDefaultRetryPolicy.Create(config), True);
  RuntimePipeline.AddHandler(Handler);
end;

procedure TRetryHandlerTests.RetryForHttpStatus421;
begin
  Tester.Reset;
  Tester.Action := procedure(callCount: Integer)
    begin
      raise EAmazonServiceException.Create('Invalid Endpoint Exception', nil, 421);
    end;

  CheckRaise<EAmazonServiceException>(procedure
    begin
      var request := CreateTestContext;
      RuntimePipeline.InvokeSync(request);
    end);
  CheckEquals(MAX_INVALID_ENDPOINT_RETRIES, Tester.CallCount);
end;

procedure TRetryHandlerTests.RetryForHttpStatus500;
begin
  Tester.Reset;
  Tester.Action := procedure(callCount: Integer)
    begin
      raise EAmazonServiceException.Create('Internal Server Error', nil, 500);
    end;

  CheckRaise<EAmazonServiceException>(procedure
    begin
      var request := CreateTestContext;
      RuntimePipeline.InvokeSync(request);
    end);
  CheckEquals(MAX_RETRIES + 1, Tester.CallCount);
end;

procedure TRetryHandlerTests.RetryForIOException;
begin
  Tester.Reset;
  Tester.Action := procedure(callCount: Integer)
    begin
      raise EInOutError.Create('');
    end;

  CheckRaise<EInOutError>(procedure
    begin
      var request := CreateTestContext;
      RuntimePipeline.InvokeSync(request);
    end, nil);
  CheckEquals(MAX_RETRIES + 1, Tester.CallCount);
end;

initialization
  RegisterTest('Runtime', TRetryHandlerTests.Suite);

end.
