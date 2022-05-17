unit AWS.Textract;

interface

uses
  AWS.Textract.Client, 
  AWS.Textract.ClientIntf, 
  AWS.Textract.Config, 
  AWS.Textract.Enums, 
  AWS.Textract.Exception, 
  AWS.Textract.Metadata, 
  AWS.Textract.Model.AccessDeniedException, 
  AWS.Textract.Model.AnalyzeDocumentRequest, 
  AWS.Textract.Model.AnalyzeDocumentResponse, 
  AWS.Textract.Model.BadDocumentException, 
  AWS.Textract.Model.Block, 
  AWS.Textract.Model.BoundingBox, 
  AWS.Textract.Model.DetectDocumentTextRequest, 
  AWS.Textract.Model.DetectDocumentTextResponse, 
  AWS.Textract.Model.Document, 
  AWS.Textract.Model.DocumentLocation, 
  AWS.Textract.Model.DocumentMetadata, 
  AWS.Textract.Model.DocumentTooLargeException, 
  AWS.Textract.Model.Geometry, 
  AWS.Textract.Model.GetDocumentAnalysisRequest, 
  AWS.Textract.Model.GetDocumentAnalysisResponse, 
  AWS.Textract.Model.GetDocumentTextDetectionRequest, 
  AWS.Textract.Model.GetDocumentTextDetectionResponse, 
  AWS.Textract.Model.HumanLoopActivationOutput, 
  AWS.Textract.Model.HumanLoopConfig, 
  AWS.Textract.Model.HumanLoopDataAttributes, 
  AWS.Textract.Model.HumanLoopQuotaExceededException, 
  AWS.Textract.Model.IdempotentParameterMismatchException, 
  AWS.Textract.Model.InternalServerErrorException, 
  AWS.Textract.Model.InvalidJobIdException, 
  AWS.Textract.Model.InvalidKMSKeyException, 
  AWS.Textract.Model.InvalidParameterException, 
  AWS.Textract.Model.InvalidS3ObjectException, 
  AWS.Textract.Model.LimitExceededException, 
  AWS.Textract.Model.NotificationChannel, 
  AWS.Textract.Model.OutputConfig, 
  AWS.Textract.Model.Point, 
  AWS.Textract.Model.ProvisionedThroughputExceededException, 
  AWS.Textract.Model.Relationship, 
  AWS.Textract.Model.Request, 
  AWS.Textract.Model.S3Object, 
  AWS.Textract.Model.StartDocumentAnalysisRequest, 
  AWS.Textract.Model.StartDocumentAnalysisResponse, 
  AWS.Textract.Model.StartDocumentTextDetectionRequest, 
  AWS.Textract.Model.StartDocumentTextDetectionResponse, 
  AWS.Textract.Model.ThrottlingException, 
  AWS.Textract.Model.UnsupportedDocumentException, 
  AWS.Textract.Model.Warning;

type
  EAccessDeniedException = AWS.Textract.Model.AccessDeniedException.EAccessDeniedException;
  EAmazonTextractException = AWS.Textract.Exception.EAmazonTextractException;
  EBadDocumentException = AWS.Textract.Model.BadDocumentException.EBadDocumentException;
  EDocumentTooLargeException = AWS.Textract.Model.DocumentTooLargeException.EDocumentTooLargeException;
  EHumanLoopQuotaExceededException = AWS.Textract.Model.HumanLoopQuotaExceededException.EHumanLoopQuotaExceededException;
  EIdempotentParameterMismatchException = AWS.Textract.Model.IdempotentParameterMismatchException.EIdempotentParameterMismatchException;
  EInternalServerErrorException = AWS.Textract.Model.InternalServerErrorException.EInternalServerErrorException;
  EInvalidJobIdException = AWS.Textract.Model.InvalidJobIdException.EInvalidJobIdException;
  EInvalidKMSKeyException = AWS.Textract.Model.InvalidKMSKeyException.EInvalidKMSKeyException;
  EInvalidParameterException = AWS.Textract.Model.InvalidParameterException.EInvalidParameterException;
  EInvalidS3ObjectException = AWS.Textract.Model.InvalidS3ObjectException.EInvalidS3ObjectException;
  ELimitExceededException = AWS.Textract.Model.LimitExceededException.ELimitExceededException;
  EProvisionedThroughputExceededException = AWS.Textract.Model.ProvisionedThroughputExceededException.EProvisionedThroughputExceededException;
  EThrottlingException = AWS.Textract.Model.ThrottlingException.EThrottlingException;
  EUnsupportedDocumentException = AWS.Textract.Model.UnsupportedDocumentException.EUnsupportedDocumentException;
  IAmazonTextract = AWS.Textract.ClientIntf.IAmazonTextract;
  IAnalyzeDocumentRequest = AWS.Textract.Model.AnalyzeDocumentRequest.IAnalyzeDocumentRequest;
  IAnalyzeDocumentResponse = AWS.Textract.Model.AnalyzeDocumentResponse.IAnalyzeDocumentResponse;
  IBlock = AWS.Textract.Model.Block.IBlock;
  IBoundingBox = AWS.Textract.Model.BoundingBox.IBoundingBox;
  IDetectDocumentTextRequest = AWS.Textract.Model.DetectDocumentTextRequest.IDetectDocumentTextRequest;
  IDetectDocumentTextResponse = AWS.Textract.Model.DetectDocumentTextResponse.IDetectDocumentTextResponse;
  IDocument = AWS.Textract.Model.Document.IDocument;
  IDocumentLocation = AWS.Textract.Model.DocumentLocation.IDocumentLocation;
  IDocumentMetadata = AWS.Textract.Model.DocumentMetadata.IDocumentMetadata;
  IGeometry = AWS.Textract.Model.Geometry.IGeometry;
  IGetDocumentAnalysisRequest = AWS.Textract.Model.GetDocumentAnalysisRequest.IGetDocumentAnalysisRequest;
  IGetDocumentAnalysisResponse = AWS.Textract.Model.GetDocumentAnalysisResponse.IGetDocumentAnalysisResponse;
  IGetDocumentTextDetectionRequest = AWS.Textract.Model.GetDocumentTextDetectionRequest.IGetDocumentTextDetectionRequest;
  IGetDocumentTextDetectionResponse = AWS.Textract.Model.GetDocumentTextDetectionResponse.IGetDocumentTextDetectionResponse;
  IHumanLoopActivationOutput = AWS.Textract.Model.HumanLoopActivationOutput.IHumanLoopActivationOutput;
  IHumanLoopConfig = AWS.Textract.Model.HumanLoopConfig.IHumanLoopConfig;
  IHumanLoopDataAttributes = AWS.Textract.Model.HumanLoopDataAttributes.IHumanLoopDataAttributes;
  INotificationChannel = AWS.Textract.Model.NotificationChannel.INotificationChannel;
  IOutputConfig = AWS.Textract.Model.OutputConfig.IOutputConfig;
  IPoint = AWS.Textract.Model.Point.IPoint;
  IRelationship = AWS.Textract.Model.Relationship.IRelationship;
  IS3Object = AWS.Textract.Model.S3Object.IS3Object;
  IStartDocumentAnalysisRequest = AWS.Textract.Model.StartDocumentAnalysisRequest.IStartDocumentAnalysisRequest;
  IStartDocumentAnalysisResponse = AWS.Textract.Model.StartDocumentAnalysisResponse.IStartDocumentAnalysisResponse;
  IStartDocumentTextDetectionRequest = AWS.Textract.Model.StartDocumentTextDetectionRequest.IStartDocumentTextDetectionRequest;
  IStartDocumentTextDetectionResponse = AWS.Textract.Model.StartDocumentTextDetectionResponse.IStartDocumentTextDetectionResponse;
  IWarning = AWS.Textract.Model.Warning.IWarning;
  TAmazonTextractClient = AWS.Textract.Client.TAmazonTextractClient;
  TAmazonTextractConfig = AWS.Textract.Config.TAmazonTextractConfig;
  TAmazonTextractMetadata = AWS.Textract.Metadata.TAmazonTextractMetadata;
  TAmazonTextractRequest = AWS.Textract.Model.Request.TAmazonTextractRequest;
  TAnalyzeDocumentRequest = AWS.Textract.Model.AnalyzeDocumentRequest.TAnalyzeDocumentRequest;
  TAnalyzeDocumentResponse = AWS.Textract.Model.AnalyzeDocumentResponse.TAnalyzeDocumentResponse;
  TBlock = AWS.Textract.Model.Block.TBlock;
  TBlockType = AWS.Textract.Enums.TBlockType;
  TBoundingBox = AWS.Textract.Model.BoundingBox.TBoundingBox;
  TContentClassifier = AWS.Textract.Enums.TContentClassifier;
  TDetectDocumentTextRequest = AWS.Textract.Model.DetectDocumentTextRequest.TDetectDocumentTextRequest;
  TDetectDocumentTextResponse = AWS.Textract.Model.DetectDocumentTextResponse.TDetectDocumentTextResponse;
  TDocument = AWS.Textract.Model.Document.TDocument;
  TDocumentLocation = AWS.Textract.Model.DocumentLocation.TDocumentLocation;
  TDocumentMetadata = AWS.Textract.Model.DocumentMetadata.TDocumentMetadata;
  TEntityType = AWS.Textract.Enums.TEntityType;
  TFeatureType = AWS.Textract.Enums.TFeatureType;
  TGeometry = AWS.Textract.Model.Geometry.TGeometry;
  TGetDocumentAnalysisRequest = AWS.Textract.Model.GetDocumentAnalysisRequest.TGetDocumentAnalysisRequest;
  TGetDocumentAnalysisResponse = AWS.Textract.Model.GetDocumentAnalysisResponse.TGetDocumentAnalysisResponse;
  TGetDocumentTextDetectionRequest = AWS.Textract.Model.GetDocumentTextDetectionRequest.TGetDocumentTextDetectionRequest;
  TGetDocumentTextDetectionResponse = AWS.Textract.Model.GetDocumentTextDetectionResponse.TGetDocumentTextDetectionResponse;
  THumanLoopActivationOutput = AWS.Textract.Model.HumanLoopActivationOutput.THumanLoopActivationOutput;
  THumanLoopConfig = AWS.Textract.Model.HumanLoopConfig.THumanLoopConfig;
  THumanLoopDataAttributes = AWS.Textract.Model.HumanLoopDataAttributes.THumanLoopDataAttributes;
  TJobStatus = AWS.Textract.Enums.TJobStatus;
  TNotificationChannel = AWS.Textract.Model.NotificationChannel.TNotificationChannel;
  TOutputConfig = AWS.Textract.Model.OutputConfig.TOutputConfig;
  TPoint = AWS.Textract.Model.Point.TPoint;
  TRelationship = AWS.Textract.Model.Relationship.TRelationship;
  TRelationshipType = AWS.Textract.Enums.TRelationshipType;
  TS3Object = AWS.Textract.Model.S3Object.TS3Object;
  TSelectionStatus = AWS.Textract.Enums.TSelectionStatus;
  TStartDocumentAnalysisRequest = AWS.Textract.Model.StartDocumentAnalysisRequest.TStartDocumentAnalysisRequest;
  TStartDocumentAnalysisResponse = AWS.Textract.Model.StartDocumentAnalysisResponse.TStartDocumentAnalysisResponse;
  TStartDocumentTextDetectionRequest = AWS.Textract.Model.StartDocumentTextDetectionRequest.TStartDocumentTextDetectionRequest;
  TStartDocumentTextDetectionResponse = AWS.Textract.Model.StartDocumentTextDetectionResponse.TStartDocumentTextDetectionResponse;
  TTextType = AWS.Textract.Enums.TTextType;
  TWarning = AWS.Textract.Model.Warning.TWarning;
  
implementation

end.
