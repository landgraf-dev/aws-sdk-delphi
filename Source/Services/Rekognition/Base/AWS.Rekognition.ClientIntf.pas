unit AWS.Rekognition.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.Rekognition.Model.CompareFacesResponse, 
  AWS.Rekognition.Model.CompareFacesRequest, 
  AWS.Rekognition.Model.CreateCollectionResponse, 
  AWS.Rekognition.Model.CreateCollectionRequest, 
  AWS.Rekognition.Model.CreateDatasetResponse, 
  AWS.Rekognition.Model.CreateDatasetRequest, 
  AWS.Rekognition.Model.CreateProjectResponse, 
  AWS.Rekognition.Model.CreateProjectRequest, 
  AWS.Rekognition.Model.CreateProjectVersionResponse, 
  AWS.Rekognition.Model.CreateProjectVersionRequest, 
  AWS.Rekognition.Model.CreateStreamProcessorResponse, 
  AWS.Rekognition.Model.CreateStreamProcessorRequest, 
  AWS.Rekognition.Model.DeleteCollectionResponse, 
  AWS.Rekognition.Model.DeleteCollectionRequest, 
  AWS.Rekognition.Model.DeleteDatasetResponse, 
  AWS.Rekognition.Model.DeleteDatasetRequest, 
  AWS.Rekognition.Model.DeleteFacesResponse, 
  AWS.Rekognition.Model.DeleteFacesRequest, 
  AWS.Rekognition.Model.DeleteProjectResponse, 
  AWS.Rekognition.Model.DeleteProjectRequest, 
  AWS.Rekognition.Model.DeleteProjectVersionResponse, 
  AWS.Rekognition.Model.DeleteProjectVersionRequest, 
  AWS.Rekognition.Model.DeleteStreamProcessorResponse, 
  AWS.Rekognition.Model.DeleteStreamProcessorRequest, 
  AWS.Rekognition.Model.DescribeCollectionResponse, 
  AWS.Rekognition.Model.DescribeCollectionRequest, 
  AWS.Rekognition.Model.DescribeDatasetResponse, 
  AWS.Rekognition.Model.DescribeDatasetRequest, 
  AWS.Rekognition.Model.DescribeProjectVersionsResponse, 
  AWS.Rekognition.Model.DescribeProjectVersionsRequest, 
  AWS.Rekognition.Model.DescribeProjectsResponse, 
  AWS.Rekognition.Model.DescribeProjectsRequest, 
  AWS.Rekognition.Model.DescribeStreamProcessorResponse, 
  AWS.Rekognition.Model.DescribeStreamProcessorRequest, 
  AWS.Rekognition.Model.DetectCustomLabelsResponse, 
  AWS.Rekognition.Model.DetectCustomLabelsRequest, 
  AWS.Rekognition.Model.DetectFacesResponse, 
  AWS.Rekognition.Model.DetectFacesRequest, 
  AWS.Rekognition.Model.DetectLabelsResponse, 
  AWS.Rekognition.Model.DetectLabelsRequest, 
  AWS.Rekognition.Model.DetectModerationLabelsResponse, 
  AWS.Rekognition.Model.DetectModerationLabelsRequest, 
  AWS.Rekognition.Model.DetectProtectiveEquipmentResponse, 
  AWS.Rekognition.Model.DetectProtectiveEquipmentRequest, 
  AWS.Rekognition.Model.DetectTextResponse, 
  AWS.Rekognition.Model.DetectTextRequest, 
  AWS.Rekognition.Model.DistributeDatasetEntriesResponse, 
  AWS.Rekognition.Model.DistributeDatasetEntriesRequest, 
  AWS.Rekognition.Model.GetCelebrityInfoResponse, 
  AWS.Rekognition.Model.GetCelebrityInfoRequest, 
  AWS.Rekognition.Model.GetCelebrityRecognitionResponse, 
  AWS.Rekognition.Model.GetCelebrityRecognitionRequest, 
  AWS.Rekognition.Model.GetContentModerationResponse, 
  AWS.Rekognition.Model.GetContentModerationRequest, 
  AWS.Rekognition.Model.GetFaceDetectionResponse, 
  AWS.Rekognition.Model.GetFaceDetectionRequest, 
  AWS.Rekognition.Model.GetFaceSearchResponse, 
  AWS.Rekognition.Model.GetFaceSearchRequest, 
  AWS.Rekognition.Model.GetLabelDetectionResponse, 
  AWS.Rekognition.Model.GetLabelDetectionRequest, 
  AWS.Rekognition.Model.GetPersonTrackingResponse, 
  AWS.Rekognition.Model.GetPersonTrackingRequest, 
  AWS.Rekognition.Model.GetSegmentDetectionResponse, 
  AWS.Rekognition.Model.GetSegmentDetectionRequest, 
  AWS.Rekognition.Model.GetTextDetectionResponse, 
  AWS.Rekognition.Model.GetTextDetectionRequest, 
  AWS.Rekognition.Model.IndexFacesResponse, 
  AWS.Rekognition.Model.IndexFacesRequest, 
  AWS.Rekognition.Model.ListCollectionsResponse, 
  AWS.Rekognition.Model.ListCollectionsRequest, 
  AWS.Rekognition.Model.ListDatasetEntriesResponse, 
  AWS.Rekognition.Model.ListDatasetEntriesRequest, 
  AWS.Rekognition.Model.ListDatasetLabelsResponse, 
  AWS.Rekognition.Model.ListDatasetLabelsRequest, 
  AWS.Rekognition.Model.ListFacesResponse, 
  AWS.Rekognition.Model.ListFacesRequest, 
  AWS.Rekognition.Model.ListStreamProcessorsResponse, 
  AWS.Rekognition.Model.ListStreamProcessorsRequest, 
  AWS.Rekognition.Model.ListTagsForResourceResponse, 
  AWS.Rekognition.Model.ListTagsForResourceRequest, 
  AWS.Rekognition.Model.RecognizeCelebritiesResponse, 
  AWS.Rekognition.Model.RecognizeCelebritiesRequest, 
  AWS.Rekognition.Model.SearchFacesResponse, 
  AWS.Rekognition.Model.SearchFacesRequest, 
  AWS.Rekognition.Model.SearchFacesByImageResponse, 
  AWS.Rekognition.Model.SearchFacesByImageRequest, 
  AWS.Rekognition.Model.StartCelebrityRecognitionResponse, 
  AWS.Rekognition.Model.StartCelebrityRecognitionRequest, 
  AWS.Rekognition.Model.StartContentModerationResponse, 
  AWS.Rekognition.Model.StartContentModerationRequest, 
  AWS.Rekognition.Model.StartFaceDetectionResponse, 
  AWS.Rekognition.Model.StartFaceDetectionRequest, 
  AWS.Rekognition.Model.StartFaceSearchResponse, 
  AWS.Rekognition.Model.StartFaceSearchRequest, 
  AWS.Rekognition.Model.StartLabelDetectionResponse, 
  AWS.Rekognition.Model.StartLabelDetectionRequest, 
  AWS.Rekognition.Model.StartPersonTrackingResponse, 
  AWS.Rekognition.Model.StartPersonTrackingRequest, 
  AWS.Rekognition.Model.StartProjectVersionResponse, 
  AWS.Rekognition.Model.StartProjectVersionRequest, 
  AWS.Rekognition.Model.StartSegmentDetectionResponse, 
  AWS.Rekognition.Model.StartSegmentDetectionRequest, 
  AWS.Rekognition.Model.StartStreamProcessorResponse, 
  AWS.Rekognition.Model.StartStreamProcessorRequest, 
  AWS.Rekognition.Model.StartTextDetectionResponse, 
  AWS.Rekognition.Model.StartTextDetectionRequest, 
  AWS.Rekognition.Model.StopProjectVersionResponse, 
  AWS.Rekognition.Model.StopProjectVersionRequest, 
  AWS.Rekognition.Model.StopStreamProcessorResponse, 
  AWS.Rekognition.Model.StopStreamProcessorRequest, 
  AWS.Rekognition.Model.TagResourceResponse, 
  AWS.Rekognition.Model.TagResourceRequest, 
  AWS.Rekognition.Model.UntagResourceResponse, 
  AWS.Rekognition.Model.UntagResourceRequest, 
  AWS.Rekognition.Model.UpdateDatasetEntriesResponse, 
  AWS.Rekognition.Model.UpdateDatasetEntriesRequest, 
  AWS.Rekognition.Model.UpdateStreamProcessorResponse, 
  AWS.Rekognition.Model.UpdateStreamProcessorRequest;

type
  IAmazonRekognition = interface(IAmazonService)
    ['{5A9CBF3F-FCD2-40A4-AE55-2C1EACE8C8C5}']
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

end.
