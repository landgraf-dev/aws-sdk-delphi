unit AWS.Transcribe.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.Transcribe.Model.CreateCallAnalyticsCategoryResponse, 
  AWS.Transcribe.Model.CreateCallAnalyticsCategoryRequest, 
  AWS.Transcribe.Model.CreateLanguageModelResponse, 
  AWS.Transcribe.Model.CreateLanguageModelRequest, 
  AWS.Transcribe.Model.CreateMedicalVocabularyResponse, 
  AWS.Transcribe.Model.CreateMedicalVocabularyRequest, 
  AWS.Transcribe.Model.CreateVocabularyResponse, 
  AWS.Transcribe.Model.CreateVocabularyRequest, 
  AWS.Transcribe.Model.CreateVocabularyFilterResponse, 
  AWS.Transcribe.Model.CreateVocabularyFilterRequest, 
  AWS.Transcribe.Model.DeleteCallAnalyticsCategoryResponse, 
  AWS.Transcribe.Model.DeleteCallAnalyticsCategoryRequest, 
  AWS.Transcribe.Model.DeleteCallAnalyticsJobResponse, 
  AWS.Transcribe.Model.DeleteCallAnalyticsJobRequest, 
  AWS.Transcribe.Model.DeleteLanguageModelResponse, 
  AWS.Transcribe.Model.DeleteLanguageModelRequest, 
  AWS.Transcribe.Model.DeleteMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.DeleteMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Model.DeleteMedicalVocabularyResponse, 
  AWS.Transcribe.Model.DeleteMedicalVocabularyRequest, 
  AWS.Transcribe.Model.DeleteTranscriptionJobResponse, 
  AWS.Transcribe.Model.DeleteTranscriptionJobRequest, 
  AWS.Transcribe.Model.DeleteVocabularyResponse, 
  AWS.Transcribe.Model.DeleteVocabularyRequest, 
  AWS.Transcribe.Model.DeleteVocabularyFilterResponse, 
  AWS.Transcribe.Model.DeleteVocabularyFilterRequest, 
  AWS.Transcribe.Model.DescribeLanguageModelResponse, 
  AWS.Transcribe.Model.DescribeLanguageModelRequest, 
  AWS.Transcribe.Model.GetCallAnalyticsCategoryResponse, 
  AWS.Transcribe.Model.GetCallAnalyticsCategoryRequest, 
  AWS.Transcribe.Model.GetCallAnalyticsJobResponse, 
  AWS.Transcribe.Model.GetCallAnalyticsJobRequest, 
  AWS.Transcribe.Model.GetMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.GetMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Model.GetMedicalVocabularyResponse, 
  AWS.Transcribe.Model.GetMedicalVocabularyRequest, 
  AWS.Transcribe.Model.GetTranscriptionJobResponse, 
  AWS.Transcribe.Model.GetTranscriptionJobRequest, 
  AWS.Transcribe.Model.GetVocabularyResponse, 
  AWS.Transcribe.Model.GetVocabularyRequest, 
  AWS.Transcribe.Model.GetVocabularyFilterResponse, 
  AWS.Transcribe.Model.GetVocabularyFilterRequest, 
  AWS.Transcribe.Model.ListCallAnalyticsCategoriesResponse, 
  AWS.Transcribe.Model.ListCallAnalyticsCategoriesRequest, 
  AWS.Transcribe.Model.ListCallAnalyticsJobsResponse, 
  AWS.Transcribe.Model.ListCallAnalyticsJobsRequest, 
  AWS.Transcribe.Model.ListLanguageModelsResponse, 
  AWS.Transcribe.Model.ListLanguageModelsRequest, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest, 
  AWS.Transcribe.Model.ListMedicalVocabulariesResponse, 
  AWS.Transcribe.Model.ListMedicalVocabulariesRequest, 
  AWS.Transcribe.Model.ListTagsForResourceResponse, 
  AWS.Transcribe.Model.ListTagsForResourceRequest, 
  AWS.Transcribe.Model.ListTranscriptionJobsResponse, 
  AWS.Transcribe.Model.ListTranscriptionJobsRequest, 
  AWS.Transcribe.Model.ListVocabulariesResponse, 
  AWS.Transcribe.Model.ListVocabulariesRequest, 
  AWS.Transcribe.Model.ListVocabularyFiltersResponse, 
  AWS.Transcribe.Model.ListVocabularyFiltersRequest, 
  AWS.Transcribe.Model.StartCallAnalyticsJobResponse, 
  AWS.Transcribe.Model.StartCallAnalyticsJobRequest, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Model.StartTranscriptionJobResponse, 
  AWS.Transcribe.Model.StartTranscriptionJobRequest, 
  AWS.Transcribe.Model.TagResourceResponse, 
  AWS.Transcribe.Model.TagResourceRequest, 
  AWS.Transcribe.Model.UntagResourceResponse, 
  AWS.Transcribe.Model.UntagResourceRequest, 
  AWS.Transcribe.Model.UpdateCallAnalyticsCategoryResponse, 
  AWS.Transcribe.Model.UpdateCallAnalyticsCategoryRequest, 
  AWS.Transcribe.Model.UpdateMedicalVocabularyResponse, 
  AWS.Transcribe.Model.UpdateMedicalVocabularyRequest, 
  AWS.Transcribe.Model.UpdateVocabularyResponse, 
  AWS.Transcribe.Model.UpdateVocabularyRequest, 
  AWS.Transcribe.Model.UpdateVocabularyFilterResponse, 
  AWS.Transcribe.Model.UpdateVocabularyFilterRequest;

type
  IAmazonTranscribeService = interface(IAmazonService)
    function CreateCallAnalyticsCategory(Request: ICreateCallAnalyticsCategoryRequest): ICreateCallAnalyticsCategoryResponse; overload;
    function CreateLanguageModel(Request: ICreateLanguageModelRequest): ICreateLanguageModelResponse; overload;
    function CreateMedicalVocabulary(Request: ICreateMedicalVocabularyRequest): ICreateMedicalVocabularyResponse; overload;
    function CreateVocabulary(Request: ICreateVocabularyRequest): ICreateVocabularyResponse; overload;
    function CreateVocabularyFilter(Request: ICreateVocabularyFilterRequest): ICreateVocabularyFilterResponse; overload;
    function DeleteCallAnalyticsCategory(Request: IDeleteCallAnalyticsCategoryRequest): IDeleteCallAnalyticsCategoryResponse; overload;
    function DeleteCallAnalyticsJob(Request: IDeleteCallAnalyticsJobRequest): IDeleteCallAnalyticsJobResponse; overload;
    function DeleteLanguageModel(Request: IDeleteLanguageModelRequest): IDeleteLanguageModelResponse; overload;
    function DeleteMedicalTranscriptionJob(Request: IDeleteMedicalTranscriptionJobRequest): IDeleteMedicalTranscriptionJobResponse; overload;
    function DeleteMedicalVocabulary(Request: IDeleteMedicalVocabularyRequest): IDeleteMedicalVocabularyResponse; overload;
    function DeleteTranscriptionJob(Request: IDeleteTranscriptionJobRequest): IDeleteTranscriptionJobResponse; overload;
    function DeleteVocabulary(Request: IDeleteVocabularyRequest): IDeleteVocabularyResponse; overload;
    function DeleteVocabularyFilter(Request: IDeleteVocabularyFilterRequest): IDeleteVocabularyFilterResponse; overload;
    function DescribeLanguageModel(Request: IDescribeLanguageModelRequest): IDescribeLanguageModelResponse; overload;
    function GetCallAnalyticsCategory(Request: IGetCallAnalyticsCategoryRequest): IGetCallAnalyticsCategoryResponse; overload;
    function GetCallAnalyticsJob(Request: IGetCallAnalyticsJobRequest): IGetCallAnalyticsJobResponse; overload;
    function GetMedicalTranscriptionJob(Request: IGetMedicalTranscriptionJobRequest): IGetMedicalTranscriptionJobResponse; overload;
    function GetMedicalVocabulary(Request: IGetMedicalVocabularyRequest): IGetMedicalVocabularyResponse; overload;
    function GetTranscriptionJob(Request: IGetTranscriptionJobRequest): IGetTranscriptionJobResponse; overload;
    function GetVocabulary(Request: IGetVocabularyRequest): IGetVocabularyResponse; overload;
    function GetVocabularyFilter(Request: IGetVocabularyFilterRequest): IGetVocabularyFilterResponse; overload;
    function ListCallAnalyticsCategories(Request: IListCallAnalyticsCategoriesRequest): IListCallAnalyticsCategoriesResponse; overload;
    function ListCallAnalyticsJobs(Request: IListCallAnalyticsJobsRequest): IListCallAnalyticsJobsResponse; overload;
    function ListLanguageModels(Request: IListLanguageModelsRequest): IListLanguageModelsResponse; overload;
    function ListMedicalTranscriptionJobs(Request: IListMedicalTranscriptionJobsRequest): IListMedicalTranscriptionJobsResponse; overload;
    function ListMedicalVocabularies(Request: IListMedicalVocabulariesRequest): IListMedicalVocabulariesResponse; overload;
    function ListTagsForResource(Request: IListTagsForResourceRequest): IListTagsForResourceResponse; overload;
    function ListTranscriptionJobs(Request: IListTranscriptionJobsRequest): IListTranscriptionJobsResponse; overload;
    function ListVocabularies(Request: IListVocabulariesRequest): IListVocabulariesResponse; overload;
    function ListVocabularyFilters(Request: IListVocabularyFiltersRequest): IListVocabularyFiltersResponse; overload;
    function StartCallAnalyticsJob(Request: IStartCallAnalyticsJobRequest): IStartCallAnalyticsJobResponse; overload;
    function StartMedicalTranscriptionJob(Request: IStartMedicalTranscriptionJobRequest): IStartMedicalTranscriptionJobResponse; overload;
    function StartTranscriptionJob(Request: IStartTranscriptionJobRequest): IStartTranscriptionJobResponse; overload;
    function TagResource(Request: ITagResourceRequest): ITagResourceResponse; overload;
    function UntagResource(Request: IUntagResourceRequest): IUntagResourceResponse; overload;
    function UpdateCallAnalyticsCategory(Request: IUpdateCallAnalyticsCategoryRequest): IUpdateCallAnalyticsCategoryResponse; overload;
    function UpdateMedicalVocabulary(Request: IUpdateMedicalVocabularyRequest): IUpdateMedicalVocabularyResponse; overload;
    function UpdateVocabulary(Request: IUpdateVocabularyRequest): IUpdateVocabularyResponse; overload;
    function UpdateVocabularyFilter(Request: IUpdateVocabularyFilterRequest): IUpdateVocabularyFilterResponse; overload;
  end;
  
implementation

end.
