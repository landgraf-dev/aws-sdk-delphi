unit AWS.S3Control.Client;

interface

uses
  AWS.Runtime.Client, 
  AWS.S3Control.ClientIntf, 
  AWS.S3Control.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.S3Control.Metadata, 
  AWS.Auth.Signer, 
  AWS.Auth.S3Signer, 
  AWS.Internal.RuntimePipeline, 
  AWS.Pipeline.Marshaller, 
  AWS.S3Control.Pipeline.PreMarshallHandler, 
  AWS.S3Control.Pipeline.PostMarshallHandler, 
  AWS.Pipeline.Unmarshaller, 
  AWS.S3Control.Pipeline.PostUnmarshallHandler, 
  AWS.Pipeline.ErrorCallbackHandler, 
  AWS.S3Control.Pipeline.ExceptionHandler, 
  AWS.S3Control.Model.CreateAccessPointResponse, 
  AWS.S3Control.Model.CreateAccessPointRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.S3Control.Transform.CreateAccessPointRequestMarshaller, 
  AWS.S3Control.Transform.CreateAccessPointResponseUnmarshaller, 
  AWS.S3Control.Model.CreateAccessPointForObjectLambdaResponse, 
  AWS.S3Control.Model.CreateAccessPointForObjectLambdaRequest, 
  AWS.S3Control.Transform.CreateAccessPointForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.CreateAccessPointForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.CreateBucketResponse, 
  AWS.S3Control.Model.CreateBucketRequest, 
  AWS.S3Control.Transform.CreateBucketRequestMarshaller, 
  AWS.S3Control.Transform.CreateBucketResponseUnmarshaller, 
  AWS.S3Control.Model.CreateJobResponse, 
  AWS.S3Control.Model.CreateJobRequest, 
  AWS.S3Control.Transform.CreateJobRequestMarshaller, 
  AWS.S3Control.Transform.CreateJobResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteAccessPointResponse, 
  AWS.S3Control.Model.DeleteAccessPointRequest, 
  AWS.S3Control.Transform.DeleteAccessPointRequestMarshaller, 
  AWS.S3Control.Transform.DeleteAccessPointResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteAccessPointForObjectLambdaResponse, 
  AWS.S3Control.Model.DeleteAccessPointForObjectLambdaRequest, 
  AWS.S3Control.Transform.DeleteAccessPointForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.DeleteAccessPointForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteAccessPointPolicyResponse, 
  AWS.S3Control.Model.DeleteAccessPointPolicyRequest, 
  AWS.S3Control.Transform.DeleteAccessPointPolicyRequestMarshaller, 
  AWS.S3Control.Transform.DeleteAccessPointPolicyResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaResponse, 
  AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaRequest, 
  AWS.S3Control.Transform.DeleteAccessPointPolicyForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.DeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteBucketResponse, 
  AWS.S3Control.Model.DeleteBucketRequest, 
  AWS.S3Control.Transform.DeleteBucketRequestMarshaller, 
  AWS.S3Control.Transform.DeleteBucketResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteBucketLifecycleConfigurationResponse, 
  AWS.S3Control.Model.DeleteBucketLifecycleConfigurationRequest, 
  AWS.S3Control.Transform.DeleteBucketLifecycleConfigurationRequestMarshaller, 
  AWS.S3Control.Transform.DeleteBucketLifecycleConfigurationResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteBucketPolicyResponse, 
  AWS.S3Control.Model.DeleteBucketPolicyRequest, 
  AWS.S3Control.Transform.DeleteBucketPolicyRequestMarshaller, 
  AWS.S3Control.Transform.DeleteBucketPolicyResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteBucketTaggingResponse, 
  AWS.S3Control.Model.DeleteBucketTaggingRequest, 
  AWS.S3Control.Transform.DeleteBucketTaggingRequestMarshaller, 
  AWS.S3Control.Transform.DeleteBucketTaggingResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteJobTaggingResponse, 
  AWS.S3Control.Model.DeleteJobTaggingRequest, 
  AWS.S3Control.Transform.DeleteJobTaggingRequestMarshaller, 
  AWS.S3Control.Transform.DeleteJobTaggingResponseUnmarshaller, 
  AWS.S3Control.Model.DeletePublicAccessBlockResponse, 
  AWS.S3Control.Model.DeletePublicAccessBlockRequest, 
  AWS.S3Control.Transform.DeletePublicAccessBlockRequestMarshaller, 
  AWS.S3Control.Transform.DeletePublicAccessBlockResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationResponse, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationRequest, 
  AWS.S3Control.Transform.DeleteStorageLensConfigurationRequestMarshaller, 
  AWS.S3Control.Transform.DeleteStorageLensConfigurationResponseUnmarshaller, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingResponse, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingRequest, 
  AWS.S3Control.Transform.DeleteStorageLensConfigurationTaggingRequestMarshaller, 
  AWS.S3Control.Transform.DeleteStorageLensConfigurationTaggingResponseUnmarshaller, 
  AWS.S3Control.Model.DescribeJobResponse, 
  AWS.S3Control.Model.DescribeJobRequest, 
  AWS.S3Control.Transform.DescribeJobRequestMarshaller, 
  AWS.S3Control.Transform.DescribeJobResponseUnmarshaller, 
  AWS.S3Control.Model.GetAccessPointResponse, 
  AWS.S3Control.Model.GetAccessPointRequest, 
  AWS.S3Control.Transform.GetAccessPointRequestMarshaller, 
  AWS.S3Control.Transform.GetAccessPointResponseUnmarshaller, 
  AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaRequest, 
  AWS.S3Control.Transform.GetAccessPointConfigurationForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.GetAccessPointConfigurationForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.GetAccessPointForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointForObjectLambdaRequest, 
  AWS.S3Control.Transform.GetAccessPointForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.GetAccessPointForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.GetAccessPointPolicyResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyRequest, 
  AWS.S3Control.Transform.GetAccessPointPolicyRequestMarshaller, 
  AWS.S3Control.Transform.GetAccessPointPolicyResponseUnmarshaller, 
  AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaRequest, 
  AWS.S3Control.Transform.GetAccessPointPolicyForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.GetAccessPointPolicyForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusRequest, 
  AWS.S3Control.Transform.GetAccessPointPolicyStatusRequestMarshaller, 
  AWS.S3Control.Transform.GetAccessPointPolicyStatusResponseUnmarshaller, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaRequest, 
  AWS.S3Control.Transform.GetAccessPointPolicyStatusForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.GetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.GetBucketResponse, 
  AWS.S3Control.Model.GetBucketRequest, 
  AWS.S3Control.Transform.GetBucketRequestMarshaller, 
  AWS.S3Control.Transform.GetBucketResponseUnmarshaller, 
  AWS.S3Control.Model.GetBucketLifecycleConfigurationResponse, 
  AWS.S3Control.Model.GetBucketLifecycleConfigurationRequest, 
  AWS.S3Control.Transform.GetBucketLifecycleConfigurationRequestMarshaller, 
  AWS.S3Control.Transform.GetBucketLifecycleConfigurationResponseUnmarshaller, 
  AWS.S3Control.Model.GetBucketPolicyResponse, 
  AWS.S3Control.Model.GetBucketPolicyRequest, 
  AWS.S3Control.Transform.GetBucketPolicyRequestMarshaller, 
  AWS.S3Control.Transform.GetBucketPolicyResponseUnmarshaller, 
  AWS.S3Control.Model.GetBucketTaggingResponse, 
  AWS.S3Control.Model.GetBucketTaggingRequest, 
  AWS.S3Control.Transform.GetBucketTaggingRequestMarshaller, 
  AWS.S3Control.Transform.GetBucketTaggingResponseUnmarshaller, 
  AWS.S3Control.Model.GetJobTaggingResponse, 
  AWS.S3Control.Model.GetJobTaggingRequest, 
  AWS.S3Control.Transform.GetJobTaggingRequestMarshaller, 
  AWS.S3Control.Transform.GetJobTaggingResponseUnmarshaller, 
  AWS.S3Control.Model.GetPublicAccessBlockResponse, 
  AWS.S3Control.Model.GetPublicAccessBlockRequest, 
  AWS.S3Control.Transform.GetPublicAccessBlockRequestMarshaller, 
  AWS.S3Control.Transform.GetPublicAccessBlockResponseUnmarshaller, 
  AWS.S3Control.Model.GetStorageLensConfigurationResponse, 
  AWS.S3Control.Model.GetStorageLensConfigurationRequest, 
  AWS.S3Control.Transform.GetStorageLensConfigurationRequestMarshaller, 
  AWS.S3Control.Transform.GetStorageLensConfigurationResponseUnmarshaller, 
  AWS.S3Control.Model.GetStorageLensConfigurationTaggingResponse, 
  AWS.S3Control.Model.GetStorageLensConfigurationTaggingRequest, 
  AWS.S3Control.Transform.GetStorageLensConfigurationTaggingRequestMarshaller, 
  AWS.S3Control.Transform.GetStorageLensConfigurationTaggingResponseUnmarshaller, 
  AWS.S3Control.Model.ListAccessPointsResponse, 
  AWS.S3Control.Model.ListAccessPointsRequest, 
  AWS.S3Control.Transform.ListAccessPointsRequestMarshaller, 
  AWS.S3Control.Transform.ListAccessPointsResponseUnmarshaller, 
  AWS.S3Control.Model.ListAccessPointsForObjectLambdaResponse, 
  AWS.S3Control.Model.ListAccessPointsForObjectLambdaRequest, 
  AWS.S3Control.Transform.ListAccessPointsForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.ListAccessPointsForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.ListJobsResponse, 
  AWS.S3Control.Model.ListJobsRequest, 
  AWS.S3Control.Transform.ListJobsRequestMarshaller, 
  AWS.S3Control.Transform.ListJobsResponseUnmarshaller, 
  AWS.S3Control.Model.ListRegionalBucketsResponse, 
  AWS.S3Control.Model.ListRegionalBucketsRequest, 
  AWS.S3Control.Transform.ListRegionalBucketsRequestMarshaller, 
  AWS.S3Control.Transform.ListRegionalBucketsResponseUnmarshaller, 
  AWS.S3Control.Model.ListStorageLensConfigurationsResponse, 
  AWS.S3Control.Model.ListStorageLensConfigurationsRequest, 
  AWS.S3Control.Transform.ListStorageLensConfigurationsRequestMarshaller, 
  AWS.S3Control.Transform.ListStorageLensConfigurationsResponseUnmarshaller, 
  AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaResponse, 
  AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaRequest, 
  AWS.S3Control.Transform.PutAccessPointConfigurationForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.PutAccessPointConfigurationForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.PutAccessPointPolicyResponse, 
  AWS.S3Control.Model.PutAccessPointPolicyRequest, 
  AWS.S3Control.Transform.PutAccessPointPolicyRequestMarshaller, 
  AWS.S3Control.Transform.PutAccessPointPolicyResponseUnmarshaller, 
  AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaResponse, 
  AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaRequest, 
  AWS.S3Control.Transform.PutAccessPointPolicyForObjectLambdaRequestMarshaller, 
  AWS.S3Control.Transform.PutAccessPointPolicyForObjectLambdaResponseUnmarshaller, 
  AWS.S3Control.Model.PutBucketLifecycleConfigurationResponse, 
  AWS.S3Control.Model.PutBucketLifecycleConfigurationRequest, 
  AWS.S3Control.Transform.PutBucketLifecycleConfigurationRequestMarshaller, 
  AWS.S3Control.Transform.PutBucketLifecycleConfigurationResponseUnmarshaller, 
  AWS.S3Control.Model.PutBucketPolicyResponse, 
  AWS.S3Control.Model.PutBucketPolicyRequest, 
  AWS.S3Control.Transform.PutBucketPolicyRequestMarshaller, 
  AWS.S3Control.Transform.PutBucketPolicyResponseUnmarshaller, 
  AWS.S3Control.Model.PutBucketTaggingResponse, 
  AWS.S3Control.Model.PutBucketTaggingRequest, 
  AWS.S3Control.Transform.PutBucketTaggingRequestMarshaller, 
  AWS.S3Control.Transform.PutBucketTaggingResponseUnmarshaller, 
  AWS.S3Control.Model.PutJobTaggingResponse, 
  AWS.S3Control.Model.PutJobTaggingRequest, 
  AWS.S3Control.Transform.PutJobTaggingRequestMarshaller, 
  AWS.S3Control.Transform.PutJobTaggingResponseUnmarshaller, 
  AWS.S3Control.Model.PutPublicAccessBlockResponse, 
  AWS.S3Control.Model.PutPublicAccessBlockRequest, 
  AWS.S3Control.Transform.PutPublicAccessBlockRequestMarshaller, 
  AWS.S3Control.Transform.PutPublicAccessBlockResponseUnmarshaller, 
  AWS.S3Control.Model.PutStorageLensConfigurationResponse, 
  AWS.S3Control.Model.PutStorageLensConfigurationRequest, 
  AWS.S3Control.Transform.PutStorageLensConfigurationRequestMarshaller, 
  AWS.S3Control.Transform.PutStorageLensConfigurationResponseUnmarshaller, 
  AWS.S3Control.Model.PutStorageLensConfigurationTaggingResponse, 
  AWS.S3Control.Model.PutStorageLensConfigurationTaggingRequest, 
  AWS.S3Control.Transform.PutStorageLensConfigurationTaggingRequestMarshaller, 
  AWS.S3Control.Transform.PutStorageLensConfigurationTaggingResponseUnmarshaller, 
  AWS.S3Control.Model.UpdateJobPriorityResponse, 
  AWS.S3Control.Model.UpdateJobPriorityRequest, 
  AWS.S3Control.Transform.UpdateJobPriorityRequestMarshaller, 
  AWS.S3Control.Transform.UpdateJobPriorityResponseUnmarshaller, 
  AWS.S3Control.Model.UpdateJobStatusResponse, 
  AWS.S3Control.Model.UpdateJobStatusRequest, 
  AWS.S3Control.Transform.UpdateJobStatusRequestMarshaller, 
  AWS.S3Control.Transform.UpdateJobStatusResponseUnmarshaller;

type
  TAmazonS3ControlClient = class(TAmazonServiceClient, IAmazonS3Control)
  strict private
    class var FServiceMetadata: IServiceMetadata;
  private
    class constructor Create;
  strict protected
    function GetServiceMetadata: IServiceMetadata; override;
    function CreateSigner: TAbstractAWSSigner; override;
    procedure CustomizeRuntimePipeline(Pipeline: TRuntimePipeline); override;
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
    function CreateAccessPoint(Request: ICreateAccessPointRequest): ICreateAccessPointResponse; overload;
    function CreateAccessPointForObjectLambda(Request: ICreateAccessPointForObjectLambdaRequest): ICreateAccessPointForObjectLambdaResponse; overload;
    function CreateBucket(Request: ICreateBucketRequest): ICreateBucketResponse; overload;
    function CreateJob(Request: ICreateJobRequest): ICreateJobResponse; overload;
    function DeleteAccessPoint(Request: IDeleteAccessPointRequest): IDeleteAccessPointResponse; overload;
    function DeleteAccessPointForObjectLambda(Request: IDeleteAccessPointForObjectLambdaRequest): IDeleteAccessPointForObjectLambdaResponse; overload;
    function DeleteAccessPointPolicy(Request: IDeleteAccessPointPolicyRequest): IDeleteAccessPointPolicyResponse; overload;
    function DeleteAccessPointPolicyForObjectLambda(Request: IDeleteAccessPointPolicyForObjectLambdaRequest): IDeleteAccessPointPolicyForObjectLambdaResponse; overload;
    function DeleteBucket(Request: IDeleteBucketRequest): IDeleteBucketResponse; overload;
    function DeleteBucketLifecycleConfiguration(Request: IDeleteBucketLifecycleConfigurationRequest): IDeleteBucketLifecycleConfigurationResponse; overload;
    function DeleteBucketPolicy(Request: IDeleteBucketPolicyRequest): IDeleteBucketPolicyResponse; overload;
    function DeleteBucketTagging(Request: IDeleteBucketTaggingRequest): IDeleteBucketTaggingResponse; overload;
    function DeleteJobTagging(Request: IDeleteJobTaggingRequest): IDeleteJobTaggingResponse; overload;
    function DeletePublicAccessBlock(Request: IDeletePublicAccessBlockRequest): IDeletePublicAccessBlockResponse; overload;
    function DeleteStorageLensConfiguration(Request: IDeleteStorageLensConfigurationRequest): IDeleteStorageLensConfigurationResponse; overload;
    function DeleteStorageLensConfigurationTagging(Request: IDeleteStorageLensConfigurationTaggingRequest): IDeleteStorageLensConfigurationTaggingResponse; overload;
    function DescribeJob(Request: IDescribeJobRequest): IDescribeJobResponse; overload;
    function GetAccessPoint(Request: IGetAccessPointRequest): IGetAccessPointResponse; overload;
    function GetAccessPointConfigurationForObjectLambda(Request: IGetAccessPointConfigurationForObjectLambdaRequest): IGetAccessPointConfigurationForObjectLambdaResponse; overload;
    function GetAccessPointForObjectLambda(Request: IGetAccessPointForObjectLambdaRequest): IGetAccessPointForObjectLambdaResponse; overload;
    function GetAccessPointPolicy(Request: IGetAccessPointPolicyRequest): IGetAccessPointPolicyResponse; overload;
    function GetAccessPointPolicyForObjectLambda(Request: IGetAccessPointPolicyForObjectLambdaRequest): IGetAccessPointPolicyForObjectLambdaResponse; overload;
    function GetAccessPointPolicyStatus(Request: IGetAccessPointPolicyStatusRequest): IGetAccessPointPolicyStatusResponse; overload;
    function GetAccessPointPolicyStatusForObjectLambda(Request: IGetAccessPointPolicyStatusForObjectLambdaRequest): IGetAccessPointPolicyStatusForObjectLambdaResponse; overload;
    function GetBucket(Request: IGetBucketRequest): IGetBucketResponse; overload;
    function GetBucketLifecycleConfiguration(Request: IGetBucketLifecycleConfigurationRequest): IGetBucketLifecycleConfigurationResponse; overload;
    function GetBucketPolicy(Request: IGetBucketPolicyRequest): IGetBucketPolicyResponse; overload;
    function GetBucketTagging(Request: IGetBucketTaggingRequest): IGetBucketTaggingResponse; overload;
    function GetJobTagging(Request: IGetJobTaggingRequest): IGetJobTaggingResponse; overload;
    function GetPublicAccessBlock(Request: IGetPublicAccessBlockRequest): IGetPublicAccessBlockResponse; overload;
    function GetStorageLensConfiguration(Request: IGetStorageLensConfigurationRequest): IGetStorageLensConfigurationResponse; overload;
    function GetStorageLensConfigurationTagging(Request: IGetStorageLensConfigurationTaggingRequest): IGetStorageLensConfigurationTaggingResponse; overload;
    function ListAccessPoints(Request: IListAccessPointsRequest): IListAccessPointsResponse; overload;
    function ListAccessPointsForObjectLambda(Request: IListAccessPointsForObjectLambdaRequest): IListAccessPointsForObjectLambdaResponse; overload;
    function ListJobs(Request: IListJobsRequest): IListJobsResponse; overload;
    function ListRegionalBuckets(Request: IListRegionalBucketsRequest): IListRegionalBucketsResponse; overload;
    function ListStorageLensConfigurations(Request: IListStorageLensConfigurationsRequest): IListStorageLensConfigurationsResponse; overload;
    function PutAccessPointConfigurationForObjectLambda(Request: IPutAccessPointConfigurationForObjectLambdaRequest): IPutAccessPointConfigurationForObjectLambdaResponse; overload;
    function PutAccessPointPolicy(Request: IPutAccessPointPolicyRequest): IPutAccessPointPolicyResponse; overload;
    function PutAccessPointPolicyForObjectLambda(Request: IPutAccessPointPolicyForObjectLambdaRequest): IPutAccessPointPolicyForObjectLambdaResponse; overload;
    function PutBucketLifecycleConfiguration(Request: IPutBucketLifecycleConfigurationRequest): IPutBucketLifecycleConfigurationResponse; overload;
    function PutBucketPolicy(Request: IPutBucketPolicyRequest): IPutBucketPolicyResponse; overload;
    function PutBucketTagging(Request: IPutBucketTaggingRequest): IPutBucketTaggingResponse; overload;
    function PutJobTagging(Request: IPutJobTaggingRequest): IPutJobTaggingResponse; overload;
    function PutPublicAccessBlock(Request: IPutPublicAccessBlockRequest): IPutPublicAccessBlockResponse; overload;
    function PutStorageLensConfiguration(Request: IPutStorageLensConfigurationRequest): IPutStorageLensConfigurationResponse; overload;
    function PutStorageLensConfigurationTagging(Request: IPutStorageLensConfigurationTaggingRequest): IPutStorageLensConfigurationTaggingResponse; overload;
    function UpdateJobPriority(Request: IUpdateJobPriorityRequest): IUpdateJobPriorityResponse; overload;
    function UpdateJobStatus(Request: IUpdateJobStatusRequest): IUpdateJobStatusResponse; overload;
  end;
  
implementation

{ TAmazonS3ControlClient }

constructor TAmazonS3ControlClient.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonS3ControlConfig.Create);
end;

constructor TAmazonS3ControlClient.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonS3ControlConfig.Create(Region));
end;

constructor TAmazonS3ControlClient.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonS3ControlClient.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonS3ControlConfig.Create);
end;

constructor TAmazonS3ControlClient.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonS3ControlConfig.Create(Region));
end;

constructor TAmazonS3ControlClient.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonS3ControlClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonS3ControlConfig.Create);
end;

constructor TAmazonS3ControlClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonS3ControlConfig.Create(Region));
end;

constructor TAmazonS3ControlClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonS3ControlClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonS3ControlConfig.Create);
end;

constructor TAmazonS3ControlClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonS3ControlConfig.Create(Region));
end;

constructor TAmazonS3ControlClient.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonS3ControlClient.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonS3ControlClient.Create;
begin
  FServiceMetadata := TAmazonS3ControlMetadata.Create;
end;

function TAmazonS3ControlClient.CreateSigner: TAbstractAWSSigner;
begin
  Result := TS3Signer.Create;
end;

procedure TAmazonS3ControlClient.CustomizeRuntimePipeline(Pipeline: TRuntimePipeline);
begin
  Pipeline.AddHandlerBefore<TMarshaller>(TAmazonS3ControlPreMarshallHandler.Create);
  Pipeline.AddHandlerAfter<TMarshaller>(TAmazonS3ControlPostMarshallHandler.Create);
  Pipeline.AddHandlerBefore<TUnmarshaller>(TAmazonS3ControlPostUnmarshallHandler.Create);
  Pipeline.AddHandlerAfter<TErrorCallbackHandler>(TAmazonS3ControlExceptionHandler.Create);
end;

function TAmazonS3ControlClient.CreateAccessPoint(Request: ICreateAccessPointRequest): ICreateAccessPointResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateAccessPointRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateAccessPointResponseUnmarshaller.Instance;
    Result := Invoke<TCreateAccessPointResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.CreateAccessPointForObjectLambda(Request: ICreateAccessPointForObjectLambdaRequest): ICreateAccessPointForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateAccessPointForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateAccessPointForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TCreateAccessPointForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.CreateBucket(Request: ICreateBucketRequest): ICreateBucketResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateBucketRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateBucketResponseUnmarshaller.Instance;
    Result := Invoke<TCreateBucketResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.CreateJob(Request: ICreateJobRequest): ICreateJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCreateJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCreateJobResponseUnmarshaller.Instance;
    Result := Invoke<TCreateJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteAccessPoint(Request: IDeleteAccessPointRequest): IDeleteAccessPointResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteAccessPointRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteAccessPointResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteAccessPointResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteAccessPointForObjectLambda(Request: IDeleteAccessPointForObjectLambdaRequest): IDeleteAccessPointForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteAccessPointForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteAccessPointForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteAccessPointForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteAccessPointPolicy(Request: IDeleteAccessPointPolicyRequest): IDeleteAccessPointPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteAccessPointPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteAccessPointPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteAccessPointPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteAccessPointPolicyForObjectLambda(Request: IDeleteAccessPointPolicyForObjectLambdaRequest): IDeleteAccessPointPolicyForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteAccessPointPolicyForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteAccessPointPolicyForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteAccessPointPolicyForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteBucket(Request: IDeleteBucketRequest): IDeleteBucketResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteBucketLifecycleConfiguration(Request: IDeleteBucketLifecycleConfigurationRequest): IDeleteBucketLifecycleConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketLifecycleConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketLifecycleConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketLifecycleConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteBucketPolicy(Request: IDeleteBucketPolicyRequest): IDeleteBucketPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteBucketTagging(Request: IDeleteBucketTaggingRequest): IDeleteBucketTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteBucketTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteBucketTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteBucketTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteJobTagging(Request: IDeleteJobTaggingRequest): IDeleteJobTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteJobTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteJobTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteJobTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeletePublicAccessBlock(Request: IDeletePublicAccessBlockRequest): IDeletePublicAccessBlockResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeletePublicAccessBlockRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeletePublicAccessBlockResponseUnmarshaller.Instance;
    Result := Invoke<TDeletePublicAccessBlockResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteStorageLensConfiguration(Request: IDeleteStorageLensConfigurationRequest): IDeleteStorageLensConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteStorageLensConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteStorageLensConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteStorageLensConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DeleteStorageLensConfigurationTagging(Request: IDeleteStorageLensConfigurationTaggingRequest): IDeleteStorageLensConfigurationTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteStorageLensConfigurationTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteStorageLensConfigurationTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteStorageLensConfigurationTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.DescribeJob(Request: IDescribeJobRequest): IDescribeJobResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDescribeJobRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDescribeJobResponseUnmarshaller.Instance;
    Result := Invoke<TDescribeJobResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetAccessPoint(Request: IGetAccessPointRequest): IGetAccessPointResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAccessPointRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAccessPointResponseUnmarshaller.Instance;
    Result := Invoke<TGetAccessPointResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetAccessPointConfigurationForObjectLambda(Request: IGetAccessPointConfigurationForObjectLambdaRequest): IGetAccessPointConfigurationForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAccessPointConfigurationForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TGetAccessPointConfigurationForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetAccessPointForObjectLambda(Request: IGetAccessPointForObjectLambdaRequest): IGetAccessPointForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAccessPointForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAccessPointForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TGetAccessPointForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetAccessPointPolicy(Request: IGetAccessPointPolicyRequest): IGetAccessPointPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAccessPointPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAccessPointPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TGetAccessPointPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetAccessPointPolicyForObjectLambda(Request: IGetAccessPointPolicyForObjectLambdaRequest): IGetAccessPointPolicyForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAccessPointPolicyForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAccessPointPolicyForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TGetAccessPointPolicyForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetAccessPointPolicyStatus(Request: IGetAccessPointPolicyStatusRequest): IGetAccessPointPolicyStatusResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAccessPointPolicyStatusRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAccessPointPolicyStatusResponseUnmarshaller.Instance;
    Result := Invoke<TGetAccessPointPolicyStatusResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetAccessPointPolicyStatusForObjectLambda(Request: IGetAccessPointPolicyStatusForObjectLambdaRequest): IGetAccessPointPolicyStatusForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetAccessPointPolicyStatusForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetAccessPointPolicyStatusForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TGetAccessPointPolicyStatusForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetBucket(Request: IGetBucketRequest): IGetBucketResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetBucketLifecycleConfiguration(Request: IGetBucketLifecycleConfigurationRequest): IGetBucketLifecycleConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketLifecycleConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketLifecycleConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketLifecycleConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetBucketPolicy(Request: IGetBucketPolicyRequest): IGetBucketPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetBucketTagging(Request: IGetBucketTaggingRequest): IGetBucketTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetJobTagging(Request: IGetJobTaggingRequest): IGetJobTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetJobTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetJobTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TGetJobTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetPublicAccessBlock(Request: IGetPublicAccessBlockRequest): IGetPublicAccessBlockResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetPublicAccessBlockRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetPublicAccessBlockResponseUnmarshaller.Instance;
    Result := Invoke<TGetPublicAccessBlockResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetStorageLensConfiguration(Request: IGetStorageLensConfigurationRequest): IGetStorageLensConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetStorageLensConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetStorageLensConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TGetStorageLensConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.GetStorageLensConfigurationTagging(Request: IGetStorageLensConfigurationTaggingRequest): IGetStorageLensConfigurationTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetStorageLensConfigurationTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetStorageLensConfigurationTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TGetStorageLensConfigurationTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.ListAccessPoints(Request: IListAccessPointsRequest): IListAccessPointsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListAccessPointsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListAccessPointsResponseUnmarshaller.Instance;
    Result := Invoke<TListAccessPointsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.ListAccessPointsForObjectLambda(Request: IListAccessPointsForObjectLambdaRequest): IListAccessPointsForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListAccessPointsForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListAccessPointsForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TListAccessPointsForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.ListJobs(Request: IListJobsRequest): IListJobsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListJobsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListJobsResponseUnmarshaller.Instance;
    Result := Invoke<TListJobsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.ListRegionalBuckets(Request: IListRegionalBucketsRequest): IListRegionalBucketsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListRegionalBucketsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListRegionalBucketsResponseUnmarshaller.Instance;
    Result := Invoke<TListRegionalBucketsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.ListStorageLensConfigurations(Request: IListStorageLensConfigurationsRequest): IListStorageLensConfigurationsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListStorageLensConfigurationsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListStorageLensConfigurationsResponseUnmarshaller.Instance;
    Result := Invoke<TListStorageLensConfigurationsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutAccessPointConfigurationForObjectLambda(Request: IPutAccessPointConfigurationForObjectLambdaRequest): IPutAccessPointConfigurationForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutAccessPointConfigurationForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutAccessPointConfigurationForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TPutAccessPointConfigurationForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutAccessPointPolicy(Request: IPutAccessPointPolicyRequest): IPutAccessPointPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutAccessPointPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutAccessPointPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TPutAccessPointPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutAccessPointPolicyForObjectLambda(Request: IPutAccessPointPolicyForObjectLambdaRequest): IPutAccessPointPolicyForObjectLambdaResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutAccessPointPolicyForObjectLambdaRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutAccessPointPolicyForObjectLambdaResponseUnmarshaller.Instance;
    Result := Invoke<TPutAccessPointPolicyForObjectLambdaResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutBucketLifecycleConfiguration(Request: IPutBucketLifecycleConfigurationRequest): IPutBucketLifecycleConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketLifecycleConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketLifecycleConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketLifecycleConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutBucketPolicy(Request: IPutBucketPolicyRequest): IPutBucketPolicyResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketPolicyRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketPolicyResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketPolicyResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutBucketTagging(Request: IPutBucketTaggingRequest): IPutBucketTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutJobTagging(Request: IPutJobTaggingRequest): IPutJobTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutJobTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutJobTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TPutJobTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutPublicAccessBlock(Request: IPutPublicAccessBlockRequest): IPutPublicAccessBlockResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutPublicAccessBlockRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutPublicAccessBlockResponseUnmarshaller.Instance;
    Result := Invoke<TPutPublicAccessBlockResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutStorageLensConfiguration(Request: IPutStorageLensConfigurationRequest): IPutStorageLensConfigurationResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutStorageLensConfigurationRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutStorageLensConfigurationResponseUnmarshaller.Instance;
    Result := Invoke<TPutStorageLensConfigurationResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.PutStorageLensConfigurationTagging(Request: IPutStorageLensConfigurationTaggingRequest): IPutStorageLensConfigurationTaggingResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutStorageLensConfigurationTaggingRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutStorageLensConfigurationTaggingResponseUnmarshaller.Instance;
    Result := Invoke<TPutStorageLensConfigurationTaggingResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.UpdateJobPriority(Request: IUpdateJobPriorityRequest): IUpdateJobPriorityResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateJobPriorityRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateJobPriorityResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateJobPriorityResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3ControlClient.UpdateJobStatus(Request: IUpdateJobStatusRequest): IUpdateJobStatusResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUpdateJobStatusRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUpdateJobStatusResponseUnmarshaller.Instance;
    Result := Invoke<TUpdateJobStatusResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

end.
