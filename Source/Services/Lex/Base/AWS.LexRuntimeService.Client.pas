unit AWS.LexRuntimeService.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.LexRuntimeService.ClientIntf, 
  AWS.LexRuntimeService.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.LexRuntimeService.Metadata, 
  AWS.Auth.Signer, 
  AWS.LexRuntimeService.Model.DeleteSessionResponse, 
  AWS.LexRuntimeService.Model.DeleteSessionRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.LexRuntimeService.Transform.DeleteSessionRequestMarshaller, 
  AWS.LexRuntimeService.Transform.DeleteSessionResponseUnmarshaller, 
  AWS.LexRuntimeService.Model.GetSessionResponse, 
  AWS.LexRuntimeService.Model.GetSessionRequest, 
  AWS.LexRuntimeService.Transform.GetSessionRequestMarshaller, 
  AWS.LexRuntimeService.Transform.GetSessionResponseUnmarshaller, 
  AWS.LexRuntimeService.Model.PostContentResponse, 
  AWS.LexRuntimeService.Model.PostContentRequest, 
  AWS.LexRuntimeService.Transform.PostContentRequestMarshaller, 
  AWS.LexRuntimeService.Transform.PostContentResponseUnmarshaller, 
  AWS.LexRuntimeService.Model.PostTextResponse, 
  AWS.LexRuntimeService.Model.PostTextRequest, 
  AWS.LexRuntimeService.Transform.PostTextRequestMarshaller, 
  AWS.LexRuntimeService.Transform.PostTextResponseUnmarshaller, 
  AWS.LexRuntimeService.Model.PutSessionResponse, 
  AWS.LexRuntimeService.Model.PutSessionRequest, 
  AWS.LexRuntimeService.Transform.PutSessionRequestMarshaller, 
  AWS.LexRuntimeService.Transform.PutSessionResponseUnmarshaller;

type
  TAmazonLexClient = class(TAmazonServiceClient, IAmazonLex)
  strict private
    class var FServiceMetadata: IServiceMetadata;
  private
    class constructor Create;
  strict protected
    function GetServiceMetadata: IServiceMetadata; override;
    function CreateSigner: TAbstractAWSSigner; override;
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
    function DeleteSession(Request: IDeleteSessionRequest): IDeleteSessionResponse; overload;
    function GetSession(Request: IGetSessionRequest): IGetSessionResponse; overload;
    function PostContent(Request: IPostContentRequest): IPostContentResponse; overload;
    function PostText(Request: IPostTextRequest): IPostTextResponse; overload;
    function PutSession(Request: IPutSessionRequest): IPutSessionResponse; overload;
  end;
  
implementation

{ TAmazonLexClient }

constructor TAmazonLexClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonLexConfig.Create);
end;

constructor TAmazonLexClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonLexConfig.Create(Region));
end;

constructor TAmazonLexClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonLexClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonLexConfig.Create);
end;

constructor TAmazonLexClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonLexConfig.Create(Region));
end;

constructor TAmazonLexClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonLexClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonLexConfig.Create);
end;

constructor TAmazonLexClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonLexConfig.Create(Region));
end;

constructor TAmazonLexClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonLexClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonLexConfig.Create);
end;

constructor TAmazonLexClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonLexConfig.Create(Region));
end;

constructor TAmazonLexClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonLexClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonLexClient.Create;
begin
  FServiceMetadata := TAmazonLexMetadata.Create;
end;

function TAmazonLexClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonLexClient.DeleteSession(Request: IDeleteSessionRequest): IDeleteSessionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteSessionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteSessionResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteSessionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonLexClient.GetSession(Request: IGetSessionRequest): IGetSessionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetSessionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetSessionResponseUnmarshaller.Instance;
    Result := Invoke<TGetSessionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonLexClient.PostContent(Request: IPostContentRequest): IPostContentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPostContentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPostContentResponseUnmarshaller.Instance;
    Result := Invoke<TPostContentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonLexClient.PostText(Request: IPostTextRequest): IPostTextResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPostTextRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPostTextResponseUnmarshaller.Instance;
    Result := Invoke<TPostTextResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonLexClient.PutSession(Request: IPutSessionRequest): IPutSessionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutSessionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutSessionResponseUnmarshaller.Instance;
    Result := Invoke<TPutSessionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
