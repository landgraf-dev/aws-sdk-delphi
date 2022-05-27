unit AWS.Transcribe;

interface

uses
  AWS.Transcribe.Client, 
  AWS.Transcribe.ClientIntf, 
  AWS.Transcribe.Config, 
  AWS.Transcribe.Enums, 
  AWS.Transcribe.Exception, 
  AWS.Transcribe.Metadata, 
  AWS.Transcribe.Model.AbsoluteTimeRange, 
  AWS.Transcribe.Model.BadRequestException, 
  AWS.Transcribe.Model.CallAnalyticsJob, 
  AWS.Transcribe.Model.CallAnalyticsJobSettings, 
  AWS.Transcribe.Model.CallAnalyticsJobSummary, 
  AWS.Transcribe.Model.CategoryProperties, 
  AWS.Transcribe.Model.ChannelDefinition, 
  AWS.Transcribe.Model.ConflictException, 
  AWS.Transcribe.Model.ContentRedaction, 
  AWS.Transcribe.Model.CreateCallAnalyticsCategoryRequest, 
  AWS.Transcribe.Model.CreateCallAnalyticsCategoryResponse, 
  AWS.Transcribe.Model.CreateLanguageModelRequest, 
  AWS.Transcribe.Model.CreateLanguageModelResponse, 
  AWS.Transcribe.Model.CreateMedicalVocabularyRequest, 
  AWS.Transcribe.Model.CreateMedicalVocabularyResponse, 
  AWS.Transcribe.Model.CreateVocabularyFilterRequest, 
  AWS.Transcribe.Model.CreateVocabularyFilterResponse, 
  AWS.Transcribe.Model.CreateVocabularyRequest, 
  AWS.Transcribe.Model.CreateVocabularyResponse, 
  AWS.Transcribe.Model.DeleteCallAnalyticsCategoryRequest, 
  AWS.Transcribe.Model.DeleteCallAnalyticsCategoryResponse, 
  AWS.Transcribe.Model.DeleteCallAnalyticsJobRequest, 
  AWS.Transcribe.Model.DeleteCallAnalyticsJobResponse, 
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
  AWS.Transcribe.Model.GetCallAnalyticsCategoryRequest, 
  AWS.Transcribe.Model.GetCallAnalyticsCategoryResponse, 
  AWS.Transcribe.Model.GetCallAnalyticsJobRequest, 
  AWS.Transcribe.Model.GetCallAnalyticsJobResponse, 
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
  AWS.Transcribe.Model.InterruptionFilter, 
  AWS.Transcribe.Model.JobExecutionSettings, 
  AWS.Transcribe.Model.LanguageIdSettings, 
  AWS.Transcribe.Model.LanguageModel, 
  AWS.Transcribe.Model.LimitExceededException, 
  AWS.Transcribe.Model.ListCallAnalyticsCategoriesRequest, 
  AWS.Transcribe.Model.ListCallAnalyticsCategoriesResponse, 
  AWS.Transcribe.Model.ListCallAnalyticsJobsRequest, 
  AWS.Transcribe.Model.ListCallAnalyticsJobsResponse, 
  AWS.Transcribe.Model.ListLanguageModelsRequest, 
  AWS.Transcribe.Model.ListLanguageModelsResponse, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse, 
  AWS.Transcribe.Model.ListMedicalVocabulariesRequest, 
  AWS.Transcribe.Model.ListMedicalVocabulariesResponse, 
  AWS.Transcribe.Model.ListTagsForResourceRequest, 
  AWS.Transcribe.Model.ListTagsForResourceResponse, 
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
  AWS.Transcribe.Model.NonTalkTimeFilter, 
  AWS.Transcribe.Model.NotFoundException, 
  AWS.Transcribe.Model.RelativeTimeRange, 
  AWS.Transcribe.Model.Request, 
  AWS.Transcribe.Model.Rule, 
  AWS.Transcribe.Model.SentimentFilter, 
  AWS.Transcribe.Model.Settings, 
  AWS.Transcribe.Model.StartCallAnalyticsJobRequest, 
  AWS.Transcribe.Model.StartCallAnalyticsJobResponse, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.StartTranscriptionJobRequest, 
  AWS.Transcribe.Model.StartTranscriptionJobResponse, 
  AWS.Transcribe.Model.Subtitles, 
  AWS.Transcribe.Model.SubtitlesOutput, 
  AWS.Transcribe.Model.Tag, 
  AWS.Transcribe.Model.TagResourceRequest, 
  AWS.Transcribe.Model.TagResourceResponse, 
  AWS.Transcribe.Model.Transcript, 
  AWS.Transcribe.Model.TranscriptFilter, 
  AWS.Transcribe.Model.TranscriptionJob, 
  AWS.Transcribe.Model.TranscriptionJobSummary, 
  AWS.Transcribe.Model.UntagResourceRequest, 
  AWS.Transcribe.Model.UntagResourceResponse, 
  AWS.Transcribe.Model.UpdateCallAnalyticsCategoryRequest, 
  AWS.Transcribe.Model.UpdateCallAnalyticsCategoryResponse, 
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
  IAbsoluteTimeRange = AWS.Transcribe.Model.AbsoluteTimeRange.IAbsoluteTimeRange;
  IAmazonTranscribeService = AWS.Transcribe.ClientIntf.IAmazonTranscribeService;
  ICallAnalyticsJob = AWS.Transcribe.Model.CallAnalyticsJob.ICallAnalyticsJob;
  ICallAnalyticsJobSettings = AWS.Transcribe.Model.CallAnalyticsJobSettings.ICallAnalyticsJobSettings;
  ICallAnalyticsJobSummary = AWS.Transcribe.Model.CallAnalyticsJobSummary.ICallAnalyticsJobSummary;
  ICategoryProperties = AWS.Transcribe.Model.CategoryProperties.ICategoryProperties;
  IChannelDefinition = AWS.Transcribe.Model.ChannelDefinition.IChannelDefinition;
  IContentRedaction = AWS.Transcribe.Model.ContentRedaction.IContentRedaction;
  ICreateCallAnalyticsCategoryRequest = AWS.Transcribe.Model.CreateCallAnalyticsCategoryRequest.ICreateCallAnalyticsCategoryRequest;
  ICreateCallAnalyticsCategoryResponse = AWS.Transcribe.Model.CreateCallAnalyticsCategoryResponse.ICreateCallAnalyticsCategoryResponse;
  ICreateLanguageModelRequest = AWS.Transcribe.Model.CreateLanguageModelRequest.ICreateLanguageModelRequest;
  ICreateLanguageModelResponse = AWS.Transcribe.Model.CreateLanguageModelResponse.ICreateLanguageModelResponse;
  ICreateMedicalVocabularyRequest = AWS.Transcribe.Model.CreateMedicalVocabularyRequest.ICreateMedicalVocabularyRequest;
  ICreateMedicalVocabularyResponse = AWS.Transcribe.Model.CreateMedicalVocabularyResponse.ICreateMedicalVocabularyResponse;
  ICreateVocabularyFilterRequest = AWS.Transcribe.Model.CreateVocabularyFilterRequest.ICreateVocabularyFilterRequest;
  ICreateVocabularyFilterResponse = AWS.Transcribe.Model.CreateVocabularyFilterResponse.ICreateVocabularyFilterResponse;
  ICreateVocabularyRequest = AWS.Transcribe.Model.CreateVocabularyRequest.ICreateVocabularyRequest;
  ICreateVocabularyResponse = AWS.Transcribe.Model.CreateVocabularyResponse.ICreateVocabularyResponse;
  IDeleteCallAnalyticsCategoryRequest = AWS.Transcribe.Model.DeleteCallAnalyticsCategoryRequest.IDeleteCallAnalyticsCategoryRequest;
  IDeleteCallAnalyticsCategoryResponse = AWS.Transcribe.Model.DeleteCallAnalyticsCategoryResponse.IDeleteCallAnalyticsCategoryResponse;
  IDeleteCallAnalyticsJobRequest = AWS.Transcribe.Model.DeleteCallAnalyticsJobRequest.IDeleteCallAnalyticsJobRequest;
  IDeleteCallAnalyticsJobResponse = AWS.Transcribe.Model.DeleteCallAnalyticsJobResponse.IDeleteCallAnalyticsJobResponse;
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
  IGetCallAnalyticsCategoryRequest = AWS.Transcribe.Model.GetCallAnalyticsCategoryRequest.IGetCallAnalyticsCategoryRequest;
  IGetCallAnalyticsCategoryResponse = AWS.Transcribe.Model.GetCallAnalyticsCategoryResponse.IGetCallAnalyticsCategoryResponse;
  IGetCallAnalyticsJobRequest = AWS.Transcribe.Model.GetCallAnalyticsJobRequest.IGetCallAnalyticsJobRequest;
  IGetCallAnalyticsJobResponse = AWS.Transcribe.Model.GetCallAnalyticsJobResponse.IGetCallAnalyticsJobResponse;
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
  IInterruptionFilter = AWS.Transcribe.Model.InterruptionFilter.IInterruptionFilter;
  IJobExecutionSettings = AWS.Transcribe.Model.JobExecutionSettings.IJobExecutionSettings;
  ILanguageIdSettings = AWS.Transcribe.Model.LanguageIdSettings.ILanguageIdSettings;
  ILanguageModel = AWS.Transcribe.Model.LanguageModel.ILanguageModel;
  IListCallAnalyticsCategoriesRequest = AWS.Transcribe.Model.ListCallAnalyticsCategoriesRequest.IListCallAnalyticsCategoriesRequest;
  IListCallAnalyticsCategoriesResponse = AWS.Transcribe.Model.ListCallAnalyticsCategoriesResponse.IListCallAnalyticsCategoriesResponse;
  IListCallAnalyticsJobsRequest = AWS.Transcribe.Model.ListCallAnalyticsJobsRequest.IListCallAnalyticsJobsRequest;
  IListCallAnalyticsJobsResponse = AWS.Transcribe.Model.ListCallAnalyticsJobsResponse.IListCallAnalyticsJobsResponse;
  IListLanguageModelsRequest = AWS.Transcribe.Model.ListLanguageModelsRequest.IListLanguageModelsRequest;
  IListLanguageModelsResponse = AWS.Transcribe.Model.ListLanguageModelsResponse.IListLanguageModelsResponse;
  IListMedicalTranscriptionJobsRequest = AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest.IListMedicalTranscriptionJobsRequest;
  IListMedicalTranscriptionJobsResponse = AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse.IListMedicalTranscriptionJobsResponse;
  IListMedicalVocabulariesRequest = AWS.Transcribe.Model.ListMedicalVocabulariesRequest.IListMedicalVocabulariesRequest;
  IListMedicalVocabulariesResponse = AWS.Transcribe.Model.ListMedicalVocabulariesResponse.IListMedicalVocabulariesResponse;
  IListTagsForResourceRequest = AWS.Transcribe.Model.ListTagsForResourceRequest.IListTagsForResourceRequest;
  IListTagsForResourceResponse = AWS.Transcribe.Model.ListTagsForResourceResponse.IListTagsForResourceResponse;
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
  INonTalkTimeFilter = AWS.Transcribe.Model.NonTalkTimeFilter.INonTalkTimeFilter;
  IRelativeTimeRange = AWS.Transcribe.Model.RelativeTimeRange.IRelativeTimeRange;
  IRule = AWS.Transcribe.Model.Rule.IRule;
  ISentimentFilter = AWS.Transcribe.Model.SentimentFilter.ISentimentFilter;
  ISettings = AWS.Transcribe.Model.Settings.ISettings;
  IStartCallAnalyticsJobRequest = AWS.Transcribe.Model.StartCallAnalyticsJobRequest.IStartCallAnalyticsJobRequest;
  IStartCallAnalyticsJobResponse = AWS.Transcribe.Model.StartCallAnalyticsJobResponse.IStartCallAnalyticsJobResponse;
  IStartMedicalTranscriptionJobRequest = AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest.IStartMedicalTranscriptionJobRequest;
  IStartMedicalTranscriptionJobResponse = AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse.IStartMedicalTranscriptionJobResponse;
  IStartTranscriptionJobRequest = AWS.Transcribe.Model.StartTranscriptionJobRequest.IStartTranscriptionJobRequest;
  IStartTranscriptionJobResponse = AWS.Transcribe.Model.StartTranscriptionJobResponse.IStartTranscriptionJobResponse;
  ISubtitles = AWS.Transcribe.Model.Subtitles.ISubtitles;
  ISubtitlesOutput = AWS.Transcribe.Model.SubtitlesOutput.ISubtitlesOutput;
  ITag = AWS.Transcribe.Model.Tag.ITag;
  ITagResourceRequest = AWS.Transcribe.Model.TagResourceRequest.ITagResourceRequest;
  ITagResourceResponse = AWS.Transcribe.Model.TagResourceResponse.ITagResourceResponse;
  ITranscript = AWS.Transcribe.Model.Transcript.ITranscript;
  ITranscriptFilter = AWS.Transcribe.Model.TranscriptFilter.ITranscriptFilter;
  ITranscriptionJob = AWS.Transcribe.Model.TranscriptionJob.ITranscriptionJob;
  ITranscriptionJobSummary = AWS.Transcribe.Model.TranscriptionJobSummary.ITranscriptionJobSummary;
  IUntagResourceRequest = AWS.Transcribe.Model.UntagResourceRequest.IUntagResourceRequest;
  IUntagResourceResponse = AWS.Transcribe.Model.UntagResourceResponse.IUntagResourceResponse;
  IUpdateCallAnalyticsCategoryRequest = AWS.Transcribe.Model.UpdateCallAnalyticsCategoryRequest.IUpdateCallAnalyticsCategoryRequest;
  IUpdateCallAnalyticsCategoryResponse = AWS.Transcribe.Model.UpdateCallAnalyticsCategoryResponse.IUpdateCallAnalyticsCategoryResponse;
  IUpdateMedicalVocabularyRequest = AWS.Transcribe.Model.UpdateMedicalVocabularyRequest.IUpdateMedicalVocabularyRequest;
  IUpdateMedicalVocabularyResponse = AWS.Transcribe.Model.UpdateMedicalVocabularyResponse.IUpdateMedicalVocabularyResponse;
  IUpdateVocabularyFilterRequest = AWS.Transcribe.Model.UpdateVocabularyFilterRequest.IUpdateVocabularyFilterRequest;
  IUpdateVocabularyFilterResponse = AWS.Transcribe.Model.UpdateVocabularyFilterResponse.IUpdateVocabularyFilterResponse;
  IUpdateVocabularyRequest = AWS.Transcribe.Model.UpdateVocabularyRequest.IUpdateVocabularyRequest;
  IUpdateVocabularyResponse = AWS.Transcribe.Model.UpdateVocabularyResponse.IUpdateVocabularyResponse;
  IVocabularyFilterInfo = AWS.Transcribe.Model.VocabularyFilterInfo.IVocabularyFilterInfo;
  IVocabularyInfo = AWS.Transcribe.Model.VocabularyInfo.IVocabularyInfo;
  TAbsoluteTimeRange = AWS.Transcribe.Model.AbsoluteTimeRange.TAbsoluteTimeRange;
  TAmazonTranscribeServiceClient = AWS.Transcribe.Client.TAmazonTranscribeServiceClient;
  TAmazonTranscribeServiceConfig = AWS.Transcribe.Config.TAmazonTranscribeServiceConfig;
  TAmazonTranscribeServiceMetadata = AWS.Transcribe.Metadata.TAmazonTranscribeServiceMetadata;
  TAmazonTranscribeServiceRequest = AWS.Transcribe.Model.Request.TAmazonTranscribeServiceRequest;
  TBaseModelName = AWS.Transcribe.Enums.TBaseModelName;
  TCallAnalyticsJob = AWS.Transcribe.Model.CallAnalyticsJob.TCallAnalyticsJob;
  TCallAnalyticsJobSettings = AWS.Transcribe.Model.CallAnalyticsJobSettings.TCallAnalyticsJobSettings;
  TCallAnalyticsJobStatus = AWS.Transcribe.Enums.TCallAnalyticsJobStatus;
  TCallAnalyticsJobSummary = AWS.Transcribe.Model.CallAnalyticsJobSummary.TCallAnalyticsJobSummary;
  TCategoryProperties = AWS.Transcribe.Model.CategoryProperties.TCategoryProperties;
  TChannelDefinition = AWS.Transcribe.Model.ChannelDefinition.TChannelDefinition;
  TCLMLanguageCode = AWS.Transcribe.Enums.TCLMLanguageCode;
  TContentRedaction = AWS.Transcribe.Model.ContentRedaction.TContentRedaction;
  TCreateCallAnalyticsCategoryRequest = AWS.Transcribe.Model.CreateCallAnalyticsCategoryRequest.TCreateCallAnalyticsCategoryRequest;
  TCreateCallAnalyticsCategoryResponse = AWS.Transcribe.Model.CreateCallAnalyticsCategoryResponse.TCreateCallAnalyticsCategoryResponse;
  TCreateLanguageModelRequest = AWS.Transcribe.Model.CreateLanguageModelRequest.TCreateLanguageModelRequest;
  TCreateLanguageModelResponse = AWS.Transcribe.Model.CreateLanguageModelResponse.TCreateLanguageModelResponse;
  TCreateMedicalVocabularyRequest = AWS.Transcribe.Model.CreateMedicalVocabularyRequest.TCreateMedicalVocabularyRequest;
  TCreateMedicalVocabularyResponse = AWS.Transcribe.Model.CreateMedicalVocabularyResponse.TCreateMedicalVocabularyResponse;
  TCreateVocabularyFilterRequest = AWS.Transcribe.Model.CreateVocabularyFilterRequest.TCreateVocabularyFilterRequest;
  TCreateVocabularyFilterResponse = AWS.Transcribe.Model.CreateVocabularyFilterResponse.TCreateVocabularyFilterResponse;
  TCreateVocabularyRequest = AWS.Transcribe.Model.CreateVocabularyRequest.TCreateVocabularyRequest;
  TCreateVocabularyResponse = AWS.Transcribe.Model.CreateVocabularyResponse.TCreateVocabularyResponse;
  TDeleteCallAnalyticsCategoryRequest = AWS.Transcribe.Model.DeleteCallAnalyticsCategoryRequest.TDeleteCallAnalyticsCategoryRequest;
  TDeleteCallAnalyticsCategoryResponse = AWS.Transcribe.Model.DeleteCallAnalyticsCategoryResponse.TDeleteCallAnalyticsCategoryResponse;
  TDeleteCallAnalyticsJobRequest = AWS.Transcribe.Model.DeleteCallAnalyticsJobRequest.TDeleteCallAnalyticsJobRequest;
  TDeleteCallAnalyticsJobResponse = AWS.Transcribe.Model.DeleteCallAnalyticsJobResponse.TDeleteCallAnalyticsJobResponse;
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
  TGetCallAnalyticsCategoryRequest = AWS.Transcribe.Model.GetCallAnalyticsCategoryRequest.TGetCallAnalyticsCategoryRequest;
  TGetCallAnalyticsCategoryResponse = AWS.Transcribe.Model.GetCallAnalyticsCategoryResponse.TGetCallAnalyticsCategoryResponse;
  TGetCallAnalyticsJobRequest = AWS.Transcribe.Model.GetCallAnalyticsJobRequest.TGetCallAnalyticsJobRequest;
  TGetCallAnalyticsJobResponse = AWS.Transcribe.Model.GetCallAnalyticsJobResponse.TGetCallAnalyticsJobResponse;
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
  TInterruptionFilter = AWS.Transcribe.Model.InterruptionFilter.TInterruptionFilter;
  TJobExecutionSettings = AWS.Transcribe.Model.JobExecutionSettings.TJobExecutionSettings;
  TLanguageCode = AWS.Transcribe.Enums.TLanguageCode;
  TLanguageIdSettings = AWS.Transcribe.Model.LanguageIdSettings.TLanguageIdSettings;
  TLanguageModel = AWS.Transcribe.Model.LanguageModel.TLanguageModel;
  TListCallAnalyticsCategoriesRequest = AWS.Transcribe.Model.ListCallAnalyticsCategoriesRequest.TListCallAnalyticsCategoriesRequest;
  TListCallAnalyticsCategoriesResponse = AWS.Transcribe.Model.ListCallAnalyticsCategoriesResponse.TListCallAnalyticsCategoriesResponse;
  TListCallAnalyticsJobsRequest = AWS.Transcribe.Model.ListCallAnalyticsJobsRequest.TListCallAnalyticsJobsRequest;
  TListCallAnalyticsJobsResponse = AWS.Transcribe.Model.ListCallAnalyticsJobsResponse.TListCallAnalyticsJobsResponse;
  TListLanguageModelsRequest = AWS.Transcribe.Model.ListLanguageModelsRequest.TListLanguageModelsRequest;
  TListLanguageModelsResponse = AWS.Transcribe.Model.ListLanguageModelsResponse.TListLanguageModelsResponse;
  TListMedicalTranscriptionJobsRequest = AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest.TListMedicalTranscriptionJobsRequest;
  TListMedicalTranscriptionJobsResponse = AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse.TListMedicalTranscriptionJobsResponse;
  TListMedicalVocabulariesRequest = AWS.Transcribe.Model.ListMedicalVocabulariesRequest.TListMedicalVocabulariesRequest;
  TListMedicalVocabulariesResponse = AWS.Transcribe.Model.ListMedicalVocabulariesResponse.TListMedicalVocabulariesResponse;
  TListTagsForResourceRequest = AWS.Transcribe.Model.ListTagsForResourceRequest.TListTagsForResourceRequest;
  TListTagsForResourceResponse = AWS.Transcribe.Model.ListTagsForResourceResponse.TListTagsForResourceResponse;
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
  TNonTalkTimeFilter = AWS.Transcribe.Model.NonTalkTimeFilter.TNonTalkTimeFilter;
  TOutputLocationType = AWS.Transcribe.Enums.TOutputLocationType;
  TParticipantRole = AWS.Transcribe.Enums.TParticipantRole;
  TPiiEntityType = AWS.Transcribe.Enums.TPiiEntityType;
  TRedactionOutput = AWS.Transcribe.Enums.TRedactionOutput;
  TRedactionType = AWS.Transcribe.Enums.TRedactionType;
  TRelativeTimeRange = AWS.Transcribe.Model.RelativeTimeRange.TRelativeTimeRange;
  TRule = AWS.Transcribe.Model.Rule.TRule;
  TSentimentFilter = AWS.Transcribe.Model.SentimentFilter.TSentimentFilter;
  TSentimentValue = AWS.Transcribe.Enums.TSentimentValue;
  TSettings = AWS.Transcribe.Model.Settings.TSettings;
  TSpecialty = AWS.Transcribe.Enums.TSpecialty;
  TStartCallAnalyticsJobRequest = AWS.Transcribe.Model.StartCallAnalyticsJobRequest.TStartCallAnalyticsJobRequest;
  TStartCallAnalyticsJobResponse = AWS.Transcribe.Model.StartCallAnalyticsJobResponse.TStartCallAnalyticsJobResponse;
  TStartMedicalTranscriptionJobRequest = AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest.TStartMedicalTranscriptionJobRequest;
  TStartMedicalTranscriptionJobResponse = AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse.TStartMedicalTranscriptionJobResponse;
  TStartTranscriptionJobRequest = AWS.Transcribe.Model.StartTranscriptionJobRequest.TStartTranscriptionJobRequest;
  TStartTranscriptionJobResponse = AWS.Transcribe.Model.StartTranscriptionJobResponse.TStartTranscriptionJobResponse;
  TSubtitleFormat = AWS.Transcribe.Enums.TSubtitleFormat;
  TSubtitles = AWS.Transcribe.Model.Subtitles.TSubtitles;
  TSubtitlesOutput = AWS.Transcribe.Model.SubtitlesOutput.TSubtitlesOutput;
  TTag = AWS.Transcribe.Model.Tag.TTag;
  TTagResourceRequest = AWS.Transcribe.Model.TagResourceRequest.TTagResourceRequest;
  TTagResourceResponse = AWS.Transcribe.Model.TagResourceResponse.TTagResourceResponse;
  TTranscript = AWS.Transcribe.Model.Transcript.TTranscript;
  TTranscriptFilter = AWS.Transcribe.Model.TranscriptFilter.TTranscriptFilter;
  TTranscriptFilterType = AWS.Transcribe.Enums.TTranscriptFilterType;
  TTranscriptionJob = AWS.Transcribe.Model.TranscriptionJob.TTranscriptionJob;
  TTranscriptionJobStatus = AWS.Transcribe.Enums.TTranscriptionJobStatus;
  TTranscriptionJobSummary = AWS.Transcribe.Model.TranscriptionJobSummary.TTranscriptionJobSummary;
  TType = AWS.Transcribe.Enums.TType;
  TUntagResourceRequest = AWS.Transcribe.Model.UntagResourceRequest.TUntagResourceRequest;
  TUntagResourceResponse = AWS.Transcribe.Model.UntagResourceResponse.TUntagResourceResponse;
  TUpdateCallAnalyticsCategoryRequest = AWS.Transcribe.Model.UpdateCallAnalyticsCategoryRequest.TUpdateCallAnalyticsCategoryRequest;
  TUpdateCallAnalyticsCategoryResponse = AWS.Transcribe.Model.UpdateCallAnalyticsCategoryResponse.TUpdateCallAnalyticsCategoryResponse;
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
