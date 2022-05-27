unit AWS.Textract.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.Textract.ClientIntf, 
  AWS.Textract.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.Textract.Metadata, 
  AWS.Auth.Signer, 
  AWS.Textract.Model.AnalyzeDocumentResponse, 
  AWS.Textract.Model.AnalyzeDocumentRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.Textract.Transform.AnalyzeDocumentRequestMarshaller, 
  AWS.Textract.Transform.AnalyzeDocumentResponseUnmarshaller, 
  AWS.Textract.Model.AnalyzeExpenseResponse, 
  AWS.Textract.Model.AnalyzeExpenseRequest, 
  AWS.Textract.Transform.AnalyzeExpenseRequestMarshaller, 
  AWS.Textract.Transform.AnalyzeExpenseResponseUnmarshaller, 
  AWS.Textract.Model.AnalyzeIDResponse, 
  AWS.Textract.Model.AnalyzeIDRequest, 
  AWS.Textract.Transform.AnalyzeIDRequestMarshaller, 
  AWS.Textract.Transform.AnalyzeIDResponseUnmarshaller, 
  AWS.Textract.Model.DetectDocumentTextResponse, 
  AWS.Textract.Model.DetectDocumentTextRequest, 
  AWS.Textract.Transform.DetectDocumentTextRequestMarshaller, 
  AWS.Textract.Transform.DetectDocumentTextResponseUnmarshaller, 
  AWS.Textract.Model.GetDocumentAnalysisResponse, 
  AWS.Textract.Model.GetDocumentAnalysisRequest, 
  AWS.Textract.Transform.GetDocumentAnalysisRequestMarshaller, 
  AWS.Textract.Transform.GetDocumentAnalysisResponseUnmarshaller, 
  AWS.Textract.Model.GetDocumentTextDetectionResponse, 
  AWS.Textract.Model.GetDocumentTextDetectionRequest, 
  AWS.Textract.Transform.GetDocumentTextDetectionRequestMarshaller, 
  AWS.Textract.Transform.GetDocumentTextDetectionResponseUnmarshaller, 
  AWS.Textract.Model.GetExpenseAnalysisResponse, 
  AWS.Textract.Model.GetExpenseAnalysisRequest, 
  AWS.Textract.Transform.GetExpenseAnalysisRequestMarshaller, 
  AWS.Textract.Transform.GetExpenseAnalysisResponseUnmarshaller, 
  AWS.Textract.Model.StartDocumentAnalysisResponse, 
  AWS.Textract.Model.StartDocumentAnalysisRequest, 
  AWS.Textract.Transform.StartDocumentAnalysisRequestMarshaller, 
  AWS.Textract.Transform.StartDocumentAnalysisResponseUnmarshaller, 
  AWS.Textract.Model.StartDocumentTextDetectionResponse, 
  AWS.Textract.Model.StartDocumentTextDetectionRequest, 
  AWS.Textract.Transform.StartDocumentTextDetectionRequestMarshaller, 
  AWS.Textract.Transform.StartDocumentTextDetectionResponseUnmarshaller, 
  AWS.Textract.Model.StartExpenseAnalysisResponse, 
  AWS.Textract.Model.StartExpenseAnalysisRequest, 
  AWS.Textract.Transform.StartExpenseAnalysisRequestMarshaller, 
  AWS.Textract.Transform.StartExpenseAnalysisResponseUnmarshaller;

type
  TAmazonTextractClient = class(TAmazonServiceClient, IAmazonTextract)
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
    function AnalyzeDocument(Request: IAnalyzeDocumentRequest): IAnalyzeDocumentResponse; overload;
    function AnalyzeExpense(Request: IAnalyzeExpenseRequest): IAnalyzeExpenseResponse; overload;
    function AnalyzeID(Request: IAnalyzeIDRequest): IAnalyzeIDResponse; overload;
    function DetectDocumentText(Request: IDetectDocumentTextRequest): IDetectDocumentTextResponse; overload;
    function GetDocumentAnalysis(Request: IGetDocumentAnalysisRequest): IGetDocumentAnalysisResponse; overload;
    function GetDocumentTextDetection(Request: IGetDocumentTextDetectionRequest): IGetDocumentTextDetectionResponse; overload;
    function GetExpenseAnalysis(Request: IGetExpenseAnalysisRequest): IGetExpenseAnalysisResponse; overload;
    function StartDocumentAnalysis(Request: IStartDocumentAnalysisRequest): IStartDocumentAnalysisResponse; overload;
    function StartDocumentTextDetection(Request: IStartDocumentTextDetectionRequest): IStartDocumentTextDetectionResponse; overload;
    function StartExpenseAnalysis(Request: IStartExpenseAnalysisRequest): IStartExpenseAnalysisResponse; overload;
  end;
  
implementation

{ TAmazonTextractClient }

constructor TAmazonTextractClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonTextractConfig.Create);
end;

constructor TAmazonTextractClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonTextractConfig.Create(Region));
end;

constructor TAmazonTextractClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonTextractClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonTextractConfig.Create);
end;

constructor TAmazonTextractClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonTextractConfig.Create(Region));
end;

constructor TAmazonTextractClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonTextractClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonTextractConfig.Create);
end;

constructor TAmazonTextractClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonTextractConfig.Create(Region));
end;

constructor TAmazonTextractClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonTextractClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonTextractConfig.Create);
end;

constructor TAmazonTextractClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonTextractConfig.Create(Region));
end;

constructor TAmazonTextractClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonTextractClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonTextractClient.Create;
begin
  FServiceMetadata := TAmazonTextractMetadata.Create;
end;

function TAmazonTextractClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonTextractClient.AnalyzeDocument(Request: IAnalyzeDocumentRequest): IAnalyzeDocumentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TAnalyzeDocumentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TAnalyzeDocumentResponseUnmarshaller.Instance;
    Result := Invoke<TAnalyzeDocumentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTextractClient.AnalyzeExpense(Request: IAnalyzeExpenseRequest): IAnalyzeExpenseResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TAnalyzeExpenseRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TAnalyzeExpenseResponseUnmarshaller.Instance;
    Result := Invoke<TAnalyzeExpenseResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTextractClient.AnalyzeID(Request: IAnalyzeIDRequest): IAnalyzeIDResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TAnalyzeIDRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TAnalyzeIDResponseUnmarshaller.Instance;
    Result := Invoke<TAnalyzeIDResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTextractClient.DetectDocumentText(Request: IDetectDocumentTextRequest): IDetectDocumentTextResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDetectDocumentTextRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDetectDocumentTextResponseUnmarshaller.Instance;
    Result := Invoke<TDetectDocumentTextResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTextractClient.GetDocumentAnalysis(Request: IGetDocumentAnalysisRequest): IGetDocumentAnalysisResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDocumentAnalysisRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDocumentAnalysisResponseUnmarshaller.Instance;
    Result := Invoke<TGetDocumentAnalysisResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTextractClient.GetDocumentTextDetection(Request: IGetDocumentTextDetectionRequest): IGetDocumentTextDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetDocumentTextDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetDocumentTextDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TGetDocumentTextDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTextractClient.GetExpenseAnalysis(Request: IGetExpenseAnalysisRequest): IGetExpenseAnalysisResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetExpenseAnalysisRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetExpenseAnalysisResponseUnmarshaller.Instance;
    Result := Invoke<TGetExpenseAnalysisResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTextractClient.StartDocumentAnalysis(Request: IStartDocumentAnalysisRequest): IStartDocumentAnalysisResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartDocumentAnalysisRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartDocumentAnalysisResponseUnmarshaller.Instance;
    Result := Invoke<TStartDocumentAnalysisResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTextractClient.StartDocumentTextDetection(Request: IStartDocumentTextDetectionRequest): IStartDocumentTextDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartDocumentTextDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartDocumentTextDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TStartDocumentTextDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTextractClient.StartExpenseAnalysis(Request: IStartExpenseAnalysisRequest): IStartExpenseAnalysisResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartExpenseAnalysisRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartExpenseAnalysisResponseUnmarshaller.Instance;
    Result := Invoke<TStartExpenseAnalysisResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
