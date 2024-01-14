unit AWSTests.Runtime.RetryHandlerTests;

interface

uses
  System.SysUtils,
  TestFramework,
  AWSTests.Runtime.PipelineTestBase,
  AWS.Runtime.ClientConfig,
  AWS.Internal.DefaultRetryPolicy,
  AWS.S3.Config,
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
  end;

implementation

{ TRetryHandlerTests }

class constructor TRetryHandlerTests.Create;
begin
  var config := TAmazonS3Config.Create;
  config.ServiceUrl := 'https://s3.amazonaws.com';
  config.MaxErrorRetry := MAX_RETRIES;
  Handler := TRetryHandler.Create(TDefaultRetryPolicy.Create(config), True);
  RuntimePipeline.AddHandler(Handler);
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
