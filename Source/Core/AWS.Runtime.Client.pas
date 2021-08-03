unit AWS.Runtime.Client;

{$I AWS.inc}

interface

uses
  System.Generics.Collections, System.SysUtils, System.StrUtils,
  Bcl.Logging,
  AWS.Runtime.Model,
  AWS.Runtime.Credentials,
  AWS.Internal.ServiceMetadata,
  AWS.Internal.RuntimePipeline,
  AWS.Runtime.ClientConfig,
  AWS.Internal.Request,
  AWS.Runtime.IHttpRequestFactory,
  AWS.Auth.Signer,
  AWS.Internal.InvokeOptions;

type
  /// <summary>
  /// All Amazon service interfaces like IAmazonS3 extend from this interface. This allows all the
  /// Amazon service interfaces be identified by this base interface and helps with generic constraints.
  /// </summary>
  IAmazonService = interface
    /// <summary>
    /// A readonly view of the configuration for the service client.
    /// </summary>
    function GetConfig: IClientConfig;
    property Config: IClientConfig read GetConfig;
  end;

  TAmazonServiceClient = class abstract(TInterfacedObject, IAmazonService)
  strict private
    FLogger: ILogger;
    FConfig: IClientConfig;
    FCredentials: IAWSCredentials;
    FSigner: TAbstractAWSSigner;
    FServiceMetadata: IServiceMetadata;
    FRuntimePipeline: TRuntimePipeline;
    function GetConfig: IClientConfig;
    procedure BuildRuntimePipeline;
  strict protected
    procedure Initialize; virtual;
    function Invoke<TResponse: TAmazonWebServiceResponse>(ARequest: TAmazonWebServiceRequest;
      AOptions: TInvokeOptionsBase): TResponse;
    function CreateSigner: TAbstractAWSSigner; virtual; abstract;
    function GetServiceMetadata: IServiceMetadata; virtual;
    procedure CustomizeRuntimePipeline(APipeline: TRuntimePipeline); virtual;
    function SupportResponseLogging: Boolean; virtual;

    property Signer: TAbstractAWSSigner read FSigner;
    property ServiceMetadata: IServiceMetadata read GetServiceMetadata;
    property RuntimePipeline: TRuntimePipeline read FRuntimePipeline;
    property Credentials: IAWSCredentials read FCredentials;
  public
    class function ComposeUrl(ARequest: IRequest): string;
  strict protected
    constructor Create(ACredentials: IAWSCredentials; AConfig: IClientConfig); overload;
    constructor Create(const AAwsAccessKeyId, AAwsSecretAccessKey: string; AConfig: IClientConfig); overload;
    constructor Create(const AAwsAccessKeyId, AAwsSecretAccessKey, AAwsSessionToken: string; AConfig: IClientConfig); overload;
  public
    destructor Destroy; override;

    /// <summary>
    /// A readonly view of the configuration for the service client.
    /// </summary>
    property Config: IClientConfig read GetConfig;
  end;

implementation

uses
  AWS.Runtime.Contexts,
  AWS.Internal.PipelineHandler,
  AWS.SDKUtils,
  AWS.Runtime.HttpRequestMessageFactory,
  AWS.Pipeline.HttpHandler,
  AWS.Pipeline.Marshaller,
  AWS.Pipeline.EndpointResolver,
  AWS.Pipeline.ErrorHandler,
  AWS.Pipeline.CredentialsRetriever,
  AWS.Pipeline.Signer,
  AWS.Pipeline.Unmarshaller;

{ TAmazonServiceClient }

procedure TAmazonServiceClient.BuildRuntimePipeline;
var
  HttpRequestFactory: IHttpRequestFactory;
  HttpHandler: IPipelineHandler;
begin
  HttpRequestFactory := THttpRequestMessageFactory.Create(Config);
  HttpHandler := TSparkleHttpHandler.Create(HttpRequestFactory, Self);

  {TODO: Pre and post events not implemented}

  {TODO: RetryPolicy}

  // Build default runtime pipeline.
  {TODO: Several handlers not implemented}
  FRuntimePipeline := TRuntimePipeLine.Create(nil, FLogger);
  FRuntimePipeline.AddHandler(HttpHandler);
  FRuntimePipeline.AddHandler(TUnmarshaller.Create(SupportResponseLogging));
  FRuntimePipeline.AddHandler(TErrorHandler.Create(FLogger));
//  FRuntimePipeline.AddHandler(PostUnmarshallerHandler);
  FRuntimePipeline.AddHandler(TSigner.Create);
//  FRuntimePipeline.AddHandler(TEndpoingDiscoveryHandler.Create);
  FRuntimePipeline.AddHandler(TCredentialsRetriever.Create(Credentials));
//  FRuntimePipeline.AddHandler(TRetryHandler.Create(RetryPolicy));
//  FRuntimePipeline.AddHandler(PostMarshallHandler);
  FRuntimePipeline.AddHandler(TEndpointResolver.Create);
  FRuntimePipeline.AddHandler(TMarshaller.Create);
//  FRuntimePipeline.AddHandler(PreMarshallHandler);
//  FRuntimePipeline.AddHandler(ErrorCallbackHandler);
//  FRuntimePipeline.AddHandler(TMetricsHandler);

  {TODO: CSM Configuration}

  CustomizeRuntimePipeline(RuntimePipeline);

  {TODO: Apply global pipeline customizations}
end;

class function TAmazonServiceClient.ComposeUrl(ARequest: IRequest): string;
var
  Url: string;
  ResourcePath: string;
  Delim: string;
  Sb: string;
  SubResource: TPair<string, string>;
  ParameterizedPath: string;
begin
  Url := ARequest.Endpoint.AbsoluteUri;
  ResourcePath := ARequest.ResourcePath;
  if ResourcePath <> '' then
  begin
    if ResourcePath[1] = '/' then
      Delete(ResourcePath, 1, 1);
    ResourcePath := TAWSSDKUtils.ResolveResourcePath(ResourcePath, ARequest.PathResources);
  end;

  // Construct any sub resource/query parameter additions to append to the
  // resource path. Services like S3 which allow '?' and/or '&' in resource paths
  // should use SubResources instead of appending them to the resource path with
  // query string delimiters during request marshalling.
  Delim := '?';
  Sb := '';
  for SubResource in ARequest.SubResources do
  begin
    Sb := Sb + Delim + SubResource.Key;
    if SubResource.Value <> '' then
      Sb := Sb + '=' + SubResource.Value;
    Delim := '&';
  end;

  if ARequest.UseQueryString and (ARequest.Parameters.Count > 0) then
    sb := sb + Delim + TAWSSDKUtils.GetParametersAsString(ARequest.ParameterCollection);

  ParameterizedPath := ResourcePath + Sb;

  // Check if hasSlash
  if EndsStr('/', Url) or StartsStr('/', ParameterizedPath) then
    Result := Url + ParameterizedPath
  else
    Result := Url + '/' + ParameterizedPath;
end;

constructor TAmazonServiceClient.Create(const AAwsAccessKeyId, AAwsSecretAccessKey, AAwsSessionToken: string;
  AConfig: IClientConfig);
begin
  Create(TSessionAWSCredentials.Create(AAwsAccessKeyId, AAwsSecretAccessKey, AAwsSessionToken), AConfig);
end;

constructor TAmazonServiceClient.Create(const AAwsAccessKeyId, AAwsSecretAccessKey: string; AConfig: IClientConfig);
begin
  Create(TBasicAWSCredentials.Create(AAwsAccessKeyId, AAwsSecretAccessKey), AConfig);
end;

constructor TAmazonServiceClient.Create(ACredentials: IAWSCredentials; AConfig: IClientConfig);
begin
  inherited Create;
  FLogger := TNullLogger.Create;
  FServiceMetadata := TServiceMetadata.Create;

  if AConfig.DisableLogging then
    FLogger := TNullLogger.Create
  else
    FLogger := LogManager.GetLogger(Self.ClassType);

  AConfig.Validate;
  FConfig := AConfig;
  FCredentials := ACredentials;
  FSigner := CreateSigner;
  Initialize;
  BuildRuntimePipeline;
end;

procedure TAmazonServiceClient.CustomizeRuntimePipeline(APipeline: TRuntimePipeline);
begin
end;

destructor TAmazonServiceClient.Destroy;
begin
  FRuntimePipeline.Free;
  FSigner.Free;
  inherited;
end;

function TAmazonServiceClient.GetConfig: IClientConfig;
begin
  Result := FConfig;
end;

function TAmazonServiceClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

procedure TAmazonServiceClient.Initialize;
begin
end;

function TAmazonServiceClient.Invoke<TResponse>(ARequest: TAmazonWebServiceRequest;
  AOptions: TInvokeOptionsBase): TResponse;
var
  ExecutionContext: TExecutionContext;
  RequestContext: TRequestContext;
  ResponseContext: TResponseContext;
begin
  RequestContext := TRequestContext.Create(Config.LogMetrics, Signer);
  try
    RequestContext.ClientConfig := Self.Config;
    RequestContext.Marshaller := AOptions.RequestMarshaller;
    RequestContext.OriginalRequest := ARequest;
    RequestContext.Unmarshaller := AOptions.ResponseUnmarshaller;
    RequestContext.ServiceMetadata := Self.ServiceMetadata;
    RequestContext.Options := AOptions;

    ResponseContext := TResponseContext.Create;
    try
      ExecutionContext := TExecutionContext.Create(RequestContext, ResponseContext);
      try
        {TODO: SetupCSMHandler}
//        SetupCSMHandler(ExecutionContext.RequestContext);

        Result := TResponse(Self.RuntimePipeline.InvokeSync(ExecutionContext).ExtractResponse);
      finally
        ExecutionContext.Free;
      end;
    finally
      ResponseContext.Free;
    end;
  finally
    RequestContext.Free;
  end;
end;

function TAmazonServiceClient.SupportResponseLogging: Boolean;
begin
  Result := True;
end;

end.
