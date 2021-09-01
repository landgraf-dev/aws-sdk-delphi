unit AWS.Translate;

interface

uses
  AWS.Translate.Client, 
  AWS.Translate.ClientIntf, 
  AWS.Translate.Config, 
  AWS.Translate.Enums, 
  AWS.Translate.Exception, 
  AWS.Translate.Metadata, 
  AWS.Translate.Model.AppliedTerminology, 
  AWS.Translate.Model.ConcurrentModificationException, 
  AWS.Translate.Model.ConflictException, 
  AWS.Translate.Model.CreateParallelDataRequest, 
  AWS.Translate.Model.CreateParallelDataResponse, 
  AWS.Translate.Model.DeleteParallelDataRequest, 
  AWS.Translate.Model.DeleteParallelDataResponse, 
  AWS.Translate.Model.DeleteTerminologyRequest, 
  AWS.Translate.Model.DeleteTerminologyResponse, 
  AWS.Translate.Model.DescribeTextTranslationJobRequest, 
  AWS.Translate.Model.DescribeTextTranslationJobResponse, 
  AWS.Translate.Model.DetectedLanguageLowConfidenceException, 
  AWS.Translate.Model.EncryptionKey, 
  AWS.Translate.Model.GetParallelDataRequest, 
  AWS.Translate.Model.GetParallelDataResponse, 
  AWS.Translate.Model.GetTerminologyRequest, 
  AWS.Translate.Model.GetTerminologyResponse, 
  AWS.Translate.Model.ImportTerminologyRequest, 
  AWS.Translate.Model.ImportTerminologyResponse, 
  AWS.Translate.Model.InputDataConfig, 
  AWS.Translate.Model.InternalServerException, 
  AWS.Translate.Model.InvalidFilterException, 
  AWS.Translate.Model.InvalidParameterValueException, 
  AWS.Translate.Model.InvalidRequestException, 
  AWS.Translate.Model.JobDetails, 
  AWS.Translate.Model.LimitExceededException, 
  AWS.Translate.Model.ListParallelDataRequest, 
  AWS.Translate.Model.ListParallelDataResponse, 
  AWS.Translate.Model.ListTerminologiesRequest, 
  AWS.Translate.Model.ListTerminologiesResponse, 
  AWS.Translate.Model.ListTextTranslationJobsRequest, 
  AWS.Translate.Model.ListTextTranslationJobsResponse, 
  AWS.Translate.Model.OutputDataConfig, 
  AWS.Translate.Model.ParallelDataConfig, 
  AWS.Translate.Model.ParallelDataDataLocation, 
  AWS.Translate.Model.ParallelDataProperties, 
  AWS.Translate.Model.Request, 
  AWS.Translate.Model.ResourceNotFoundException, 
  AWS.Translate.Model.ServiceUnavailableException, 
  AWS.Translate.Model.StartTextTranslationJobRequest, 
  AWS.Translate.Model.StartTextTranslationJobResponse, 
  AWS.Translate.Model.StopTextTranslationJobRequest, 
  AWS.Translate.Model.StopTextTranslationJobResponse, 
  AWS.Translate.Model.Term, 
  AWS.Translate.Model.TerminologyData, 
  AWS.Translate.Model.TerminologyDataLocation, 
  AWS.Translate.Model.TerminologyProperties, 
  AWS.Translate.Model.TextSizeLimitExceededException, 
  AWS.Translate.Model.TextTranslationJobFilter, 
  AWS.Translate.Model.TextTranslationJobProperties, 
  AWS.Translate.Model.TooManyRequestsException, 
  AWS.Translate.Model.TranslateTextRequest, 
  AWS.Translate.Model.TranslateTextResponse, 
  AWS.Translate.Model.UnsupportedLanguagePairException, 
  AWS.Translate.Model.UpdateParallelDataRequest, 
  AWS.Translate.Model.UpdateParallelDataResponse;

type
  EAmazonTranslateException = AWS.Translate.Exception.EAmazonTranslateException;
  EConcurrentModificationException = AWS.Translate.Model.ConcurrentModificationException.EConcurrentModificationException;
  EConflictException = AWS.Translate.Model.ConflictException.EConflictException;
  EDetectedLanguageLowConfidenceException = AWS.Translate.Model.DetectedLanguageLowConfidenceException.EDetectedLanguageLowConfidenceException;
  EInternalServerException = AWS.Translate.Model.InternalServerException.EInternalServerException;
  EInvalidFilterException = AWS.Translate.Model.InvalidFilterException.EInvalidFilterException;
  EInvalidParameterValueException = AWS.Translate.Model.InvalidParameterValueException.EInvalidParameterValueException;
  EInvalidRequestException = AWS.Translate.Model.InvalidRequestException.EInvalidRequestException;
  ELimitExceededException = AWS.Translate.Model.LimitExceededException.ELimitExceededException;
  EResourceNotFoundException = AWS.Translate.Model.ResourceNotFoundException.EResourceNotFoundException;
  EServiceUnavailableException = AWS.Translate.Model.ServiceUnavailableException.EServiceUnavailableException;
  ETextSizeLimitExceededException = AWS.Translate.Model.TextSizeLimitExceededException.ETextSizeLimitExceededException;
  ETooManyRequestsException = AWS.Translate.Model.TooManyRequestsException.ETooManyRequestsException;
  EUnsupportedLanguagePairException = AWS.Translate.Model.UnsupportedLanguagePairException.EUnsupportedLanguagePairException;
  IAmazonTranslate = AWS.Translate.ClientIntf.IAmazonTranslate;
  IAppliedTerminology = AWS.Translate.Model.AppliedTerminology.IAppliedTerminology;
  ICreateParallelDataRequest = AWS.Translate.Model.CreateParallelDataRequest.ICreateParallelDataRequest;
  ICreateParallelDataResponse = AWS.Translate.Model.CreateParallelDataResponse.ICreateParallelDataResponse;
  IDeleteParallelDataRequest = AWS.Translate.Model.DeleteParallelDataRequest.IDeleteParallelDataRequest;
  IDeleteParallelDataResponse = AWS.Translate.Model.DeleteParallelDataResponse.IDeleteParallelDataResponse;
  IDeleteTerminologyRequest = AWS.Translate.Model.DeleteTerminologyRequest.IDeleteTerminologyRequest;
  IDeleteTerminologyResponse = AWS.Translate.Model.DeleteTerminologyResponse.IDeleteTerminologyResponse;
  IDescribeTextTranslationJobRequest = AWS.Translate.Model.DescribeTextTranslationJobRequest.IDescribeTextTranslationJobRequest;
  IDescribeTextTranslationJobResponse = AWS.Translate.Model.DescribeTextTranslationJobResponse.IDescribeTextTranslationJobResponse;
  IEncryptionKey = AWS.Translate.Model.EncryptionKey.IEncryptionKey;
  IGetParallelDataRequest = AWS.Translate.Model.GetParallelDataRequest.IGetParallelDataRequest;
  IGetParallelDataResponse = AWS.Translate.Model.GetParallelDataResponse.IGetParallelDataResponse;
  IGetTerminologyRequest = AWS.Translate.Model.GetTerminologyRequest.IGetTerminologyRequest;
  IGetTerminologyResponse = AWS.Translate.Model.GetTerminologyResponse.IGetTerminologyResponse;
  IImportTerminologyRequest = AWS.Translate.Model.ImportTerminologyRequest.IImportTerminologyRequest;
  IImportTerminologyResponse = AWS.Translate.Model.ImportTerminologyResponse.IImportTerminologyResponse;
  IInputDataConfig = AWS.Translate.Model.InputDataConfig.IInputDataConfig;
  IJobDetails = AWS.Translate.Model.JobDetails.IJobDetails;
  IListParallelDataRequest = AWS.Translate.Model.ListParallelDataRequest.IListParallelDataRequest;
  IListParallelDataResponse = AWS.Translate.Model.ListParallelDataResponse.IListParallelDataResponse;
  IListTerminologiesRequest = AWS.Translate.Model.ListTerminologiesRequest.IListTerminologiesRequest;
  IListTerminologiesResponse = AWS.Translate.Model.ListTerminologiesResponse.IListTerminologiesResponse;
  IListTextTranslationJobsRequest = AWS.Translate.Model.ListTextTranslationJobsRequest.IListTextTranslationJobsRequest;
  IListTextTranslationJobsResponse = AWS.Translate.Model.ListTextTranslationJobsResponse.IListTextTranslationJobsResponse;
  IOutputDataConfig = AWS.Translate.Model.OutputDataConfig.IOutputDataConfig;
  IParallelDataConfig = AWS.Translate.Model.ParallelDataConfig.IParallelDataConfig;
  IParallelDataDataLocation = AWS.Translate.Model.ParallelDataDataLocation.IParallelDataDataLocation;
  IParallelDataProperties = AWS.Translate.Model.ParallelDataProperties.IParallelDataProperties;
  IStartTextTranslationJobRequest = AWS.Translate.Model.StartTextTranslationJobRequest.IStartTextTranslationJobRequest;
  IStartTextTranslationJobResponse = AWS.Translate.Model.StartTextTranslationJobResponse.IStartTextTranslationJobResponse;
  IStopTextTranslationJobRequest = AWS.Translate.Model.StopTextTranslationJobRequest.IStopTextTranslationJobRequest;
  IStopTextTranslationJobResponse = AWS.Translate.Model.StopTextTranslationJobResponse.IStopTextTranslationJobResponse;
  ITerm = AWS.Translate.Model.Term.ITerm;
  ITerminologyData = AWS.Translate.Model.TerminologyData.ITerminologyData;
  ITerminologyDataLocation = AWS.Translate.Model.TerminologyDataLocation.ITerminologyDataLocation;
  ITerminologyProperties = AWS.Translate.Model.TerminologyProperties.ITerminologyProperties;
  ITextTranslationJobFilter = AWS.Translate.Model.TextTranslationJobFilter.ITextTranslationJobFilter;
  ITextTranslationJobProperties = AWS.Translate.Model.TextTranslationJobProperties.ITextTranslationJobProperties;
  ITranslateTextRequest = AWS.Translate.Model.TranslateTextRequest.ITranslateTextRequest;
  ITranslateTextResponse = AWS.Translate.Model.TranslateTextResponse.ITranslateTextResponse;
  IUpdateParallelDataRequest = AWS.Translate.Model.UpdateParallelDataRequest.IUpdateParallelDataRequest;
  IUpdateParallelDataResponse = AWS.Translate.Model.UpdateParallelDataResponse.IUpdateParallelDataResponse;
  TAmazonTranslateClient = AWS.Translate.Client.TAmazonTranslateClient;
  TAmazonTranslateConfig = AWS.Translate.Config.TAmazonTranslateConfig;
  TAmazonTranslateMetadata = AWS.Translate.Metadata.TAmazonTranslateMetadata;
  TAmazonTranslateRequest = AWS.Translate.Model.Request.TAmazonTranslateRequest;
  TAppliedTerminology = AWS.Translate.Model.AppliedTerminology.TAppliedTerminology;
  TCreateParallelDataRequest = AWS.Translate.Model.CreateParallelDataRequest.TCreateParallelDataRequest;
  TCreateParallelDataResponse = AWS.Translate.Model.CreateParallelDataResponse.TCreateParallelDataResponse;
  TDeleteParallelDataRequest = AWS.Translate.Model.DeleteParallelDataRequest.TDeleteParallelDataRequest;
  TDeleteParallelDataResponse = AWS.Translate.Model.DeleteParallelDataResponse.TDeleteParallelDataResponse;
  TDeleteTerminologyRequest = AWS.Translate.Model.DeleteTerminologyRequest.TDeleteTerminologyRequest;
  TDeleteTerminologyResponse = AWS.Translate.Model.DeleteTerminologyResponse.TDeleteTerminologyResponse;
  TDescribeTextTranslationJobRequest = AWS.Translate.Model.DescribeTextTranslationJobRequest.TDescribeTextTranslationJobRequest;
  TDescribeTextTranslationJobResponse = AWS.Translate.Model.DescribeTextTranslationJobResponse.TDescribeTextTranslationJobResponse;
  TEncryptionKey = AWS.Translate.Model.EncryptionKey.TEncryptionKey;
  TEncryptionKeyType = AWS.Translate.Enums.TEncryptionKeyType;
  TGetParallelDataRequest = AWS.Translate.Model.GetParallelDataRequest.TGetParallelDataRequest;
  TGetParallelDataResponse = AWS.Translate.Model.GetParallelDataResponse.TGetParallelDataResponse;
  TGetTerminologyRequest = AWS.Translate.Model.GetTerminologyRequest.TGetTerminologyRequest;
  TGetTerminologyResponse = AWS.Translate.Model.GetTerminologyResponse.TGetTerminologyResponse;
  TImportTerminologyRequest = AWS.Translate.Model.ImportTerminologyRequest.TImportTerminologyRequest;
  TImportTerminologyResponse = AWS.Translate.Model.ImportTerminologyResponse.TImportTerminologyResponse;
  TInputDataConfig = AWS.Translate.Model.InputDataConfig.TInputDataConfig;
  TJobDetails = AWS.Translate.Model.JobDetails.TJobDetails;
  TJobStatus = AWS.Translate.Enums.TJobStatus;
  TListParallelDataRequest = AWS.Translate.Model.ListParallelDataRequest.TListParallelDataRequest;
  TListParallelDataResponse = AWS.Translate.Model.ListParallelDataResponse.TListParallelDataResponse;
  TListTerminologiesRequest = AWS.Translate.Model.ListTerminologiesRequest.TListTerminologiesRequest;
  TListTerminologiesResponse = AWS.Translate.Model.ListTerminologiesResponse.TListTerminologiesResponse;
  TListTextTranslationJobsRequest = AWS.Translate.Model.ListTextTranslationJobsRequest.TListTextTranslationJobsRequest;
  TListTextTranslationJobsResponse = AWS.Translate.Model.ListTextTranslationJobsResponse.TListTextTranslationJobsResponse;
  TMergeStrategy = AWS.Translate.Enums.TMergeStrategy;
  TOutputDataConfig = AWS.Translate.Model.OutputDataConfig.TOutputDataConfig;
  TParallelDataConfig = AWS.Translate.Model.ParallelDataConfig.TParallelDataConfig;
  TParallelDataDataLocation = AWS.Translate.Model.ParallelDataDataLocation.TParallelDataDataLocation;
  TParallelDataFormat = AWS.Translate.Enums.TParallelDataFormat;
  TParallelDataProperties = AWS.Translate.Model.ParallelDataProperties.TParallelDataProperties;
  TParallelDataStatus = AWS.Translate.Enums.TParallelDataStatus;
  TStartTextTranslationJobRequest = AWS.Translate.Model.StartTextTranslationJobRequest.TStartTextTranslationJobRequest;
  TStartTextTranslationJobResponse = AWS.Translate.Model.StartTextTranslationJobResponse.TStartTextTranslationJobResponse;
  TStopTextTranslationJobRequest = AWS.Translate.Model.StopTextTranslationJobRequest.TStopTextTranslationJobRequest;
  TStopTextTranslationJobResponse = AWS.Translate.Model.StopTextTranslationJobResponse.TStopTextTranslationJobResponse;
  TTerm = AWS.Translate.Model.Term.TTerm;
  TTerminologyData = AWS.Translate.Model.TerminologyData.TTerminologyData;
  TTerminologyDataFormat = AWS.Translate.Enums.TTerminologyDataFormat;
  TTerminologyDataLocation = AWS.Translate.Model.TerminologyDataLocation.TTerminologyDataLocation;
  TTerminologyProperties = AWS.Translate.Model.TerminologyProperties.TTerminologyProperties;
  TTextTranslationJobFilter = AWS.Translate.Model.TextTranslationJobFilter.TTextTranslationJobFilter;
  TTextTranslationJobProperties = AWS.Translate.Model.TextTranslationJobProperties.TTextTranslationJobProperties;
  TTranslateTextRequest = AWS.Translate.Model.TranslateTextRequest.TTranslateTextRequest;
  TTranslateTextResponse = AWS.Translate.Model.TranslateTextResponse.TTranslateTextResponse;
  TUpdateParallelDataRequest = AWS.Translate.Model.UpdateParallelDataRequest.TUpdateParallelDataRequest;
  TUpdateParallelDataResponse = AWS.Translate.Model.UpdateParallelDataResponse.TUpdateParallelDataResponse;
  
implementation

end.
