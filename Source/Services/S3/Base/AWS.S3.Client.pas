unit AWS.S3.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.S3.ClientIntf, 
  AWS.S3.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.S3.Metadata, 
  AWS.Auth.Signer, 
  AWS.S3.Internal.S3Signer, 
  AWS.Internal.RuntimePipeline, 
  AWS.Pipeline.Marshaller, 
  AWS.S3.Pipeline.PreMarshallHandler, 
  AWS.S3.Pipeline.PostMarshallHandler, 
  AWS.Pipeline.EndpointResolver, 
  AWS.S3.Pipeline.KmsHandler, 
  AWS.Pipeline.Unmarshaller, 
  AWS.S3.Pipeline.ResponseHandler, 
  AWS.Pipeline.ErrorCallbackHandler, 
  AWS.S3.Pipeline.ExceptionHandler, 
  AWS.S3.Pipeline.RedirectHandler, 
  AWS.Pipeline.RetryHandler;

type
  TAmazonS3Client = class(TAmazonServiceClient, IAmazonS3)
  strict private
    class var FServiceMetadata: IServiceMetadata;
  private
    class constructor Create;
  strict protected
    function GetServiceMetadata: IServiceMetadata; override;
    function CreateSigner: TAbstractAWSSigner; override;
    procedure CustomizeRuntimePipeline(Pipeline: TRuntimePipeline); override;
  public
    constructor Create; reintroduce; overload;
    constructor Create(Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(Config: IClientConfig); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials; Config: IClientConfig); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig); reintroduce; overload;
  end;
  
implementation

{ TAmazonS3Client }

constructor TAmazonS3Client.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonS3Client.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonS3Client.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonS3Client.Create;
begin
  FServiceMetadata := TAmazonS3Metadata.Create;
end;

function TAmazonS3Client.CreateSigner: TAbstractAWSSigner;
begin
  Result := TInternalS3Signer.Create;
end;

procedure TAmazonS3Client.CustomizeRuntimePipeline(Pipeline: TRuntimePipeline);
begin
  Pipeline.AddHandlerBefore<TMarshaller>(TAmazonS3PreMarshallHandler.Create());
  Pipeline.AddHandlerAfter<TMarshaller>(TAmazonS3PostMarshallHandler.Create());
  Pipeline.AddHandlerAfter<TEndpointResolver>(TAmazonS3KmsHandler.Create());
  Pipeline.AddHandlerBefore<TUnmarshaller>(TAmazonS3ResponseHandler.Create());
  Pipeline.AddHandlerAfter<TErrorCallbackHandler>(TAmazonS3ExceptionHandler.Create());
  Pipeline.AddHandlerAfter<TUnmarshaller>(TAmazonS3RedirectHandler.Create());
  if this.Config.RetryMode == RequestRetryMode.Legacy then
    Pipeline.ReplaceHandler<TRetryHandler>(TRetryHandler.Create(new Amazon.S3.Internal.AmazonS3RetryPolicy(this.Config)));
  if this.Config.RetryMode == RequestRetryMode.Standard then
    Pipeline.ReplaceHandler<TRetryHandler>(TRetryHandler.Create(new Amazon.S3.Internal.AmazonS3StandardRetryPolicy(this.Config)));
  if this.Config.RetryMode == RequestRetryMode.Adaptive then
    Pipeline.ReplaceHandler<TRetryHandler>(TRetryHandler.Create(new Amazon.S3.Internal.AmazonS3AdaptiveRetryPolicy(this.Config)));
end;

end.
