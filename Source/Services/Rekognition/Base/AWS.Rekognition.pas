unit AWS.Rekognition;

interface

uses
  AWS.Rekognition.Client, 
  AWS.Rekognition.ClientIntf, 
  AWS.Rekognition.Config, 
  AWS.Rekognition.Enums, 
  AWS.Rekognition.Exception, 
  AWS.Rekognition.Metadata, 
  AWS.Rekognition.Model.AccessDeniedException, 
  AWS.Rekognition.Model.AgeRange, 
  AWS.Rekognition.Model.Asset, 
  AWS.Rekognition.Model.AudioMetadata, 
  AWS.Rekognition.Model.Beard, 
  AWS.Rekognition.Model.BlackFrame, 
  AWS.Rekognition.Model.BoundingBox, 
  AWS.Rekognition.Model.Celebrity, 
  AWS.Rekognition.Model.CelebrityDetail, 
  AWS.Rekognition.Model.CelebrityRecognition, 
  AWS.Rekognition.Model.ComparedFace, 
  AWS.Rekognition.Model.ComparedSourceImageFace, 
  AWS.Rekognition.Model.CompareFacesMatch, 
  AWS.Rekognition.Model.CompareFacesRequest, 
  AWS.Rekognition.Model.CompareFacesResponse, 
  AWS.Rekognition.Model.ConnectedHomeSettings, 
  AWS.Rekognition.Model.ConnectedHomeSettingsForUpdate, 
  AWS.Rekognition.Model.ContentModerationDetection, 
  AWS.Rekognition.Model.CoversBodyPart, 
  AWS.Rekognition.Model.CreateCollectionRequest, 
  AWS.Rekognition.Model.CreateCollectionResponse, 
  AWS.Rekognition.Model.CreateDatasetRequest, 
  AWS.Rekognition.Model.CreateDatasetResponse, 
  AWS.Rekognition.Model.CreateProjectRequest, 
  AWS.Rekognition.Model.CreateProjectResponse, 
  AWS.Rekognition.Model.CreateProjectVersionRequest, 
  AWS.Rekognition.Model.CreateProjectVersionResponse, 
  AWS.Rekognition.Model.CreateStreamProcessorRequest, 
  AWS.Rekognition.Model.CreateStreamProcessorResponse, 
  AWS.Rekognition.Model.CustomLabel, 
  AWS.Rekognition.Model.DatasetChanges, 
  AWS.Rekognition.Model.DatasetDescription, 
  AWS.Rekognition.Model.DatasetLabelDescription, 
  AWS.Rekognition.Model.DatasetLabelStats, 
  AWS.Rekognition.Model.DatasetMetadata, 
  AWS.Rekognition.Model.DatasetSource, 
  AWS.Rekognition.Model.DatasetStats, 
  AWS.Rekognition.Model.DeleteCollectionRequest, 
  AWS.Rekognition.Model.DeleteCollectionResponse, 
  AWS.Rekognition.Model.DeleteDatasetRequest, 
  AWS.Rekognition.Model.DeleteDatasetResponse, 
  AWS.Rekognition.Model.DeleteFacesRequest, 
  AWS.Rekognition.Model.DeleteFacesResponse, 
  AWS.Rekognition.Model.DeleteProjectRequest, 
  AWS.Rekognition.Model.DeleteProjectResponse, 
  AWS.Rekognition.Model.DeleteProjectVersionRequest, 
  AWS.Rekognition.Model.DeleteProjectVersionResponse, 
  AWS.Rekognition.Model.DeleteStreamProcessorRequest, 
  AWS.Rekognition.Model.DeleteStreamProcessorResponse, 
  AWS.Rekognition.Model.DescribeCollectionRequest, 
  AWS.Rekognition.Model.DescribeCollectionResponse, 
  AWS.Rekognition.Model.DescribeDatasetRequest, 
  AWS.Rekognition.Model.DescribeDatasetResponse, 
  AWS.Rekognition.Model.DescribeProjectsRequest, 
  AWS.Rekognition.Model.DescribeProjectsResponse, 
  AWS.Rekognition.Model.DescribeProjectVersionsRequest, 
  AWS.Rekognition.Model.DescribeProjectVersionsResponse, 
  AWS.Rekognition.Model.DescribeStreamProcessorRequest, 
  AWS.Rekognition.Model.DescribeStreamProcessorResponse, 
  AWS.Rekognition.Model.DetectCustomLabelsRequest, 
  AWS.Rekognition.Model.DetectCustomLabelsResponse, 
  AWS.Rekognition.Model.DetectFacesRequest, 
  AWS.Rekognition.Model.DetectFacesResponse, 
  AWS.Rekognition.Model.DetectionFilter, 
  AWS.Rekognition.Model.DetectLabelsRequest, 
  AWS.Rekognition.Model.DetectLabelsResponse, 
  AWS.Rekognition.Model.DetectModerationLabelsRequest, 
  AWS.Rekognition.Model.DetectModerationLabelsResponse, 
  AWS.Rekognition.Model.DetectProtectiveEquipmentRequest, 
  AWS.Rekognition.Model.DetectProtectiveEquipmentResponse, 
  AWS.Rekognition.Model.DetectTextFilters, 
  AWS.Rekognition.Model.DetectTextRequest, 
  AWS.Rekognition.Model.DetectTextResponse, 
  AWS.Rekognition.Model.DistributeDataset, 
  AWS.Rekognition.Model.DistributeDatasetEntriesRequest, 
  AWS.Rekognition.Model.DistributeDatasetEntriesResponse, 
  AWS.Rekognition.Model.Emotion, 
  AWS.Rekognition.Model.EquipmentDetection, 
  AWS.Rekognition.Model.EvaluationResult, 
  AWS.Rekognition.Model.Eyeglasses, 
  AWS.Rekognition.Model.EyeOpen, 
  AWS.Rekognition.Model.Face, 
  AWS.Rekognition.Model.FaceDetail, 
  AWS.Rekognition.Model.FaceDetection, 
  AWS.Rekognition.Model.FaceMatch, 
  AWS.Rekognition.Model.FaceRecord, 
  AWS.Rekognition.Model.FaceSearchSettings, 
  AWS.Rekognition.Model.Gender, 
  AWS.Rekognition.Model.Geometry, 
  AWS.Rekognition.Model.GetCelebrityInfoRequest, 
  AWS.Rekognition.Model.GetCelebrityInfoResponse, 
  AWS.Rekognition.Model.GetCelebrityRecognitionRequest, 
  AWS.Rekognition.Model.GetCelebrityRecognitionResponse, 
  AWS.Rekognition.Model.GetContentModerationRequest, 
  AWS.Rekognition.Model.GetContentModerationResponse, 
  AWS.Rekognition.Model.GetFaceDetectionRequest, 
  AWS.Rekognition.Model.GetFaceDetectionResponse, 
  AWS.Rekognition.Model.GetFaceSearchRequest, 
  AWS.Rekognition.Model.GetFaceSearchResponse, 
  AWS.Rekognition.Model.GetLabelDetectionRequest, 
  AWS.Rekognition.Model.GetLabelDetectionResponse, 
  AWS.Rekognition.Model.GetPersonTrackingRequest, 
  AWS.Rekognition.Model.GetPersonTrackingResponse, 
  AWS.Rekognition.Model.GetSegmentDetectionRequest, 
  AWS.Rekognition.Model.GetSegmentDetectionResponse, 
  AWS.Rekognition.Model.GetTextDetectionRequest, 
  AWS.Rekognition.Model.GetTextDetectionResponse, 
  AWS.Rekognition.Model.GroundTruthManifest, 
  AWS.Rekognition.Model.HumanLoopActivationOutput, 
  AWS.Rekognition.Model.HumanLoopConfig, 
  AWS.Rekognition.Model.HumanLoopDataAttributes, 
  AWS.Rekognition.Model.HumanLoopQuotaExceededException, 
  AWS.Rekognition.Model.IdempotentParameterMismatchException, 
  AWS.Rekognition.Model.Image, 
  AWS.Rekognition.Model.ImageQuality, 
  AWS.Rekognition.Model.ImageTooLargeException, 
  AWS.Rekognition.Model.IndexFacesRequest, 
  AWS.Rekognition.Model.IndexFacesResponse, 
  AWS.Rekognition.Model.Instance, 
  AWS.Rekognition.Model.InternalServerErrorException, 
  AWS.Rekognition.Model.InvalidImageFormatException, 
  AWS.Rekognition.Model.InvalidPaginationTokenException, 
  AWS.Rekognition.Model.InvalidParameterException, 
  AWS.Rekognition.Model.InvalidS3ObjectException, 
  AWS.Rekognition.Model.KinesisDataStream, 
  AWS.Rekognition.Model.KinesisVideoStream, 
  AWS.Rekognition.Model.KinesisVideoStreamStartSelector, 
  AWS.Rekognition.Model.KnownGender, 
  AWS.Rekognition.Model.LabelDetection, 
  AWS.Rekognition.Model.LabelTypes, 
  AWS.Rekognition.Model.Landmark, 
  AWS.Rekognition.Model.LimitExceededException, 
  AWS.Rekognition.Model.ListCollectionsRequest, 
  AWS.Rekognition.Model.ListCollectionsResponse, 
  AWS.Rekognition.Model.ListDatasetEntriesRequest, 
  AWS.Rekognition.Model.ListDatasetEntriesResponse, 
  AWS.Rekognition.Model.ListDatasetLabelsRequest, 
  AWS.Rekognition.Model.ListDatasetLabelsResponse, 
  AWS.Rekognition.Model.ListFacesRequest, 
  AWS.Rekognition.Model.ListFacesResponse, 
  AWS.Rekognition.Model.ListStreamProcessorsRequest, 
  AWS.Rekognition.Model.ListStreamProcessorsResponse, 
  AWS.Rekognition.Model.ListTagsForResourceRequest, 
  AWS.Rekognition.Model.ListTagsForResourceResponse, 
  AWS.Rekognition.Model.ModerationLabel, 
  AWS.Rekognition.Model.MouthOpen, 
  AWS.Rekognition.Model.Mustache, 
  AWS.Rekognition.Model.NotificationChannel, 
  AWS.Rekognition.Model.OutputConfig, 
  AWS.Rekognition.Model.Parent, 
  AWS.Rekognition.Model.PersonDetail, 
  AWS.Rekognition.Model.PersonDetection, 
  AWS.Rekognition.Model.PersonMatch, 
  AWS.Rekognition.Model.Point, 
  AWS.Rekognition.Model.Pose, 
  AWS.Rekognition.Model.ProjectDescription, 
  AWS.Rekognition.Model.ProjectVersionDescription, 
  AWS.Rekognition.Model.ProtectiveEquipmentBodyPart, 
  AWS.Rekognition.Model.ProtectiveEquipmentPerson, 
  AWS.Rekognition.Model.ProtectiveEquipmentSummarizationAttributes, 
  AWS.Rekognition.Model.ProtectiveEquipmentSummary, 
  AWS.Rekognition.Model.ProvisionedThroughputExceededException, 
  AWS.Rekognition.Model.RecognizeCelebritiesRequest, 
  AWS.Rekognition.Model.RecognizeCelebritiesResponse, 
  AWS.Rekognition.Model.RegionOfInterest, 
  AWS.Rekognition.Model.Request, 
  AWS.Rekognition.Model.ResourceAlreadyExistsException, 
  AWS.Rekognition.Model.ResourceInUseException, 
  AWS.Rekognition.Model.ResourceNotFoundException, 
  AWS.Rekognition.Model.ResourceNotReadyException, 
  AWS.Rekognition.Model.S3Destination, 
  AWS.Rekognition.Model.S3Object, 
  AWS.Rekognition.Model.SearchFacesByImageRequest, 
  AWS.Rekognition.Model.SearchFacesByImageResponse, 
  AWS.Rekognition.Model.SearchFacesRequest, 
  AWS.Rekognition.Model.SearchFacesResponse, 
  AWS.Rekognition.Model.SegmentDetection, 
  AWS.Rekognition.Model.SegmentTypeInfo, 
  AWS.Rekognition.Model.ServiceQuotaExceededException, 
  AWS.Rekognition.Model.ShotSegment, 
  AWS.Rekognition.Model.Smile, 
  AWS.Rekognition.Model.StartCelebrityRecognitionRequest, 
  AWS.Rekognition.Model.StartCelebrityRecognitionResponse, 
  AWS.Rekognition.Model.StartContentModerationRequest, 
  AWS.Rekognition.Model.StartContentModerationResponse, 
  AWS.Rekognition.Model.StartFaceDetectionRequest, 
  AWS.Rekognition.Model.StartFaceDetectionResponse, 
  AWS.Rekognition.Model.StartFaceSearchRequest, 
  AWS.Rekognition.Model.StartFaceSearchResponse, 
  AWS.Rekognition.Model.StartLabelDetectionRequest, 
  AWS.Rekognition.Model.StartLabelDetectionResponse, 
  AWS.Rekognition.Model.StartPersonTrackingRequest, 
  AWS.Rekognition.Model.StartPersonTrackingResponse, 
  AWS.Rekognition.Model.StartProjectVersionRequest, 
  AWS.Rekognition.Model.StartProjectVersionResponse, 
  AWS.Rekognition.Model.StartSegmentDetectionFilters, 
  AWS.Rekognition.Model.StartSegmentDetectionRequest, 
  AWS.Rekognition.Model.StartSegmentDetectionResponse, 
  AWS.Rekognition.Model.StartShotDetectionFilter, 
  AWS.Rekognition.Model.StartStreamProcessorRequest, 
  AWS.Rekognition.Model.StartStreamProcessorResponse, 
  AWS.Rekognition.Model.StartTechnicalCueDetectionFilter, 
  AWS.Rekognition.Model.StartTextDetectionFilters, 
  AWS.Rekognition.Model.StartTextDetectionRequest, 
  AWS.Rekognition.Model.StartTextDetectionResponse, 
  AWS.Rekognition.Model.StopProjectVersionRequest, 
  AWS.Rekognition.Model.StopProjectVersionResponse, 
  AWS.Rekognition.Model.StopStreamProcessorRequest, 
  AWS.Rekognition.Model.StopStreamProcessorResponse, 
  AWS.Rekognition.Model.StreamProcessingStartSelector, 
  AWS.Rekognition.Model.StreamProcessingStopSelector, 
  AWS.Rekognition.Model.StreamProcessor, 
  AWS.Rekognition.Model.StreamProcessorDataSharingPreference, 
  AWS.Rekognition.Model.StreamProcessorInput, 
  AWS.Rekognition.Model.StreamProcessorNotificationChannel, 
  AWS.Rekognition.Model.StreamProcessorOutput, 
  AWS.Rekognition.Model.StreamProcessorSettings, 
  AWS.Rekognition.Model.StreamProcessorSettingsForUpdate, 
  AWS.Rekognition.Model.Summary, 
  AWS.Rekognition.Model.Sunglasses, 
  AWS.Rekognition.Model.TagResourceRequest, 
  AWS.Rekognition.Model.TagResourceResponse, 
  AWS.Rekognition.Model.TechnicalCueSegment, 
  AWS.Rekognition.Model.TestingData, 
  AWS.Rekognition.Model.TestingDataResult, 
  AWS.Rekognition.Model.TextDetection, 
  AWS.Rekognition.Model.TextDetectionResult, 
  AWS.Rekognition.Model.ThrottlingException, 
  AWS.Rekognition.Model.TrainingData, 
  AWS.Rekognition.Model.TrainingDataResult, 
  AWS.Rekognition.Model.UnindexedFace, 
  AWS.Rekognition.Model.UntagResourceRequest, 
  AWS.Rekognition.Model.UntagResourceResponse, 
  AWS.Rekognition.Model.UpdateDatasetEntriesRequest, 
  AWS.Rekognition.Model.UpdateDatasetEntriesResponse, 
  AWS.Rekognition.Model.UpdateStreamProcessorRequest, 
  AWS.Rekognition.Model.UpdateStreamProcessorResponse, 
  AWS.Rekognition.Model.ValidationData, 
  AWS.Rekognition.Model.Video, 
  AWS.Rekognition.Model.VideoMetadata, 
  AWS.Rekognition.Model.VideoTooLargeException;

type
  EAccessDeniedException = AWS.Rekognition.Model.AccessDeniedException.EAccessDeniedException;
  EAmazonRekognitionException = AWS.Rekognition.Exception.EAmazonRekognitionException;
  EHumanLoopQuotaExceededException = AWS.Rekognition.Model.HumanLoopQuotaExceededException.EHumanLoopQuotaExceededException;
  EIdempotentParameterMismatchException = AWS.Rekognition.Model.IdempotentParameterMismatchException.EIdempotentParameterMismatchException;
  EImageTooLargeException = AWS.Rekognition.Model.ImageTooLargeException.EImageTooLargeException;
  EInternalServerErrorException = AWS.Rekognition.Model.InternalServerErrorException.EInternalServerErrorException;
  EInvalidImageFormatException = AWS.Rekognition.Model.InvalidImageFormatException.EInvalidImageFormatException;
  EInvalidPaginationTokenException = AWS.Rekognition.Model.InvalidPaginationTokenException.EInvalidPaginationTokenException;
  EInvalidParameterException = AWS.Rekognition.Model.InvalidParameterException.EInvalidParameterException;
  EInvalidS3ObjectException = AWS.Rekognition.Model.InvalidS3ObjectException.EInvalidS3ObjectException;
  ELimitExceededException = AWS.Rekognition.Model.LimitExceededException.ELimitExceededException;
  EProvisionedThroughputExceededException = AWS.Rekognition.Model.ProvisionedThroughputExceededException.EProvisionedThroughputExceededException;
  EResourceAlreadyExistsException = AWS.Rekognition.Model.ResourceAlreadyExistsException.EResourceAlreadyExistsException;
  EResourceInUseException = AWS.Rekognition.Model.ResourceInUseException.EResourceInUseException;
  EResourceNotFoundException = AWS.Rekognition.Model.ResourceNotFoundException.EResourceNotFoundException;
  EResourceNotReadyException = AWS.Rekognition.Model.ResourceNotReadyException.EResourceNotReadyException;
  EServiceQuotaExceededException = AWS.Rekognition.Model.ServiceQuotaExceededException.EServiceQuotaExceededException;
  EThrottlingException = AWS.Rekognition.Model.ThrottlingException.EThrottlingException;
  EVideoTooLargeException = AWS.Rekognition.Model.VideoTooLargeException.EVideoTooLargeException;
  IAgeRange = AWS.Rekognition.Model.AgeRange.IAgeRange;
  IAmazonRekognition = AWS.Rekognition.ClientIntf.IAmazonRekognition;
  IAsset = AWS.Rekognition.Model.Asset.IAsset;
  IAudioMetadata = AWS.Rekognition.Model.AudioMetadata.IAudioMetadata;
  IBeard = AWS.Rekognition.Model.Beard.IBeard;
  IBlackFrame = AWS.Rekognition.Model.BlackFrame.IBlackFrame;
  IBoundingBox = AWS.Rekognition.Model.BoundingBox.IBoundingBox;
  ICelebrity = AWS.Rekognition.Model.Celebrity.ICelebrity;
  ICelebrityDetail = AWS.Rekognition.Model.CelebrityDetail.ICelebrityDetail;
  ICelebrityRecognition = AWS.Rekognition.Model.CelebrityRecognition.ICelebrityRecognition;
  IComparedFace = AWS.Rekognition.Model.ComparedFace.IComparedFace;
  IComparedSourceImageFace = AWS.Rekognition.Model.ComparedSourceImageFace.IComparedSourceImageFace;
  ICompareFacesMatch = AWS.Rekognition.Model.CompareFacesMatch.ICompareFacesMatch;
  ICompareFacesRequest = AWS.Rekognition.Model.CompareFacesRequest.ICompareFacesRequest;
  ICompareFacesResponse = AWS.Rekognition.Model.CompareFacesResponse.ICompareFacesResponse;
  IConnectedHomeSettings = AWS.Rekognition.Model.ConnectedHomeSettings.IConnectedHomeSettings;
  IConnectedHomeSettingsForUpdate = AWS.Rekognition.Model.ConnectedHomeSettingsForUpdate.IConnectedHomeSettingsForUpdate;
  IContentModerationDetection = AWS.Rekognition.Model.ContentModerationDetection.IContentModerationDetection;
  ICoversBodyPart = AWS.Rekognition.Model.CoversBodyPart.ICoversBodyPart;
  ICreateCollectionRequest = AWS.Rekognition.Model.CreateCollectionRequest.ICreateCollectionRequest;
  ICreateCollectionResponse = AWS.Rekognition.Model.CreateCollectionResponse.ICreateCollectionResponse;
  ICreateDatasetRequest = AWS.Rekognition.Model.CreateDatasetRequest.ICreateDatasetRequest;
  ICreateDatasetResponse = AWS.Rekognition.Model.CreateDatasetResponse.ICreateDatasetResponse;
  ICreateProjectRequest = AWS.Rekognition.Model.CreateProjectRequest.ICreateProjectRequest;
  ICreateProjectResponse = AWS.Rekognition.Model.CreateProjectResponse.ICreateProjectResponse;
  ICreateProjectVersionRequest = AWS.Rekognition.Model.CreateProjectVersionRequest.ICreateProjectVersionRequest;
  ICreateProjectVersionResponse = AWS.Rekognition.Model.CreateProjectVersionResponse.ICreateProjectVersionResponse;
  ICreateStreamProcessorRequest = AWS.Rekognition.Model.CreateStreamProcessorRequest.ICreateStreamProcessorRequest;
  ICreateStreamProcessorResponse = AWS.Rekognition.Model.CreateStreamProcessorResponse.ICreateStreamProcessorResponse;
  ICustomLabel = AWS.Rekognition.Model.CustomLabel.ICustomLabel;
  IDatasetChanges = AWS.Rekognition.Model.DatasetChanges.IDatasetChanges;
  IDatasetDescription = AWS.Rekognition.Model.DatasetDescription.IDatasetDescription;
  IDatasetLabelDescription = AWS.Rekognition.Model.DatasetLabelDescription.IDatasetLabelDescription;
  IDatasetLabelStats = AWS.Rekognition.Model.DatasetLabelStats.IDatasetLabelStats;
  IDatasetMetadata = AWS.Rekognition.Model.DatasetMetadata.IDatasetMetadata;
  IDatasetSource = AWS.Rekognition.Model.DatasetSource.IDatasetSource;
  IDatasetStats = AWS.Rekognition.Model.DatasetStats.IDatasetStats;
  IDeleteCollectionRequest = AWS.Rekognition.Model.DeleteCollectionRequest.IDeleteCollectionRequest;
  IDeleteCollectionResponse = AWS.Rekognition.Model.DeleteCollectionResponse.IDeleteCollectionResponse;
  IDeleteDatasetRequest = AWS.Rekognition.Model.DeleteDatasetRequest.IDeleteDatasetRequest;
  IDeleteDatasetResponse = AWS.Rekognition.Model.DeleteDatasetResponse.IDeleteDatasetResponse;
  IDeleteFacesRequest = AWS.Rekognition.Model.DeleteFacesRequest.IDeleteFacesRequest;
  IDeleteFacesResponse = AWS.Rekognition.Model.DeleteFacesResponse.IDeleteFacesResponse;
  IDeleteProjectRequest = AWS.Rekognition.Model.DeleteProjectRequest.IDeleteProjectRequest;
  IDeleteProjectResponse = AWS.Rekognition.Model.DeleteProjectResponse.IDeleteProjectResponse;
  IDeleteProjectVersionRequest = AWS.Rekognition.Model.DeleteProjectVersionRequest.IDeleteProjectVersionRequest;
  IDeleteProjectVersionResponse = AWS.Rekognition.Model.DeleteProjectVersionResponse.IDeleteProjectVersionResponse;
  IDeleteStreamProcessorRequest = AWS.Rekognition.Model.DeleteStreamProcessorRequest.IDeleteStreamProcessorRequest;
  IDeleteStreamProcessorResponse = AWS.Rekognition.Model.DeleteStreamProcessorResponse.IDeleteStreamProcessorResponse;
  IDescribeCollectionRequest = AWS.Rekognition.Model.DescribeCollectionRequest.IDescribeCollectionRequest;
  IDescribeCollectionResponse = AWS.Rekognition.Model.DescribeCollectionResponse.IDescribeCollectionResponse;
  IDescribeDatasetRequest = AWS.Rekognition.Model.DescribeDatasetRequest.IDescribeDatasetRequest;
  IDescribeDatasetResponse = AWS.Rekognition.Model.DescribeDatasetResponse.IDescribeDatasetResponse;
  IDescribeProjectsRequest = AWS.Rekognition.Model.DescribeProjectsRequest.IDescribeProjectsRequest;
  IDescribeProjectsResponse = AWS.Rekognition.Model.DescribeProjectsResponse.IDescribeProjectsResponse;
  IDescribeProjectVersionsRequest = AWS.Rekognition.Model.DescribeProjectVersionsRequest.IDescribeProjectVersionsRequest;
  IDescribeProjectVersionsResponse = AWS.Rekognition.Model.DescribeProjectVersionsResponse.IDescribeProjectVersionsResponse;
  IDescribeStreamProcessorRequest = AWS.Rekognition.Model.DescribeStreamProcessorRequest.IDescribeStreamProcessorRequest;
  IDescribeStreamProcessorResponse = AWS.Rekognition.Model.DescribeStreamProcessorResponse.IDescribeStreamProcessorResponse;
  IDetectCustomLabelsRequest = AWS.Rekognition.Model.DetectCustomLabelsRequest.IDetectCustomLabelsRequest;
  IDetectCustomLabelsResponse = AWS.Rekognition.Model.DetectCustomLabelsResponse.IDetectCustomLabelsResponse;
  IDetectFacesRequest = AWS.Rekognition.Model.DetectFacesRequest.IDetectFacesRequest;
  IDetectFacesResponse = AWS.Rekognition.Model.DetectFacesResponse.IDetectFacesResponse;
  IDetectionFilter = AWS.Rekognition.Model.DetectionFilter.IDetectionFilter;
  IDetectLabelsRequest = AWS.Rekognition.Model.DetectLabelsRequest.IDetectLabelsRequest;
  IDetectLabelsResponse = AWS.Rekognition.Model.DetectLabelsResponse.IDetectLabelsResponse;
  IDetectModerationLabelsRequest = AWS.Rekognition.Model.DetectModerationLabelsRequest.IDetectModerationLabelsRequest;
  IDetectModerationLabelsResponse = AWS.Rekognition.Model.DetectModerationLabelsResponse.IDetectModerationLabelsResponse;
  IDetectProtectiveEquipmentRequest = AWS.Rekognition.Model.DetectProtectiveEquipmentRequest.IDetectProtectiveEquipmentRequest;
  IDetectProtectiveEquipmentResponse = AWS.Rekognition.Model.DetectProtectiveEquipmentResponse.IDetectProtectiveEquipmentResponse;
  IDetectTextFilters = AWS.Rekognition.Model.DetectTextFilters.IDetectTextFilters;
  IDetectTextRequest = AWS.Rekognition.Model.DetectTextRequest.IDetectTextRequest;
  IDetectTextResponse = AWS.Rekognition.Model.DetectTextResponse.IDetectTextResponse;
  IDistributeDataset = AWS.Rekognition.Model.DistributeDataset.IDistributeDataset;
  IDistributeDatasetEntriesRequest = AWS.Rekognition.Model.DistributeDatasetEntriesRequest.IDistributeDatasetEntriesRequest;
  IDistributeDatasetEntriesResponse = AWS.Rekognition.Model.DistributeDatasetEntriesResponse.IDistributeDatasetEntriesResponse;
  IEmotion = AWS.Rekognition.Model.Emotion.IEmotion;
  IEquipmentDetection = AWS.Rekognition.Model.EquipmentDetection.IEquipmentDetection;
  IEvaluationResult = AWS.Rekognition.Model.EvaluationResult.IEvaluationResult;
  IEyeglasses = AWS.Rekognition.Model.Eyeglasses.IEyeglasses;
  IEyeOpen = AWS.Rekognition.Model.EyeOpen.IEyeOpen;
  IFace = AWS.Rekognition.Model.Face.IFace;
  IFaceDetail = AWS.Rekognition.Model.FaceDetail.IFaceDetail;
  IFaceDetection = AWS.Rekognition.Model.FaceDetection.IFaceDetection;
  IFaceMatch = AWS.Rekognition.Model.FaceMatch.IFaceMatch;
  IFaceRecord = AWS.Rekognition.Model.FaceRecord.IFaceRecord;
  IFaceSearchSettings = AWS.Rekognition.Model.FaceSearchSettings.IFaceSearchSettings;
  IGender = AWS.Rekognition.Model.Gender.IGender;
  IGeometry = AWS.Rekognition.Model.Geometry.IGeometry;
  IGetCelebrityInfoRequest = AWS.Rekognition.Model.GetCelebrityInfoRequest.IGetCelebrityInfoRequest;
  IGetCelebrityInfoResponse = AWS.Rekognition.Model.GetCelebrityInfoResponse.IGetCelebrityInfoResponse;
  IGetCelebrityRecognitionRequest = AWS.Rekognition.Model.GetCelebrityRecognitionRequest.IGetCelebrityRecognitionRequest;
  IGetCelebrityRecognitionResponse = AWS.Rekognition.Model.GetCelebrityRecognitionResponse.IGetCelebrityRecognitionResponse;
  IGetContentModerationRequest = AWS.Rekognition.Model.GetContentModerationRequest.IGetContentModerationRequest;
  IGetContentModerationResponse = AWS.Rekognition.Model.GetContentModerationResponse.IGetContentModerationResponse;
  IGetFaceDetectionRequest = AWS.Rekognition.Model.GetFaceDetectionRequest.IGetFaceDetectionRequest;
  IGetFaceDetectionResponse = AWS.Rekognition.Model.GetFaceDetectionResponse.IGetFaceDetectionResponse;
  IGetFaceSearchRequest = AWS.Rekognition.Model.GetFaceSearchRequest.IGetFaceSearchRequest;
  IGetFaceSearchResponse = AWS.Rekognition.Model.GetFaceSearchResponse.IGetFaceSearchResponse;
  IGetLabelDetectionRequest = AWS.Rekognition.Model.GetLabelDetectionRequest.IGetLabelDetectionRequest;
  IGetLabelDetectionResponse = AWS.Rekognition.Model.GetLabelDetectionResponse.IGetLabelDetectionResponse;
  IGetPersonTrackingRequest = AWS.Rekognition.Model.GetPersonTrackingRequest.IGetPersonTrackingRequest;
  IGetPersonTrackingResponse = AWS.Rekognition.Model.GetPersonTrackingResponse.IGetPersonTrackingResponse;
  IGetSegmentDetectionRequest = AWS.Rekognition.Model.GetSegmentDetectionRequest.IGetSegmentDetectionRequest;
  IGetSegmentDetectionResponse = AWS.Rekognition.Model.GetSegmentDetectionResponse.IGetSegmentDetectionResponse;
  IGetTextDetectionRequest = AWS.Rekognition.Model.GetTextDetectionRequest.IGetTextDetectionRequest;
  IGetTextDetectionResponse = AWS.Rekognition.Model.GetTextDetectionResponse.IGetTextDetectionResponse;
  IGroundTruthManifest = AWS.Rekognition.Model.GroundTruthManifest.IGroundTruthManifest;
  IHumanLoopActivationOutput = AWS.Rekognition.Model.HumanLoopActivationOutput.IHumanLoopActivationOutput;
  IHumanLoopConfig = AWS.Rekognition.Model.HumanLoopConfig.IHumanLoopConfig;
  IHumanLoopDataAttributes = AWS.Rekognition.Model.HumanLoopDataAttributes.IHumanLoopDataAttributes;
  IImage = AWS.Rekognition.Model.Image.IImage;
  IImageQuality = AWS.Rekognition.Model.ImageQuality.IImageQuality;
  IIndexFacesRequest = AWS.Rekognition.Model.IndexFacesRequest.IIndexFacesRequest;
  IIndexFacesResponse = AWS.Rekognition.Model.IndexFacesResponse.IIndexFacesResponse;
  IInstance = AWS.Rekognition.Model.Instance.IInstance;
  IKinesisDataStream = AWS.Rekognition.Model.KinesisDataStream.IKinesisDataStream;
  IKinesisVideoStream = AWS.Rekognition.Model.KinesisVideoStream.IKinesisVideoStream;
  IKinesisVideoStreamStartSelector = AWS.Rekognition.Model.KinesisVideoStreamStartSelector.IKinesisVideoStreamStartSelector;
  IKnownGender = AWS.Rekognition.Model.KnownGender.IKnownGender;
  ILabel = AWS.Rekognition.Model.LabelTypes.ILabel;
  ILabelDetection = AWS.Rekognition.Model.LabelDetection.ILabelDetection;
  ILandmark = AWS.Rekognition.Model.Landmark.ILandmark;
  IListCollectionsRequest = AWS.Rekognition.Model.ListCollectionsRequest.IListCollectionsRequest;
  IListCollectionsResponse = AWS.Rekognition.Model.ListCollectionsResponse.IListCollectionsResponse;
  IListDatasetEntriesRequest = AWS.Rekognition.Model.ListDatasetEntriesRequest.IListDatasetEntriesRequest;
  IListDatasetEntriesResponse = AWS.Rekognition.Model.ListDatasetEntriesResponse.IListDatasetEntriesResponse;
  IListDatasetLabelsRequest = AWS.Rekognition.Model.ListDatasetLabelsRequest.IListDatasetLabelsRequest;
  IListDatasetLabelsResponse = AWS.Rekognition.Model.ListDatasetLabelsResponse.IListDatasetLabelsResponse;
  IListFacesRequest = AWS.Rekognition.Model.ListFacesRequest.IListFacesRequest;
  IListFacesResponse = AWS.Rekognition.Model.ListFacesResponse.IListFacesResponse;
  IListStreamProcessorsRequest = AWS.Rekognition.Model.ListStreamProcessorsRequest.IListStreamProcessorsRequest;
  IListStreamProcessorsResponse = AWS.Rekognition.Model.ListStreamProcessorsResponse.IListStreamProcessorsResponse;
  IListTagsForResourceRequest = AWS.Rekognition.Model.ListTagsForResourceRequest.IListTagsForResourceRequest;
  IListTagsForResourceResponse = AWS.Rekognition.Model.ListTagsForResourceResponse.IListTagsForResourceResponse;
  IModerationLabel = AWS.Rekognition.Model.ModerationLabel.IModerationLabel;
  IMouthOpen = AWS.Rekognition.Model.MouthOpen.IMouthOpen;
  IMustache = AWS.Rekognition.Model.Mustache.IMustache;
  INotificationChannel = AWS.Rekognition.Model.NotificationChannel.INotificationChannel;
  IOutputConfig = AWS.Rekognition.Model.OutputConfig.IOutputConfig;
  IParent = AWS.Rekognition.Model.Parent.IParent;
  IPersonDetail = AWS.Rekognition.Model.PersonDetail.IPersonDetail;
  IPersonDetection = AWS.Rekognition.Model.PersonDetection.IPersonDetection;
  IPersonMatch = AWS.Rekognition.Model.PersonMatch.IPersonMatch;
  IPoint = AWS.Rekognition.Model.Point.IPoint;
  IPose = AWS.Rekognition.Model.Pose.IPose;
  IProjectDescription = AWS.Rekognition.Model.ProjectDescription.IProjectDescription;
  IProjectVersionDescription = AWS.Rekognition.Model.ProjectVersionDescription.IProjectVersionDescription;
  IProtectiveEquipmentBodyPart = AWS.Rekognition.Model.ProtectiveEquipmentBodyPart.IProtectiveEquipmentBodyPart;
  IProtectiveEquipmentPerson = AWS.Rekognition.Model.ProtectiveEquipmentPerson.IProtectiveEquipmentPerson;
  IProtectiveEquipmentSummarizationAttributes = AWS.Rekognition.Model.ProtectiveEquipmentSummarizationAttributes.IProtectiveEquipmentSummarizationAttributes;
  IProtectiveEquipmentSummary = AWS.Rekognition.Model.ProtectiveEquipmentSummary.IProtectiveEquipmentSummary;
  IRecognizeCelebritiesRequest = AWS.Rekognition.Model.RecognizeCelebritiesRequest.IRecognizeCelebritiesRequest;
  IRecognizeCelebritiesResponse = AWS.Rekognition.Model.RecognizeCelebritiesResponse.IRecognizeCelebritiesResponse;
  IRegionOfInterest = AWS.Rekognition.Model.RegionOfInterest.IRegionOfInterest;
  IS3Destination = AWS.Rekognition.Model.S3Destination.IS3Destination;
  IS3Object = AWS.Rekognition.Model.S3Object.IS3Object;
  ISearchFacesByImageRequest = AWS.Rekognition.Model.SearchFacesByImageRequest.ISearchFacesByImageRequest;
  ISearchFacesByImageResponse = AWS.Rekognition.Model.SearchFacesByImageResponse.ISearchFacesByImageResponse;
  ISearchFacesRequest = AWS.Rekognition.Model.SearchFacesRequest.ISearchFacesRequest;
  ISearchFacesResponse = AWS.Rekognition.Model.SearchFacesResponse.ISearchFacesResponse;
  ISegmentDetection = AWS.Rekognition.Model.SegmentDetection.ISegmentDetection;
  ISegmentTypeInfo = AWS.Rekognition.Model.SegmentTypeInfo.ISegmentTypeInfo;
  IShotSegment = AWS.Rekognition.Model.ShotSegment.IShotSegment;
  ISmile = AWS.Rekognition.Model.Smile.ISmile;
  IStartCelebrityRecognitionRequest = AWS.Rekognition.Model.StartCelebrityRecognitionRequest.IStartCelebrityRecognitionRequest;
  IStartCelebrityRecognitionResponse = AWS.Rekognition.Model.StartCelebrityRecognitionResponse.IStartCelebrityRecognitionResponse;
  IStartContentModerationRequest = AWS.Rekognition.Model.StartContentModerationRequest.IStartContentModerationRequest;
  IStartContentModerationResponse = AWS.Rekognition.Model.StartContentModerationResponse.IStartContentModerationResponse;
  IStartFaceDetectionRequest = AWS.Rekognition.Model.StartFaceDetectionRequest.IStartFaceDetectionRequest;
  IStartFaceDetectionResponse = AWS.Rekognition.Model.StartFaceDetectionResponse.IStartFaceDetectionResponse;
  IStartFaceSearchRequest = AWS.Rekognition.Model.StartFaceSearchRequest.IStartFaceSearchRequest;
  IStartFaceSearchResponse = AWS.Rekognition.Model.StartFaceSearchResponse.IStartFaceSearchResponse;
  IStartLabelDetectionRequest = AWS.Rekognition.Model.StartLabelDetectionRequest.IStartLabelDetectionRequest;
  IStartLabelDetectionResponse = AWS.Rekognition.Model.StartLabelDetectionResponse.IStartLabelDetectionResponse;
  IStartPersonTrackingRequest = AWS.Rekognition.Model.StartPersonTrackingRequest.IStartPersonTrackingRequest;
  IStartPersonTrackingResponse = AWS.Rekognition.Model.StartPersonTrackingResponse.IStartPersonTrackingResponse;
  IStartProjectVersionRequest = AWS.Rekognition.Model.StartProjectVersionRequest.IStartProjectVersionRequest;
  IStartProjectVersionResponse = AWS.Rekognition.Model.StartProjectVersionResponse.IStartProjectVersionResponse;
  IStartSegmentDetectionFilters = AWS.Rekognition.Model.StartSegmentDetectionFilters.IStartSegmentDetectionFilters;
  IStartSegmentDetectionRequest = AWS.Rekognition.Model.StartSegmentDetectionRequest.IStartSegmentDetectionRequest;
  IStartSegmentDetectionResponse = AWS.Rekognition.Model.StartSegmentDetectionResponse.IStartSegmentDetectionResponse;
  IStartShotDetectionFilter = AWS.Rekognition.Model.StartShotDetectionFilter.IStartShotDetectionFilter;
  IStartStreamProcessorRequest = AWS.Rekognition.Model.StartStreamProcessorRequest.IStartStreamProcessorRequest;
  IStartStreamProcessorResponse = AWS.Rekognition.Model.StartStreamProcessorResponse.IStartStreamProcessorResponse;
  IStartTechnicalCueDetectionFilter = AWS.Rekognition.Model.StartTechnicalCueDetectionFilter.IStartTechnicalCueDetectionFilter;
  IStartTextDetectionFilters = AWS.Rekognition.Model.StartTextDetectionFilters.IStartTextDetectionFilters;
  IStartTextDetectionRequest = AWS.Rekognition.Model.StartTextDetectionRequest.IStartTextDetectionRequest;
  IStartTextDetectionResponse = AWS.Rekognition.Model.StartTextDetectionResponse.IStartTextDetectionResponse;
  IStopProjectVersionRequest = AWS.Rekognition.Model.StopProjectVersionRequest.IStopProjectVersionRequest;
  IStopProjectVersionResponse = AWS.Rekognition.Model.StopProjectVersionResponse.IStopProjectVersionResponse;
  IStopStreamProcessorRequest = AWS.Rekognition.Model.StopStreamProcessorRequest.IStopStreamProcessorRequest;
  IStopStreamProcessorResponse = AWS.Rekognition.Model.StopStreamProcessorResponse.IStopStreamProcessorResponse;
  IStreamProcessingStartSelector = AWS.Rekognition.Model.StreamProcessingStartSelector.IStreamProcessingStartSelector;
  IStreamProcessingStopSelector = AWS.Rekognition.Model.StreamProcessingStopSelector.IStreamProcessingStopSelector;
  IStreamProcessor = AWS.Rekognition.Model.StreamProcessor.IStreamProcessor;
  IStreamProcessorDataSharingPreference = AWS.Rekognition.Model.StreamProcessorDataSharingPreference.IStreamProcessorDataSharingPreference;
  IStreamProcessorInput = AWS.Rekognition.Model.StreamProcessorInput.IStreamProcessorInput;
  IStreamProcessorNotificationChannel = AWS.Rekognition.Model.StreamProcessorNotificationChannel.IStreamProcessorNotificationChannel;
  IStreamProcessorOutput = AWS.Rekognition.Model.StreamProcessorOutput.IStreamProcessorOutput;
  IStreamProcessorSettings = AWS.Rekognition.Model.StreamProcessorSettings.IStreamProcessorSettings;
  IStreamProcessorSettingsForUpdate = AWS.Rekognition.Model.StreamProcessorSettingsForUpdate.IStreamProcessorSettingsForUpdate;
  ISummary = AWS.Rekognition.Model.Summary.ISummary;
  ISunglasses = AWS.Rekognition.Model.Sunglasses.ISunglasses;
  ITagResourceRequest = AWS.Rekognition.Model.TagResourceRequest.ITagResourceRequest;
  ITagResourceResponse = AWS.Rekognition.Model.TagResourceResponse.ITagResourceResponse;
  ITechnicalCueSegment = AWS.Rekognition.Model.TechnicalCueSegment.ITechnicalCueSegment;
  ITestingData = AWS.Rekognition.Model.TestingData.ITestingData;
  ITestingDataResult = AWS.Rekognition.Model.TestingDataResult.ITestingDataResult;
  ITextDetection = AWS.Rekognition.Model.TextDetection.ITextDetection;
  ITextDetectionResult = AWS.Rekognition.Model.TextDetectionResult.ITextDetectionResult;
  ITrainingData = AWS.Rekognition.Model.TrainingData.ITrainingData;
  ITrainingDataResult = AWS.Rekognition.Model.TrainingDataResult.ITrainingDataResult;
  IUnindexedFace = AWS.Rekognition.Model.UnindexedFace.IUnindexedFace;
  IUntagResourceRequest = AWS.Rekognition.Model.UntagResourceRequest.IUntagResourceRequest;
  IUntagResourceResponse = AWS.Rekognition.Model.UntagResourceResponse.IUntagResourceResponse;
  IUpdateDatasetEntriesRequest = AWS.Rekognition.Model.UpdateDatasetEntriesRequest.IUpdateDatasetEntriesRequest;
  IUpdateDatasetEntriesResponse = AWS.Rekognition.Model.UpdateDatasetEntriesResponse.IUpdateDatasetEntriesResponse;
  IUpdateStreamProcessorRequest = AWS.Rekognition.Model.UpdateStreamProcessorRequest.IUpdateStreamProcessorRequest;
  IUpdateStreamProcessorResponse = AWS.Rekognition.Model.UpdateStreamProcessorResponse.IUpdateStreamProcessorResponse;
  IValidationData = AWS.Rekognition.Model.ValidationData.IValidationData;
  IVideo = AWS.Rekognition.Model.Video.IVideo;
  IVideoMetadata = AWS.Rekognition.Model.VideoMetadata.IVideoMetadata;
  TAgeRange = AWS.Rekognition.Model.AgeRange.TAgeRange;
  TAmazonRekognitionClient = AWS.Rekognition.Client.TAmazonRekognitionClient;
  TAmazonRekognitionConfig = AWS.Rekognition.Config.TAmazonRekognitionConfig;
  TAmazonRekognitionMetadata = AWS.Rekognition.Metadata.TAmazonRekognitionMetadata;
  TAmazonRekognitionRequest = AWS.Rekognition.Model.Request.TAmazonRekognitionRequest;
  TAsset = AWS.Rekognition.Model.Asset.TAsset;
  TAttribute = AWS.Rekognition.Enums.TAttribute;
  TAudioMetadata = AWS.Rekognition.Model.AudioMetadata.TAudioMetadata;
  TBeard = AWS.Rekognition.Model.Beard.TBeard;
  TBlackFrame = AWS.Rekognition.Model.BlackFrame.TBlackFrame;
  TBodyPart = AWS.Rekognition.Enums.TBodyPart;
  TBoundingBox = AWS.Rekognition.Model.BoundingBox.TBoundingBox;
  TCelebrity = AWS.Rekognition.Model.Celebrity.TCelebrity;
  TCelebrityDetail = AWS.Rekognition.Model.CelebrityDetail.TCelebrityDetail;
  TCelebrityRecognition = AWS.Rekognition.Model.CelebrityRecognition.TCelebrityRecognition;
  TCelebrityRecognitionSortBy = AWS.Rekognition.Enums.TCelebrityRecognitionSortBy;
  TComparedFace = AWS.Rekognition.Model.ComparedFace.TComparedFace;
  TComparedSourceImageFace = AWS.Rekognition.Model.ComparedSourceImageFace.TComparedSourceImageFace;
  TCompareFacesMatch = AWS.Rekognition.Model.CompareFacesMatch.TCompareFacesMatch;
  TCompareFacesRequest = AWS.Rekognition.Model.CompareFacesRequest.TCompareFacesRequest;
  TCompareFacesResponse = AWS.Rekognition.Model.CompareFacesResponse.TCompareFacesResponse;
  TConnectedHomeSettings = AWS.Rekognition.Model.ConnectedHomeSettings.TConnectedHomeSettings;
  TConnectedHomeSettingsForUpdate = AWS.Rekognition.Model.ConnectedHomeSettingsForUpdate.TConnectedHomeSettingsForUpdate;
  TContentClassifier = AWS.Rekognition.Enums.TContentClassifier;
  TContentModerationDetection = AWS.Rekognition.Model.ContentModerationDetection.TContentModerationDetection;
  TContentModerationSortBy = AWS.Rekognition.Enums.TContentModerationSortBy;
  TCoversBodyPart = AWS.Rekognition.Model.CoversBodyPart.TCoversBodyPart;
  TCreateCollectionRequest = AWS.Rekognition.Model.CreateCollectionRequest.TCreateCollectionRequest;
  TCreateCollectionResponse = AWS.Rekognition.Model.CreateCollectionResponse.TCreateCollectionResponse;
  TCreateDatasetRequest = AWS.Rekognition.Model.CreateDatasetRequest.TCreateDatasetRequest;
  TCreateDatasetResponse = AWS.Rekognition.Model.CreateDatasetResponse.TCreateDatasetResponse;
  TCreateProjectRequest = AWS.Rekognition.Model.CreateProjectRequest.TCreateProjectRequest;
  TCreateProjectResponse = AWS.Rekognition.Model.CreateProjectResponse.TCreateProjectResponse;
  TCreateProjectVersionRequest = AWS.Rekognition.Model.CreateProjectVersionRequest.TCreateProjectVersionRequest;
  TCreateProjectVersionResponse = AWS.Rekognition.Model.CreateProjectVersionResponse.TCreateProjectVersionResponse;
  TCreateStreamProcessorRequest = AWS.Rekognition.Model.CreateStreamProcessorRequest.TCreateStreamProcessorRequest;
  TCreateStreamProcessorResponse = AWS.Rekognition.Model.CreateStreamProcessorResponse.TCreateStreamProcessorResponse;
  TCustomLabel = AWS.Rekognition.Model.CustomLabel.TCustomLabel;
  TDatasetChanges = AWS.Rekognition.Model.DatasetChanges.TDatasetChanges;
  TDatasetDescription = AWS.Rekognition.Model.DatasetDescription.TDatasetDescription;
  TDatasetLabelDescription = AWS.Rekognition.Model.DatasetLabelDescription.TDatasetLabelDescription;
  TDatasetLabelStats = AWS.Rekognition.Model.DatasetLabelStats.TDatasetLabelStats;
  TDatasetMetadata = AWS.Rekognition.Model.DatasetMetadata.TDatasetMetadata;
  TDatasetSource = AWS.Rekognition.Model.DatasetSource.TDatasetSource;
  TDatasetStats = AWS.Rekognition.Model.DatasetStats.TDatasetStats;
  TDatasetStatus = AWS.Rekognition.Enums.TDatasetStatus;
  TDatasetStatusMessageCode = AWS.Rekognition.Enums.TDatasetStatusMessageCode;
  TDatasetType = AWS.Rekognition.Enums.TDatasetType;
  TDeleteCollectionRequest = AWS.Rekognition.Model.DeleteCollectionRequest.TDeleteCollectionRequest;
  TDeleteCollectionResponse = AWS.Rekognition.Model.DeleteCollectionResponse.TDeleteCollectionResponse;
  TDeleteDatasetRequest = AWS.Rekognition.Model.DeleteDatasetRequest.TDeleteDatasetRequest;
  TDeleteDatasetResponse = AWS.Rekognition.Model.DeleteDatasetResponse.TDeleteDatasetResponse;
  TDeleteFacesRequest = AWS.Rekognition.Model.DeleteFacesRequest.TDeleteFacesRequest;
  TDeleteFacesResponse = AWS.Rekognition.Model.DeleteFacesResponse.TDeleteFacesResponse;
  TDeleteProjectRequest = AWS.Rekognition.Model.DeleteProjectRequest.TDeleteProjectRequest;
  TDeleteProjectResponse = AWS.Rekognition.Model.DeleteProjectResponse.TDeleteProjectResponse;
  TDeleteProjectVersionRequest = AWS.Rekognition.Model.DeleteProjectVersionRequest.TDeleteProjectVersionRequest;
  TDeleteProjectVersionResponse = AWS.Rekognition.Model.DeleteProjectVersionResponse.TDeleteProjectVersionResponse;
  TDeleteStreamProcessorRequest = AWS.Rekognition.Model.DeleteStreamProcessorRequest.TDeleteStreamProcessorRequest;
  TDeleteStreamProcessorResponse = AWS.Rekognition.Model.DeleteStreamProcessorResponse.TDeleteStreamProcessorResponse;
  TDescribeCollectionRequest = AWS.Rekognition.Model.DescribeCollectionRequest.TDescribeCollectionRequest;
  TDescribeCollectionResponse = AWS.Rekognition.Model.DescribeCollectionResponse.TDescribeCollectionResponse;
  TDescribeDatasetRequest = AWS.Rekognition.Model.DescribeDatasetRequest.TDescribeDatasetRequest;
  TDescribeDatasetResponse = AWS.Rekognition.Model.DescribeDatasetResponse.TDescribeDatasetResponse;
  TDescribeProjectsRequest = AWS.Rekognition.Model.DescribeProjectsRequest.TDescribeProjectsRequest;
  TDescribeProjectsResponse = AWS.Rekognition.Model.DescribeProjectsResponse.TDescribeProjectsResponse;
  TDescribeProjectVersionsRequest = AWS.Rekognition.Model.DescribeProjectVersionsRequest.TDescribeProjectVersionsRequest;
  TDescribeProjectVersionsResponse = AWS.Rekognition.Model.DescribeProjectVersionsResponse.TDescribeProjectVersionsResponse;
  TDescribeStreamProcessorRequest = AWS.Rekognition.Model.DescribeStreamProcessorRequest.TDescribeStreamProcessorRequest;
  TDescribeStreamProcessorResponse = AWS.Rekognition.Model.DescribeStreamProcessorResponse.TDescribeStreamProcessorResponse;
  TDetectCustomLabelsRequest = AWS.Rekognition.Model.DetectCustomLabelsRequest.TDetectCustomLabelsRequest;
  TDetectCustomLabelsResponse = AWS.Rekognition.Model.DetectCustomLabelsResponse.TDetectCustomLabelsResponse;
  TDetectFacesRequest = AWS.Rekognition.Model.DetectFacesRequest.TDetectFacesRequest;
  TDetectFacesResponse = AWS.Rekognition.Model.DetectFacesResponse.TDetectFacesResponse;
  TDetectionFilter = AWS.Rekognition.Model.DetectionFilter.TDetectionFilter;
  TDetectLabelsRequest = AWS.Rekognition.Model.DetectLabelsRequest.TDetectLabelsRequest;
  TDetectLabelsResponse = AWS.Rekognition.Model.DetectLabelsResponse.TDetectLabelsResponse;
  TDetectModerationLabelsRequest = AWS.Rekognition.Model.DetectModerationLabelsRequest.TDetectModerationLabelsRequest;
  TDetectModerationLabelsResponse = AWS.Rekognition.Model.DetectModerationLabelsResponse.TDetectModerationLabelsResponse;
  TDetectProtectiveEquipmentRequest = AWS.Rekognition.Model.DetectProtectiveEquipmentRequest.TDetectProtectiveEquipmentRequest;
  TDetectProtectiveEquipmentResponse = AWS.Rekognition.Model.DetectProtectiveEquipmentResponse.TDetectProtectiveEquipmentResponse;
  TDetectTextFilters = AWS.Rekognition.Model.DetectTextFilters.TDetectTextFilters;
  TDetectTextRequest = AWS.Rekognition.Model.DetectTextRequest.TDetectTextRequest;
  TDetectTextResponse = AWS.Rekognition.Model.DetectTextResponse.TDetectTextResponse;
  TDistributeDataset = AWS.Rekognition.Model.DistributeDataset.TDistributeDataset;
  TDistributeDatasetEntriesRequest = AWS.Rekognition.Model.DistributeDatasetEntriesRequest.TDistributeDatasetEntriesRequest;
  TDistributeDatasetEntriesResponse = AWS.Rekognition.Model.DistributeDatasetEntriesResponse.TDistributeDatasetEntriesResponse;
  TEmotion = AWS.Rekognition.Model.Emotion.TEmotion;
  TEmotionName = AWS.Rekognition.Enums.TEmotionName;
  TEquipmentDetection = AWS.Rekognition.Model.EquipmentDetection.TEquipmentDetection;
  TEvaluationResult = AWS.Rekognition.Model.EvaluationResult.TEvaluationResult;
  TEyeglasses = AWS.Rekognition.Model.Eyeglasses.TEyeglasses;
  TEyeOpen = AWS.Rekognition.Model.EyeOpen.TEyeOpen;
  TFace = AWS.Rekognition.Model.Face.TFace;
  TFaceAttributes = AWS.Rekognition.Enums.TFaceAttributes;
  TFaceDetail = AWS.Rekognition.Model.FaceDetail.TFaceDetail;
  TFaceDetection = AWS.Rekognition.Model.FaceDetection.TFaceDetection;
  TFaceMatch = AWS.Rekognition.Model.FaceMatch.TFaceMatch;
  TFaceRecord = AWS.Rekognition.Model.FaceRecord.TFaceRecord;
  TFaceSearchSettings = AWS.Rekognition.Model.FaceSearchSettings.TFaceSearchSettings;
  TFaceSearchSortBy = AWS.Rekognition.Enums.TFaceSearchSortBy;
  TGender = AWS.Rekognition.Model.Gender.TGender;
  TGenderType = AWS.Rekognition.Enums.TGenderType;
  TGeometry = AWS.Rekognition.Model.Geometry.TGeometry;
  TGetCelebrityInfoRequest = AWS.Rekognition.Model.GetCelebrityInfoRequest.TGetCelebrityInfoRequest;
  TGetCelebrityInfoResponse = AWS.Rekognition.Model.GetCelebrityInfoResponse.TGetCelebrityInfoResponse;
  TGetCelebrityRecognitionRequest = AWS.Rekognition.Model.GetCelebrityRecognitionRequest.TGetCelebrityRecognitionRequest;
  TGetCelebrityRecognitionResponse = AWS.Rekognition.Model.GetCelebrityRecognitionResponse.TGetCelebrityRecognitionResponse;
  TGetContentModerationRequest = AWS.Rekognition.Model.GetContentModerationRequest.TGetContentModerationRequest;
  TGetContentModerationResponse = AWS.Rekognition.Model.GetContentModerationResponse.TGetContentModerationResponse;
  TGetFaceDetectionRequest = AWS.Rekognition.Model.GetFaceDetectionRequest.TGetFaceDetectionRequest;
  TGetFaceDetectionResponse = AWS.Rekognition.Model.GetFaceDetectionResponse.TGetFaceDetectionResponse;
  TGetFaceSearchRequest = AWS.Rekognition.Model.GetFaceSearchRequest.TGetFaceSearchRequest;
  TGetFaceSearchResponse = AWS.Rekognition.Model.GetFaceSearchResponse.TGetFaceSearchResponse;
  TGetLabelDetectionRequest = AWS.Rekognition.Model.GetLabelDetectionRequest.TGetLabelDetectionRequest;
  TGetLabelDetectionResponse = AWS.Rekognition.Model.GetLabelDetectionResponse.TGetLabelDetectionResponse;
  TGetPersonTrackingRequest = AWS.Rekognition.Model.GetPersonTrackingRequest.TGetPersonTrackingRequest;
  TGetPersonTrackingResponse = AWS.Rekognition.Model.GetPersonTrackingResponse.TGetPersonTrackingResponse;
  TGetSegmentDetectionRequest = AWS.Rekognition.Model.GetSegmentDetectionRequest.TGetSegmentDetectionRequest;
  TGetSegmentDetectionResponse = AWS.Rekognition.Model.GetSegmentDetectionResponse.TGetSegmentDetectionResponse;
  TGetTextDetectionRequest = AWS.Rekognition.Model.GetTextDetectionRequest.TGetTextDetectionRequest;
  TGetTextDetectionResponse = AWS.Rekognition.Model.GetTextDetectionResponse.TGetTextDetectionResponse;
  TGroundTruthManifest = AWS.Rekognition.Model.GroundTruthManifest.TGroundTruthManifest;
  THumanLoopActivationOutput = AWS.Rekognition.Model.HumanLoopActivationOutput.THumanLoopActivationOutput;
  THumanLoopConfig = AWS.Rekognition.Model.HumanLoopConfig.THumanLoopConfig;
  THumanLoopDataAttributes = AWS.Rekognition.Model.HumanLoopDataAttributes.THumanLoopDataAttributes;
  TImage = AWS.Rekognition.Model.Image.TImage;
  TImageQuality = AWS.Rekognition.Model.ImageQuality.TImageQuality;
  TIndexFacesRequest = AWS.Rekognition.Model.IndexFacesRequest.TIndexFacesRequest;
  TIndexFacesResponse = AWS.Rekognition.Model.IndexFacesResponse.TIndexFacesResponse;
  TInstance = AWS.Rekognition.Model.Instance.TInstance;
  TKinesisDataStream = AWS.Rekognition.Model.KinesisDataStream.TKinesisDataStream;
  TKinesisVideoStream = AWS.Rekognition.Model.KinesisVideoStream.TKinesisVideoStream;
  TKinesisVideoStreamStartSelector = AWS.Rekognition.Model.KinesisVideoStreamStartSelector.TKinesisVideoStreamStartSelector;
  TKnownGender = AWS.Rekognition.Model.KnownGender.TKnownGender;
  TKnownGenderType = AWS.Rekognition.Enums.TKnownGenderType;
  TLabel = AWS.Rekognition.Model.LabelTypes.TLabel;
  TLabelDetection = AWS.Rekognition.Model.LabelDetection.TLabelDetection;
  TLabelDetectionSortBy = AWS.Rekognition.Enums.TLabelDetectionSortBy;
  TLandmark = AWS.Rekognition.Model.Landmark.TLandmark;
  TLandmarkType = AWS.Rekognition.Enums.TLandmarkType;
  TListCollectionsRequest = AWS.Rekognition.Model.ListCollectionsRequest.TListCollectionsRequest;
  TListCollectionsResponse = AWS.Rekognition.Model.ListCollectionsResponse.TListCollectionsResponse;
  TListDatasetEntriesRequest = AWS.Rekognition.Model.ListDatasetEntriesRequest.TListDatasetEntriesRequest;
  TListDatasetEntriesResponse = AWS.Rekognition.Model.ListDatasetEntriesResponse.TListDatasetEntriesResponse;
  TListDatasetLabelsRequest = AWS.Rekognition.Model.ListDatasetLabelsRequest.TListDatasetLabelsRequest;
  TListDatasetLabelsResponse = AWS.Rekognition.Model.ListDatasetLabelsResponse.TListDatasetLabelsResponse;
  TListFacesRequest = AWS.Rekognition.Model.ListFacesRequest.TListFacesRequest;
  TListFacesResponse = AWS.Rekognition.Model.ListFacesResponse.TListFacesResponse;
  TListStreamProcessorsRequest = AWS.Rekognition.Model.ListStreamProcessorsRequest.TListStreamProcessorsRequest;
  TListStreamProcessorsResponse = AWS.Rekognition.Model.ListStreamProcessorsResponse.TListStreamProcessorsResponse;
  TListTagsForResourceRequest = AWS.Rekognition.Model.ListTagsForResourceRequest.TListTagsForResourceRequest;
  TListTagsForResourceResponse = AWS.Rekognition.Model.ListTagsForResourceResponse.TListTagsForResourceResponse;
  TModerationLabel = AWS.Rekognition.Model.ModerationLabel.TModerationLabel;
  TMouthOpen = AWS.Rekognition.Model.MouthOpen.TMouthOpen;
  TMustache = AWS.Rekognition.Model.Mustache.TMustache;
  TNotificationChannel = AWS.Rekognition.Model.NotificationChannel.TNotificationChannel;
  TOrientationCorrection = AWS.Rekognition.Enums.TOrientationCorrection;
  TOutputConfig = AWS.Rekognition.Model.OutputConfig.TOutputConfig;
  TParent = AWS.Rekognition.Model.Parent.TParent;
  TPersonDetail = AWS.Rekognition.Model.PersonDetail.TPersonDetail;
  TPersonDetection = AWS.Rekognition.Model.PersonDetection.TPersonDetection;
  TPersonMatch = AWS.Rekognition.Model.PersonMatch.TPersonMatch;
  TPersonTrackingSortBy = AWS.Rekognition.Enums.TPersonTrackingSortBy;
  TPoint = AWS.Rekognition.Model.Point.TPoint;
  TPose = AWS.Rekognition.Model.Pose.TPose;
  TProjectDescription = AWS.Rekognition.Model.ProjectDescription.TProjectDescription;
  TProjectStatus = AWS.Rekognition.Enums.TProjectStatus;
  TProjectVersionDescription = AWS.Rekognition.Model.ProjectVersionDescription.TProjectVersionDescription;
  TProjectVersionStatus = AWS.Rekognition.Enums.TProjectVersionStatus;
  TProtectiveEquipmentBodyPart = AWS.Rekognition.Model.ProtectiveEquipmentBodyPart.TProtectiveEquipmentBodyPart;
  TProtectiveEquipmentPerson = AWS.Rekognition.Model.ProtectiveEquipmentPerson.TProtectiveEquipmentPerson;
  TProtectiveEquipmentSummarizationAttributes = AWS.Rekognition.Model.ProtectiveEquipmentSummarizationAttributes.TProtectiveEquipmentSummarizationAttributes;
  TProtectiveEquipmentSummary = AWS.Rekognition.Model.ProtectiveEquipmentSummary.TProtectiveEquipmentSummary;
  TProtectiveEquipmentType = AWS.Rekognition.Enums.TProtectiveEquipmentType;
  TQualityFilter = AWS.Rekognition.Enums.TQualityFilter;
  TReason = AWS.Rekognition.Enums.TReason;
  TRecognizeCelebritiesRequest = AWS.Rekognition.Model.RecognizeCelebritiesRequest.TRecognizeCelebritiesRequest;
  TRecognizeCelebritiesResponse = AWS.Rekognition.Model.RecognizeCelebritiesResponse.TRecognizeCelebritiesResponse;
  TRegionOfInterest = AWS.Rekognition.Model.RegionOfInterest.TRegionOfInterest;
  TS3Destination = AWS.Rekognition.Model.S3Destination.TS3Destination;
  TS3Object = AWS.Rekognition.Model.S3Object.TS3Object;
  TSearchFacesByImageRequest = AWS.Rekognition.Model.SearchFacesByImageRequest.TSearchFacesByImageRequest;
  TSearchFacesByImageResponse = AWS.Rekognition.Model.SearchFacesByImageResponse.TSearchFacesByImageResponse;
  TSearchFacesRequest = AWS.Rekognition.Model.SearchFacesRequest.TSearchFacesRequest;
  TSearchFacesResponse = AWS.Rekognition.Model.SearchFacesResponse.TSearchFacesResponse;
  TSegmentDetection = AWS.Rekognition.Model.SegmentDetection.TSegmentDetection;
  TSegmentType = AWS.Rekognition.Enums.TSegmentType;
  TSegmentTypeInfo = AWS.Rekognition.Model.SegmentTypeInfo.TSegmentTypeInfo;
  TShotSegment = AWS.Rekognition.Model.ShotSegment.TShotSegment;
  TSmile = AWS.Rekognition.Model.Smile.TSmile;
  TStartCelebrityRecognitionRequest = AWS.Rekognition.Model.StartCelebrityRecognitionRequest.TStartCelebrityRecognitionRequest;
  TStartCelebrityRecognitionResponse = AWS.Rekognition.Model.StartCelebrityRecognitionResponse.TStartCelebrityRecognitionResponse;
  TStartContentModerationRequest = AWS.Rekognition.Model.StartContentModerationRequest.TStartContentModerationRequest;
  TStartContentModerationResponse = AWS.Rekognition.Model.StartContentModerationResponse.TStartContentModerationResponse;
  TStartFaceDetectionRequest = AWS.Rekognition.Model.StartFaceDetectionRequest.TStartFaceDetectionRequest;
  TStartFaceDetectionResponse = AWS.Rekognition.Model.StartFaceDetectionResponse.TStartFaceDetectionResponse;
  TStartFaceSearchRequest = AWS.Rekognition.Model.StartFaceSearchRequest.TStartFaceSearchRequest;
  TStartFaceSearchResponse = AWS.Rekognition.Model.StartFaceSearchResponse.TStartFaceSearchResponse;
  TStartLabelDetectionRequest = AWS.Rekognition.Model.StartLabelDetectionRequest.TStartLabelDetectionRequest;
  TStartLabelDetectionResponse = AWS.Rekognition.Model.StartLabelDetectionResponse.TStartLabelDetectionResponse;
  TStartPersonTrackingRequest = AWS.Rekognition.Model.StartPersonTrackingRequest.TStartPersonTrackingRequest;
  TStartPersonTrackingResponse = AWS.Rekognition.Model.StartPersonTrackingResponse.TStartPersonTrackingResponse;
  TStartProjectVersionRequest = AWS.Rekognition.Model.StartProjectVersionRequest.TStartProjectVersionRequest;
  TStartProjectVersionResponse = AWS.Rekognition.Model.StartProjectVersionResponse.TStartProjectVersionResponse;
  TStartSegmentDetectionFilters = AWS.Rekognition.Model.StartSegmentDetectionFilters.TStartSegmentDetectionFilters;
  TStartSegmentDetectionRequest = AWS.Rekognition.Model.StartSegmentDetectionRequest.TStartSegmentDetectionRequest;
  TStartSegmentDetectionResponse = AWS.Rekognition.Model.StartSegmentDetectionResponse.TStartSegmentDetectionResponse;
  TStartShotDetectionFilter = AWS.Rekognition.Model.StartShotDetectionFilter.TStartShotDetectionFilter;
  TStartStreamProcessorRequest = AWS.Rekognition.Model.StartStreamProcessorRequest.TStartStreamProcessorRequest;
  TStartStreamProcessorResponse = AWS.Rekognition.Model.StartStreamProcessorResponse.TStartStreamProcessorResponse;
  TStartTechnicalCueDetectionFilter = AWS.Rekognition.Model.StartTechnicalCueDetectionFilter.TStartTechnicalCueDetectionFilter;
  TStartTextDetectionFilters = AWS.Rekognition.Model.StartTextDetectionFilters.TStartTextDetectionFilters;
  TStartTextDetectionRequest = AWS.Rekognition.Model.StartTextDetectionRequest.TStartTextDetectionRequest;
  TStartTextDetectionResponse = AWS.Rekognition.Model.StartTextDetectionResponse.TStartTextDetectionResponse;
  TStopProjectVersionRequest = AWS.Rekognition.Model.StopProjectVersionRequest.TStopProjectVersionRequest;
  TStopProjectVersionResponse = AWS.Rekognition.Model.StopProjectVersionResponse.TStopProjectVersionResponse;
  TStopStreamProcessorRequest = AWS.Rekognition.Model.StopStreamProcessorRequest.TStopStreamProcessorRequest;
  TStopStreamProcessorResponse = AWS.Rekognition.Model.StopStreamProcessorResponse.TStopStreamProcessorResponse;
  TStreamProcessingStartSelector = AWS.Rekognition.Model.StreamProcessingStartSelector.TStreamProcessingStartSelector;
  TStreamProcessingStopSelector = AWS.Rekognition.Model.StreamProcessingStopSelector.TStreamProcessingStopSelector;
  TStreamProcessor = AWS.Rekognition.Model.StreamProcessor.TStreamProcessor;
  TStreamProcessorDataSharingPreference = AWS.Rekognition.Model.StreamProcessorDataSharingPreference.TStreamProcessorDataSharingPreference;
  TStreamProcessorInput = AWS.Rekognition.Model.StreamProcessorInput.TStreamProcessorInput;
  TStreamProcessorNotificationChannel = AWS.Rekognition.Model.StreamProcessorNotificationChannel.TStreamProcessorNotificationChannel;
  TStreamProcessorOutput = AWS.Rekognition.Model.StreamProcessorOutput.TStreamProcessorOutput;
  TStreamProcessorParameterToDelete = AWS.Rekognition.Enums.TStreamProcessorParameterToDelete;
  TStreamProcessorSettings = AWS.Rekognition.Model.StreamProcessorSettings.TStreamProcessorSettings;
  TStreamProcessorSettingsForUpdate = AWS.Rekognition.Model.StreamProcessorSettingsForUpdate.TStreamProcessorSettingsForUpdate;
  TStreamProcessorStatus = AWS.Rekognition.Enums.TStreamProcessorStatus;
  TSummary = AWS.Rekognition.Model.Summary.TSummary;
  TSunglasses = AWS.Rekognition.Model.Sunglasses.TSunglasses;
  TTagResourceRequest = AWS.Rekognition.Model.TagResourceRequest.TTagResourceRequest;
  TTagResourceResponse = AWS.Rekognition.Model.TagResourceResponse.TTagResourceResponse;
  TTechnicalCueSegment = AWS.Rekognition.Model.TechnicalCueSegment.TTechnicalCueSegment;
  TTechnicalCueType = AWS.Rekognition.Enums.TTechnicalCueType;
  TTestingData = AWS.Rekognition.Model.TestingData.TTestingData;
  TTestingDataResult = AWS.Rekognition.Model.TestingDataResult.TTestingDataResult;
  TTextDetection = AWS.Rekognition.Model.TextDetection.TTextDetection;
  TTextDetectionResult = AWS.Rekognition.Model.TextDetectionResult.TTextDetectionResult;
  TTextTypes = AWS.Rekognition.Enums.TTextTypes;
  TTrainingData = AWS.Rekognition.Model.TrainingData.TTrainingData;
  TTrainingDataResult = AWS.Rekognition.Model.TrainingDataResult.TTrainingDataResult;
  TUnindexedFace = AWS.Rekognition.Model.UnindexedFace.TUnindexedFace;
  TUntagResourceRequest = AWS.Rekognition.Model.UntagResourceRequest.TUntagResourceRequest;
  TUntagResourceResponse = AWS.Rekognition.Model.UntagResourceResponse.TUntagResourceResponse;
  TUpdateDatasetEntriesRequest = AWS.Rekognition.Model.UpdateDatasetEntriesRequest.TUpdateDatasetEntriesRequest;
  TUpdateDatasetEntriesResponse = AWS.Rekognition.Model.UpdateDatasetEntriesResponse.TUpdateDatasetEntriesResponse;
  TUpdateStreamProcessorRequest = AWS.Rekognition.Model.UpdateStreamProcessorRequest.TUpdateStreamProcessorRequest;
  TUpdateStreamProcessorResponse = AWS.Rekognition.Model.UpdateStreamProcessorResponse.TUpdateStreamProcessorResponse;
  TValidationData = AWS.Rekognition.Model.ValidationData.TValidationData;
  TVideo = AWS.Rekognition.Model.Video.TVideo;
  TVideoColorRange = AWS.Rekognition.Enums.TVideoColorRange;
  TVideoJobStatus = AWS.Rekognition.Enums.TVideoJobStatus;
  TVideoMetadata = AWS.Rekognition.Model.VideoMetadata.TVideoMetadata;
  
implementation

end.
