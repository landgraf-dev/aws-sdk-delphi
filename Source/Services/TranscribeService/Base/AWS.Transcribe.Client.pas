unit AWS.Transcribe.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.Transcribe.ClientIntf, 
  AWS.Transcribe.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.Transcribe.Metadata, 
  AWS.Auth.Signer, 
  AWS.Transcribe.Model.CreateLanguageModelResponse, 
  AWS.Transcribe.Model.CreateLanguageModelRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.Transcribe.Transform.CreateLanguageModelRequestMarshaller, 
  AWS.Transcribe.Transform.CreateLanguageModelResponseUnmarshaller, 
  AWS.Transcribe.Model.CreateMedicalVocabularyResponse, 
  AWS.Transcribe.Model.CreateMedicalVocabularyRequest, 
  AWS.Transcribe.Transform.CreateMedicalVocabularyRequestMarshaller, 
  AWS.Transcribe.Transform.CreateMedicalVocabularyResponseUnmarshaller, 
  AWS.Transcribe.Model.CreateVocabularyResponse, 
  AWS.Transcribe.Model.CreateVocabularyRequest, 
  AWS.Transcribe.Transform.CreateVocabularyRequestMarshaller, 
  AWS.Transcribe.Transform.CreateVocabularyResponseUnmarshaller, 
  AWS.Transcribe.Model.CreateVocabularyFilterResponse, 
  AWS.Transcribe.Model.CreateVocabularyFilterRequest, 
  AWS.Transcribe.Transform.CreateVocabularyFilterRequestMarshaller, 
  AWS.Transcribe.Transform.CreateVocabularyFilterResponseUnmarshaller, 
  AWS.Transcribe.Model.DeleteLanguageModelResponse, 
  AWS.Transcribe.Model.DeleteLanguageModelRequest, 
  AWS.Transcribe.Transform.DeleteLanguageModelRequestMarshaller, 
  AWS.Transcribe.Transform.DeleteLanguageModelResponseUnmarshaller, 
  AWS.Transcribe.Model.DeleteMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.DeleteMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Transform.DeleteMedicalTranscriptionJobRequestMarshaller, 
  AWS.Transcribe.Transform.DeleteMedicalTranscriptionJobResponseUnmarshaller, 
  AWS.Transcribe.Model.DeleteMedicalVocabularyResponse, 
  AWS.Transcribe.Model.DeleteMedicalVocabularyRequest, 
  AWS.Transcribe.Transform.DeleteMedicalVocabularyRequestMarshaller, 
  AWS.Transcribe.Transform.DeleteMedicalVocabularyResponseUnmarshaller, 
  AWS.Transcribe.Model.DeleteTranscriptionJobResponse, 
  AWS.Transcribe.Model.DeleteTranscriptionJobRequest, 
  AWS.Transcribe.Transform.DeleteTranscriptionJobRequestMarshaller, 
  AWS.Transcribe.Transform.DeleteTranscriptionJobResponseUnmarshaller, 
  AWS.Transcribe.Model.DeleteVocabularyResponse, 
  AWS.Transcribe.Model.DeleteVocabularyRequest, 
  AWS.Transcribe.Transform.DeleteVocabularyRequestMarshaller, 
  AWS.Transcribe.Transform.DeleteVocabularyResponseUnmarshaller, 
  AWS.Transcribe.Model.DeleteVocabularyFilterResponse, 
  AWS.Transcribe.Model.DeleteVocabularyFilterRequest, 
  AWS.Transcribe.Transform.DeleteVocabularyFilterRequestMarshaller, 
  AWS.Transcribe.Transform.DeleteVocabularyFilterResponseUnmarshaller, 
  AWS.Transcribe.Model.DescribeLanguageModelResponse, 
  AWS.Transcribe.Model.DescribeLanguageModelRequest, 
  AWS.Transcribe.Transform.DescribeLanguageModelRequestMarshaller, 
  AWS.Transcribe.Transform.DescribeLanguageModelResponseUnmarshaller, 
  AWS.Transcribe.Model.GetMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.GetMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Transform.GetMedicalTranscriptionJobRequestMarshaller, 
  AWS.Transcribe.Transform.GetMedicalTranscriptionJobResponseUnmarshaller, 
  AWS.Transcribe.Model.GetMedicalVocabularyResponse, 
  AWS.Transcribe.Model.GetMedicalVocabularyRequest, 
  AWS.Transcribe.Transform.GetMedicalVocabularyRequestMarshaller, 
  AWS.Transcribe.Transform.GetMedicalVocabularyResponseUnmarshaller, 
  AWS.Transcribe.Model.GetTranscriptionJobResponse, 
  AWS.Transcribe.Model.GetTranscriptionJobRequest, 
  AWS.Transcribe.Transform.GetTranscriptionJobRequestMarshaller, 
  AWS.Transcribe.Transform.GetTranscriptionJobResponseUnmarshaller, 
  AWS.Transcribe.Model.GetVocabularyResponse, 
  AWS.Transcribe.Model.GetVocabularyRequest, 
  AWS.Transcribe.Transform.GetVocabularyRequestMarshaller, 
  AWS.Transcribe.Transform.GetVocabularyResponseUnmarshaller, 
  AWS.Transcribe.Model.GetVocabularyFilterResponse, 
  AWS.Transcribe.Model.GetVocabularyFilterRequest, 
  AWS.Transcribe.Transform.GetVocabularyFilterRequestMarshaller, 
  AWS.Transcribe.Transform.GetVocabularyFilterResponseUnmarshaller, 
  AWS.Transcribe.Model.ListLanguageModelsResponse, 
  AWS.Transcribe.Model.ListLanguageModelsRequest, 
  AWS.Transcribe.Transform.ListLanguageModelsRequestMarshaller, 
  AWS.Transcribe.Transform.ListLanguageModelsResponseUnmarshaller, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest, 
  AWS.Transcribe.Transform.ListMedicalTranscriptionJobsRequestMarshaller, 
  AWS.Transcribe.Transform.ListMedicalTranscriptionJobsResponseUnmarshaller, 
  AWS.Transcribe.Model.ListMedicalVocabulariesResponse, 
  AWS.Transcribe.Model.ListMedicalVocabulariesRequest, 
  AWS.Transcribe.Transform.ListMedicalVocabulariesRequestMarshaller, 
  AWS.Transcribe.Transform.ListMedicalVocabulariesResponseUnmarshaller, 
  AWS.Transcribe.Model.ListTranscriptionJobsResponse, 
  AWS.Transcribe.Model.ListTranscriptionJobsRequest, 
  AWS.Transcribe.Transform.ListTranscriptionJobsRequestMarshaller, 
  AWS.Transcribe.Transform.ListTranscriptionJobsResponseUnmarshaller, 
  AWS.Transcribe.Model.ListVocabulariesResponse, 
  AWS.Transcribe.Model.ListVocabulariesRequest, 
  AWS.Transcribe.Transform.ListVocabulariesRequestMarshaller, 
  AWS.Transcribe.Transform.ListVocabulariesResponseUnmarshaller, 
  AWS.Transcribe.Model.ListVocabularyFiltersResponse, 
  AWS.Transcribe.Model.ListVocabularyFiltersRequest, 
  AWS.Transcribe.Transform.ListVocabularyFiltersRequestMarshaller, 
  AWS.Transcribe.Transform.ListVocabularyFiltersResponseUnmarshaller, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Transform.StartMedicalTranscriptionJobRequestMarshaller, 
  AWS.Transcribe.Transform.StartMedicalTranscriptionJobResponseUnmarshaller, 
  AWS.Transcribe.Model.StartTranscriptionJobResponse, 
  AWS.Transcribe.Model.StartTranscriptionJobRequest, 
  AWS.Transcribe.Transform.StartTranscriptionJobRequestMarshaller, 
  AWS.Transcribe.Transform.StartTranscriptionJobResponseUnmarshaller, 
  AWS.Transcribe.Model.UpdateMedicalVocabularyResponse, 
  AWS.Transcribe.Model.UpdateMedicalVocabularyRequest, 
  AWS.Transcribe.Transform.UpdateMedicalVocabularyRequestMarshaller, 
  AWS.Transcribe.Transform.UpdateMedicalVocabularyResponseUnmarshaller, 
  AWS.Transcribe.Model.UpdateVocabularyResponse, 
  AWS.Transcribe.Model.UpdateVocabularyRequest, 
  AWS.Transcribe.Transform.UpdateVocabularyRequestMarshaller, 
  AWS.Transcribe.Transform.UpdateVocabularyResponseUnmarshaller, 
  AWS.Transcribe.Model.UpdateVocabularyFilterResponse, 
  AWS.Transcribe.Model.UpdateVocabularyFilterRequest, 
  AWS.Transcribe.Transform.UpdateVocabularyFilterRequestMarshaller, 
  AWS.Transcribe.Transform.UpdateVocabularyFilterResponseUnmarshaller;

type
  TAmazonTranscribeServiceClient = class(TAmazonServiceClient, IAmazonTranscribeService)
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
    function CreateLanguageModel(Request: ICreateLanguageModelRequest): ICreateLanguageModelResponse; overload;
    function CreateMedicalVocabulary(Request: ICreateMedicalVocabularyRequest): ICreateMedicalVocabularyResponse; overload;
    function CreateVocabulary(Request: ICreateVocabularyRequest): ICreateVocabularyResponse; overload;
    function CreateVocabularyFilter(Request: ICreateVocabularyFilterRequest): ICreateVocabularyFilterResponse; overload;
    function DeleteLanguageModel(Request: IDeleteLanguageModelRequest): IDeleteLanguageModelResponse; overload;
    function DeleteMedicalTranscriptionJob(Request: IDeleteMedicalTranscriptionJobRequest): IDeleteMedicalTranscriptionJobResponse; overload;
    function DeleteMedicalVocabulary(Request: IDeleteMedicalVocabularyRequest): IDeleteMedicalVocabularyResponse; overload;
    function DeleteTranscriptionJob(Request: IDeleteTranscriptionJobRequest): IDeleteTranscriptionJobResponse; overload;
    function DeleteVocabulary(Request: IDeleteVocabularyRequest): IDeleteVocabularyResponse; overload;
    function DeleteVocabularyFilter(Request: IDeleteVocabularyFilterRequest): IDeleteVocabularyFilterResponse; overload;
    function DescribeLanguageModel(Request: IDescribeLanguageModelRequest): IDescribeLanguageModelResponse; overload;
    function GetMedicalTranscriptionJob(Request: IGetMedicalTranscriptionJobRequest): IGetMedicalTranscriptionJobResponse; overload;
    function GetMedicalVocabulary(Request: IGetMedicalVocabularyRequest): IGetMedicalVocabularyResponse; overload;
    function GetTranscriptionJob(Request: IGetTranscriptionJobRequest): IGetTranscriptionJobResponse; overload;
    function GetVocabulary(Request: IGetVocabularyRequest): IGetVocabularyResponse; overload;
    function GetVocabularyFilter(Request: IGetVocabularyFilterRequest): IGetVocabularyFilterResponse; overload;
    function ListLanguageModels(Request: IListLanguageModelsRequest): IListLanguageModelsResponse; overload;
    function ListMedicalTranscriptionJobs(Request: IListMedicalTranscriptionJobsRequest): IListMedicalTranscriptionJobsResponse; overload;
    function ListMedicalVocabularies(Request: IListMedicalVocabulariesRequest): IListMedicalVocabulariesResponse; overload;
    function ListTranscriptionJobs(Request: IListTranscriptionJobsRequest): IListTranscriptionJobsResponse; overload;
    function ListVocabularies(Request: IListVocabulariesRequest): IListVocabulariesResponse; overload;
    function ListVocabularyFilters(Request: IListVocabularyFiltersRequest): IListVocabularyFiltersResponse; overload;
    function StartMedicalTranscriptionJob(Request: IStartMedicalTranscriptionJobRequest): IStartMedicalTranscriptionJobResponse; overload;
    function StartTranscriptionJob(Request: IStartTranscriptionJobRequest): IStartTranscriptionJobResponse; overload;
    function UpdateMedicalVocabulary(Request: IUpdateMedicalVocabularyRequest): IUpdateMedicalVocabularyResponse; overload;
    function UpdateVocabulary(Request: IUpdateVocabularyRequest): IUpdateVocabularyResponse; overload;
    function UpdateVocabularyFilter(Request: IUpdateVocabularyFilterRequest): IUpdateVocabularyFilterResponse; overload;
  end;
  
implementation

{ TAmazonTranscribeServiceClient }

constructor TAmazonTranscribeServiceClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonTranscribeServiceConfig.Create);
end;

constructor TAmazonTranscribeServiceClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonTranscribeServiceConfig.Create(Region));
end;

constructor TAmazonTranscribeServiceClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonTranscribeServiceClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonTranscribeServiceConfig.Create);
end;

constructor TAmazonTranscribeServiceClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonTranscribeServiceConfig.Create(Region));
end;

constructor TAmazonTranscribeServiceClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonTranscribeServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonTranscribeServiceConfig.Create);
end;

constructor TAmazonTranscribeServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonTranscribeServiceConfig.Create(Region));
end;

constructor TAmazonTranscribeServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonTranscribeServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonTranscribeServiceConfig.Create);
end;

constructor TAmazonTranscribeServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonTranscribeServiceConfig.Create(Region));
end;

constructor TAmazonTranscribeServiceClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonTranscribeServiceClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonTranscribeServiceClient.Create;
begin
  FServiceMetadata := TAmazonTranscribeServiceMetadata.Create;
end;

function TAmazonTranscribeServiceClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonTranscribeServiceClient.CreateLanguageModel(Request: ICreateLanguageModelRequest): ICreateLanguageModelResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateLanguageModelRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateLanguageModelResponseUnmarshaller.Instance;
    Result := Invoke<TCreateLanguageModelResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.CreateMedicalVocabulary(Request: ICreateMedicalVocabularyRequest): ICreateMedicalVocabularyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateMedicalVocabularyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateMedicalVocabularyResponseUnmarshaller.Instance;
    Result := Invoke<TCreateMedicalVocabularyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.CreateVocabulary(Request: ICreateVocabularyRequest): ICreateVocabularyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateVocabularyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateVocabularyResponseUnmarshaller.Instance;
    Result := Invoke<TCreateVocabularyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.CreateVocabularyFilter(Request: ICreateVocabularyFilterRequest): ICreateVocabularyFilterResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateVocabularyFilterRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateVocabularyFilterResponseUnmarshaller.Instance;
    Result := Invoke<TCreateVocabularyFilterResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.DeleteLanguageModel(Request: IDeleteLanguageModelRequest): IDeleteLanguageModelResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteLanguageModelRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteLanguageModelResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteLanguageModelResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.DeleteMedicalTranscriptionJob(Request: IDeleteMedicalTranscriptionJobRequest): IDeleteMedicalTranscriptionJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteMedicalTranscriptionJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteMedicalTranscriptionJobResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteMedicalTranscriptionJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.DeleteMedicalVocabulary(Request: IDeleteMedicalVocabularyRequest): IDeleteMedicalVocabularyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteMedicalVocabularyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteMedicalVocabularyResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteMedicalVocabularyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.DeleteTranscriptionJob(Request: IDeleteTranscriptionJobRequest): IDeleteTranscriptionJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteTranscriptionJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteTranscriptionJobResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteTranscriptionJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.DeleteVocabulary(Request: IDeleteVocabularyRequest): IDeleteVocabularyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteVocabularyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteVocabularyResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteVocabularyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.DeleteVocabularyFilter(Request: IDeleteVocabularyFilterRequest): IDeleteVocabularyFilterResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteVocabularyFilterRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteVocabularyFilterResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteVocabularyFilterResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.DescribeLanguageModel(Request: IDescribeLanguageModelRequest): IDescribeLanguageModelResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeLanguageModelRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeLanguageModelResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeLanguageModelResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.GetMedicalTranscriptionJob(Request: IGetMedicalTranscriptionJobRequest): IGetMedicalTranscriptionJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetMedicalTranscriptionJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetMedicalTranscriptionJobResponseUnmarshaller.Instance;
    Result := Invoke<TGetMedicalTranscriptionJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.GetMedicalVocabulary(Request: IGetMedicalVocabularyRequest): IGetMedicalVocabularyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetMedicalVocabularyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetMedicalVocabularyResponseUnmarshaller.Instance;
    Result := Invoke<TGetMedicalVocabularyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.GetTranscriptionJob(Request: IGetTranscriptionJobRequest): IGetTranscriptionJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetTranscriptionJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetTranscriptionJobResponseUnmarshaller.Instance;
    Result := Invoke<TGetTranscriptionJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.GetVocabulary(Request: IGetVocabularyRequest): IGetVocabularyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetVocabularyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetVocabularyResponseUnmarshaller.Instance;
    Result := Invoke<TGetVocabularyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.GetVocabularyFilter(Request: IGetVocabularyFilterRequest): IGetVocabularyFilterResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetVocabularyFilterRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetVocabularyFilterResponseUnmarshaller.Instance;
    Result := Invoke<TGetVocabularyFilterResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.ListLanguageModels(Request: IListLanguageModelsRequest): IListLanguageModelsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListLanguageModelsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListLanguageModelsResponseUnmarshaller.Instance;
    Result := Invoke<TListLanguageModelsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.ListMedicalTranscriptionJobs(Request: IListMedicalTranscriptionJobsRequest): IListMedicalTranscriptionJobsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListMedicalTranscriptionJobsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListMedicalTranscriptionJobsResponseUnmarshaller.Instance;
    Result := Invoke<TListMedicalTranscriptionJobsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.ListMedicalVocabularies(Request: IListMedicalVocabulariesRequest): IListMedicalVocabulariesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListMedicalVocabulariesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListMedicalVocabulariesResponseUnmarshaller.Instance;
    Result := Invoke<TListMedicalVocabulariesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.ListTranscriptionJobs(Request: IListTranscriptionJobsRequest): IListTranscriptionJobsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListTranscriptionJobsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListTranscriptionJobsResponseUnmarshaller.Instance;
    Result := Invoke<TListTranscriptionJobsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.ListVocabularies(Request: IListVocabulariesRequest): IListVocabulariesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListVocabulariesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListVocabulariesResponseUnmarshaller.Instance;
    Result := Invoke<TListVocabulariesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.ListVocabularyFilters(Request: IListVocabularyFiltersRequest): IListVocabularyFiltersResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListVocabularyFiltersRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListVocabularyFiltersResponseUnmarshaller.Instance;
    Result := Invoke<TListVocabularyFiltersResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.StartMedicalTranscriptionJob(Request: IStartMedicalTranscriptionJobRequest): IStartMedicalTranscriptionJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartMedicalTranscriptionJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartMedicalTranscriptionJobResponseUnmarshaller.Instance;
    Result := Invoke<TStartMedicalTranscriptionJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.StartTranscriptionJob(Request: IStartTranscriptionJobRequest): IStartTranscriptionJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartTranscriptionJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartTranscriptionJobResponseUnmarshaller.Instance;
    Result := Invoke<TStartTranscriptionJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.UpdateMedicalVocabulary(Request: IUpdateMedicalVocabularyRequest): IUpdateMedicalVocabularyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateMedicalVocabularyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateMedicalVocabularyResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateMedicalVocabularyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.UpdateVocabulary(Request: IUpdateVocabularyRequest): IUpdateVocabularyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateVocabularyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateVocabularyResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateVocabularyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonTranscribeServiceClient.UpdateVocabularyFilter(Request: IUpdateVocabularyFilterRequest): IUpdateVocabularyFilterResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateVocabularyFilterRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateVocabularyFilterResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateVocabularyFilterResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
