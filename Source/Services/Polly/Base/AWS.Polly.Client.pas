unit AWS.Polly.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.Polly.ClientIntf, 
  AWS.Polly.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.Polly.Metadata, 
  AWS.Auth.Signer, 
  AWS.Polly.Model.DeleteLexiconResponse, 
  AWS.Polly.Model.DeleteLexiconRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.Polly.Transform.DeleteLexiconRequestMarshaller, 
  AWS.Polly.Transform.DeleteLexiconResponseUnmarshaller, 
  AWS.Polly.Model.DescribeVoicesResponse, 
  AWS.Polly.Model.DescribeVoicesRequest, 
  AWS.Polly.Transform.DescribeVoicesRequestMarshaller, 
  AWS.Polly.Transform.DescribeVoicesResponseUnmarshaller, 
  AWS.Polly.Model.GetLexiconResponse, 
  AWS.Polly.Model.GetLexiconRequest, 
  AWS.Polly.Transform.GetLexiconRequestMarshaller, 
  AWS.Polly.Transform.GetLexiconResponseUnmarshaller, 
  AWS.Polly.Model.GetSpeechSynthesisTaskResponse, 
  AWS.Polly.Model.GetSpeechSynthesisTaskRequest, 
  AWS.Polly.Transform.GetSpeechSynthesisTaskRequestMarshaller, 
  AWS.Polly.Transform.GetSpeechSynthesisTaskResponseUnmarshaller, 
  AWS.Polly.Model.ListLexiconsResponse, 
  AWS.Polly.Model.ListLexiconsRequest, 
  AWS.Polly.Transform.ListLexiconsRequestMarshaller, 
  AWS.Polly.Transform.ListLexiconsResponseUnmarshaller, 
  AWS.Polly.Model.ListSpeechSynthesisTasksResponse, 
  AWS.Polly.Model.ListSpeechSynthesisTasksRequest, 
  AWS.Polly.Transform.ListSpeechSynthesisTasksRequestMarshaller, 
  AWS.Polly.Transform.ListSpeechSynthesisTasksResponseUnmarshaller, 
  AWS.Polly.Model.PutLexiconResponse, 
  AWS.Polly.Model.PutLexiconRequest, 
  AWS.Polly.Transform.PutLexiconRequestMarshaller, 
  AWS.Polly.Transform.PutLexiconResponseUnmarshaller, 
  AWS.Polly.Model.StartSpeechSynthesisTaskResponse, 
  AWS.Polly.Model.StartSpeechSynthesisTaskRequest, 
  AWS.Polly.Transform.StartSpeechSynthesisTaskRequestMarshaller, 
  AWS.Polly.Transform.StartSpeechSynthesisTaskResponseUnmarshaller, 
  AWS.Polly.Model.SynthesizeSpeechResponse, 
  AWS.Polly.Model.SynthesizeSpeechRequest, 
  AWS.Polly.Transform.SynthesizeSpeechRequestMarshaller, 
  AWS.Polly.Transform.SynthesizeSpeechResponseUnmarshaller;

type
  TAmazonPollyClient = class(TAmazonServiceClient, IAmazonPolly)
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
    function DeleteLexicon(Request: IDeleteLexiconRequest): IDeleteLexiconResponse; overload;
    function DescribeVoices(Request: IDescribeVoicesRequest): IDescribeVoicesResponse; overload;
    function GetLexicon(Request: IGetLexiconRequest): IGetLexiconResponse; overload;
    function GetSpeechSynthesisTask(Request: IGetSpeechSynthesisTaskRequest): IGetSpeechSynthesisTaskResponse; overload;
    function ListLexicons(Request: IListLexiconsRequest): IListLexiconsResponse; overload;
    function ListSpeechSynthesisTasks(Request: IListSpeechSynthesisTasksRequest): IListSpeechSynthesisTasksResponse; overload;
    function PutLexicon(Request: IPutLexiconRequest): IPutLexiconResponse; overload;
    function StartSpeechSynthesisTask(Request: IStartSpeechSynthesisTaskRequest): IStartSpeechSynthesisTaskResponse; overload;
    function SynthesizeSpeech(Request: ISynthesizeSpeechRequest): ISynthesizeSpeechResponse; overload;
  end;
  
implementation

{ TAmazonPollyClient }

constructor TAmazonPollyClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonPollyConfig.Create);
end;

constructor TAmazonPollyClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonPollyConfig.Create(Region));
end;

constructor TAmazonPollyClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonPollyClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonPollyConfig.Create);
end;

constructor TAmazonPollyClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonPollyConfig.Create(Region));
end;

constructor TAmazonPollyClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonPollyClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonPollyConfig.Create);
end;

constructor TAmazonPollyClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonPollyConfig.Create(Region));
end;

constructor TAmazonPollyClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonPollyClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonPollyConfig.Create);
end;

constructor TAmazonPollyClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonPollyConfig.Create(Region));
end;

constructor TAmazonPollyClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonPollyClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonPollyClient.Create;
begin
  FServiceMetadata := TAmazonPollyMetadata.Create;
end;

function TAmazonPollyClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonPollyClient.DeleteLexicon(Request: IDeleteLexiconRequest): IDeleteLexiconResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteLexiconRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteLexiconResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteLexiconResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonPollyClient.DescribeVoices(Request: IDescribeVoicesRequest): IDescribeVoicesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeVoicesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeVoicesResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeVoicesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonPollyClient.GetLexicon(Request: IGetLexiconRequest): IGetLexiconResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetLexiconRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetLexiconResponseUnmarshaller.Instance;
    Result := Invoke<TGetLexiconResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonPollyClient.GetSpeechSynthesisTask(Request: IGetSpeechSynthesisTaskRequest): IGetSpeechSynthesisTaskResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetSpeechSynthesisTaskRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetSpeechSynthesisTaskResponseUnmarshaller.Instance;
    Result := Invoke<TGetSpeechSynthesisTaskResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonPollyClient.ListLexicons(Request: IListLexiconsRequest): IListLexiconsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListLexiconsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListLexiconsResponseUnmarshaller.Instance;
    Result := Invoke<TListLexiconsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonPollyClient.ListSpeechSynthesisTasks(Request: IListSpeechSynthesisTasksRequest): IListSpeechSynthesisTasksResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListSpeechSynthesisTasksRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListSpeechSynthesisTasksResponseUnmarshaller.Instance;
    Result := Invoke<TListSpeechSynthesisTasksResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonPollyClient.PutLexicon(Request: IPutLexiconRequest): IPutLexiconResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutLexiconRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutLexiconResponseUnmarshaller.Instance;
    Result := Invoke<TPutLexiconResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonPollyClient.StartSpeechSynthesisTask(Request: IStartSpeechSynthesisTaskRequest): IStartSpeechSynthesisTaskResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartSpeechSynthesisTaskRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartSpeechSynthesisTaskResponseUnmarshaller.Instance;
    Result := Invoke<TStartSpeechSynthesisTaskResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonPollyClient.SynthesizeSpeech(Request: ISynthesizeSpeechRequest): ISynthesizeSpeechResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSynthesizeSpeechRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSynthesizeSpeechResponseUnmarshaller.Instance;
    Result := Invoke<TSynthesizeSpeechResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
