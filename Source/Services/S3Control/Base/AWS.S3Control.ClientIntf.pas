unit AWS.S3Control.ClientIntf;

interface

uses
  AWS.Runtime.Client, 
  AWS.S3Control.Model.CreateAccessPointResponse, 
  AWS.S3Control.Model.CreateAccessPointRequest, 
  AWS.S3Control.Model.CreateAccessPointForObjectLambdaResponse, 
  AWS.S3Control.Model.CreateAccessPointForObjectLambdaRequest, 
  AWS.S3Control.Model.CreateBucketResponse, 
  AWS.S3Control.Model.CreateBucketRequest, 
  AWS.S3Control.Model.CreateJobResponse, 
  AWS.S3Control.Model.CreateJobRequest, 
  AWS.S3Control.Model.DeleteAccessPointResponse, 
  AWS.S3Control.Model.DeleteAccessPointRequest, 
  AWS.S3Control.Model.DeleteAccessPointForObjectLambdaResponse, 
  AWS.S3Control.Model.DeleteAccessPointForObjectLambdaRequest, 
  AWS.S3Control.Model.DeleteAccessPointPolicyResponse, 
  AWS.S3Control.Model.DeleteAccessPointPolicyRequest, 
  AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaResponse, 
  AWS.S3Control.Model.DeleteAccessPointPolicyForObjectLambdaRequest, 
  AWS.S3Control.Model.DeleteBucketResponse, 
  AWS.S3Control.Model.DeleteBucketRequest, 
  AWS.S3Control.Model.DeleteBucketLifecycleConfigurationResponse, 
  AWS.S3Control.Model.DeleteBucketLifecycleConfigurationRequest, 
  AWS.S3Control.Model.DeleteBucketPolicyResponse, 
  AWS.S3Control.Model.DeleteBucketPolicyRequest, 
  AWS.S3Control.Model.DeleteBucketTaggingResponse, 
  AWS.S3Control.Model.DeleteBucketTaggingRequest, 
  AWS.S3Control.Model.DeleteJobTaggingResponse, 
  AWS.S3Control.Model.DeleteJobTaggingRequest, 
  AWS.S3Control.Model.DeletePublicAccessBlockResponse, 
  AWS.S3Control.Model.DeletePublicAccessBlockRequest, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationResponse, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationRequest, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingResponse, 
  AWS.S3Control.Model.DeleteStorageLensConfigurationTaggingRequest, 
  AWS.S3Control.Model.DescribeJobResponse, 
  AWS.S3Control.Model.DescribeJobRequest, 
  AWS.S3Control.Model.GetAccessPointResponse, 
  AWS.S3Control.Model.GetAccessPointRequest, 
  AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointConfigurationForObjectLambdaRequest, 
  AWS.S3Control.Model.GetAccessPointForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointForObjectLambdaRequest, 
  AWS.S3Control.Model.GetAccessPointPolicyResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyRequest, 
  AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyForObjectLambdaRequest, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusRequest, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaResponse, 
  AWS.S3Control.Model.GetAccessPointPolicyStatusForObjectLambdaRequest, 
  AWS.S3Control.Model.GetBucketResponse, 
  AWS.S3Control.Model.GetBucketRequest, 
  AWS.S3Control.Model.GetBucketLifecycleConfigurationResponse, 
  AWS.S3Control.Model.GetBucketLifecycleConfigurationRequest, 
  AWS.S3Control.Model.GetBucketPolicyResponse, 
  AWS.S3Control.Model.GetBucketPolicyRequest, 
  AWS.S3Control.Model.GetBucketTaggingResponse, 
  AWS.S3Control.Model.GetBucketTaggingRequest, 
  AWS.S3Control.Model.GetJobTaggingResponse, 
  AWS.S3Control.Model.GetJobTaggingRequest, 
  AWS.S3Control.Model.GetPublicAccessBlockResponse, 
  AWS.S3Control.Model.GetPublicAccessBlockRequest, 
  AWS.S3Control.Model.GetStorageLensConfigurationResponse, 
  AWS.S3Control.Model.GetStorageLensConfigurationRequest, 
  AWS.S3Control.Model.GetStorageLensConfigurationTaggingResponse, 
  AWS.S3Control.Model.GetStorageLensConfigurationTaggingRequest, 
  AWS.S3Control.Model.ListAccessPointsResponse, 
  AWS.S3Control.Model.ListAccessPointsRequest, 
  AWS.S3Control.Model.ListAccessPointsForObjectLambdaResponse, 
  AWS.S3Control.Model.ListAccessPointsForObjectLambdaRequest, 
  AWS.S3Control.Model.ListJobsResponse, 
  AWS.S3Control.Model.ListJobsRequest, 
  AWS.S3Control.Model.ListRegionalBucketsResponse, 
  AWS.S3Control.Model.ListRegionalBucketsRequest, 
  AWS.S3Control.Model.ListStorageLensConfigurationsResponse, 
  AWS.S3Control.Model.ListStorageLensConfigurationsRequest, 
  AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaResponse, 
  AWS.S3Control.Model.PutAccessPointConfigurationForObjectLambdaRequest, 
  AWS.S3Control.Model.PutAccessPointPolicyResponse, 
  AWS.S3Control.Model.PutAccessPointPolicyRequest, 
  AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaResponse, 
  AWS.S3Control.Model.PutAccessPointPolicyForObjectLambdaRequest, 
  AWS.S3Control.Model.PutBucketLifecycleConfigurationResponse, 
  AWS.S3Control.Model.PutBucketLifecycleConfigurationRequest, 
  AWS.S3Control.Model.PutBucketPolicyResponse, 
  AWS.S3Control.Model.PutBucketPolicyRequest, 
  AWS.S3Control.Model.PutBucketTaggingResponse, 
  AWS.S3Control.Model.PutBucketTaggingRequest, 
  AWS.S3Control.Model.PutJobTaggingResponse, 
  AWS.S3Control.Model.PutJobTaggingRequest, 
  AWS.S3Control.Model.PutPublicAccessBlockResponse, 
  AWS.S3Control.Model.PutPublicAccessBlockRequest, 
  AWS.S3Control.Model.PutStorageLensConfigurationResponse, 
  AWS.S3Control.Model.PutStorageLensConfigurationRequest, 
  AWS.S3Control.Model.PutStorageLensConfigurationTaggingResponse, 
  AWS.S3Control.Model.PutStorageLensConfigurationTaggingRequest, 
  AWS.S3Control.Model.UpdateJobPriorityResponse, 
  AWS.S3Control.Model.UpdateJobPriorityRequest, 
  AWS.S3Control.Model.UpdateJobStatusResponse, 
  AWS.S3Control.Model.UpdateJobStatusRequest;

type
  IAmazonS3Control = interface(IAmazonService)
    ['{145C441B-69AC-4AC1-8F61-8808C5498645}']
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

end.
