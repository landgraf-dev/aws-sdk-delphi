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
  AWS.Textract.Model.AnalyzeExpenseRequest, 
  AWS.Textract.Model.AnalyzeExpenseResponse, 
  AWS.Textract.Model.AnalyzeIDDetections, 
  AWS.Textract.Model.AnalyzeIDRequest, 
  AWS.Textract.Model.AnalyzeIDResponse, 
  AWS.Textract.Model.BadDocumentException, 
  AWS.Textract.Model.Block, 
  AWS.Textract.Model.BoundingBox, 
  AWS.Textract.Model.DetectDocumentTextRequest, 
  AWS.Textract.Model.DetectDocumentTextResponse, 
  AWS.Textract.Model.Document, 
  AWS.Textract.Model.DocumentLocation, 
  AWS.Textract.Model.DocumentMetadata, 
  AWS.Textract.Model.DocumentTooLargeException, 
  AWS.Textract.Model.ExpenseDetection, 
  AWS.Textract.Model.ExpenseDocument, 
  AWS.Textract.Model.ExpenseField, 
  AWS.Textract.Model.ExpenseType, 
  AWS.Textract.Model.Geometry, 
  AWS.Textract.Model.GetDocumentAnalysisRequest, 
  AWS.Textract.Model.GetDocumentAnalysisResponse, 
  AWS.Textract.Model.GetDocumentTextDetectionRequest, 
  AWS.Textract.Model.GetDocumentTextDetectionResponse, 
  AWS.Textract.Model.GetExpenseAnalysisRequest, 
  AWS.Textract.Model.GetExpenseAnalysisResponse, 
  AWS.Textract.Model.HumanLoopActivationOutput, 
  AWS.Textract.Model.HumanLoopConfig, 
  AWS.Textract.Model.HumanLoopDataAttributes, 
  AWS.Textract.Model.HumanLoopQuotaExceededException, 
  AWS.Textract.Model.IdempotentParameterMismatchException, 
  AWS.Textract.Model.IdentityDocument, 
  AWS.Textract.Model.IdentityDocumentField, 
  AWS.Textract.Model.InternalServerErrorException, 
  AWS.Textract.Model.InvalidJobIdException, 
  AWS.Textract.Model.InvalidKMSKeyException, 
  AWS.Textract.Model.InvalidParameterException, 
  AWS.Textract.Model.InvalidS3ObjectException, 
  AWS.Textract.Model.LimitExceededException, 
  AWS.Textract.Model.LineItemFields, 
  AWS.Textract.Model.LineItemGroup, 
  AWS.Textract.Model.NormalizedValue, 
  AWS.Textract.Model.NotificationChannel, 
  AWS.Textract.Model.OutputConfig, 
  AWS.Textract.Model.Point, 
  AWS.Textract.Model.ProvisionedThroughputExceededException, 
  AWS.Textract.Model.QueriesConfig, 
  AWS.Textract.Model.Query, 
  AWS.Textract.Model.Relationship, 
  AWS.Textract.Model.Request, 
  AWS.Textract.Model.S3Object, 
  AWS.Textract.Model.StartDocumentAnalysisRequest, 
  AWS.Textract.Model.StartDocumentAnalysisResponse, 
  AWS.Textract.Model.StartDocumentTextDetectionRequest, 
  AWS.Textract.Model.StartDocumentTextDetectionResponse, 
  AWS.Textract.Model.StartExpenseAnalysisRequest, 
  AWS.Textract.Model.StartExpenseAnalysisResponse, 
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
  IAnalyzeExpenseRequest = AWS.Textract.Model.AnalyzeExpenseRequest.IAnalyzeExpenseRequest;
  IAnalyzeExpenseResponse = AWS.Textract.Model.AnalyzeExpenseResponse.IAnalyzeExpenseResponse;
  IAnalyzeIDDetections = AWS.Textract.Model.AnalyzeIDDetections.IAnalyzeIDDetections;
  IAnalyzeIDRequest = AWS.Textract.Model.AnalyzeIDRequest.IAnalyzeIDRequest;
  IAnalyzeIDResponse = AWS.Textract.Model.AnalyzeIDResponse.IAnalyzeIDResponse;
  IBlock = AWS.Textract.Model.Block.IBlock;
  IBoundingBox = AWS.Textract.Model.BoundingBox.IBoundingBox;
  IDetectDocumentTextRequest = AWS.Textract.Model.DetectDocumentTextRequest.IDetectDocumentTextRequest;
  IDetectDocumentTextResponse = AWS.Textract.Model.DetectDocumentTextResponse.IDetectDocumentTextResponse;
  IDocument = AWS.Textract.Model.Document.IDocument;
  IDocumentLocation = AWS.Textract.Model.DocumentLocation.IDocumentLocation;
  IDocumentMetadata = AWS.Textract.Model.DocumentMetadata.IDocumentMetadata;
  IExpenseDetection = AWS.Textract.Model.ExpenseDetection.IExpenseDetection;
  IExpenseDocument = AWS.Textract.Model.ExpenseDocument.IExpenseDocument;
  IExpenseField = AWS.Textract.Model.ExpenseField.IExpenseField;
  IExpenseType = AWS.Textract.Model.ExpenseType.IExpenseType;
  IGeometry = AWS.Textract.Model.Geometry.IGeometry;
  IGetDocumentAnalysisRequest = AWS.Textract.Model.GetDocumentAnalysisRequest.IGetDocumentAnalysisRequest;
  IGetDocumentAnalysisResponse = AWS.Textract.Model.GetDocumentAnalysisResponse.IGetDocumentAnalysisResponse;
  IGetDocumentTextDetectionRequest = AWS.Textract.Model.GetDocumentTextDetectionRequest.IGetDocumentTextDetectionRequest;
  IGetDocumentTextDetectionResponse = AWS.Textract.Model.GetDocumentTextDetectionResponse.IGetDocumentTextDetectionResponse;
  IGetExpenseAnalysisRequest = AWS.Textract.Model.GetExpenseAnalysisRequest.IGetExpenseAnalysisRequest;
  IGetExpenseAnalysisResponse = AWS.Textract.Model.GetExpenseAnalysisResponse.IGetExpenseAnalysisResponse;
  IHumanLoopActivationOutput = AWS.Textract.Model.HumanLoopActivationOutput.IHumanLoopActivationOutput;
  IHumanLoopConfig = AWS.Textract.Model.HumanLoopConfig.IHumanLoopConfig;
  IHumanLoopDataAttributes = AWS.Textract.Model.HumanLoopDataAttributes.IHumanLoopDataAttributes;
  IIdentityDocument = AWS.Textract.Model.IdentityDocument.IIdentityDocument;
  IIdentityDocumentField = AWS.Textract.Model.IdentityDocumentField.IIdentityDocumentField;
  ILineItemFields = AWS.Textract.Model.LineItemFields.ILineItemFields;
  ILineItemGroup = AWS.Textract.Model.LineItemGroup.ILineItemGroup;
  INormalizedValue = AWS.Textract.Model.NormalizedValue.INormalizedValue;
  INotificationChannel = AWS.Textract.Model.NotificationChannel.INotificationChannel;
  IOutputConfig = AWS.Textract.Model.OutputConfig.IOutputConfig;
  IPoint = AWS.Textract.Model.Point.IPoint;
  IQueriesConfig = AWS.Textract.Model.QueriesConfig.IQueriesConfig;
  IQuery = AWS.Textract.Model.Query.IQuery;
  IRelationship = AWS.Textract.Model.Relationship.IRelationship;
  IS3Object = AWS.Textract.Model.S3Object.IS3Object;
  IStartDocumentAnalysisRequest = AWS.Textract.Model.StartDocumentAnalysisRequest.IStartDocumentAnalysisRequest;
  IStartDocumentAnalysisResponse = AWS.Textract.Model.StartDocumentAnalysisResponse.IStartDocumentAnalysisResponse;
  IStartDocumentTextDetectionRequest = AWS.Textract.Model.StartDocumentTextDetectionRequest.IStartDocumentTextDetectionRequest;
  IStartDocumentTextDetectionResponse = AWS.Textract.Model.StartDocumentTextDetectionResponse.IStartDocumentTextDetectionResponse;
  IStartExpenseAnalysisRequest = AWS.Textract.Model.StartExpenseAnalysisRequest.IStartExpenseAnalysisRequest;
  IStartExpenseAnalysisResponse = AWS.Textract.Model.StartExpenseAnalysisResponse.IStartExpenseAnalysisResponse;
  IWarning = AWS.Textract.Model.Warning.IWarning;
  TAmazonTextractClient = AWS.Textract.Client.TAmazonTextractClient;
  TAmazonTextractConfig = AWS.Textract.Config.TAmazonTextractConfig;
  TAmazonTextractMetadata = AWS.Textract.Metadata.TAmazonTextractMetadata;
  TAmazonTextractRequest = AWS.Textract.Model.Request.TAmazonTextractRequest;
  TAnalyzeDocumentRequest = AWS.Textract.Model.AnalyzeDocumentRequest.TAnalyzeDocumentRequest;
  TAnalyzeDocumentResponse = AWS.Textract.Model.AnalyzeDocumentResponse.TAnalyzeDocumentResponse;
  TAnalyzeExpenseRequest = AWS.Textract.Model.AnalyzeExpenseRequest.TAnalyzeExpenseRequest;
  TAnalyzeExpenseResponse = AWS.Textract.Model.AnalyzeExpenseResponse.TAnalyzeExpenseResponse;
  TAnalyzeIDDetections = AWS.Textract.Model.AnalyzeIDDetections.TAnalyzeIDDetections;
  TAnalyzeIDRequest = AWS.Textract.Model.AnalyzeIDRequest.TAnalyzeIDRequest;
  TAnalyzeIDResponse = AWS.Textract.Model.AnalyzeIDResponse.TAnalyzeIDResponse;
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
  TExpenseDetection = AWS.Textract.Model.ExpenseDetection.TExpenseDetection;
  TExpenseDocument = AWS.Textract.Model.ExpenseDocument.TExpenseDocument;
  TExpenseField = AWS.Textract.Model.ExpenseField.TExpenseField;
  TExpenseType = AWS.Textract.Model.ExpenseType.TExpenseType;
  TFeatureType = AWS.Textract.Enums.TFeatureType;
  TGeometry = AWS.Textract.Model.Geometry.TGeometry;
  TGetDocumentAnalysisRequest = AWS.Textract.Model.GetDocumentAnalysisRequest.TGetDocumentAnalysisRequest;
  TGetDocumentAnalysisResponse = AWS.Textract.Model.GetDocumentAnalysisResponse.TGetDocumentAnalysisResponse;
  TGetDocumentTextDetectionRequest = AWS.Textract.Model.GetDocumentTextDetectionRequest.TGetDocumentTextDetectionRequest;
  TGetDocumentTextDetectionResponse = AWS.Textract.Model.GetDocumentTextDetectionResponse.TGetDocumentTextDetectionResponse;
  TGetExpenseAnalysisRequest = AWS.Textract.Model.GetExpenseAnalysisRequest.TGetExpenseAnalysisRequest;
  TGetExpenseAnalysisResponse = AWS.Textract.Model.GetExpenseAnalysisResponse.TGetExpenseAnalysisResponse;
  THumanLoopActivationOutput = AWS.Textract.Model.HumanLoopActivationOutput.THumanLoopActivationOutput;
  THumanLoopConfig = AWS.Textract.Model.HumanLoopConfig.THumanLoopConfig;
  THumanLoopDataAttributes = AWS.Textract.Model.HumanLoopDataAttributes.THumanLoopDataAttributes;
  TIdentityDocument = AWS.Textract.Model.IdentityDocument.TIdentityDocument;
  TIdentityDocumentField = AWS.Textract.Model.IdentityDocumentField.TIdentityDocumentField;
  TJobStatus = AWS.Textract.Enums.TJobStatus;
  TLineItemFields = AWS.Textract.Model.LineItemFields.TLineItemFields;
  TLineItemGroup = AWS.Textract.Model.LineItemGroup.TLineItemGroup;
  TNormalizedValue = AWS.Textract.Model.NormalizedValue.TNormalizedValue;
  TNotificationChannel = AWS.Textract.Model.NotificationChannel.TNotificationChannel;
  TOutputConfig = AWS.Textract.Model.OutputConfig.TOutputConfig;
  TPoint = AWS.Textract.Model.Point.TPoint;
  TQueriesConfig = AWS.Textract.Model.QueriesConfig.TQueriesConfig;
  TQuery = AWS.Textract.Model.Query.TQuery;
  TRelationship = AWS.Textract.Model.Relationship.TRelationship;
  TRelationshipType = AWS.Textract.Enums.TRelationshipType;
  TS3Object = AWS.Textract.Model.S3Object.TS3Object;
  TSelectionStatus = AWS.Textract.Enums.TSelectionStatus;
  TStartDocumentAnalysisRequest = AWS.Textract.Model.StartDocumentAnalysisRequest.TStartDocumentAnalysisRequest;
  TStartDocumentAnalysisResponse = AWS.Textract.Model.StartDocumentAnalysisResponse.TStartDocumentAnalysisResponse;
  TStartDocumentTextDetectionRequest = AWS.Textract.Model.StartDocumentTextDetectionRequest.TStartDocumentTextDetectionRequest;
  TStartDocumentTextDetectionResponse = AWS.Textract.Model.StartDocumentTextDetectionResponse.TStartDocumentTextDetectionResponse;
  TStartExpenseAnalysisRequest = AWS.Textract.Model.StartExpenseAnalysisRequest.TStartExpenseAnalysisRequest;
  TStartExpenseAnalysisResponse = AWS.Textract.Model.StartExpenseAnalysisResponse.TStartExpenseAnalysisResponse;
  TTextType = AWS.Textract.Enums.TTextType;
  TValueType = AWS.Textract.Enums.TValueType;
  TWarning = AWS.Textract.Model.Warning.TWarning;
  
implementation

end.
