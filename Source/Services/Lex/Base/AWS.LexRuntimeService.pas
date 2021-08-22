unit AWS.LexRuntimeService;

interface

uses
  AWS.LexRuntimeService.Client, 
  AWS.LexRuntimeService.ClientIntf, 
  AWS.LexRuntimeService.Config, 
  AWS.LexRuntimeService.Enums, 
  AWS.LexRuntimeService.Exception, 
  AWS.LexRuntimeService.Metadata, 
  AWS.LexRuntimeService.Model.ActiveContext, 
  AWS.LexRuntimeService.Model.ActiveContextTimeToLive, 
  AWS.LexRuntimeService.Model.BadGatewayException, 
  AWS.LexRuntimeService.Model.BadRequestException, 
  AWS.LexRuntimeService.Model.Button, 
  AWS.LexRuntimeService.Model.ConflictException, 
  AWS.LexRuntimeService.Model.DeleteSessionRequest, 
  AWS.LexRuntimeService.Model.DeleteSessionResponse, 
  AWS.LexRuntimeService.Model.DependencyFailedException, 
  AWS.LexRuntimeService.Model.DialogAction, 
  AWS.LexRuntimeService.Model.GenericAttachment, 
  AWS.LexRuntimeService.Model.GetSessionRequest, 
  AWS.LexRuntimeService.Model.GetSessionResponse, 
  AWS.LexRuntimeService.Model.IntentConfidence, 
  AWS.LexRuntimeService.Model.IntentSummary, 
  AWS.LexRuntimeService.Model.InternalFailureException, 
  AWS.LexRuntimeService.Model.LimitExceededException, 
  AWS.LexRuntimeService.Model.LoopDetectedException, 
  AWS.LexRuntimeService.Model.NotAcceptableException, 
  AWS.LexRuntimeService.Model.NotFoundException, 
  AWS.LexRuntimeService.Model.PostContentRequest, 
  AWS.LexRuntimeService.Model.PostContentResponse, 
  AWS.LexRuntimeService.Model.PostTextRequest, 
  AWS.LexRuntimeService.Model.PostTextResponse, 
  AWS.LexRuntimeService.Model.PredictedIntent, 
  AWS.LexRuntimeService.Model.PutSessionRequest, 
  AWS.LexRuntimeService.Model.PutSessionResponse, 
  AWS.LexRuntimeService.Model.Request, 
  AWS.LexRuntimeService.Model.RequestTimeoutException, 
  AWS.LexRuntimeService.Model.ResponseCard, 
  AWS.LexRuntimeService.Model.SentimentResponse, 
  AWS.LexRuntimeService.Model.UnsupportedMediaTypeException;

type
  EAmazonLexException = AWS.LexRuntimeService.Exception.EAmazonLexException;
  EBadGatewayException = AWS.LexRuntimeService.Model.BadGatewayException.EBadGatewayException;
  EBadRequestException = AWS.LexRuntimeService.Model.BadRequestException.EBadRequestException;
  EConflictException = AWS.LexRuntimeService.Model.ConflictException.EConflictException;
  EDependencyFailedException = AWS.LexRuntimeService.Model.DependencyFailedException.EDependencyFailedException;
  EInternalFailureException = AWS.LexRuntimeService.Model.InternalFailureException.EInternalFailureException;
  ELimitExceededException = AWS.LexRuntimeService.Model.LimitExceededException.ELimitExceededException;
  ELoopDetectedException = AWS.LexRuntimeService.Model.LoopDetectedException.ELoopDetectedException;
  ENotAcceptableException = AWS.LexRuntimeService.Model.NotAcceptableException.ENotAcceptableException;
  ENotFoundException = AWS.LexRuntimeService.Model.NotFoundException.ENotFoundException;
  ERequestTimeoutException = AWS.LexRuntimeService.Model.RequestTimeoutException.ERequestTimeoutException;
  EUnsupportedMediaTypeException = AWS.LexRuntimeService.Model.UnsupportedMediaTypeException.EUnsupportedMediaTypeException;
  IActiveContext = AWS.LexRuntimeService.Model.ActiveContext.IActiveContext;
  IActiveContextTimeToLive = AWS.LexRuntimeService.Model.ActiveContextTimeToLive.IActiveContextTimeToLive;
  IAmazonLex = AWS.LexRuntimeService.ClientIntf.IAmazonLex;
  IButton = AWS.LexRuntimeService.Model.Button.IButton;
  IDeleteSessionRequest = AWS.LexRuntimeService.Model.DeleteSessionRequest.IDeleteSessionRequest;
  IDeleteSessionResponse = AWS.LexRuntimeService.Model.DeleteSessionResponse.IDeleteSessionResponse;
  IDialogAction = AWS.LexRuntimeService.Model.DialogAction.IDialogAction;
  IGenericAttachment = AWS.LexRuntimeService.Model.GenericAttachment.IGenericAttachment;
  IGetSessionRequest = AWS.LexRuntimeService.Model.GetSessionRequest.IGetSessionRequest;
  IGetSessionResponse = AWS.LexRuntimeService.Model.GetSessionResponse.IGetSessionResponse;
  IIntentConfidence = AWS.LexRuntimeService.Model.IntentConfidence.IIntentConfidence;
  IIntentSummary = AWS.LexRuntimeService.Model.IntentSummary.IIntentSummary;
  IPostContentRequest = AWS.LexRuntimeService.Model.PostContentRequest.IPostContentRequest;
  IPostContentResponse = AWS.LexRuntimeService.Model.PostContentResponse.IPostContentResponse;
  IPostTextRequest = AWS.LexRuntimeService.Model.PostTextRequest.IPostTextRequest;
  IPostTextResponse = AWS.LexRuntimeService.Model.PostTextResponse.IPostTextResponse;
  IPredictedIntent = AWS.LexRuntimeService.Model.PredictedIntent.IPredictedIntent;
  IPutSessionRequest = AWS.LexRuntimeService.Model.PutSessionRequest.IPutSessionRequest;
  IPutSessionResponse = AWS.LexRuntimeService.Model.PutSessionResponse.IPutSessionResponse;
  IResponseCard = AWS.LexRuntimeService.Model.ResponseCard.IResponseCard;
  ISentimentResponse = AWS.LexRuntimeService.Model.SentimentResponse.ISentimentResponse;
  TActiveContext = AWS.LexRuntimeService.Model.ActiveContext.TActiveContext;
  TActiveContextTimeToLive = AWS.LexRuntimeService.Model.ActiveContextTimeToLive.TActiveContextTimeToLive;
  TAmazonLexClient = AWS.LexRuntimeService.Client.TAmazonLexClient;
  TAmazonLexConfig = AWS.LexRuntimeService.Config.TAmazonLexConfig;
  TAmazonLexMetadata = AWS.LexRuntimeService.Metadata.TAmazonLexMetadata;
  TAmazonLexRequest = AWS.LexRuntimeService.Model.Request.TAmazonLexRequest;
  TButton = AWS.LexRuntimeService.Model.Button.TButton;
  TConfirmationStatus = AWS.LexRuntimeService.Enums.TConfirmationStatus;
  TContentType = AWS.LexRuntimeService.Enums.TContentType;
  TDeleteSessionRequest = AWS.LexRuntimeService.Model.DeleteSessionRequest.TDeleteSessionRequest;
  TDeleteSessionResponse = AWS.LexRuntimeService.Model.DeleteSessionResponse.TDeleteSessionResponse;
  TDialogAction = AWS.LexRuntimeService.Model.DialogAction.TDialogAction;
  TDialogActionType = AWS.LexRuntimeService.Enums.TDialogActionType;
  TDialogState = AWS.LexRuntimeService.Enums.TDialogState;
  TFulfillmentState = AWS.LexRuntimeService.Enums.TFulfillmentState;
  TGenericAttachment = AWS.LexRuntimeService.Model.GenericAttachment.TGenericAttachment;
  TGetSessionRequest = AWS.LexRuntimeService.Model.GetSessionRequest.TGetSessionRequest;
  TGetSessionResponse = AWS.LexRuntimeService.Model.GetSessionResponse.TGetSessionResponse;
  TIntentConfidence = AWS.LexRuntimeService.Model.IntentConfidence.TIntentConfidence;
  TIntentSummary = AWS.LexRuntimeService.Model.IntentSummary.TIntentSummary;
  TMessageFormatType = AWS.LexRuntimeService.Enums.TMessageFormatType;
  TPostContentRequest = AWS.LexRuntimeService.Model.PostContentRequest.TPostContentRequest;
  TPostContentResponse = AWS.LexRuntimeService.Model.PostContentResponse.TPostContentResponse;
  TPostTextRequest = AWS.LexRuntimeService.Model.PostTextRequest.TPostTextRequest;
  TPostTextResponse = AWS.LexRuntimeService.Model.PostTextResponse.TPostTextResponse;
  TPredictedIntent = AWS.LexRuntimeService.Model.PredictedIntent.TPredictedIntent;
  TPutSessionRequest = AWS.LexRuntimeService.Model.PutSessionRequest.TPutSessionRequest;
  TPutSessionResponse = AWS.LexRuntimeService.Model.PutSessionResponse.TPutSessionResponse;
  TResponseCard = AWS.LexRuntimeService.Model.ResponseCard.TResponseCard;
  TSentimentResponse = AWS.LexRuntimeService.Model.SentimentResponse.TSentimentResponse;
  
implementation

end.
