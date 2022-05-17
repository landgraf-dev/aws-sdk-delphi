unit AWS.Transcribe.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.Transcribe.Model.CreateLanguageModelResponse, 
  AWS.Transcribe.Model.CreateLanguageModelRequest, 
  AWS.Transcribe.Model.CreateMedicalVocabularyResponse, 
  AWS.Transcribe.Model.CreateMedicalVocabularyRequest, 
  AWS.Transcribe.Model.CreateVocabularyResponse, 
  AWS.Transcribe.Model.CreateVocabularyRequest, 
  AWS.Transcribe.Model.CreateVocabularyFilterResponse, 
  AWS.Transcribe.Model.CreateVocabularyFilterRequest, 
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
  AWS.Transcribe.Model.ListLanguageModelsResponse, 
  AWS.Transcribe.Model.ListLanguageModelsRequest, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsResponse, 
  AWS.Transcribe.Model.ListMedicalTranscriptionJobsRequest, 
  AWS.Transcribe.Model.ListMedicalVocabulariesResponse, 
  AWS.Transcribe.Model.ListMedicalVocabulariesRequest, 
  AWS.Transcribe.Model.ListTranscriptionJobsResponse, 
  AWS.Transcribe.Model.ListTranscriptionJobsRequest, 
  AWS.Transcribe.Model.ListVocabulariesResponse, 
  AWS.Transcribe.Model.ListVocabulariesRequest, 
  AWS.Transcribe.Model.ListVocabularyFiltersResponse, 
  AWS.Transcribe.Model.ListVocabularyFiltersRequest, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobResponse, 
  AWS.Transcribe.Model.StartMedicalTranscriptionJobRequest, 
  AWS.Transcribe.Model.StartTranscriptionJobResponse, 
  AWS.Transcribe.Model.StartTranscriptionJobRequest, 
  AWS.Transcribe.Model.UpdateMedicalVocabularyResponse, 
  AWS.Transcribe.Model.UpdateMedicalVocabularyRequest, 
  AWS.Transcribe.Model.UpdateVocabularyResponse, 
  AWS.Transcribe.Model.UpdateVocabularyRequest, 
  AWS.Transcribe.Model.UpdateVocabularyFilterResponse, 
  AWS.Transcribe.Model.UpdateVocabularyFilterRequest;

type
  IAmazonTranscribeService = interface(IAmazonService)
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

end.
