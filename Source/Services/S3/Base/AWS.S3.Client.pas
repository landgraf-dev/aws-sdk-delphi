unit AWS.S3.Client;

interface

uses
  AWS.S3.Model.GetPresignedUrlRequest, 
  AWS.S3.Client.Extensions, 
  AWS.Runtime.Client, 
  AWS.S3.ClientIntf, 
  AWS.S3.Config, 
  AWS.Runtime.AWSRegion, 
  AWS.RegionEndpoint, 
  AWS.Runtime.ClientConfig, 
  AWS.Runtime.Credentials, 
  AWS.Internal.ServiceMetadata, 
  AWS.S3.Metadata, 
  AWS.Auth.Signer, 
  AWS.S3.Internal.S3Signer, 
  AWS.Internal.RuntimePipeline, 
  AWS.Pipeline.Marshaller, 
  AWS.S3.Pipeline.PreMarshallHandler, 
  AWS.S3.Pipeline.PostMarshallHandler, 
  AWS.Pipeline.EndpointResolver, 
  AWS.S3.Pipeline.KmsHandler, 
  AWS.Pipeline.Unmarshaller, 
  AWS.S3.Pipeline.ResponseHandler, 
  AWS.Pipeline.ErrorCallbackHandler, 
  AWS.S3.Pipeline.ExceptionHandler, 
  AWS.S3.Pipeline.RedirectHandler, 
  AWS.Pipeline.RetryHandler, 
  AWS.S3.Model.AbortMultipartUploadResponse, 
  AWS.S3.Model.AbortMultipartUploadRequest, 
  AWS.Internal.InvokeOptions, 
  AWS.S3.Transform.AbortMultipartUploadRequestMarshaller, 
  AWS.S3.Transform.AbortMultipartUploadResponseUnmarshaller, 
  AWS.S3.Model.CompleteMultipartUploadResponse, 
  AWS.S3.Model.CompleteMultipartUploadRequest, 
  AWS.S3.Transform.CompleteMultipartUploadRequestMarshaller, 
  AWS.S3.Transform.CompleteMultipartUploadResponseUnmarshaller, 
  AWS.S3.Model.CopyObjectResponse, 
  AWS.S3.Model.CopyObjectRequest, 
  AWS.S3.Transform.CopyObjectRequestMarshaller, 
  AWS.S3.Transform.CopyObjectResponseUnmarshaller, 
  AWS.S3.Model.CopyPartResponse, 
  AWS.S3.Model.CopyPartRequest, 
  AWS.S3.Transform.CopyPartRequestMarshaller, 
  AWS.S3.Transform.CopyPartResponseUnmarshaller, 
  AWS.S3.Model.DeleteBucketResponse, 
  AWS.S3.Model.DeleteBucketRequest, 
  AWS.S3.Transform.DeleteBucketRequestMarshaller, 
  AWS.S3.Transform.DeleteBucketResponseUnmarshaller, 
  AWS.S3.Model.DeleteObjectResponse, 
  AWS.S3.Model.DeleteObjectRequest, 
  AWS.S3.Transform.DeleteObjectRequestMarshaller, 
  AWS.S3.Transform.DeleteObjectResponseUnmarshaller, 
  AWS.S3.Model.DeleteObjectsResponse, 
  AWS.S3.Model.DeleteObjectsRequest, 
  AWS.S3.Transform.DeleteObjectsRequestMarshaller, 
  AWS.S3.Transform.DeleteObjectsResponseUnmarshaller, 
  AWS.S3.Model.GetACLResponse, 
  AWS.S3.Model.GetACLRequest, 
  AWS.S3.Transform.GetACLRequestMarshaller, 
  AWS.S3.Transform.GetACLResponseUnmarshaller, 
  AWS.S3.Model.GetBucketVersioningResponse, 
  AWS.S3.Model.GetBucketVersioningRequest, 
  AWS.S3.Transform.GetBucketVersioningRequestMarshaller, 
  AWS.S3.Transform.GetBucketVersioningResponseUnmarshaller, 
  AWS.S3.Model.GetObjectResponse, 
  AWS.S3.Model.GetObjectRequest, 
  AWS.S3.Transform.GetObjectRequestMarshaller, 
  AWS.S3.Transform.GetObjectResponseUnmarshaller, 
  AWS.S3.Model.GetObjectMetadataResponse, 
  AWS.S3.Model.GetObjectMetadataRequest, 
  AWS.S3.Transform.GetObjectMetadataRequestMarshaller, 
  AWS.S3.Transform.GetObjectMetadataResponseUnmarshaller, 
  AWS.S3.Model.InitiateMultipartUploadResponse, 
  AWS.S3.Model.InitiateMultipartUploadRequest, 
  AWS.S3.Transform.InitiateMultipartUploadRequestMarshaller, 
  AWS.S3.Transform.InitiateMultipartUploadResponseUnmarshaller, 
  AWS.S3.Model.ListBucketsResponse, 
  AWS.S3.Model.ListBucketsRequest, 
  AWS.S3.Transform.ListBucketsRequestMarshaller, 
  AWS.S3.Transform.ListBucketsResponseUnmarshaller, 
  AWS.S3.Model.ListObjectsResponse, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Transform.ListObjectsRequestMarshaller, 
  AWS.S3.Transform.ListObjectsResponseUnmarshaller, 
  AWS.S3.Model.ListVersionsResponse, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.S3.Transform.ListVersionsRequestMarshaller, 
  AWS.S3.Transform.ListVersionsResponseUnmarshaller, 
  AWS.S3.Model.PutBucketResponse, 
  AWS.S3.Model.PutBucketRequest, 
  AWS.S3.Transform.PutBucketRequestMarshaller, 
  AWS.S3.Transform.PutBucketResponseUnmarshaller, 
  AWS.S3.Model.PutBucketOwnershipControlsResponse, 
  AWS.S3.Model.PutBucketOwnershipControlsRequest, 
  AWS.S3.Transform.PutBucketOwnershipControlsRequestMarshaller, 
  AWS.S3.Transform.PutBucketOwnershipControlsResponseUnmarshaller, 
  AWS.S3.Model.PutObjectResponse, 
  AWS.S3.Model.PutObjectRequest, 
  AWS.S3.Transform.PutObjectRequestMarshaller, 
  AWS.S3.Transform.PutObjectResponseUnmarshaller, 
  AWS.S3.Model.PutPublicAccessBlockResponse, 
  AWS.S3.Model.PutPublicAccessBlockRequest, 
  AWS.S3.Transform.PutPublicAccessBlockRequestMarshaller, 
  AWS.S3.Transform.PutPublicAccessBlockResponseUnmarshaller, 
  AWS.S3.Model.UploadPartResponse, 
  AWS.S3.Model.UploadPartRequest, 
  AWS.S3.Transform.UploadPartRequestMarshaller, 
  AWS.S3.Transform.UploadPartResponseUnmarshaller, 
  AWS.S3.Model.WriteGetObjectResponseResponse, 
  AWS.S3.Model.WriteGetObjectResponseRequest, 
  AWS.S3.Transform.WriteGetObjectResponseRequestMarshaller, 
  AWS.S3.Transform.WriteGetObjectResponseResponseUnmarshaller;

type
  TAmazonS3Client = class(TAmazonServiceClient, IAmazonS3)
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
    function AbortMultipartUpload(const ABucketName: string; const AKey: string; const AUploadId: string): IAbortMultipartUploadResponse; overload;
    function AbortMultipartUpload(Request: IAbortMultipartUploadRequest): IAbortMultipartUploadResponse; overload;
    function CompleteMultipartUpload(Request: ICompleteMultipartUploadRequest): ICompleteMultipartUploadResponse; overload;
    function CopyObject(const ASourceBucket: string; const ASourceKey: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse; overload;
    function CopyObject(const ASourceBucket: string; const ASourceKey: string; const ASourceVersionId: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse; overload;
    function CopyObject(Request: ICopyObjectRequest): ICopyObjectResponse; overload;
    function CopyPart(const ASourceBucket: string; const ASourceKey: string; const ADestinationBucket: string; const ADestinationKey: string; const AUploadId: string): ICopyPartResponse; overload;
    function CopyPart(const ASourceBucket: string; const ASourceKey: string; const ASourceVersionId: string; const ADestinationBucket: string; const ADestinationKey: string; const AUploadId: string): ICopyPartResponse; overload;
    function CopyPart(Request: ICopyPartRequest): ICopyPartResponse; overload;
    function DeleteBucket(const ABucketName: string): IDeleteBucketResponse; overload;
    function DeleteBucket(Request: IDeleteBucketRequest): IDeleteBucketResponse; overload;
    function DeleteObject(const ABucketName: string; const AKey: string): IDeleteObjectResponse; overload;
    function DeleteObject(const ABucketName: string; const AKey: string; const AVersionId: string): IDeleteObjectResponse; overload;
    function DeleteObject(Request: IDeleteObjectRequest): IDeleteObjectResponse; overload;
    function DeleteObjects(Request: IDeleteObjectsRequest): IDeleteObjectsResponse; overload;
    function GetACL(const ABucketName: string): IGetACLResponse; overload;
    function GetACL(Request: IGetACLRequest): IGetACLResponse; overload;
    function GetBucketVersioning(const ABucketName: string): IGetBucketVersioningResponse; overload;
    function GetBucketVersioning(Request: IGetBucketVersioningRequest): IGetBucketVersioningResponse; overload;
    function GetObject(const ABucketName: string; const AKey: string): IGetObjectResponse; overload;
    function GetObject(const ABucketName: string; const AKey: string; const AVersionId: string): IGetObjectResponse; overload;
    function GetObject(Request: IGetObjectRequest): IGetObjectResponse; overload;
    function GetObjectMetadata(const ABucketName: string; const AKey: string): IGetObjectMetadataResponse; overload;
    function GetObjectMetadata(const ABucketName: string; const AKey: string; const AVersionId: string): IGetObjectMetadataResponse; overload;
    function GetObjectMetadata(Request: IGetObjectMetadataRequest): IGetObjectMetadataResponse; overload;
    function InitiateMultipartUpload(const ABucketName: string; const AKey: string): IInitiateMultipartUploadResponse; overload;
    function InitiateMultipartUpload(Request: IInitiateMultipartUploadRequest): IInitiateMultipartUploadResponse; overload;
    function ListBuckets: IListBucketsResponse; overload;
    function ListBuckets(Request: IListBucketsRequest): IListBucketsResponse; overload;
    function ListObjects(const ABucketName: string): IListObjectsResponse; overload;
    function ListObjects(const ABucketName: string; const APrefix: string): IListObjectsResponse; overload;
    function ListObjects(Request: IListObjectsRequest): IListObjectsResponse; overload;
    function ListVersions(const ABucketName: string): IListVersionsResponse; overload;
    function ListVersions(const ABucketName: string; const APrefix: string): IListVersionsResponse; overload;
    function ListVersions(Request: IListVersionsRequest): IListVersionsResponse; overload;
    function PutBucket(const ABucketName: string): IPutBucketResponse; overload;
    function PutBucket(Request: IPutBucketRequest): IPutBucketResponse; overload;
    function PutBucketOwnershipControls(Request: IPutBucketOwnershipControlsRequest): IPutBucketOwnershipControlsResponse; overload;
    function PutObject(Request: IPutObjectRequest): IPutObjectResponse; overload;
    function PutPublicAccessBlock(Request: IPutPublicAccessBlockRequest): IPutPublicAccessBlockResponse; overload;
    function UploadPart(Request: IUploadPartRequest): IUploadPartResponse; overload;
    function WriteGetObjectResponse(Request: IWriteGetObjectResponseRequest): IWriteGetObjectResponseResponse; overload;
    function GetPresignedUrl(Request: IGetPresignedUrlRequest): string;
  end;
  
implementation

{ TAmazonS3Client }

constructor TAmazonS3Client.Create;
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(Region: IRegionEndpointEx);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(Config: IClientConfig);
begin
  inherited Create(TFallbackCredentialsFactory.GetCredentials, Config);
end;

constructor TAmazonS3Client.Create(Credentials: IAWSCredentials);
begin
  Create(Credentials, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(Credentials: IAWSCredentials; Region: IRegionEndpointEx);
begin
  Create(Credentials, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(Credentials: IAWSCredentials; Config: IClientConfig);
begin
  inherited Create(Credentials, Config);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, Config);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonS3Config.Create);
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Region: IRegionEndpointEx);
begin
  Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, TAmazonS3Config.Create(Region));
end;

constructor TAmazonS3Client.Create(const AWSAccessKeyId: string; const AWSSecretAccessKey: string; const AWSSessionToken: string; Config: IClientConfig);
begin
  inherited Create(AWSAccessKeyId, AWSSecretAccessKey, AWSSessionToken, Config);
end;

function TAmazonS3Client.GetServiceMetadata: IServiceMetadata;
begin
  Result := FServiceMetadata;
end;

class constructor TAmazonS3Client.Create;
begin
  FServiceMetadata := TAmazonS3Metadata.Create;
end;

function TAmazonS3Client.CreateSigner: TAbstractAWSSigner;
begin
  Result := TInternalS3Signer.Create;
end;

procedure TAmazonS3Client.CustomizeRuntimePipeline(Pipeline: TRuntimePipeline);
begin
  Pipeline.AddHandlerBefore<TMarshaller>(TAmazonS3PreMarshallHandler.Create());
  Pipeline.AddHandlerAfter<TMarshaller>(TAmazonS3PostMarshallHandler.Create());
  Pipeline.AddHandlerAfter<TEndpointResolver>(TAmazonS3KmsHandler.Create());
  Pipeline.AddHandlerBefore<TUnmarshaller>(TAmazonS3ResponseHandler.Create());
  Pipeline.AddHandlerAfter<TErrorCallbackHandler>(TAmazonS3ExceptionHandler.Create());
  Pipeline.AddHandlerAfter<TUnmarshaller>(TAmazonS3RedirectHandler.Create());
end;

function TAmazonS3Client.AbortMultipartUpload(const ABucketName: string; const AKey: string; const AUploadId: string): IAbortMultipartUploadResponse;
var
  Request: IAbortMultipartUploadRequest;
begin
  Request := TAbortMultipartUploadRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.UploadId := AUploadId;
  Result := AbortMultipartUpload(Request);
end;

function TAmazonS3Client.AbortMultipartUpload(Request: IAbortMultipartUploadRequest): IAbortMultipartUploadResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TAbortMultipartUploadRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TAbortMultipartUploadResponseUnmarshaller.Instance;
    Result := Invoke<TAbortMultipartUploadResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.CompleteMultipartUpload(Request: ICompleteMultipartUploadRequest): ICompleteMultipartUploadResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCompleteMultipartUploadRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCompleteMultipartUploadResponseUnmarshaller.Instance;
    Result := Invoke<TCompleteMultipartUploadResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.CopyObject(const ASourceBucket: string; const ASourceKey: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse;
var
  Request: ICopyObjectRequest;
begin
  Request := TCopyObjectRequest.Create;
  Request.SourceBucket := ASourceBucket;
  Request.SourceKey := ASourceKey;
  Request.DestinationBucket := ADestinationBucket;
  Request.DestinationKey := ADestinationKey;
  Result := CopyObject(Request);
end;

function TAmazonS3Client.CopyObject(const ASourceBucket: string; const ASourceKey: string; const ASourceVersionId: string; const ADestinationBucket: string; const ADestinationKey: string): ICopyObjectResponse;
var
  Request: ICopyObjectRequest;
begin
  Request := TCopyObjectRequest.Create;
  Request.SourceBucket := ASourceBucket;
  Request.SourceKey := ASourceKey;
  Request.SourceVersionId := ASourceVersionId;
  Request.DestinationBucket := ADestinationBucket;
  Request.DestinationKey := ADestinationKey;
  Result := CopyObject(Request);
end;

function TAmazonS3Client.CopyObject(Request: ICopyObjectRequest): ICopyObjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCopyObjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCopyObjectResponseUnmarshaller.Instance;
    Result := Invoke<TCopyObjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.CopyPart(const ASourceBucket: string; const ASourceKey: string; const ADestinationBucket: string; const ADestinationKey: string; const AUploadId: string): ICopyPartResponse;
var
  Request: ICopyPartRequest;
begin
  Request := TCopyPartRequest.Create;
  Request.SourceBucket := ASourceBucket;
  Request.SourceKey := ASourceKey;
  Request.DestinationBucket := ADestinationBucket;
  Request.DestinationKey := ADestinationKey;
  Request.UploadId := AUploadId;
  Result := CopyPart(Request);
end;

function TAmazonS3Client.CopyPart(const ASourceBucket: string; const ASourceKey: string; const ASourceVersionId: string; const ADestinationBucket: string; const ADestinationKey: string; const AUploadId: string): ICopyPartResponse;
var
  Request: ICopyPartRequest;
begin
  Request := TCopyPartRequest.Create;
  Request.SourceBucket := ASourceBucket;
  Request.SourceKey := ASourceKey;
  Request.SourceVersionId := ASourceVersionId;
  Request.DestinationBucket := ADestinationBucket;
  Request.DestinationKey := ADestinationKey;
  Request.UploadId := AUploadId;
  Result := CopyPart(Request);
end;

function TAmazonS3Client.CopyPart(Request: ICopyPartRequest): ICopyPartResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TCopyPartRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TCopyPartResponseUnmarshaller.Instance;
    Result := Invoke<TCopyPartResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteBucket(const ABucketName: string): IDeleteBucketResponse;
var
  Request: IDeleteBucketRequest;
begin
  Request := TDeleteBucketRequest.Create;
  Request.BucketName := ABucketName;
  Result := DeleteBucket(Request);
end;

function TAmazonS3Client.DeleteBucket(Request: IDeleteBucketRequest): IDeleteBucketResponse;
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

function TAmazonS3Client.DeleteObject(const ABucketName: string; const AKey: string): IDeleteObjectResponse;
var
  Request: IDeleteObjectRequest;
begin
  Request := TDeleteObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := DeleteObject(Request);
end;

function TAmazonS3Client.DeleteObject(const ABucketName: string; const AKey: string; const AVersionId: string): IDeleteObjectResponse;
var
  Request: IDeleteObjectRequest;
begin
  Request := TDeleteObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.VersionId := AVersionId;
  Result := DeleteObject(Request);
end;

function TAmazonS3Client.DeleteObject(Request: IDeleteObjectRequest): IDeleteObjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteObjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteObjectResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteObjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.DeleteObjects(Request: IDeleteObjectsRequest): IDeleteObjectsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TDeleteObjectsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TDeleteObjectsResponseUnmarshaller.Instance;
    Result := Invoke<TDeleteObjectsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetACL(const ABucketName: string): IGetACLResponse;
var
  Request: IGetACLRequest;
begin
  Request := TGetACLRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetACL(Request);
end;

function TAmazonS3Client.GetACL(Request: IGetACLRequest): IGetACLResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetACLRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetACLResponseUnmarshaller.Instance;
    Result := Invoke<TGetACLResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetBucketVersioning(const ABucketName: string): IGetBucketVersioningResponse;
var
  Request: IGetBucketVersioningRequest;
begin
  Request := TGetBucketVersioningRequest.Create;
  Request.BucketName := ABucketName;
  Result := GetBucketVersioning(Request);
end;

function TAmazonS3Client.GetBucketVersioning(Request: IGetBucketVersioningRequest): IGetBucketVersioningResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetBucketVersioningRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetBucketVersioningResponseUnmarshaller.Instance;
    Result := Invoke<TGetBucketVersioningResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetObject(const ABucketName: string; const AKey: string): IGetObjectResponse;
var
  Request: IGetObjectRequest;
begin
  Request := TGetObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := GetObject(Request);
end;

function TAmazonS3Client.GetObject(const ABucketName: string; const AKey: string; const AVersionId: string): IGetObjectResponse;
var
  Request: IGetObjectRequest;
begin
  Request := TGetObjectRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.VersionId := AVersionId;
  Result := GetObject(Request);
end;

function TAmazonS3Client.GetObject(Request: IGetObjectRequest): IGetObjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetObjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetObjectResponseUnmarshaller.Instance;
    Result := Invoke<TGetObjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetObjectMetadata(const ABucketName: string; const AKey: string): IGetObjectMetadataResponse;
var
  Request: IGetObjectMetadataRequest;
begin
  Request := TGetObjectMetadataRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := GetObjectMetadata(Request);
end;

function TAmazonS3Client.GetObjectMetadata(const ABucketName: string; const AKey: string; const AVersionId: string): IGetObjectMetadataResponse;
var
  Request: IGetObjectMetadataRequest;
begin
  Request := TGetObjectMetadataRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Request.VersionId := AVersionId;
  Result := GetObjectMetadata(Request);
end;

function TAmazonS3Client.GetObjectMetadata(Request: IGetObjectMetadataRequest): IGetObjectMetadataResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TGetObjectMetadataRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TGetObjectMetadataResponseUnmarshaller.Instance;
    Result := Invoke<TGetObjectMetadataResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.InitiateMultipartUpload(const ABucketName: string; const AKey: string): IInitiateMultipartUploadResponse;
var
  Request: IInitiateMultipartUploadRequest;
begin
  Request := TInitiateMultipartUploadRequest.Create;
  Request.BucketName := ABucketName;
  Request.Key := AKey;
  Result := InitiateMultipartUpload(Request);
end;

function TAmazonS3Client.InitiateMultipartUpload(Request: IInitiateMultipartUploadRequest): IInitiateMultipartUploadResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TInitiateMultipartUploadRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TInitiateMultipartUploadResponseUnmarshaller.Instance;
    Result := Invoke<TInitiateMultipartUploadResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListBuckets: IListBucketsResponse;
begin
  Result := ListBuckets(IListBucketsRequest(TListBucketsRequest.Create));
end;

function TAmazonS3Client.ListBuckets(Request: IListBucketsRequest): IListBucketsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListBucketsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListBucketsResponseUnmarshaller.Instance;
    Result := Invoke<TListBucketsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListObjects(const ABucketName: string): IListObjectsResponse;
var
  Request: IListObjectsRequest;
begin
  Request := TListObjectsRequest.Create;
  Request.BucketName := ABucketName;
  Result := ListObjects(Request);
end;

function TAmazonS3Client.ListObjects(const ABucketName: string; const APrefix: string): IListObjectsResponse;
var
  Request: IListObjectsRequest;
begin
  Request := TListObjectsRequest.Create;
  Request.BucketName := ABucketName;
  Request.Prefix := APrefix;
  Result := ListObjects(Request);
end;

function TAmazonS3Client.ListObjects(Request: IListObjectsRequest): IListObjectsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListObjectsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListObjectsResponseUnmarshaller.Instance;
    Result := Invoke<TListObjectsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.ListVersions(const ABucketName: string): IListVersionsResponse;
var
  Request: IListVersionsRequest;
begin
  Request := TListVersionsRequest.Create;
  Request.BucketName := ABucketName;
  Result := ListVersions(Request);
end;

function TAmazonS3Client.ListVersions(const ABucketName: string; const APrefix: string): IListVersionsResponse;
var
  Request: IListVersionsRequest;
begin
  Request := TListVersionsRequest.Create;
  Request.BucketName := ABucketName;
  Request.Prefix := APrefix;
  Result := ListVersions(Request);
end;

function TAmazonS3Client.ListVersions(Request: IListVersionsRequest): IListVersionsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TListVersionsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TListVersionsResponseUnmarshaller.Instance;
    Result := Invoke<TListVersionsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucket(const ABucketName: string): IPutBucketResponse;
var
  Request: IPutBucketRequest;
begin
  Request := TPutBucketRequest.Create;
  Request.BucketName := ABucketName;
  Result := PutBucket(Request);
end;

function TAmazonS3Client.PutBucket(Request: IPutBucketRequest): IPutBucketResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutBucketOwnershipControls(Request: IPutBucketOwnershipControlsRequest): IPutBucketOwnershipControlsResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutBucketOwnershipControlsRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutBucketOwnershipControlsResponseUnmarshaller.Instance;
    Result := Invoke<TPutBucketOwnershipControlsResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutObject(Request: IPutObjectRequest): IPutObjectResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TPutObjectRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TPutObjectResponseUnmarshaller.Instance;
    Result := Invoke<TPutObjectResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.PutPublicAccessBlock(Request: IPutPublicAccessBlockRequest): IPutPublicAccessBlockResponse;
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

function TAmazonS3Client.UploadPart(Request: IUploadPartRequest): IUploadPartResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TUploadPartRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TUploadPartResponseUnmarshaller.Instance;
    Result := Invoke<TUploadPartResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.WriteGetObjectResponse(Request: IWriteGetObjectResponseRequest): IWriteGetObjectResponseResponse;
var
  Options: TInvokeOptions;
begin
  Options := TInvokeOptions.Create;
  try
    Options.RequestMarshaller := TWriteGetObjectResponseRequestMarshaller.Instance;
    Options.ResponseUnmarshaller := TWriteGetObjectResponseResponseUnmarshaller.Instance;
    Result := Invoke<TWriteGetObjectResponseResponse>(Request.Obj, Options);
  finally
    Options.Free;
  end;
end;

function TAmazonS3Client.GetPresignedUrl(Request: IGetPresignedUrlRequest): string;
begin
  Result := TAmazonS3ClientExtensions.GetPresignedUrl(Self, Request);
end;

end.
