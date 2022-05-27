unit AWS.LexRuntimeV2;

interface

uses
  AWS.LexRuntimeV2.Client, 
  AWS.LexRuntimeV2.ClientIntf, 
  AWS.LexRuntimeV2.Config, 
  AWS.LexRuntimeV2.Enums, 
  AWS.LexRuntimeV2.Exception, 
  AWS.LexRuntimeV2.Metadata, 
  AWS.LexRuntimeV2.Model.AccessDeniedException, 
  AWS.LexRuntimeV2.Model.ActiveContext, 
  AWS.LexRuntimeV2.Model.ActiveContextTimeToLive, 
  AWS.LexRuntimeV2.Model.BadGatewayException, 
  AWS.LexRuntimeV2.Model.Button, 
  AWS.LexRuntimeV2.Model.ConfidenceScore, 
  AWS.LexRuntimeV2.Model.ConflictException, 
  AWS.LexRuntimeV2.Model.DeleteSessionRequest, 
  AWS.LexRuntimeV2.Model.DeleteSessionResponse, 
  AWS.LexRuntimeV2.Model.DependencyFailedException, 
  AWS.LexRuntimeV2.Model.DialogAction, 
  AWS.LexRuntimeV2.Model.GetSessionRequest, 
  AWS.LexRuntimeV2.Model.GetSessionResponse, 
  AWS.LexRuntimeV2.Model.ImageResponseCard, 
  AWS.LexRuntimeV2.Model.Intent, 
  AWS.LexRuntimeV2.Model.InternalServerException, 
  AWS.LexRuntimeV2.Model.Interpretation, 
  AWS.LexRuntimeV2.Model.Message, 
  AWS.LexRuntimeV2.Model.PutSessionRequest, 
  AWS.LexRuntimeV2.Model.PutSessionResponse, 
  AWS.LexRuntimeV2.Model.RecognizeTextRequest, 
  AWS.LexRuntimeV2.Model.RecognizeTextResponse, 
  AWS.LexRuntimeV2.Model.RecognizeUtteranceRequest, 
  AWS.LexRuntimeV2.Model.RecognizeUtteranceResponse, 
  AWS.LexRuntimeV2.Model.Request, 
  AWS.LexRuntimeV2.Model.ResourceNotFoundException, 
  AWS.LexRuntimeV2.Model.RuntimeHintDetails, 
  AWS.LexRuntimeV2.Model.RuntimeHints, 
  AWS.LexRuntimeV2.Model.RuntimeHintValue, 
  AWS.LexRuntimeV2.Model.SentimentResponse, 
  AWS.LexRuntimeV2.Model.SentimentScore, 
  AWS.LexRuntimeV2.Model.SessionState, 
  AWS.LexRuntimeV2.Model.Slot, 
  AWS.LexRuntimeV2.Model.ThrottlingException, 
  AWS.LexRuntimeV2.Model.ValidationException, 
  AWS.LexRuntimeV2.Model.Value;

type
  EAccessDeniedException = AWS.LexRuntimeV2.Model.AccessDeniedException.EAccessDeniedException;
  EAmazonLexRuntimeV2Exception = AWS.LexRuntimeV2.Exception.EAmazonLexRuntimeV2Exception;
  EBadGatewayException = AWS.LexRuntimeV2.Model.BadGatewayException.EBadGatewayException;
  EConflictException = AWS.LexRuntimeV2.Model.ConflictException.EConflictException;
  EDependencyFailedException = AWS.LexRuntimeV2.Model.DependencyFailedException.EDependencyFailedException;
  EInternalServerException = AWS.LexRuntimeV2.Model.InternalServerException.EInternalServerException;
  EResourceNotFoundException = AWS.LexRuntimeV2.Model.ResourceNotFoundException.EResourceNotFoundException;
  EThrottlingException = AWS.LexRuntimeV2.Model.ThrottlingException.EThrottlingException;
  EValidationException = AWS.LexRuntimeV2.Model.ValidationException.EValidationException;
  IActiveContext = AWS.LexRuntimeV2.Model.ActiveContext.IActiveContext;
  IActiveContextTimeToLive = AWS.LexRuntimeV2.Model.ActiveContextTimeToLive.IActiveContextTimeToLive;
  IAmazonLexRuntimeV2 = AWS.LexRuntimeV2.ClientIntf.IAmazonLexRuntimeV2;
  IButton = AWS.LexRuntimeV2.Model.Button.IButton;
  IConfidenceScore = AWS.LexRuntimeV2.Model.ConfidenceScore.IConfidenceScore;
  IDeleteSessionRequest = AWS.LexRuntimeV2.Model.DeleteSessionRequest.IDeleteSessionRequest;
  IDeleteSessionResponse = AWS.LexRuntimeV2.Model.DeleteSessionResponse.IDeleteSessionResponse;
  IDialogAction = AWS.LexRuntimeV2.Model.DialogAction.IDialogAction;
  IGetSessionRequest = AWS.LexRuntimeV2.Model.GetSessionRequest.IGetSessionRequest;
  IGetSessionResponse = AWS.LexRuntimeV2.Model.GetSessionResponse.IGetSessionResponse;
  IImageResponseCard = AWS.LexRuntimeV2.Model.ImageResponseCard.IImageResponseCard;
  IIntent = AWS.LexRuntimeV2.Model.Intent.IIntent;
  IInterpretation = AWS.LexRuntimeV2.Model.Interpretation.IInterpretation;
  IMessage = AWS.LexRuntimeV2.Model.Message.IMessage;
  IPutSessionRequest = AWS.LexRuntimeV2.Model.PutSessionRequest.IPutSessionRequest;
  IPutSessionResponse = AWS.LexRuntimeV2.Model.PutSessionResponse.IPutSessionResponse;
  IRecognizeTextRequest = AWS.LexRuntimeV2.Model.RecognizeTextRequest.IRecognizeTextRequest;
  IRecognizeTextResponse = AWS.LexRuntimeV2.Model.RecognizeTextResponse.IRecognizeTextResponse;
  IRecognizeUtteranceRequest = AWS.LexRuntimeV2.Model.RecognizeUtteranceRequest.IRecognizeUtteranceRequest;
  IRecognizeUtteranceResponse = AWS.LexRuntimeV2.Model.RecognizeUtteranceResponse.IRecognizeUtteranceResponse;
  IRuntimeHintDetails = AWS.LexRuntimeV2.Model.RuntimeHintDetails.IRuntimeHintDetails;
  IRuntimeHints = AWS.LexRuntimeV2.Model.RuntimeHints.IRuntimeHints;
  IRuntimeHintValue = AWS.LexRuntimeV2.Model.RuntimeHintValue.IRuntimeHintValue;
  ISentimentResponse = AWS.LexRuntimeV2.Model.SentimentResponse.ISentimentResponse;
  ISentimentScore = AWS.LexRuntimeV2.Model.SentimentScore.ISentimentScore;
  ISessionState = AWS.LexRuntimeV2.Model.SessionState.ISessionState;
  ISlot = AWS.LexRuntimeV2.Model.Slot.ISlot;
  IValue = AWS.LexRuntimeV2.Model.Value.IValue;
  TActiveContext = AWS.LexRuntimeV2.Model.ActiveContext.TActiveContext;
  TActiveContextTimeToLive = AWS.LexRuntimeV2.Model.ActiveContextTimeToLive.TActiveContextTimeToLive;
  TAmazonLexRuntimeV2Client = AWS.LexRuntimeV2.Client.TAmazonLexRuntimeV2Client;
  TAmazonLexRuntimeV2Config = AWS.LexRuntimeV2.Config.TAmazonLexRuntimeV2Config;
  TAmazonLexRuntimeV2Metadata = AWS.LexRuntimeV2.Metadata.TAmazonLexRuntimeV2Metadata;
  TAmazonLexRuntimeV2Request = AWS.LexRuntimeV2.Model.Request.TAmazonLexRuntimeV2Request;
  TButton = AWS.LexRuntimeV2.Model.Button.TButton;
  TConfidenceScore = AWS.LexRuntimeV2.Model.ConfidenceScore.TConfidenceScore;
  TConfirmationState = AWS.LexRuntimeV2.Enums.TConfirmationState;
  TConversationMode = AWS.LexRuntimeV2.Enums.TConversationMode;
  TDeleteSessionRequest = AWS.LexRuntimeV2.Model.DeleteSessionRequest.TDeleteSessionRequest;
  TDeleteSessionResponse = AWS.LexRuntimeV2.Model.DeleteSessionResponse.TDeleteSessionResponse;
  TDialogAction = AWS.LexRuntimeV2.Model.DialogAction.TDialogAction;
  TDialogActionType = AWS.LexRuntimeV2.Enums.TDialogActionType;
  TGetSessionRequest = AWS.LexRuntimeV2.Model.GetSessionRequest.TGetSessionRequest;
  TGetSessionResponse = AWS.LexRuntimeV2.Model.GetSessionResponse.TGetSessionResponse;
  TImageResponseCard = AWS.LexRuntimeV2.Model.ImageResponseCard.TImageResponseCard;
  TInputMode = AWS.LexRuntimeV2.Enums.TInputMode;
  TIntent = AWS.LexRuntimeV2.Model.Intent.TIntent;
  TIntentState = AWS.LexRuntimeV2.Enums.TIntentState;
  TInterpretation = AWS.LexRuntimeV2.Model.Interpretation.TInterpretation;
  TMessage = AWS.LexRuntimeV2.Model.Message.TMessage;
  TMessageContentType = AWS.LexRuntimeV2.Enums.TMessageContentType;
  TPlaybackInterruptionReason = AWS.LexRuntimeV2.Enums.TPlaybackInterruptionReason;
  TPutSessionRequest = AWS.LexRuntimeV2.Model.PutSessionRequest.TPutSessionRequest;
  TPutSessionResponse = AWS.LexRuntimeV2.Model.PutSessionResponse.TPutSessionResponse;
  TRecognizeTextRequest = AWS.LexRuntimeV2.Model.RecognizeTextRequest.TRecognizeTextRequest;
  TRecognizeTextResponse = AWS.LexRuntimeV2.Model.RecognizeTextResponse.TRecognizeTextResponse;
  TRecognizeUtteranceRequest = AWS.LexRuntimeV2.Model.RecognizeUtteranceRequest.TRecognizeUtteranceRequest;
  TRecognizeUtteranceResponse = AWS.LexRuntimeV2.Model.RecognizeUtteranceResponse.TRecognizeUtteranceResponse;
  TRuntimeHintDetails = AWS.LexRuntimeV2.Model.RuntimeHintDetails.TRuntimeHintDetails;
  TRuntimeHints = AWS.LexRuntimeV2.Model.RuntimeHints.TRuntimeHints;
  TRuntimeHintValue = AWS.LexRuntimeV2.Model.RuntimeHintValue.TRuntimeHintValue;
  TSentimentResponse = AWS.LexRuntimeV2.Model.SentimentResponse.TSentimentResponse;
  TSentimentScore = AWS.LexRuntimeV2.Model.SentimentScore.TSentimentScore;
  TSentimentType = AWS.LexRuntimeV2.Enums.TSentimentType;
  TSessionState = AWS.LexRuntimeV2.Model.SessionState.TSessionState;
  TShape = AWS.LexRuntimeV2.Enums.TShape;
  TSlot = AWS.LexRuntimeV2.Model.Slot.TSlot;
  TStyleType = AWS.LexRuntimeV2.Enums.TStyleType;
  TValue = AWS.LexRuntimeV2.Model.Value.TValue;
  
implementation

end.
