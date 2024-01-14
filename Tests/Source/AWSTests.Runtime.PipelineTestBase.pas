unit AWSTests.Runtime.PipelineTestBase;

interface

uses
  System.SysUtils, System.Generics.Collections,
  AWSTests.TestBase,
  AWSTests.MockWebResponse,
  AWS.Auth.Signer,
  AWS.Auth.NullSigner,
  AWS.Runtime.Contexts,
  AWS.RegionEndpoints,
  AWS.Lib.Uri,
  AWS.Transform.ResponseUnmarshaller,
  AWS.Internal.PipelineHandler,
  AWS.Internal.Request,
  AWS.Internal.RuntimePipeline,
  AWS.Runtime.HttpRequestMessageFactory,
  AWS.S3.Transform.PutObjectResponseUnmarshaller,
  AWS.S3.Transform.PutObjectRequestMarshaller,
  AWS.Runtime.ClientConfig,
  AWS.S3;

type
  TMockActionHandler = class;

  TRuntimePipelineTestBase = class(TAWSTestBase)
  strict private
    FNullSigner: TAbstractAWSSigner;
    Trash: TObjectList<TObject>;
  protected
    function CreateTestContext: TExecutionContext; overload; virtual;
    function CreateTestContext(Signer: TAbstractAWSSigner): TExecutionContext; overload; virtual;
    function CreateTestContext(Signer: TAbstractAWSSigner; ResponseUnmarshaller: TResponseUnmarshaller): TExecutionContext; overload; virtual;
    function CreateTestContext(Signer: TAbstractAWSSigner; ResponseUnmarshaller: TResponseUnmarshaller;
      Config: IClientConfig): TExecutionContext; overload; virtual;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

  TRuntimePipelineTestBase<T: TPipelineHandler> = class(TRuntimePipelineTestBase)
  public
    class var Tester: TMockActionHandler;
    class var RuntimePipeline: TRuntimePipeline;
    class var Handler: T;
    class constructor Create;
    class destructor Destroy;
  end;

  TMockSigner = class(TAbstractAWSSigner)
  public
    SignCount: Integer;
    procedure Reset;
    procedure Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId, AAWSSecretAccessKey: string); override;
    function Protocol: TClientProtocol; override;
  end;

  TMockActionHandler = class(TPipelineHandler)
  public
    CallCount: Integer;
    Action: TProc<Integer>;
    Action2: TProc<Integer, TExecutionContext>;
    Validate: TProc<Integer>;
    procedure Reset;
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

  TMockHandler = class(TPipelineHandler)
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TRuntimePipelineTestBase }

function TRuntimePipelineTestBase.CreateTestContext: TExecutionContext;
begin
  Result := CreateTestContext(nil);
end;

function TRuntimePipelineTestBase.CreateTestContext(Signer: TAbstractAWSSigner): TExecutionContext;
begin
  Result := CreateTestContext(signer, nil);
end;

function TRuntimePipelineTestBase.CreateTestContext(Signer: TAbstractAWSSigner;
  ResponseUnmarshaller: TResponseUnmarshaller): TExecutionContext;
begin
  Result := CreateTestContext(Signer, ResponseUnmarshaller, nil);
end;

procedure TRuntimePipelineTestBase.AfterConstruction;
begin
  inherited;
  FNullSigner := TNullSigner.Create;
  Trash := TObjectList<TObject>.Create(True);
end;

procedure TRuntimePipelineTestBase.BeforeDestruction;
begin
  FNullSigner.Free;
  Trash.Free;
  inherited;
end;

function TRuntimePipelineTestBase.CreateTestContext(Signer: TAbstractAWSSigner; ResponseUnmarshaller: TResponseUnmarshaller;
  Config: IClientConfig): TExecutionContext;
begin
  var putObjectRequest := TPutObjectRequest.Create;
  putObjectRequest.Key := 'TestKey';
  putObjectRequest.BucketName := 'TestBucket';
  putObjectRequest.ContentBody := 'Test Content';

  if responseUnmarshaller = nil then
    responseUnmarshaller := TPutObjectResponseUnmarshaller.Instance as TResponseUnmarshaller;

  var tempSigner := signer;
  if signer = nil then
    tempSigner := FNullSigner;

  var requestContext := TRequestContext.Create(True, tempSigner);
  requestContext.OriginalRequest := putObjectRequest;

  var Marshaller := TPutObjectRequestMarshaller.Create;
  try
    requestContext.Request := Marshaller.Marshall(PutObjectRequest);
  finally
    Marshaller.Free;
  end;

  requestContext.Unmarshaller := responseUnmarshaller;

  var tempConfig := config;
  if tempConfig = nil then
    tempConfig := TAmazonS3Config.Create(TRegionEndpoints.USEast1);
  requestContext.ClientConfig := tempConfig;
  requestContext.Request.Endpoint := TUri.Create('https://s3.amazonaws.com');

//  var putObjectResponse := TMockWebResponse.CreateFromResource('PutObjectResponse.txt') as HttpWebResponse;
  var responseContext := TResponseContext.Create;
  var httpRequest := TMockWebResponse.CreateFromResource('PutObjectResponse.txt');
  responseContext.HttpResponse := THttpClientResponseData.Create(httpRequest, nil);
  Result := TExecutionContext.Create(requestContext, responseContext);

  Trash.Add(requestContext);
  Trash.Add(responseContext);
  Trash.Add(Result);
  Trash.Add(putObjectRequest);
end;

{ TRuntimePipelineTestBase<T> }

class constructor TRuntimePipelineTestBase<T>.Create;
begin
  Tester := TMockActionHandler.Create;
  RuntimePipeline := TRuntimePipeline.Create(Tester);
end;

class destructor TRuntimePipelineTestBase<T>.Destroy;
begin
  RuntimePipeline.Free;
end;

{ TMockSigner }

function TMockSigner.Protocol: TClientProtocol;
begin
  Result := TClientProtocol.RestProtocol;
end;

procedure TMockSigner.Reset;
begin
  SignCount := 0;
end;

procedure TMockSigner.Sign(ARequest: IRequest; AClientConfig: IClientConfig; const AAWSAccessKeyId, AAWSSecretAccessKey: string);
begin
  Inc(SignCount);
end;

{ TMockActionHandler }

procedure TMockActionHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  Inc(CallCount);
  if Assigned(Action) then
    Action(CallCount);

  if Assigned(Action2) then
    Action2(CallCount, AExecutionContext);

  if Assigned(Validate) then
    Validate(CallCount);
end;

procedure TMockActionHandler.Reset;
begin
  Action := nil;
  Validate := nil;
  CallCount := 0;
end;

{ TMockHandler }

procedure TMockHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
end;

end.
