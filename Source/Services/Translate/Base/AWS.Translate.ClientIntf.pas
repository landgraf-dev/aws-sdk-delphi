unit AWS.Translate.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.Translate.Model.CreateParallelDataResponse, 
  AWS.Translate.Model.CreateParallelDataRequest, 
  AWS.Translate.Model.DeleteParallelDataResponse, 
  AWS.Translate.Model.DeleteParallelDataRequest, 
  AWS.Translate.Model.DeleteTerminologyResponse, 
  AWS.Translate.Model.DeleteTerminologyRequest, 
  AWS.Translate.Model.DescribeTextTranslationJobResponse, 
  AWS.Translate.Model.DescribeTextTranslationJobRequest, 
  AWS.Translate.Model.GetParallelDataResponse, 
  AWS.Translate.Model.GetParallelDataRequest, 
  AWS.Translate.Model.GetTerminologyResponse, 
  AWS.Translate.Model.GetTerminologyRequest, 
  AWS.Translate.Model.ImportTerminologyResponse, 
  AWS.Translate.Model.ImportTerminologyRequest, 
  AWS.Translate.Model.ListParallelDataResponse, 
  AWS.Translate.Model.ListParallelDataRequest, 
  AWS.Translate.Model.ListTerminologiesResponse, 
  AWS.Translate.Model.ListTerminologiesRequest, 
  AWS.Translate.Model.ListTextTranslationJobsResponse, 
  AWS.Translate.Model.ListTextTranslationJobsRequest, 
  AWS.Translate.Model.StartTextTranslationJobResponse, 
  AWS.Translate.Model.StartTextTranslationJobRequest, 
  AWS.Translate.Model.StopTextTranslationJobResponse, 
  AWS.Translate.Model.StopTextTranslationJobRequest, 
  AWS.Translate.Model.TranslateTextResponse, 
  AWS.Translate.Model.TranslateTextRequest, 
  AWS.Translate.Model.UpdateParallelDataResponse, 
  AWS.Translate.Model.UpdateParallelDataRequest;

type
  IAmazonTranslate = interface(IAmazonService)
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

end.
