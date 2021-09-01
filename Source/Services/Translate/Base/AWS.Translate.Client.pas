unit AWS.Translate.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.Translate.ClientIntf, 
  AWS.Translate.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.Translate.Metadata, 
  AWS.Auth.Signer, 
  AWS.Translate.Model.CreateParallelDataResponse, 
  AWS.Translate.Model.CreateParallelDataRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.Translate.Transform.CreateParallelDataRequestMarshaller, 
  AWS.Translate.Transform.CreateParallelDataResponseUnmarshaller, 
  AWS.Translate.Model.DeleteParallelDataResponse, 
  AWS.Translate.Model.DeleteParallelDataRequest, 
  AWS.Translate.Transform.DeleteParallelDataRequestMarshaller, 
  AWS.Translate.Transform.DeleteParallelDataResponseUnmarshaller, 
  AWS.Translate.Model.DeleteTerminologyResponse, 
  AWS.Translate.Model.DeleteTerminologyRequest, 
  AWS.Translate.Transform.DeleteTerminologyRequestMarshaller, 
  AWS.Translate.Transform.DeleteTerminologyResponseUnmarshaller, 
  AWS.Translate.Model.DescribeTextTranslationJobResponse, 
  AWS.Translate.Model.DescribeTextTranslationJobRequest, 
  AWS.Translate.Transform.DescribeTextTranslationJobRequestMarshaller, 
  AWS.Translate.Transform.DescribeTextTranslationJobResponseUnmarshaller, 
  AWS.Translate.Model.GetParallelDataResponse, 
  AWS.Translate.Model.GetParallelDataRequest, 
  AWS.Translate.Transform.GetParallelDataRequestMarshaller, 
  AWS.Translate.Transform.GetParallelDataResponseUnmarshaller, 
  AWS.Translate.Model.GetTerminologyResponse, 
  AWS.Translate.Model.GetTerminologyRequest, 
  AWS.Translate.Transform.GetTerminologyRequestMarshaller, 
  AWS.Translate.Transform.GetTerminologyResponseUnmarshaller, 
  AWS.Translate.Model.ImportTerminologyResponse, 
  AWS.Translate.Model.ImportTerminologyRequest, 
  AWS.Translate.Transform.ImportTerminologyRequestMarshaller, 
  AWS.Translate.Transform.ImportTerminologyResponseUnmarshaller, 
  AWS.Translate.Model.ListParallelDataResponse, 
  AWS.Translate.Model.ListParallelDataRequest, 
  AWS.Translate.Transform.ListParallelDataRequestMarshaller, 
  AWS.Translate.Transform.ListParallelDataResponseUnmarshaller, 
  AWS.Translate.Model.ListTerminologiesResponse, 
  AWS.Translate.Model.ListTerminologiesRequest, 
  AWS.Translate.Transform.ListTerminologiesRequestMarshaller, 
  AWS.Translate.Transform.ListTerminologiesResponseUnmarshaller, 
  AWS.Translate.Model.ListTextTranslationJobsResponse, 
  AWS.Translate.Model.ListTextTranslationJobsRequest, 
  AWS.Translate.Transform.ListTextTranslationJobsRequestMarshaller, 
  AWS.Translate.Transform.ListTextTranslationJobsResponseUnmarshaller, 
  AWS.Translate.Model.StartTextTranslationJobResponse, 
  AWS.Translate.Model.StartTextTranslationJobRequest, 
  AWS.Translate.Transform.StartTextTranslationJobRequestMarshaller, 
  AWS.Translate.Transform.StartTextTranslationJobResponseUnmarshaller, 
  AWS.Translate.Model.StopTextTranslationJobResponse, 
  AWS.Translate.Model.StopTextTranslationJobRequest, 
  AWS.Translate.Transform.StopTextTranslationJobRequestMarshaller, 
  AWS.Translate.Transform.StopTextTranslationJobResponseUnmarshaller, 
  AWS.Translate.Model.TranslateTextResponse, 
  AWS.Translate.Model.TranslateTextRequest, 
  AWS.Translate.Transform.TranslateTextRequestMarshaller, 
  AWS.Translate.Transform.TranslateTextResponseUnmarshaller, 
  AWS.Translate.Model.UpdateParallelDataResponse, 
  AWS.Translate.Model.UpdateParallelDataRequest, 
  AWS.Translate.Transform.UpdateParallelDataRequestMarshaller, 
  AWS.Translate.Transform.UpdateParallelDataResponseUnmarshaller;

type
  TAmazonTranslateClient = class(TAmazonServiceClient, IAmazonTranslate)
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
    function CreateParallelData(Request: ICreateParallelDataRequest): ICreateParallelDataResponse; overload;
    function DeleteParallelData(Request: IDeleteParallelDataRequest): IDeleteParallelDataResponse; overload;
    function DeleteTerminology(Request: IDeleteTerminologyRequest): IDeleteTerminologyResponse; overload;
    function DescribeTextTranslationJob(Request: IDescribeTextTranslationJobRequest): IDescribeTextTranslationJobResponse; overload;
    function GetParallelData(Request: IGetParallelDataRequest): IGetParallelDataResponse; overload;
    function GetTerminology(Request: IGetTerminologyRequest): IGetTerminologyResponse; overload;
    function ImportTerminology(Request: IImportTerminologyRequest): IImportTerminologyResponse; overload;
    function ListParallelData(Request: IListParallelDataRequest): IListParallelDataResponse; overload;
    function ListTerminologies(Request: IListTerminologiesRequest): IListTerminologiesResponse; overload;
    function ListTextTranslationJobs(Request: IListTextTranslationJobsRequest): IListTextTranslationJobsResponse; overload;
    function StartTextTranslationJob(Request: IStartTextTranslationJobRequest): IStartTextTranslationJobResponse; overload;
    function StopTextTranslationJob(Request: IStopTextTranslationJobRequest): IStopTextTranslationJobResponse; overload;
    function TranslateText(Request: ITranslateTextRequest): ITranslateTextResponse; overload;
    function UpdateParallelData(Request: IUpdateParallelDataRequest): IUpdateParallelDataResponse; overload;
  end;
  
implementation

{ TAmazonTranslateClient }

constructor TAmazonTranslateClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonTranslateConfig.Create);
end;

constructor TAmazonTranslateClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonTranslateConfig.Create(Region));
end;

constructor TAmazonTranslateClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonTranslateClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonTranslateConfig.Create);
end;

constructor TAmazonTranslateClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonTranslateConfig.Create(Region));
end;

constructor TAmazonTranslateClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonTranslateClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonTranslateConfig.Create);
end;

constructor TAmazonTranslateClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonTranslateConfig.Create(Region));
end;

constructor TAmazonTranslateClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonTranslateClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonTranslateConfig.Create);
end;

constructor TAmazonTranslateClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonTranslateConfig.Create(Region));
end;

constructor TAmazonTranslateClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonTranslateClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonTranslateClient.Create;
begin
  FServiceMetadata := TAmazonTranslateMetadata.Create;
end;

function TAmazonTranslateClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonTranslateClient.CreateParallelData(Request: ICreateParallelDataRequest): ICreateParallelDataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateParallelDataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateParallelDataResponseUnmarshaller.Instance;
    Result := Invoke<TCreateParallelDataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.DeleteParallelData(Request: IDeleteParallelDataRequest): IDeleteParallelDataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteParallelDataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteParallelDataResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteParallelDataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.DeleteTerminology(Request: IDeleteTerminologyRequest): IDeleteTerminologyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteTerminologyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteTerminologyResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteTerminologyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.DescribeTextTranslationJob(Request: IDescribeTextTranslationJobRequest): IDescribeTextTranslationJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeTextTranslationJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeTextTranslationJobResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeTextTranslationJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.GetParallelData(Request: IGetParallelDataRequest): IGetParallelDataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetParallelDataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetParallelDataResponseUnmarshaller.Instance;
    Result := Invoke<TGetParallelDataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.GetTerminology(Request: IGetTerminologyRequest): IGetTerminologyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetTerminologyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetTerminologyResponseUnmarshaller.Instance;
    Result := Invoke<TGetTerminologyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.ImportTerminology(Request: IImportTerminologyRequest): IImportTerminologyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TImportTerminologyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TImportTerminologyResponseUnmarshaller.Instance;
    Result := Invoke<TImportTerminologyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.ListParallelData(Request: IListParallelDataRequest): IListParallelDataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListParallelDataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListParallelDataResponseUnmarshaller.Instance;
    Result := Invoke<TListParallelDataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.ListTerminologies(Request: IListTerminologiesRequest): IListTerminologiesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListTerminologiesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListTerminologiesResponseUnmarshaller.Instance;
    Result := Invoke<TListTerminologiesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.ListTextTranslationJobs(Request: IListTextTranslationJobsRequest): IListTextTranslationJobsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListTextTranslationJobsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListTextTranslationJobsResponseUnmarshaller.Instance;
    Result := Invoke<TListTextTranslationJobsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.StartTextTranslationJob(Request: IStartTextTranslationJobRequest): IStartTextTranslationJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartTextTranslationJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartTextTranslationJobResponseUnmarshaller.Instance;
    Result := Invoke<TStartTextTranslationJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.StopTextTranslationJob(Request: IStopTextTranslationJobRequest): IStopTextTranslationJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStopTextTranslationJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStopTextTranslationJobResponseUnmarshaller.Instance;
    Result := Invoke<TStopTextTranslationJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.TranslateText(Request: ITranslateTextRequest): ITranslateTextResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TTranslateTextRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TTranslateTextResponseUnmarshaller.Instance;
    Result := Invoke<TTranslateTextResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranslateClient.UpdateParallelData(Request: IUpdateParallelDataRequest): IUpdateParallelDataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateParallelDataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateParallelDataResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateParallelDataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
