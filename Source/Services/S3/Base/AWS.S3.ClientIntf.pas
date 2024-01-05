unit AWS.S3.ClientIntf;

interface

uses
  AWS.S3.Model.GetPresignedUrlRequest, 
  AWS.Runtime.Client, 
  AWS.S3.Model.AbortMultipartUploadResponse, 
  AWS.S3.Model.AbortMultipartUploadRequest, 
  AWS.S3.Model.CompleteMultipartUploadResponse, 
  AWS.S3.Model.CompleteMultipartUploadRequest, 
  AWS.S3.Model.DeleteBucketResponse, 
  AWS.S3.Model.DeleteBucketRequest, 
  AWS.S3.Model.DeleteObjectResponse, 
  AWS.S3.Model.DeleteObjectRequest, 
  AWS.S3.Model.DeleteObjectsResponse, 
  AWS.S3.Model.DeleteObjectsRequest, 
  AWS.S3.Model.GetACLResponse, 
  AWS.S3.Model.GetACLRequest, 
  AWS.S3.Model.GetBucketVersioningResponse, 
  AWS.S3.Model.GetBucketVersioningRequest, 
  AWS.S3.Model.GetObjectResponse, 
  AWS.S3.Model.GetObjectRequest, 
  AWS.S3.Model.GetObjectMetadataResponse, 
  AWS.S3.Model.GetObjectMetadataRequest, 
  AWS.S3.Model.InitiateMultipartUploadResponse, 
  AWS.S3.Model.InitiateMultipartUploadRequest, 
  AWS.S3.Model.ListBucketsResponse, 
  AWS.S3.Model.ListBucketsRequest, 
  AWS.S3.Model.ListObjectsResponse, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.S3.Model.ListVersionsResponse, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.S3.Model.PutBucketResponse, 
  AWS.S3.Model.PutBucketRequest, 
  AWS.S3.Model.PutBucketOwnershipControlsResponse, 
  AWS.S3.Model.PutBucketOwnershipControlsRequest, 
  AWS.S3.Model.PutObjectResponse, 
  AWS.S3.Model.PutObjectRequest, 
  AWS.S3.Model.PutPublicAccessBlockResponse, 
  AWS.S3.Model.PutPublicAccessBlockRequest, 
  AWS.S3.Model.UploadPartResponse, 
  AWS.S3.Model.UploadPartRequest;

type
  IAmazonS3 = interface(IAmazonService)
    ['{1489907F-4BAD-42A7-83E9-A7CB74CC5631}']
    function AbortMultipartUpload(const ABucketName: string; const AKey: string; const AUploadId: string): IAbortMultipartUploadResponse; overload;
    function AbortMultipartUpload(Request: IAbortMultipartUploadRequest): IAbortMultipartUploadResponse; overload;
    function CompleteMultipartUpload(Request: ICompleteMultipartUploadRequest): ICompleteMultipartUploadResponse; overload;
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
    function GetPresignedUrl(Request: IGetPresignedUrlRequest): string;
  end;
  
implementation

end.
