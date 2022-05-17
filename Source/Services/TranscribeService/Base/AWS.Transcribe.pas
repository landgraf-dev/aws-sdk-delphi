unit AWS.Transcribe;

interface

uses
  AWS.Transcribe.Client, 
  AWS.Transcribe.ClientIntf, 
  AWS.Transcribe.Config, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Exception, 
  AWS.Transcribe.Metadata, 
  AWS.Transcribe.Model.BadRequestException, 
  AWS.Transcribe.Model.ConflictException, 
  AWS.Transcribe.Model.ContentRedaction, 
  AWS.Transcribe.Model.CreateLanguageModelRequest, 
  AWS.Transcribe.Model.CreateLanguageModelResponse, 
  AWS.Transcribe.Model.CreateMedicalVocabularyRequest, 
  AWS.Transcribe.Model.CreateMedicalVocabularyResponse, 
  AWS.Transcribe.Model.CreateVocabularyFilterRequest, 
  AWS.Transcribe.Model.CreateVocabularyFilterResponse, 
  AWS.Transcribe.Model.CreateVocabularyRequest, 
  AWS.Transcribe.Model.CreateVocabularyResponse, 
  AWS.Transcribe.Model.DeleteLanguageModelRequest, 
  AWS.Transcribe.Model.DeleteLanguageModelResponse, 
  AWS.Transcribe.Model.DeleteMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Model.DeleteMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.DeleteMedicalVocabularyRequest, 
  AWS.Transcribe.Model.DeleteMedicalVocabularyResponse, 
  AWS.Transcribe.Model.DeleteTranscriptionJobRequest, 
  AWS.Transcribe.Model.DeleteTranscriptionJobResponse, 
  AWS.Transcribe.Model.DeleteVocabularyFilterRequest, 
  AWS.Transcribe.Model.DeleteVocabularyFilterResponse, 
  AWS.Transcribe.Model.DeleteVocabularyRequest, 
  AWS.Transcribe.Model.DeleteVocabularyResponse, 
  AWS.Transcribe.Model.DescribeLanguageModelRequest, 
  AWS.Transcribe.Model.DescribeLanguageModelResponse, 
  AWS.Transcribe.Model.GetMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Model.GetMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.GetMedicalVocabularyRequest, 
  AWS.Transcribe.Model.GetMedicalVocabularyResponse, 
  AWS.Transcribe.Model.GetTranscriptionJobRequest, 
  AWS.Transcribe.Model.GetTranscriptionJobResponse, 
  AWS.Transcribe.Model.GetVocabularyFilterRequest, 
  AWS.Transcribe.Model.GetVocabularyFilterResponse, 
  AWS.Transcribe.Model.GetVocabularyRequest, 
  AWS.Transcribe.Model.GetVocabularyResponse, 
  AWS.Transcribe.Model.InputDataConfig, 
  AWS.Transcribe.Model.InternalFailureException, 
  AWS.Transcribe.Model.JobExecutionSettings, 
  AWS.Transcribe.Model.LanguageModel, 
  AWS.Transcribe.Model.LimitExceededException, 
  AWS.Transcribe.Model.ListLanguageModelsRequest, 
  AWS.Transcribe.Model.ListLanguageModelsResponse, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse, 
  AWS.Transcribe.Model.ListMedicalVocabulariesRequest, 
  AWS.Transcribe.Model.ListMedicalVocabulariesResponse, 
  AWS.Transcribe.Model.ListTranscriptionJobsRequest, 
  AWS.Transcribe.Model.ListTranscriptionJobsResponse, 
  AWS.Transcribe.Model.ListVocabulariesRequest, 
  AWS.Transcribe.Model.ListVocabulariesResponse, 
  AWS.Transcribe.Model.ListVocabularyFiltersRequest, 
  AWS.Transcribe.Model.ListVocabularyFiltersResponse, 
  AWS.Transcribe.Model.Media, 
  AWS.Transcribe.Model.MedicalTranscript, 
  AWS.Transcribe.Model.MedicalTranscriptionJob, 
  AWS.Transcribe.Model.MedicalTranscriptionJobSummary, 
  AWS.Transcribe.Model.MedicalTranscriptionSetting, 
  AWS.Transcribe.Model.ModelSettings, 
  AWS.Transcribe.Model.NotFoundException, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Model.Settings, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.StartTranscriptionJobRequest, 
  AWS.Transcribe.Model.StartTranscriptionJobResponse, 
  AWS.Transcribe.Model.Transcript, 
  AWS.Transcribe.Model.TranscriptionJob, 
  AWS.Transcribe.Model.TranscriptionJobSummary, 
  AWS.Transcribe.Model.UpdateMedicalVocabularyRequest, 
  AWS.Transcribe.Model.UpdateMedicalVocabularyResponse, 
  AWS.Transcribe.Model.UpdateVocabularyFilterRequest, 
  AWS.Transcribe.Model.UpdateVocabularyFilterResponse, 
  AWS.Transcribe.Model.UpdateVocabularyRequest, 
  AWS.Transcribe.Model.UpdateVocabularyResponse, 
  AWS.Transcribe.Model.VocabularyFilterInfo, 
  AWS.Transcribe.Model.VocabularyInfo;

type
  EAmazonTranscribeServiceException = AWS.Transcribe.Exception.EAmazonTranscribeServiceException;
  EBadRequestException = AWS.Transcribe.Model.BadRequestException.EBadRequestException;
  EConflictException = AWS.Transcribe.Model.ConflictException.EConflictException;
  EInternalFailureException = AWS.Transcribe.Model.InternalFailureException.EInternalFailureException;
  ELimitExceededException = AWS.Transcribe.Model.LimitExceededException.ELimitExceededException;
  ENotFoundException = AWS.Transcribe.Model.NotFoundException.ENotFoundException;
  IAmazonTranscribeService = AWS.Transcribe.ClientIntf.IAmazonTranscribeService;
  IContentRedaction = AWS.Transcribe.Model.ContentRedaction.IContentRedaction;
  ICreateLanguageModelRequest = AWS.Transcribe.Model.CreateLanguageModelRequest.ICreateLanguageModelRequest;
  ICreateLanguageModelResponse = AWS.Transcribe.Model.CreateLanguageModelResponse.ICreateLanguageModelResponse;
  ICreateMedicalVocabularyRequest = AWS.Transcribe.Model.CreateMedicalVocabularyRequest.ICreateMedicalVocabularyRequest;
  ICreateMedicalVocabularyResponse = AWS.Transcribe.Model.CreateMedicalVocabularyResponse.ICreateMedicalVocabularyResponse;
  ICreateVocabularyFilterRequest = AWS.Transcribe.Model.CreateVocabularyFilterRequest.ICreateVocabularyFilterRequest;
  ICreateVocabularyFilterResponse = AWS.Transcribe.Model.CreateVocabularyFilterResponse.ICreateVocabularyFilterResponse;
  ICreateVocabularyRequest = AWS.Transcribe.Model.CreateVocabularyRequest.ICreateVocabularyRequest;
  ICreateVocabularyResponse = AWS.Transcribe.Model.CreateVocabularyResponse.ICreateVocabularyResponse;
  IDeleteLanguageModelRequest = AWS.Transcribe.Model.DeleteLanguageModelRequest.IDeleteLanguageModelRequest;
  IDeleteLanguageModelResponse = AWS.Transcribe.Model.DeleteLanguageModelResponse.IDeleteLanguageModelResponse;
  IDeleteMedicalTranscriptionJobRequest = AWS.Transcribe.Model.DeleteMedicalTranscriptionJobRequest.IDeleteMedicalTranscriptionJobRequest;
  IDeleteMedicalTranscriptionJobResponse = AWS.Transcribe.Model.DeleteMedicalTranscriptionJobResponse.IDeleteMedicalTranscriptionJobResponse;
  IDeleteMedicalVocabularyRequest = AWS.Transcribe.Model.DeleteMedicalVocabularyRequest.IDeleteMedicalVocabularyRequest;
  IDeleteMedicalVocabularyResponse = AWS.Transcribe.Model.DeleteMedicalVocabularyResponse.IDeleteMedicalVocabularyResponse;
  IDeleteTranscriptionJobRequest = AWS.Transcribe.Model.DeleteTranscriptionJobRequest.IDeleteTranscriptionJobRequest;
  IDeleteTranscriptionJobResponse = AWS.Transcribe.Model.DeleteTranscriptionJobResponse.IDeleteTranscriptionJobResponse;
  IDeleteVocabularyFilterRequest = AWS.Transcribe.Model.DeleteVocabularyFilterRequest.IDeleteVocabularyFilterRequest;
  IDeleteVocabularyFilterResponse = AWS.Transcribe.Model.DeleteVocabularyFilterResponse.IDeleteVocabularyFilterResponse;
  IDeleteVocabularyRequest = AWS.Transcribe.Model.DeleteVocabularyRequest.IDeleteVocabularyRequest;
  IDeleteVocabularyResponse = AWS.Transcribe.Model.DeleteVocabularyResponse.IDeleteVocabularyResponse;
  IDescribeLanguageModelRequest = AWS.Transcribe.Model.DescribeLanguageModelRequest.IDescribeLanguageModelRequest;
  IDescribeLanguageModelResponse = AWS.Transcribe.Model.DescribeLanguageModelResponse.IDescribeLanguageModelResponse;
  IGetMedicalTranscriptionJobRequest = AWS.Transcribe.Model.GetMedicalTranscriptionJobRequest.IGetMedicalTranscriptionJobRequest;
  IGetMedicalTranscriptionJobResponse = AWS.Transcribe.Model.GetMedicalTranscriptionJobResponse.IGetMedicalTranscriptionJobResponse;
  IGetMedicalVocabularyRequest = AWS.Transcribe.Model.GetMedicalVocabularyRequest.IGetMedicalVocabularyRequest;
  IGetMedicalVocabularyResponse = AWS.Transcribe.Model.GetMedicalVocabularyResponse.IGetMedicalVocabularyResponse;
  IGetTranscriptionJobRequest = AWS.Transcribe.Model.GetTranscriptionJobRequest.IGetTranscriptionJobRequest;
  IGetTranscriptionJobResponse = AWS.Transcribe.Model.GetTranscriptionJobResponse.IGetTranscriptionJobResponse;
  IGetVocabularyFilterRequest = AWS.Transcribe.Model.GetVocabularyFilterRequest.IGetVocabularyFilterRequest;
  IGetVocabularyFilterResponse = AWS.Transcribe.Model.GetVocabularyFilterResponse.IGetVocabularyFilterResponse;
  IGetVocabularyRequest = AWS.Transcribe.Model.GetVocabularyRequest.IGetVocabularyRequest;
  IGetVocabularyResponse = AWS.Transcribe.Model.GetVocabularyResponse.IGetVocabularyResponse;
  IInputDataConfig = AWS.Transcribe.Model.InputDataConfig.IInputDataConfig;
  IJobExecutionSettings = AWS.Transcribe.Model.JobExecutionSettings.IJobExecutionSettings;
  ILanguageModel = AWS.Transcribe.Model.LanguageModel.ILanguageModel;
  IListLanguageModelsRequest = AWS.Transcribe.Model.ListLanguageModelsRequest.IListLanguageModelsRequest;
  IListLanguageModelsResponse = AWS.Transcribe.Model.ListLanguageModelsResponse.IListLanguageModelsResponse;
  IListMedicalTranscriptionJobsRequest = AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest.IListMedicalTranscriptionJobsRequest;
  IListMedicalTranscriptionJobsResponse = AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse.IListMedicalTranscriptionJobsResponse;
  IListMedicalVocabulariesRequest = AWS.Transcribe.Model.ListMedicalVocabulariesRequest.IListMedicalVocabulariesRequest;
  IListMedicalVocabulariesResponse = AWS.Transcribe.Model.ListMedicalVocabulariesResponse.IListMedicalVocabulariesResponse;
  IListTranscriptionJobsRequest = AWS.Transcribe.Model.ListTranscriptionJobsRequest.IListTranscriptionJobsRequest;
  IListTranscriptionJobsResponse = AWS.Transcribe.Model.ListTranscriptionJobsResponse.IListTranscriptionJobsResponse;
  IListVocabulariesRequest = AWS.Transcribe.Model.ListVocabulariesRequest.IListVocabulariesRequest;
  IListVocabulariesResponse = AWS.Transcribe.Model.ListVocabulariesResponse.IListVocabulariesResponse;
  IListVocabularyFiltersRequest = AWS.Transcribe.Model.ListVocabularyFiltersRequest.IListVocabularyFiltersRequest;
  IListVocabularyFiltersResponse = AWS.Transcribe.Model.ListVocabularyFiltersResponse.IListVocabularyFiltersResponse;
  IMedia = AWS.Transcribe.Model.Media.IMedia;
  IMedicalTranscript = AWS.Transcribe.Model.MedicalTranscript.IMedicalTranscript;
  IMedicalTranscriptionJob = AWS.Transcribe.Model.MedicalTranscriptionJob.IMedicalTranscriptionJob;
  IMedicalTranscriptionJobSummary = AWS.Transcribe.Model.MedicalTranscriptionJobSummary.IMedicalTranscriptionJobSummary;
  IMedicalTranscriptionSetting = AWS.Transcribe.Model.MedicalTranscriptionSetting.IMedicalTranscriptionSetting;
  IModelSettings = AWS.Transcribe.Model.ModelSettings.IModelSettings;
  ISettings = AWS.Transcribe.Model.Settings.ISettings;
  IStartMedicalTranscriptionJobRequest = AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest.IStartMedicalTranscriptionJobRequest;
  IStartMedicalTranscriptionJobResponse = AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse.IStartMedicalTranscriptionJobResponse;
  IStartTranscriptionJobRequest = AWS.Transcribe.Model.StartTranscriptionJobRequest.IStartTranscriptionJobRequest;
  IStartTranscriptionJobResponse = AWS.Transcribe.Model.StartTranscriptionJobResponse.IStartTranscriptionJobResponse;
  ITranscript = AWS.Transcribe.Model.Transcript.ITranscript;
  ITranscriptionJob = AWS.Transcribe.Model.TranscriptionJob.ITranscriptionJob;
  ITranscriptionJobSummary = AWS.Transcribe.Model.TranscriptionJobSummary.ITranscriptionJobSummary;
  IUpdateMedicalVocabularyRequest = AWS.Transcribe.Model.UpdateMedicalVocabularyRequest.IUpdateMedicalVocabularyRequest;
  IUpdateMedicalVocabularyResponse = AWS.Transcribe.Model.UpdateMedicalVocabularyResponse.IUpdateMedicalVocabularyResponse;
  IUpdateVocabularyFilterRequest = AWS.Transcribe.Model.UpdateVocabularyFilterRequest.IUpdateVocabularyFilterRequest;
  IUpdateVocabularyFilterResponse = AWS.Transcribe.Model.UpdateVocabularyFilterResponse.IUpdateVocabularyFilterResponse;
  IUpdateVocabularyRequest = AWS.Transcribe.Model.UpdateVocabularyRequest.IUpdateVocabularyRequest;
  IUpdateVocabularyResponse = AWS.Transcribe.Model.UpdateVocabularyResponse.IUpdateVocabularyResponse;
  IVocabularyFilterInfo = AWS.Transcribe.Model.VocabularyFilterInfo.IVocabularyFilterInfo;
  IVocabularyInfo = AWS.Transcribe.Model.VocabularyInfo.IVocabularyInfo;
  TAmazonTranscribeServiceClient = AWS.Transcribe.Client.TAmazonTranscribeServiceClient;
  TAmazonTranscribeServiceConfig = AWS.Transcribe.Config.TAmazonTranscribeServiceConfig;
  TAmazonTranscribeServiceMetadata = AWS.Transcribe.Metadata.TAmazonTranscribeServiceMetadata;
  TAmazonTranscribeServiceRequest = AWS.Transcribe.Model.Request.TAmazonTranscribeServiceRequest;
  TBaseModelName = AWS.Transcribe.Enums.TBaseModelName;
  TCLMLanguageCode = AWS.Transcribe.Enums.TCLMLanguageCode;
  TContentRedaction = AWS.Transcribe.Model.ContentRedaction.TContentRedaction;
  TCreateLanguageModelRequest = AWS.Transcribe.Model.CreateLanguageModelRequest.TCreateLanguageModelRequest;
  TCreateLanguageModelResponse = AWS.Transcribe.Model.CreateLanguageModelResponse.TCreateLanguageModelResponse;
  TCreateMedicalVocabularyRequest = AWS.Transcribe.Model.CreateMedicalVocabularyRequest.TCreateMedicalVocabularyRequest;
  TCreateMedicalVocabularyResponse = AWS.Transcribe.Model.CreateMedicalVocabularyResponse.TCreateMedicalVocabularyResponse;
  TCreateVocabularyFilterRequest = AWS.Transcribe.Model.CreateVocabularyFilterRequest.TCreateVocabularyFilterRequest;
  TCreateVocabularyFilterResponse = AWS.Transcribe.Model.CreateVocabularyFilterResponse.TCreateVocabularyFilterResponse;
  TCreateVocabularyRequest = AWS.Transcribe.Model.CreateVocabularyRequest.TCreateVocabularyRequest;
  TCreateVocabularyResponse = AWS.Transcribe.Model.CreateVocabularyResponse.TCreateVocabularyResponse;
  TDeleteLanguageModelRequest = AWS.Transcribe.Model.DeleteLanguageModelRequest.TDeleteLanguageModelRequest;
  TDeleteLanguageModelResponse = AWS.Transcribe.Model.DeleteLanguageModelResponse.TDeleteLanguageModelResponse;
  TDeleteMedicalTranscriptionJobRequest = AWS.Transcribe.Model.DeleteMedicalTranscriptionJobRequest.TDeleteMedicalTranscriptionJobRequest;
  TDeleteMedicalTranscriptionJobResponse = AWS.Transcribe.Model.DeleteMedicalTranscriptionJobResponse.TDeleteMedicalTranscriptionJobResponse;
  TDeleteMedicalVocabularyRequest = AWS.Transcribe.Model.DeleteMedicalVocabularyRequest.TDeleteMedicalVocabularyRequest;
  TDeleteMedicalVocabularyResponse = AWS.Transcribe.Model.DeleteMedicalVocabularyResponse.TDeleteMedicalVocabularyResponse;
  TDeleteTranscriptionJobRequest = AWS.Transcribe.Model.DeleteTranscriptionJobRequest.TDeleteTranscriptionJobRequest;
  TDeleteTranscriptionJobResponse = AWS.Transcribe.Model.DeleteTranscriptionJobResponse.TDeleteTranscriptionJobResponse;
  TDeleteVocabularyFilterRequest = AWS.Transcribe.Model.DeleteVocabularyFilterRequest.TDeleteVocabularyFilterRequest;
  TDeleteVocabularyFilterResponse = AWS.Transcribe.Model.DeleteVocabularyFilterResponse.TDeleteVocabularyFilterResponse;
  TDeleteVocabularyRequest = AWS.Transcribe.Model.DeleteVocabularyRequest.TDeleteVocabularyRequest;
  TDeleteVocabularyResponse = AWS.Transcribe.Model.DeleteVocabularyResponse.TDeleteVocabularyResponse;
  TDescribeLanguageModelRequest = AWS.Transcribe.Model.DescribeLanguageModelRequest.TDescribeLanguageModelRequest;
  TDescribeLanguageModelResponse = AWS.Transcribe.Model.DescribeLanguageModelResponse.TDescribeLanguageModelResponse;
  TGetMedicalTranscriptionJobRequest = AWS.Transcribe.Model.GetMedicalTranscriptionJobRequest.TGetMedicalTranscriptionJobRequest;
  TGetMedicalTranscriptionJobResponse = AWS.Transcribe.Model.GetMedicalTranscriptionJobResponse.TGetMedicalTranscriptionJobResponse;
  TGetMedicalVocabularyRequest = AWS.Transcribe.Model.GetMedicalVocabularyRequest.TGetMedicalVocabularyRequest;
  TGetMedicalVocabularyResponse = AWS.Transcribe.Model.GetMedicalVocabularyResponse.TGetMedicalVocabularyResponse;
  TGetTranscriptionJobRequest = AWS.Transcribe.Model.GetTranscriptionJobRequest.TGetTranscriptionJobRequest;
  TGetTranscriptionJobResponse = AWS.Transcribe.Model.GetTranscriptionJobResponse.TGetTranscriptionJobResponse;
  TGetVocabularyFilterRequest = AWS.Transcribe.Model.GetVocabularyFilterRequest.TGetVocabularyFilterRequest;
  TGetVocabularyFilterResponse = AWS.Transcribe.Model.GetVocabularyFilterResponse.TGetVocabularyFilterResponse;
  TGetVocabularyRequest = AWS.Transcribe.Model.GetVocabularyRequest.TGetVocabularyRequest;
  TGetVocabularyResponse = AWS.Transcribe.Model.GetVocabularyResponse.TGetVocabularyResponse;
  TInputDataConfig = AWS.Transcribe.Model.InputDataConfig.TInputDataConfig;
  TJobExecutionSettings = AWS.Transcribe.Model.JobExecutionSettings.TJobExecutionSettings;
  TLanguageCode = AWS.Transcribe.Enums.TLanguageCode;
  TLanguageModel = AWS.Transcribe.Model.LanguageModel.TLanguageModel;
  TListLanguageModelsRequest = AWS.Transcribe.Model.ListLanguageModelsRequest.TListLanguageModelsRequest;
  TListLanguageModelsResponse = AWS.Transcribe.Model.ListLanguageModelsResponse.TListLanguageModelsResponse;
  TListMedicalTranscriptionJobsRequest = AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest.TListMedicalTranscriptionJobsRequest;
  TListMedicalTranscriptionJobsResponse = AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse.TListMedicalTranscriptionJobsResponse;
  TListMedicalVocabulariesRequest = AWS.Transcribe.Model.ListMedicalVocabulariesRequest.TListMedicalVocabulariesRequest;
  TListMedicalVocabulariesResponse = AWS.Transcribe.Model.ListMedicalVocabulariesResponse.TListMedicalVocabulariesResponse;
  TListTranscriptionJobsRequest = AWS.Transcribe.Model.ListTranscriptionJobsRequest.TListTranscriptionJobsRequest;
  TListTranscriptionJobsResponse = AWS.Transcribe.Model.ListTranscriptionJobsResponse.TListTranscriptionJobsResponse;
  TListVocabulariesRequest = AWS.Transcribe.Model.ListVocabulariesRequest.TListVocabulariesRequest;
  TListVocabulariesResponse = AWS.Transcribe.Model.ListVocabulariesResponse.TListVocabulariesResponse;
  TListVocabularyFiltersRequest = AWS.Transcribe.Model.ListVocabularyFiltersRequest.TListVocabularyFiltersRequest;
  TListVocabularyFiltersResponse = AWS.Transcribe.Model.ListVocabularyFiltersResponse.TListVocabularyFiltersResponse;
  TMedia = AWS.Transcribe.Model.Media.TMedia;
  TMediaFormat = AWS.Transcribe.Enums.TMediaFormat;
  TMedicalContentIdentificationType = AWS.Transcribe.Enums.TMedicalContentIdentificationType;
  TMedicalTranscript = AWS.Transcribe.Model.MedicalTranscript.TMedicalTranscript;
  TMedicalTranscriptionJob = AWS.Transcribe.Model.MedicalTranscriptionJob.TMedicalTranscriptionJob;
  TMedicalTranscriptionJobSummary = AWS.Transcribe.Model.MedicalTranscriptionJobSummary.TMedicalTranscriptionJobSummary;
  TMedicalTranscriptionSetting = AWS.Transcribe.Model.MedicalTranscriptionSetting.TMedicalTranscriptionSetting;
  TModelSettings = AWS.Transcribe.Model.ModelSettings.TModelSettings;
  TModelStatus = AWS.Transcribe.Enums.TModelStatus;
  TOutputLocationType = AWS.Transcribe.Enums.TOutputLocationType;
  TRedactionOutput = AWS.Transcribe.Enums.TRedactionOutput;
  TRedactionType = AWS.Transcribe.Enums.TRedactionType;
  TSettings = AWS.Transcribe.Model.Settings.TSettings;
  TSpecialty = AWS.Transcribe.Enums.TSpecialty;
  TStartMedicalTranscriptionJobRequest = AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest.TStartMedicalTranscriptionJobRequest;
  TStartMedicalTranscriptionJobResponse = AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse.TStartMedicalTranscriptionJobResponse;
  TStartTranscriptionJobRequest = AWS.Transcribe.Model.StartTranscriptionJobRequest.TStartTranscriptionJobRequest;
  TStartTranscriptionJobResponse = AWS.Transcribe.Model.StartTranscriptionJobResponse.TStartTranscriptionJobResponse;
  TTranscript = AWS.Transcribe.Model.Transcript.TTranscript;
  TTranscriptionJob = AWS.Transcribe.Model.TranscriptionJob.TTranscriptionJob;
  TTranscriptionJobStatus = AWS.Transcribe.Enums.TTranscriptionJobStatus;
  TTranscriptionJobSummary = AWS.Transcribe.Model.TranscriptionJobSummary.TTranscriptionJobSummary;
  TType = AWS.Transcribe.Enums.TType;
  TUpdateMedicalVocabularyRequest = AWS.Transcribe.Model.UpdateMedicalVocabularyRequest.TUpdateMedicalVocabularyRequest;
  TUpdateMedicalVocabularyResponse = AWS.Transcribe.Model.UpdateMedicalVocabularyResponse.TUpdateMedicalVocabularyResponse;
  TUpdateVocabularyFilterRequest = AWS.Transcribe.Model.UpdateVocabularyFilterRequest.TUpdateVocabularyFilterRequest;
  TUpdateVocabularyFilterResponse = AWS.Transcribe.Model.UpdateVocabularyFilterResponse.TUpdateVocabularyFilterResponse;
  TUpdateVocabularyRequest = AWS.Transcribe.Model.UpdateVocabularyRequest.TUpdateVocabularyRequest;
  TUpdateVocabularyResponse = AWS.Transcribe.Model.UpdateVocabularyResponse.TUpdateVocabularyResponse;
  TVocabularyFilterInfo = AWS.Transcribe.Model.VocabularyFilterInfo.TVocabularyFilterInfo;
  TVocabularyFilterMethod = AWS.Transcribe.Enums.TVocabularyFilterMethod;
  TVocabularyInfo = AWS.Transcribe.Model.VocabularyInfo.TVocabularyInfo;
  TVocabularyState = AWS.Transcribe.Enums.TVocabularyState;
  
implementation

end.
