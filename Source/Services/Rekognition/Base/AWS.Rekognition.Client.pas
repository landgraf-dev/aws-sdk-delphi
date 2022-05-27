unit AWS.Rekognition.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.Rekognition.ClientIntf, 
  AWS.Rekognition.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.Rekognition.Metadata, 
  AWS.Auth.Signer, 
  AWS.Rekognition.Model.CompareFacesResponse, 
  AWS.Rekognition.Model.CompareFacesRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.Rekognition.Transform.CompareFacesRequestMarshaller, 
  AWS.Rekognition.Transform.CompareFacesResponseUnmarshaller, 
  AWS.Rekognition.Model.CreateCollectionResponse, 
  AWS.Rekognition.Model.CreateCollectionRequest, 
  AWS.Rekognition.Transform.CreateCollectionRequestMarshaller, 
  AWS.Rekognition.Transform.CreateCollectionResponseUnmarshaller, 
  AWS.Rekognition.Model.CreateDatasetResponse, 
  AWS.Rekognition.Model.CreateDatasetRequest, 
  AWS.Rekognition.Transform.CreateDatasetRequestMarshaller, 
  AWS.Rekognition.Transform.CreateDatasetResponseUnmarshaller, 
  AWS.Rekognition.Model.CreateProjectResponse, 
  AWS.Rekognition.Model.CreateProjectRequest, 
  AWS.Rekognition.Transform.CreateProjectRequestMarshaller, 
  AWS.Rekognition.Transform.CreateProjectResponseUnmarshaller, 
  AWS.Rekognition.Model.CreateProjectVersionResponse, 
  AWS.Rekognition.Model.CreateProjectVersionRequest, 
  AWS.Rekognition.Transform.CreateProjectVersionRequestMarshaller, 
  AWS.Rekognition.Transform.CreateProjectVersionResponseUnmarshaller, 
  AWS.Rekognition.Model.CreateStreamProcessorResponse, 
  AWS.Rekognition.Model.CreateStreamProcessorRequest, 
  AWS.Rekognition.Transform.CreateStreamProcessorRequestMarshaller, 
  AWS.Rekognition.Transform.CreateStreamProcessorResponseUnmarshaller, 
  AWS.Rekognition.Model.DeleteCollectionResponse, 
  AWS.Rekognition.Model.DeleteCollectionRequest, 
  AWS.Rekognition.Transform.DeleteCollectionRequestMarshaller, 
  AWS.Rekognition.Transform.DeleteCollectionResponseUnmarshaller, 
  AWS.Rekognition.Model.DeleteDatasetResponse, 
  AWS.Rekognition.Model.DeleteDatasetRequest, 
  AWS.Rekognition.Transform.DeleteDatasetRequestMarshaller, 
  AWS.Rekognition.Transform.DeleteDatasetResponseUnmarshaller, 
  AWS.Rekognition.Model.DeleteFacesResponse, 
  AWS.Rekognition.Model.DeleteFacesRequest, 
  AWS.Rekognition.Transform.DeleteFacesRequestMarshaller, 
  AWS.Rekognition.Transform.DeleteFacesResponseUnmarshaller, 
  AWS.Rekognition.Model.DeleteProjectResponse, 
  AWS.Rekognition.Model.DeleteProjectRequest, 
  AWS.Rekognition.Transform.DeleteProjectRequestMarshaller, 
  AWS.Rekognition.Transform.DeleteProjectResponseUnmarshaller, 
  AWS.Rekognition.Model.DeleteProjectVersionResponse, 
  AWS.Rekognition.Model.DeleteProjectVersionRequest, 
  AWS.Rekognition.Transform.DeleteProjectVersionRequestMarshaller, 
  AWS.Rekognition.Transform.DeleteProjectVersionResponseUnmarshaller, 
  AWS.Rekognition.Model.DeleteStreamProcessorResponse, 
  AWS.Rekognition.Model.DeleteStreamProcessorRequest, 
  AWS.Rekognition.Transform.DeleteStreamProcessorRequestMarshaller, 
  AWS.Rekognition.Transform.DeleteStreamProcessorResponseUnmarshaller, 
  AWS.Rekognition.Model.DescribeCollectionResponse, 
  AWS.Rekognition.Model.DescribeCollectionRequest, 
  AWS.Rekognition.Transform.DescribeCollectionRequestMarshaller, 
  AWS.Rekognition.Transform.DescribeCollectionResponseUnmarshaller, 
  AWS.Rekognition.Model.DescribeDatasetResponse, 
  AWS.Rekognition.Model.DescribeDatasetRequest, 
  AWS.Rekognition.Transform.DescribeDatasetRequestMarshaller, 
  AWS.Rekognition.Transform.DescribeDatasetResponseUnmarshaller, 
  AWS.Rekognition.Model.DescribeProjectVersionsResponse, 
  AWS.Rekognition.Model.DescribeProjectVersionsRequest, 
  AWS.Rekognition.Transform.DescribeProjectVersionsRequestMarshaller, 
  AWS.Rekognition.Transform.DescribeProjectVersionsResponseUnmarshaller, 
  AWS.Rekognition.Model.DescribeProjectsResponse, 
  AWS.Rekognition.Model.DescribeProjectsRequest, 
  AWS.Rekognition.Transform.DescribeProjectsRequestMarshaller, 
  AWS.Rekognition.Transform.DescribeProjectsResponseUnmarshaller, 
  AWS.Rekognition.Model.DescribeStreamProcessorResponse, 
  AWS.Rekognition.Model.DescribeStreamProcessorRequest, 
  AWS.Rekognition.Transform.DescribeStreamProcessorRequestMarshaller, 
  AWS.Rekognition.Transform.DescribeStreamProcessorResponseUnmarshaller, 
  AWS.Rekognition.Model.DetectCustomLabelsResponse, 
  AWS.Rekognition.Model.DetectCustomLabelsRequest, 
  AWS.Rekognition.Transform.DetectCustomLabelsRequestMarshaller, 
  AWS.Rekognition.Transform.DetectCustomLabelsResponseUnmarshaller, 
  AWS.Rekognition.Model.DetectFacesResponse, 
  AWS.Rekognition.Model.DetectFacesRequest, 
  AWS.Rekognition.Transform.DetectFacesRequestMarshaller, 
  AWS.Rekognition.Transform.DetectFacesResponseUnmarshaller, 
  AWS.Rekognition.Model.DetectLabelsResponse, 
  AWS.Rekognition.Model.DetectLabelsRequest, 
  AWS.Rekognition.Transform.DetectLabelsRequestMarshaller, 
  AWS.Rekognition.Transform.DetectLabelsResponseUnmarshaller, 
  AWS.Rekognition.Model.DetectModerationLabelsResponse, 
  AWS.Rekognition.Model.DetectModerationLabelsRequest, 
  AWS.Rekognition.Transform.DetectModerationLabelsRequestMarshaller, 
  AWS.Rekognition.Transform.DetectModerationLabelsResponseUnmarshaller, 
  AWS.Rekognition.Model.DetectProtectiveEquipmentResponse, 
  AWS.Rekognition.Model.DetectProtectiveEquipmentRequest, 
  AWS.Rekognition.Transform.DetectProtectiveEquipmentRequestMarshaller, 
  AWS.Rekognition.Transform.DetectProtectiveEquipmentResponseUnmarshaller, 
  AWS.Rekognition.Model.DetectTextResponse, 
  AWS.Rekognition.Model.DetectTextRequest, 
  AWS.Rekognition.Transform.DetectTextRequestMarshaller, 
  AWS.Rekognition.Transform.DetectTextResponseUnmarshaller, 
  AWS.Rekognition.Model.DistributeDatasetEntriesResponse, 
  AWS.Rekognition.Model.DistributeDatasetEntriesRequest, 
  AWS.Rekognition.Transform.DistributeDatasetEntriesRequestMarshaller, 
  AWS.Rekognition.Transform.DistributeDatasetEntriesResponseUnmarshaller, 
  AWS.Rekognition.Model.GetCelebrityInfoResponse, 
  AWS.Rekognition.Model.GetCelebrityInfoRequest, 
  AWS.Rekognition.Transform.GetCelebrityInfoRequestMarshaller, 
  AWS.Rekognition.Transform.GetCelebrityInfoResponseUnmarshaller, 
  AWS.Rekognition.Model.GetCelebrityRecognitionResponse, 
  AWS.Rekognition.Model.GetCelebrityRecognitionRequest, 
  AWS.Rekognition.Transform.GetCelebrityRecognitionRequestMarshaller, 
  AWS.Rekognition.Transform.GetCelebrityRecognitionResponseUnmarshaller, 
  AWS.Rekognition.Model.GetContentModerationResponse, 
  AWS.Rekognition.Model.GetContentModerationRequest, 
  AWS.Rekognition.Transform.GetContentModerationRequestMarshaller, 
  AWS.Rekognition.Transform.GetContentModerationResponseUnmarshaller, 
  AWS.Rekognition.Model.GetFaceDetectionResponse, 
  AWS.Rekognition.Model.GetFaceDetectionRequest, 
  AWS.Rekognition.Transform.GetFaceDetectionRequestMarshaller, 
  AWS.Rekognition.Transform.GetFaceDetectionResponseUnmarshaller, 
  AWS.Rekognition.Model.GetFaceSearchResponse, 
  AWS.Rekognition.Model.GetFaceSearchRequest, 
  AWS.Rekognition.Transform.GetFaceSearchRequestMarshaller, 
  AWS.Rekognition.Transform.GetFaceSearchResponseUnmarshaller, 
  AWS.Rekognition.Model.GetLabelDetectionResponse, 
  AWS.Rekognition.Model.GetLabelDetectionRequest, 
  AWS.Rekognition.Transform.GetLabelDetectionRequestMarshaller, 
  AWS.Rekognition.Transform.GetLabelDetectionResponseUnmarshaller, 
  AWS.Rekognition.Model.GetPersonTrackingResponse, 
  AWS.Rekognition.Model.GetPersonTrackingRequest, 
  AWS.Rekognition.Transform.GetPersonTrackingRequestMarshaller, 
  AWS.Rekognition.Transform.GetPersonTrackingResponseUnmarshaller, 
  AWS.Rekognition.Model.GetSegmentDetectionResponse, 
  AWS.Rekognition.Model.GetSegmentDetectionRequest, 
  AWS.Rekognition.Transform.GetSegmentDetectionRequestMarshaller, 
  AWS.Rekognition.Transform.GetSegmentDetectionResponseUnmarshaller, 
  AWS.Rekognition.Model.GetTextDetectionResponse, 
  AWS.Rekognition.Model.GetTextDetectionRequest, 
  AWS.Rekognition.Transform.GetTextDetectionRequestMarshaller, 
  AWS.Rekognition.Transform.GetTextDetectionResponseUnmarshaller, 
  AWS.Rekognition.Model.IndexFacesResponse, 
  AWS.Rekognition.Model.IndexFacesRequest, 
  AWS.Rekognition.Transform.IndexFacesRequestMarshaller, 
  AWS.Rekognition.Transform.IndexFacesResponseUnmarshaller, 
  AWS.Rekognition.Model.ListCollectionsResponse, 
  AWS.Rekognition.Model.ListCollectionsRequest, 
  AWS.Rekognition.Transform.ListCollectionsRequestMarshaller, 
  AWS.Rekognition.Transform.ListCollectionsResponseUnmarshaller, 
  AWS.Rekognition.Model.ListDatasetEntriesResponse, 
  AWS.Rekognition.Model.ListDatasetEntriesRequest, 
  AWS.Rekognition.Transform.ListDatasetEntriesRequestMarshaller, 
  AWS.Rekognition.Transform.ListDatasetEntriesResponseUnmarshaller, 
  AWS.Rekognition.Model.ListDatasetLabelsResponse, 
  AWS.Rekognition.Model.ListDatasetLabelsRequest, 
  AWS.Rekognition.Transform.ListDatasetLabelsRequestMarshaller, 
  AWS.Rekognition.Transform.ListDatasetLabelsResponseUnmarshaller, 
  AWS.Rekognition.Model.ListFacesResponse, 
  AWS.Rekognition.Model.ListFacesRequest, 
  AWS.Rekognition.Transform.ListFacesRequestMarshaller, 
  AWS.Rekognition.Transform.ListFacesResponseUnmarshaller, 
  AWS.Rekognition.Model.ListStreamProcessorsResponse, 
  AWS.Rekognition.Model.ListStreamProcessorsRequest, 
  AWS.Rekognition.Transform.ListStreamProcessorsRequestMarshaller, 
  AWS.Rekognition.Transform.ListStreamProcessorsResponseUnmarshaller, 
  AWS.Rekognition.Model.ListTagsForResourceResponse, 
  AWS.Rekognition.Model.ListTagsForResourceRequest, 
  AWS.Rekognition.Transform.ListTagsForResourceRequestMarshaller, 
  AWS.Rekognition.Transform.ListTagsForResourceResponseUnmarshaller, 
  AWS.Rekognition.Model.RecognizeCelebritiesResponse, 
  AWS.Rekognition.Model.RecognizeCelebritiesRequest, 
  AWS.Rekognition.Transform.RecognizeCelebritiesRequestMarshaller, 
  AWS.Rekognition.Transform.RecognizeCelebritiesResponseUnmarshaller, 
  AWS.Rekognition.Model.SearchFacesResponse, 
  AWS.Rekognition.Model.SearchFacesRequest, 
  AWS.Rekognition.Transform.SearchFacesRequestMarshaller, 
  AWS.Rekognition.Transform.SearchFacesResponseUnmarshaller, 
  AWS.Rekognition.Model.SearchFacesByImageResponse, 
  AWS.Rekognition.Model.SearchFacesByImageRequest, 
  AWS.Rekognition.Transform.SearchFacesByImageRequestMarshaller, 
  AWS.Rekognition.Transform.SearchFacesByImageResponseUnmarshaller, 
  AWS.Rekognition.Model.StartCelebrityRecognitionResponse, 
  AWS.Rekognition.Model.StartCelebrityRecognitionRequest, 
  AWS.Rekognition.Transform.StartCelebrityRecognitionRequestMarshaller, 
  AWS.Rekognition.Transform.StartCelebrityRecognitionResponseUnmarshaller, 
  AWS.Rekognition.Model.StartContentModerationResponse, 
  AWS.Rekognition.Model.StartContentModerationRequest, 
  AWS.Rekognition.Transform.StartContentModerationRequestMarshaller, 
  AWS.Rekognition.Transform.StartContentModerationResponseUnmarshaller, 
  AWS.Rekognition.Model.StartFaceDetectionResponse, 
  AWS.Rekognition.Model.StartFaceDetectionRequest, 
  AWS.Rekognition.Transform.StartFaceDetectionRequestMarshaller, 
  AWS.Rekognition.Transform.StartFaceDetectionResponseUnmarshaller, 
  AWS.Rekognition.Model.StartFaceSearchResponse, 
  AWS.Rekognition.Model.StartFaceSearchRequest, 
  AWS.Rekognition.Transform.StartFaceSearchRequestMarshaller, 
  AWS.Rekognition.Transform.StartFaceSearchResponseUnmarshaller, 
  AWS.Rekognition.Model.StartLabelDetectionResponse, 
  AWS.Rekognition.Model.StartLabelDetectionRequest, 
  AWS.Rekognition.Transform.StartLabelDetectionRequestMarshaller, 
  AWS.Rekognition.Transform.StartLabelDetectionResponseUnmarshaller, 
  AWS.Rekognition.Model.StartPersonTrackingResponse, 
  AWS.Rekognition.Model.StartPersonTrackingRequest, 
  AWS.Rekognition.Transform.StartPersonTrackingRequestMarshaller, 
  AWS.Rekognition.Transform.StartPersonTrackingResponseUnmarshaller, 
  AWS.Rekognition.Model.StartProjectVersionResponse, 
  AWS.Rekognition.Model.StartProjectVersionRequest, 
  AWS.Rekognition.Transform.StartProjectVersionRequestMarshaller, 
  AWS.Rekognition.Transform.StartProjectVersionResponseUnmarshaller, 
  AWS.Rekognition.Model.StartSegmentDetectionResponse, 
  AWS.Rekognition.Model.StartSegmentDetectionRequest, 
  AWS.Rekognition.Transform.StartSegmentDetectionRequestMarshaller, 
  AWS.Rekognition.Transform.StartSegmentDetectionResponseUnmarshaller, 
  AWS.Rekognition.Model.StartStreamProcessorResponse, 
  AWS.Rekognition.Model.StartStreamProcessorRequest, 
  AWS.Rekognition.Transform.StartStreamProcessorRequestMarshaller, 
  AWS.Rekognition.Transform.StartStreamProcessorResponseUnmarshaller, 
  AWS.Rekognition.Model.StartTextDetectionResponse, 
  AWS.Rekognition.Model.StartTextDetectionRequest, 
  AWS.Rekognition.Transform.StartTextDetectionRequestMarshaller, 
  AWS.Rekognition.Transform.StartTextDetectionResponseUnmarshaller, 
  AWS.Rekognition.Model.StopProjectVersionResponse, 
  AWS.Rekognition.Model.StopProjectVersionRequest, 
  AWS.Rekognition.Transform.StopProjectVersionRequestMarshaller, 
  AWS.Rekognition.Transform.StopProjectVersionResponseUnmarshaller, 
  AWS.Rekognition.Model.StopStreamProcessorResponse, 
  AWS.Rekognition.Model.StopStreamProcessorRequest, 
  AWS.Rekognition.Transform.StopStreamProcessorRequestMarshaller, 
  AWS.Rekognition.Transform.StopStreamProcessorResponseUnmarshaller, 
  AWS.Rekognition.Model.TagResourceResponse, 
  AWS.Rekognition.Model.TagResourceRequest, 
  AWS.Rekognition.Transform.TagResourceRequestMarshaller, 
  AWS.Rekognition.Transform.TagResourceResponseUnmarshaller, 
  AWS.Rekognition.Model.UntagResourceResponse, 
  AWS.Rekognition.Model.UntagResourceRequest, 
  AWS.Rekognition.Transform.UntagResourceRequestMarshaller, 
  AWS.Rekognition.Transform.UntagResourceResponseUnmarshaller, 
  AWS.Rekognition.Model.UpdateDatasetEntriesResponse, 
  AWS.Rekognition.Model.UpdateDatasetEntriesRequest, 
  AWS.Rekognition.Transform.UpdateDatasetEntriesRequestMarshaller, 
  AWS.Rekognition.Transform.UpdateDatasetEntriesResponseUnmarshaller, 
  AWS.Rekognition.Model.UpdateStreamProcessorResponse, 
  AWS.Rekognition.Model.UpdateStreamProcessorRequest, 
  AWS.Rekognition.Transform.UpdateStreamProcessorRequestMarshaller, 
  AWS.Rekognition.Transform.UpdateStreamProcessorResponseUnmarshaller;

type
  TAmazonRekognitionClient = class(TAmazonServiceClient, IAmazonRekognition)
  strict private
    class var FServiceMetadata: IServiceMetadata;
  private
    class constructor Create;
  strict protected
    function GetServiceMetadata: IServiceMetadata; override;
    function CreateSigner: TAbstractAWSSigner; override;
  public
    constructor Create; reintroduce; overload;
    constructor Create(Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(Config: IClientConfig); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(Credentials: IAWSCredentials; Config: IClientConfig); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx); reintroduce; overload;
    constructor Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig); reintroduce; overload;
    function CompareFaces(Request: ICompareFacesRequest): ICompareFacesResponse; overload;
    function CreateCollection(Request: ICreateCollectionRequest): ICreateCollectionResponse; overload;
    function CreateDataset(Request: ICreateDatasetRequest): ICreateDatasetResponse; overload;
    function CreateProject(Request: ICreateProjectRequest): ICreateProjectResponse; overload;
    function CreateProjectVersion(Request: ICreateProjectVersionRequest): ICreateProjectVersionResponse; overload;
    function CreateStreamProcessor(Request: ICreateStreamProcessorRequest): ICreateStreamProcessorResponse; overload;
    function DeleteCollection(Request: IDeleteCollectionRequest): IDeleteCollectionResponse; overload;
    function DeleteDataset(Request: IDeleteDatasetRequest): IDeleteDatasetResponse; overload;
    function DeleteFaces(Request: IDeleteFacesRequest): IDeleteFacesResponse; overload;
    function DeleteProject(Request: IDeleteProjectRequest): IDeleteProjectResponse; overload;
    function DeleteProjectVersion(Request: IDeleteProjectVersionRequest): IDeleteProjectVersionResponse; overload;
    function DeleteStreamProcessor(Request: IDeleteStreamProcessorRequest): IDeleteStreamProcessorResponse; overload;
    function DescribeCollection(Request: IDescribeCollectionRequest): IDescribeCollectionResponse; overload;
    function DescribeDataset(Request: IDescribeDatasetRequest): IDescribeDatasetResponse; overload;
    function DescribeProjectVersions(Request: IDescribeProjectVersionsRequest): IDescribeProjectVersionsResponse; overload;
    function DescribeProjects(Request: IDescribeProjectsRequest): IDescribeProjectsResponse; overload;
    function DescribeStreamProcessor(Request: IDescribeStreamProcessorRequest): IDescribeStreamProcessorResponse; overload;
    function DetectCustomLabels(Request: IDetectCustomLabelsRequest): IDetectCustomLabelsResponse; overload;
    function DetectFaces(Request: IDetectFacesRequest): IDetectFacesResponse; overload;
    function DetectLabels(Request: IDetectLabelsRequest): IDetectLabelsResponse; overload;
    function DetectModerationLabels(Request: IDetectModerationLabelsRequest): IDetectModerationLabelsResponse; overload;
    function DetectProtectiveEquipment(Request: IDetectProtectiveEquipmentRequest): IDetectProtectiveEquipmentResponse; overload;
    function DetectText(Request: IDetectTextRequest): IDetectTextResponse; overload;
    function DistributeDatasetEntries(Request: IDistributeDatasetEntriesRequest): IDistributeDatasetEntriesResponse; overload;
    function GetCelebrityInfo(Request: IGetCelebrityInfoRequest): IGetCelebrityInfoResponse; overload;
    function GetCelebrityRecognition(Request: IGetCelebrityRecognitionRequest): IGetCelebrityRecognitionResponse; overload;
    function GetContentModeration(Request: IGetContentModerationRequest): IGetContentModerationResponse; overload;
    function GetFaceDetection(Request: IGetFaceDetectionRequest): IGetFaceDetectionResponse; overload;
    function GetFaceSearch(Request: IGetFaceSearchRequest): IGetFaceSearchResponse; overload;
    function GetLabelDetection(Request: IGetLabelDetectionRequest): IGetLabelDetectionResponse; overload;
    function GetPersonTracking(Request: IGetPersonTrackingRequest): IGetPersonTrackingResponse; overload;
    function GetSegmentDetection(Request: IGetSegmentDetectionRequest): IGetSegmentDetectionResponse; overload;
    function GetTextDetection(Request: IGetTextDetectionRequest): IGetTextDetectionResponse; overload;
    function IndexFaces(Request: IIndexFacesRequest): IIndexFacesResponse; overload;
    function ListCollections(Request: IListCollectionsRequest): IListCollectionsResponse; overload;
    function ListDatasetEntries(Request: IListDatasetEntriesRequest): IListDatasetEntriesResponse; overload;
    function ListDatasetLabels(Request: IListDatasetLabelsRequest): IListDatasetLabelsResponse; overload;
    function ListFaces(Request: IListFacesRequest): IListFacesResponse; overload;
    function ListStreamProcessors(Request: IListStreamProcessorsRequest): IListStreamProcessorsResponse; overload;
    function ListTagsForResource(Request: IListTagsForResourceRequest): IListTagsForResourceResponse; overload;
    function RecognizeCelebrities(Request: IRecognizeCelebritiesRequest): IRecognizeCelebritiesResponse; overload;
    function SearchFaces(Request: ISearchFacesRequest): ISearchFacesResponse; overload;
    function SearchFacesByImage(Request: ISearchFacesByImageRequest): ISearchFacesByImageResponse; overload;
    function StartCelebrityRecognition(Request: IStartCelebrityRecognitionRequest): IStartCelebrityRecognitionResponse; overload;
    function StartContentModeration(Request: IStartContentModerationRequest): IStartContentModerationResponse; overload;
    function StartFaceDetection(Request: IStartFaceDetectionRequest): IStartFaceDetectionResponse; overload;
    function StartFaceSearch(Request: IStartFaceSearchRequest): IStartFaceSearchResponse; overload;
    function StartLabelDetection(Request: IStartLabelDetectionRequest): IStartLabelDetectionResponse; overload;
    function StartPersonTracking(Request: IStartPersonTrackingRequest): IStartPersonTrackingResponse; overload;
    function StartProjectVersion(Request: IStartProjectVersionRequest): IStartProjectVersionResponse; overload;
    function StartSegmentDetection(Request: IStartSegmentDetectionRequest): IStartSegmentDetectionResponse; overload;
    function StartStreamProcessor(Request: IStartStreamProcessorRequest): IStartStreamProcessorResponse; overload;
    function StartTextDetection(Request: IStartTextDetectionRequest): IStartTextDetectionResponse; overload;
    function StopProjectVersion(Request: IStopProjectVersionRequest): IStopProjectVersionResponse; overload;
    function StopStreamProcessor(Request: IStopStreamProcessorRequest): IStopStreamProcessorResponse; overload;
    function TagResource(Request: ITagResourceRequest): ITagResourceResponse; overload;
    function UntagResource(Request: IUntagResourceRequest): IUntagResourceResponse; overload;
    function UpdateDatasetEntries(Request: IUpdateDatasetEntriesRequest): IUpdateDatasetEntriesResponse; overload;
    function UpdateStreamProcessor(Request: IUpdateStreamProcessorRequest): IUpdateStreamProcessorResponse; overload;
  end;
  
implementation

{ TAmazonRekognitionClient }

constructor TAmazonRekognitionClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonRekognitionConfig.Create);
end;

constructor TAmazonRekognitionClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonRekognitionConfig.Create(Region));
end;

constructor TAmazonRekognitionClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonRekognitionClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonRekognitionConfig.Create);
end;

constructor TAmazonRekognitionClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonRekognitionConfig.Create(Region));
end;

constructor TAmazonRekognitionClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonRekognitionClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonRekognitionConfig.Create);
end;

constructor TAmazonRekognitionClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonRekognitionConfig.Create(Region));
end;

constructor TAmazonRekognitionClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonRekognitionClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonRekognitionConfig.Create);
end;

constructor TAmazonRekognitionClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonRekognitionConfig.Create(Region));
end;

constructor TAmazonRekognitionClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonRekognitionClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonRekognitionClient.Create;
begin
  FServiceMetadata := TAmazonRekognitionMetadata.Create;
end;

function TAmazonRekognitionClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TAWS4Signer.Create;
end;

function TAmazonRekognitionClient.CompareFaces(Request: ICompareFacesRequest): ICompareFacesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCompareFacesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCompareFacesResponseUnmarshaller.Instance;
    Result := Invoke<TCompareFacesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.CreateCollection(Request: ICreateCollectionRequest): ICreateCollectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateCollectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateCollectionResponseUnmarshaller.Instance;
    Result := Invoke<TCreateCollectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.CreateDataset(Request: ICreateDatasetRequest): ICreateDatasetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateDatasetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateDatasetResponseUnmarshaller.Instance;
    Result := Invoke<TCreateDatasetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.CreateProject(Request: ICreateProjectRequest): ICreateProjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateProjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateProjectResponseUnmarshaller.Instance;
    Result := Invoke<TCreateProjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.CreateProjectVersion(Request: ICreateProjectVersionRequest): ICreateProjectVersionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateProjectVersionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateProjectVersionResponseUnmarshaller.Instance;
    Result := Invoke<TCreateProjectVersionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.CreateStreamProcessor(Request: ICreateStreamProcessorRequest): ICreateStreamProcessorResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateStreamProcessorRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateStreamProcessorResponseUnmarshaller.Instance;
    Result := Invoke<TCreateStreamProcessorResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DeleteCollection(Request: IDeleteCollectionRequest): IDeleteCollectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteCollectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteCollectionResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteCollectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DeleteDataset(Request: IDeleteDatasetRequest): IDeleteDatasetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteDatasetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteDatasetResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteDatasetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DeleteFaces(Request: IDeleteFacesRequest): IDeleteFacesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteFacesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteFacesResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteFacesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DeleteProject(Request: IDeleteProjectRequest): IDeleteProjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteProjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteProjectResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteProjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DeleteProjectVersion(Request: IDeleteProjectVersionRequest): IDeleteProjectVersionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteProjectVersionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteProjectVersionResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteProjectVersionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DeleteStreamProcessor(Request: IDeleteStreamProcessorRequest): IDeleteStreamProcessorResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteStreamProcessorRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteStreamProcessorResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteStreamProcessorResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DescribeCollection(Request: IDescribeCollectionRequest): IDescribeCollectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeCollectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeCollectionResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeCollectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DescribeDataset(Request: IDescribeDatasetRequest): IDescribeDatasetResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeDatasetRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeDatasetResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeDatasetResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DescribeProjectVersions(Request: IDescribeProjectVersionsRequest): IDescribeProjectVersionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeProjectVersionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeProjectVersionsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeProjectVersionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DescribeProjects(Request: IDescribeProjectsRequest): IDescribeProjectsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeProjectsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeProjectsResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeProjectsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DescribeStreamProcessor(Request: IDescribeStreamProcessorRequest): IDescribeStreamProcessorResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeStreamProcessorRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeStreamProcessorResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeStreamProcessorResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DetectCustomLabels(Request: IDetectCustomLabelsRequest): IDetectCustomLabelsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDetectCustomLabelsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDetectCustomLabelsResponseUnmarshaller.Instance;
    Result := Invoke<TDetectCustomLabelsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DetectFaces(Request: IDetectFacesRequest): IDetectFacesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDetectFacesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDetectFacesResponseUnmarshaller.Instance;
    Result := Invoke<TDetectFacesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DetectLabels(Request: IDetectLabelsRequest): IDetectLabelsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDetectLabelsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDetectLabelsResponseUnmarshaller.Instance;
    Result := Invoke<TDetectLabelsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DetectModerationLabels(Request: IDetectModerationLabelsRequest): IDetectModerationLabelsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDetectModerationLabelsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDetectModerationLabelsResponseUnmarshaller.Instance;
    Result := Invoke<TDetectModerationLabelsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DetectProtectiveEquipment(Request: IDetectProtectiveEquipmentRequest): IDetectProtectiveEquipmentResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDetectProtectiveEquipmentRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDetectProtectiveEquipmentResponseUnmarshaller.Instance;
    Result := Invoke<TDetectProtectiveEquipmentResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DetectText(Request: IDetectTextRequest): IDetectTextResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDetectTextRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDetectTextResponseUnmarshaller.Instance;
    Result := Invoke<TDetectTextResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.DistributeDatasetEntries(Request: IDistributeDatasetEntriesRequest): IDistributeDatasetEntriesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDistributeDatasetEntriesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDistributeDatasetEntriesResponseUnmarshaller.Instance;
    Result := Invoke<TDistributeDatasetEntriesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.GetCelebrityInfo(Request: IGetCelebrityInfoRequest): IGetCelebrityInfoResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetCelebrityInfoRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetCelebrityInfoResponseUnmarshaller.Instance;
    Result := Invoke<TGetCelebrityInfoResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.GetCelebrityRecognition(Request: IGetCelebrityRecognitionRequest): IGetCelebrityRecognitionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetCelebrityRecognitionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetCelebrityRecognitionResponseUnmarshaller.Instance;
    Result := Invoke<TGetCelebrityRecognitionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.GetContentModeration(Request: IGetContentModerationRequest): IGetContentModerationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetContentModerationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetContentModerationResponseUnmarshaller.Instance;
    Result := Invoke<TGetContentModerationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.GetFaceDetection(Request: IGetFaceDetectionRequest): IGetFaceDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetFaceDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetFaceDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TGetFaceDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.GetFaceSearch(Request: IGetFaceSearchRequest): IGetFaceSearchResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetFaceSearchRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetFaceSearchResponseUnmarshaller.Instance;
    Result := Invoke<TGetFaceSearchResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.GetLabelDetection(Request: IGetLabelDetectionRequest): IGetLabelDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetLabelDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetLabelDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TGetLabelDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.GetPersonTracking(Request: IGetPersonTrackingRequest): IGetPersonTrackingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetPersonTrackingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetPersonTrackingResponseUnmarshaller.Instance;
    Result := Invoke<TGetPersonTrackingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.GetSegmentDetection(Request: IGetSegmentDetectionRequest): IGetSegmentDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetSegmentDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetSegmentDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TGetSegmentDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.GetTextDetection(Request: IGetTextDetectionRequest): IGetTextDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetTextDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetTextDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TGetTextDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.IndexFaces(Request: IIndexFacesRequest): IIndexFacesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TIndexFacesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TIndexFacesResponseUnmarshaller.Instance;
    Result := Invoke<TIndexFacesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.ListCollections(Request: IListCollectionsRequest): IListCollectionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListCollectionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListCollectionsResponseUnmarshaller.Instance;
    Result := Invoke<TListCollectionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.ListDatasetEntries(Request: IListDatasetEntriesRequest): IListDatasetEntriesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListDatasetEntriesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListDatasetEntriesResponseUnmarshaller.Instance;
    Result := Invoke<TListDatasetEntriesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.ListDatasetLabels(Request: IListDatasetLabelsRequest): IListDatasetLabelsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListDatasetLabelsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListDatasetLabelsResponseUnmarshaller.Instance;
    Result := Invoke<TListDatasetLabelsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.ListFaces(Request: IListFacesRequest): IListFacesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListFacesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListFacesResponseUnmarshaller.Instance;
    Result := Invoke<TListFacesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.ListStreamProcessors(Request: IListStreamProcessorsRequest): IListStreamProcessorsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListStreamProcessorsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListStreamProcessorsResponseUnmarshaller.Instance;
    Result := Invoke<TListStreamProcessorsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.ListTagsForResource(Request: IListTagsForResourceRequest): IListTagsForResourceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListTagsForResourceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListTagsForResourceResponseUnmarshaller.Instance;
    Result := Invoke<TListTagsForResourceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.RecognizeCelebrities(Request: IRecognizeCelebritiesRequest): IRecognizeCelebritiesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TRecognizeCelebritiesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TRecognizeCelebritiesResponseUnmarshaller.Instance;
    Result := Invoke<TRecognizeCelebritiesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.SearchFaces(Request: ISearchFacesRequest): ISearchFacesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSearchFacesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSearchFacesResponseUnmarshaller.Instance;
    Result := Invoke<TSearchFacesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.SearchFacesByImage(Request: ISearchFacesByImageRequest): ISearchFacesByImageResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TSearchFacesByImageRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TSearchFacesByImageResponseUnmarshaller.Instance;
    Result := Invoke<TSearchFacesByImageResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartCelebrityRecognition(Request: IStartCelebrityRecognitionRequest): IStartCelebrityRecognitionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartCelebrityRecognitionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartCelebrityRecognitionResponseUnmarshaller.Instance;
    Result := Invoke<TStartCelebrityRecognitionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartContentModeration(Request: IStartContentModerationRequest): IStartContentModerationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartContentModerationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartContentModerationResponseUnmarshaller.Instance;
    Result := Invoke<TStartContentModerationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartFaceDetection(Request: IStartFaceDetectionRequest): IStartFaceDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartFaceDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartFaceDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TStartFaceDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartFaceSearch(Request: IStartFaceSearchRequest): IStartFaceSearchResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartFaceSearchRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartFaceSearchResponseUnmarshaller.Instance;
    Result := Invoke<TStartFaceSearchResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartLabelDetection(Request: IStartLabelDetectionRequest): IStartLabelDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartLabelDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartLabelDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TStartLabelDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartPersonTracking(Request: IStartPersonTrackingRequest): IStartPersonTrackingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartPersonTrackingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartPersonTrackingResponseUnmarshaller.Instance;
    Result := Invoke<TStartPersonTrackingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartProjectVersion(Request: IStartProjectVersionRequest): IStartProjectVersionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartProjectVersionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartProjectVersionResponseUnmarshaller.Instance;
    Result := Invoke<TStartProjectVersionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartSegmentDetection(Request: IStartSegmentDetectionRequest): IStartSegmentDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartSegmentDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartSegmentDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TStartSegmentDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartStreamProcessor(Request: IStartStreamProcessorRequest): IStartStreamProcessorResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartStreamProcessorRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartStreamProcessorResponseUnmarshaller.Instance;
    Result := Invoke<TStartStreamProcessorResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StartTextDetection(Request: IStartTextDetectionRequest): IStartTextDetectionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStartTextDetectionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStartTextDetectionResponseUnmarshaller.Instance;
    Result := Invoke<TStartTextDetectionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StopProjectVersion(Request: IStopProjectVersionRequest): IStopProjectVersionResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStopProjectVersionRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStopProjectVersionResponseUnmarshaller.Instance;
    Result := Invoke<TStopProjectVersionResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.StopStreamProcessor(Request: IStopStreamProcessorRequest): IStopStreamProcessorResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TStopStreamProcessorRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TStopStreamProcessorResponseUnmarshaller.Instance;
    Result := Invoke<TStopStreamProcessorResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.TagResource(Request: ITagResourceRequest): ITagResourceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TTagResourceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TTagResourceResponseUnmarshaller.Instance;
    Result := Invoke<TTagResourceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.UntagResource(Request: IUntagResourceRequest): IUntagResourceResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUntagResourceRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUntagResourceResponseUnmarshaller.Instance;
    Result := Invoke<TUntagResourceResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.UpdateDatasetEntries(Request: IUpdateDatasetEntriesRequest): IUpdateDatasetEntriesResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateDatasetEntriesRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateDatasetEntriesResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateDatasetEntriesResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonRekognitionClient.UpdateStreamProcessor(Request: IUpdateStreamProcessorRequest): IUpdateStreamProcessorResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateStreamProcessorRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateStreamProcessorResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateStreamProcessorResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
