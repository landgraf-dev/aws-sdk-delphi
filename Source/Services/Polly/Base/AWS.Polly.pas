unit AWS.Polly;

interface

uses
  AWS.Polly.Client, 
  AWS.Polly.ClientIntf, 
  AWS.Polly.Config, 
  AWS.Polly.Enums, 
  AWS.Polly.Exception, 
  AWS.Polly.Metadata, 
  AWS.Polly.Model.DeleteLexiconRequest, 
  AWS.Polly.Model.DeleteLexiconResponse, 
  AWS.Polly.Model.DescribeVoicesRequest, 
  AWS.Polly.Model.DescribeVoicesResponse, 
  AWS.Polly.Model.EngineNotSupportedException, 
  AWS.Polly.Model.GetLexiconRequest, 
  AWS.Polly.Model.GetLexiconResponse, 
  AWS.Polly.Model.GetSpeechSynthesisTaskRequest, 
  AWS.Polly.Model.GetSpeechSynthesisTaskResponse, 
  AWS.Polly.Model.InvalidLexiconException, 
  AWS.Polly.Model.InvalidNextTokenException, 
  AWS.Polly.Model.InvalidS3BucketException, 
  AWS.Polly.Model.InvalidS3KeyException, 
  AWS.Polly.Model.InvalidSampleRateException, 
  AWS.Polly.Model.InvalidSnsTopicArnException, 
  AWS.Polly.Model.InvalidSsmlException, 
  AWS.Polly.Model.InvalidTaskIdException, 
  AWS.Polly.Model.LanguageNotSupportedException, 
  AWS.Polly.Model.Lexicon, 
  AWS.Polly.Model.LexiconAttributes, 
  AWS.Polly.Model.LexiconDescription, 
  AWS.Polly.Model.LexiconNotFoundException, 
  AWS.Polly.Model.LexiconSizeExceededException, 
  AWS.Polly.Model.ListLexiconsRequest, 
  AWS.Polly.Model.ListLexiconsResponse, 
  AWS.Polly.Model.ListSpeechSynthesisTasksRequest, 
  AWS.Polly.Model.ListSpeechSynthesisTasksResponse, 
  AWS.Polly.Model.MarksNotSupportedForFormatException, 
  AWS.Polly.Model.MaxLexemeLengthExceededException, 
  AWS.Polly.Model.MaxLexiconsNumberExceededException, 
  AWS.Polly.Model.PutLexiconRequest, 
  AWS.Polly.Model.PutLexiconResponse, 
  AWS.Polly.Model.Request, 
  AWS.Polly.Model.ServiceFailureException, 
  AWS.Polly.Model.SsmlMarksNotSupportedForTextTypeException, 
  AWS.Polly.Model.StartSpeechSynthesisTaskRequest, 
  AWS.Polly.Model.StartSpeechSynthesisTaskResponse, 
  AWS.Polly.Model.SynthesisTask, 
  AWS.Polly.Model.SynthesisTaskNotFoundException, 
  AWS.Polly.Model.SynthesizeSpeechRequest, 
  AWS.Polly.Model.SynthesizeSpeechResponse, 
  AWS.Polly.Model.TextLengthExceededException, 
  AWS.Polly.Model.UnsupportedPlsAlphabetException, 
  AWS.Polly.Model.UnsupportedPlsLanguageException, 
  AWS.Polly.Model.Voice;

type
  EAmazonPollyException = AWS.Polly.Exception.EAmazonPollyException;
  EEngineNotSupportedException = AWS.Polly.Model.EngineNotSupportedException.EEngineNotSupportedException;
  EInvalidLexiconException = AWS.Polly.Model.InvalidLexiconException.EInvalidLexiconException;
  EInvalidNextTokenException = AWS.Polly.Model.InvalidNextTokenException.EInvalidNextTokenException;
  EInvalidS3BucketException = AWS.Polly.Model.InvalidS3BucketException.EInvalidS3BucketException;
  EInvalidS3KeyException = AWS.Polly.Model.InvalidS3KeyException.EInvalidS3KeyException;
  EInvalidSampleRateException = AWS.Polly.Model.InvalidSampleRateException.EInvalidSampleRateException;
  EInvalidSnsTopicArnException = AWS.Polly.Model.InvalidSnsTopicArnException.EInvalidSnsTopicArnException;
  EInvalidSsmlException = AWS.Polly.Model.InvalidSsmlException.EInvalidSsmlException;
  EInvalidTaskIdException = AWS.Polly.Model.InvalidTaskIdException.EInvalidTaskIdException;
  ELanguageNotSupportedException = AWS.Polly.Model.LanguageNotSupportedException.ELanguageNotSupportedException;
  ELexiconNotFoundException = AWS.Polly.Model.LexiconNotFoundException.ELexiconNotFoundException;
  ELexiconSizeExceededException = AWS.Polly.Model.LexiconSizeExceededException.ELexiconSizeExceededException;
  EMarksNotSupportedForFormatException = AWS.Polly.Model.MarksNotSupportedForFormatException.EMarksNotSupportedForFormatException;
  EMaxLexemeLengthExceededException = AWS.Polly.Model.MaxLexemeLengthExceededException.EMaxLexemeLengthExceededException;
  EMaxLexiconsNumberExceededException = AWS.Polly.Model.MaxLexiconsNumberExceededException.EMaxLexiconsNumberExceededException;
  EServiceFailureException = AWS.Polly.Model.ServiceFailureException.EServiceFailureException;
  ESsmlMarksNotSupportedForTextTypeException = AWS.Polly.Model.SsmlMarksNotSupportedForTextTypeException.ESsmlMarksNotSupportedForTextTypeException;
  ESynthesisTaskNotFoundException = AWS.Polly.Model.SynthesisTaskNotFoundException.ESynthesisTaskNotFoundException;
  ETextLengthExceededException = AWS.Polly.Model.TextLengthExceededException.ETextLengthExceededException;
  EUnsupportedPlsAlphabetException = AWS.Polly.Model.UnsupportedPlsAlphabetException.EUnsupportedPlsAlphabetException;
  EUnsupportedPlsLanguageException = AWS.Polly.Model.UnsupportedPlsLanguageException.EUnsupportedPlsLanguageException;
  IAmazonPolly = AWS.Polly.ClientIntf.IAmazonPolly;
  IDeleteLexiconRequest = AWS.Polly.Model.DeleteLexiconRequest.IDeleteLexiconRequest;
  IDeleteLexiconResponse = AWS.Polly.Model.DeleteLexiconResponse.IDeleteLexiconResponse;
  IDescribeVoicesRequest = AWS.Polly.Model.DescribeVoicesRequest.IDescribeVoicesRequest;
  IDescribeVoicesResponse = AWS.Polly.Model.DescribeVoicesResponse.IDescribeVoicesResponse;
  IGetLexiconRequest = AWS.Polly.Model.GetLexiconRequest.IGetLexiconRequest;
  IGetLexiconResponse = AWS.Polly.Model.GetLexiconResponse.IGetLexiconResponse;
  IGetSpeechSynthesisTaskRequest = AWS.Polly.Model.GetSpeechSynthesisTaskRequest.IGetSpeechSynthesisTaskRequest;
  IGetSpeechSynthesisTaskResponse = AWS.Polly.Model.GetSpeechSynthesisTaskResponse.IGetSpeechSynthesisTaskResponse;
  ILexicon = AWS.Polly.Model.Lexicon.ILexicon;
  ILexiconAttributes = AWS.Polly.Model.LexiconAttributes.ILexiconAttributes;
  ILexiconDescription = AWS.Polly.Model.LexiconDescription.ILexiconDescription;
  IListLexiconsRequest = AWS.Polly.Model.ListLexiconsRequest.IListLexiconsRequest;
  IListLexiconsResponse = AWS.Polly.Model.ListLexiconsResponse.IListLexiconsResponse;
  IListSpeechSynthesisTasksRequest = AWS.Polly.Model.ListSpeechSynthesisTasksRequest.IListSpeechSynthesisTasksRequest;
  IListSpeechSynthesisTasksResponse = AWS.Polly.Model.ListSpeechSynthesisTasksResponse.IListSpeechSynthesisTasksResponse;
  IPutLexiconRequest = AWS.Polly.Model.PutLexiconRequest.IPutLexiconRequest;
  IPutLexiconResponse = AWS.Polly.Model.PutLexiconResponse.IPutLexiconResponse;
  IStartSpeechSynthesisTaskRequest = AWS.Polly.Model.StartSpeechSynthesisTaskRequest.IStartSpeechSynthesisTaskRequest;
  IStartSpeechSynthesisTaskResponse = AWS.Polly.Model.StartSpeechSynthesisTaskResponse.IStartSpeechSynthesisTaskResponse;
  ISynthesisTask = AWS.Polly.Model.SynthesisTask.ISynthesisTask;
  ISynthesizeSpeechRequest = AWS.Polly.Model.SynthesizeSpeechRequest.ISynthesizeSpeechRequest;
  ISynthesizeSpeechResponse = AWS.Polly.Model.SynthesizeSpeechResponse.ISynthesizeSpeechResponse;
  IVoice = AWS.Polly.Model.Voice.IVoice;
  TAmazonPollyClient = AWS.Polly.Client.TAmazonPollyClient;
  TAmazonPollyConfig = AWS.Polly.Config.TAmazonPollyConfig;
  TAmazonPollyMetadata = AWS.Polly.Metadata.TAmazonPollyMetadata;
  TAmazonPollyRequest = AWS.Polly.Model.Request.TAmazonPollyRequest;
  TDeleteLexiconRequest = AWS.Polly.Model.DeleteLexiconRequest.TDeleteLexiconRequest;
  TDeleteLexiconResponse = AWS.Polly.Model.DeleteLexiconResponse.TDeleteLexiconResponse;
  TDescribeVoicesRequest = AWS.Polly.Model.DescribeVoicesRequest.TDescribeVoicesRequest;
  TDescribeVoicesResponse = AWS.Polly.Model.DescribeVoicesResponse.TDescribeVoicesResponse;
  TEngine = AWS.Polly.Enums.TEngine;
  TGender = AWS.Polly.Enums.TGender;
  TGetLexiconRequest = AWS.Polly.Model.GetLexiconRequest.TGetLexiconRequest;
  TGetLexiconResponse = AWS.Polly.Model.GetLexiconResponse.TGetLexiconResponse;
  TGetSpeechSynthesisTaskRequest = AWS.Polly.Model.GetSpeechSynthesisTaskRequest.TGetSpeechSynthesisTaskRequest;
  TGetSpeechSynthesisTaskResponse = AWS.Polly.Model.GetSpeechSynthesisTaskResponse.TGetSpeechSynthesisTaskResponse;
  TLanguageCode = AWS.Polly.Enums.TLanguageCode;
  TLexicon = AWS.Polly.Model.Lexicon.TLexicon;
  TLexiconAttributes = AWS.Polly.Model.LexiconAttributes.TLexiconAttributes;
  TLexiconDescription = AWS.Polly.Model.LexiconDescription.TLexiconDescription;
  TListLexiconsRequest = AWS.Polly.Model.ListLexiconsRequest.TListLexiconsRequest;
  TListLexiconsResponse = AWS.Polly.Model.ListLexiconsResponse.TListLexiconsResponse;
  TListSpeechSynthesisTasksRequest = AWS.Polly.Model.ListSpeechSynthesisTasksRequest.TListSpeechSynthesisTasksRequest;
  TListSpeechSynthesisTasksResponse = AWS.Polly.Model.ListSpeechSynthesisTasksResponse.TListSpeechSynthesisTasksResponse;
  TOutputFormat = AWS.Polly.Enums.TOutputFormat;
  TPutLexiconRequest = AWS.Polly.Model.PutLexiconRequest.TPutLexiconRequest;
  TPutLexiconResponse = AWS.Polly.Model.PutLexiconResponse.TPutLexiconResponse;
  TSpeechMarkType = AWS.Polly.Enums.TSpeechMarkType;
  TStartSpeechSynthesisTaskRequest = AWS.Polly.Model.StartSpeechSynthesisTaskRequest.TStartSpeechSynthesisTaskRequest;
  TStartSpeechSynthesisTaskResponse = AWS.Polly.Model.StartSpeechSynthesisTaskResponse.TStartSpeechSynthesisTaskResponse;
  TSynthesisTask = AWS.Polly.Model.SynthesisTask.TSynthesisTask;
  TSynthesizeSpeechRequest = AWS.Polly.Model.SynthesizeSpeechRequest.TSynthesizeSpeechRequest;
  TSynthesizeSpeechResponse = AWS.Polly.Model.SynthesizeSpeechResponse.TSynthesizeSpeechResponse;
  TTaskStatus = AWS.Polly.Enums.TTaskStatus;
  TTextType = AWS.Polly.Enums.TTextType;
  TVoice = AWS.Polly.Model.Voice.TVoice;
  TVoiceId = AWS.Polly.Enums.TVoiceId;
  
implementation

end.
