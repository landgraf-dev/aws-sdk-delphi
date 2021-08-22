unit AWS.LexRuntimeV2.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.LexRuntimeV2.ClientIntf, 
  AWS.LexRuntimeV2.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.LexRuntimeV2.Metadata, 
  AWS.Auth.Signer, 
  AWS.LexRuntimeV2.Model.DeleteSessionResponse, 
  AWS.LexRuntimeV2.Model.DeleteSessionRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.LexRuntimeV2.Transform.DeleteSessionRequestMarshaller, 
  AWS.LexRuntimeV2.Transform.DeleteSessionResponseUnmarshaller, 
  AWS.LexRuntimeV2.Model.GetSessionResponse, 
  AWS.LexRuntimeV2.Model.GetSessionRequest, 
  AWS.LexRuntimeV2.Transform.GetSessionRequestMarshaller, 
  AWS.LexRuntimeV2.Transform.GetSessionResponseUnmarshaller, 
  AWS.LexRuntimeV2.Model.PutSessionResponse, 
  AWS.LexRuntimeV2.Model.PutSessionRequest, 
  AWS.LexRuntimeV2.Transform.PutSessionRequestMarshaller, 
  AWS.LexRuntimeV2.Transform.PutSessionResponseUnmarshaller, 
  AWS.LexRuntimeV2.Model.RecognizeTextResponse, 
  AWS.LexRuntimeV2.Model.RecognizeTextRequest, 
  AWS.LexRuntimeV2.Transform.RecognizeTextRequestMarshaller, 
  AWS.LexRuntimeV2.Transform.RecognizeTextResponseUnmarshaller, 
  AWS.LexRuntimeV2.Model.RecognizeUtteranceResponse, 
  AWS.LexRuntimeV2.Model.RecognizeUtteranceRequest, 
  AWS.LexRuntimeV2.Transform.RecognizeUtteranceRequestMarshaller, 
  AWS.LexRuntimeV2.Transform.RecognizeUtteranceResponseUnmarshaller;

type
  TAmazonLexRuntimeV2Client = class(TAmazonServiceClient, IAmazonLexRuntimeV2)
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
    function PutSession(Request: IPutSessionRequest): IPutSessionResponse; overload;
    function RecognizeText(Request: IRecognizeTextRequest): IRecognizeTextResponse; overload;
    function RecognizeUtterance(Request: IRecognizeUtteranceRequest): IRecognizeUtteranceResponse; overload;
  end;
  
implementation

{ TAmazonLexRuntimeV2Client }

constructor TAmazonLexRuntimeV2Client.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonLexRuntimeV2Config.Create);
end;

constructor TAmazonLexRuntimeV2Client.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonLexRuntimeV2Config.Create(Region));
end;

constructor TAmazonLexRuntimeV2Client.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonLexRuntimeV2Client.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonLexRuntimeV2Config.Create);
end;

constructor TAmazonLexRuntimeV2Client.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonLexRuntimeV2Config.Create(Region));
end;

constructor TAmazonLexRuntimeV2Client.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonLexRuntimeV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonLexRuntimeV2Config.Create);
end;

constructor TAmazonLexRuntimeV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonLexRuntimeV2Config.Create(Region));
end;

constructor TAmazonLexRuntimeV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonLexRuntimeV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonLexRuntimeV2Config.Create);
end;

constructor TAmazonLexRuntimeV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonLexRuntimeV2Config.Create(Region));
end;

constructor TAmazonLexRuntimeV2Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonLexRuntimeV2Client.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonLexRuntimeV2Client.Create;
begin
  FServiceMetadata := TAmazonLexRuntimeV2Metadata.Create;
end;

function TAmazonLexRuntimeV2Client.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonLexRuntimeV2Client.DeleteSession(Request: IDeleteSessionRequest): IDeleteSessionResponse;
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

function TAmazonLexRuntimeV2Client.GetSession(Request: IGetSessionRequest): IGetSessionResponse;
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

function TAmazonLexRuntimeV2Client.PutSession(Request: IPutSessionRequest): IPutSessionResponse;
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

function TAmazonLexRuntimeV2Client.RecognizeText(Request: IRecognizeTextRequest): IRecognizeTextResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRecognizeTextRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRecognizeTextResponseUnmarshaller.Instance;
    Result := Invoke<TRecognizeTextResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonLexRuntimeV2Client.RecognizeUtterance(Request: IRecognizeUtteranceRequest): IRecognizeUtteranceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRecognizeUtteranceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRecognizeUtteranceResponseUnmarshaller.Instance;
    Result := Invoke<TRecognizeUtteranceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
