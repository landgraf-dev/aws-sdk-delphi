unit AWS.S3.Transform.InitiateMultipartUploadRequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.InitiateMultipartUploadRequest,
  AWS.S3.Util.S3Constants,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Internal.S3Transforms,
  AWS.Internal.DefaultRequest,
  AWS.Internal.StringUtils,
  AWS.S3.Exception,
  AWS.SDKUtils;

type
  IInitiateMultipartUploadRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TInitiateMultipartUploadRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TInitiateMultipartUploadRequest>, IInitiateMultipartUploadRequestMarshaller)
  strict private
    class var FInstance: IInitiateMultipartUploadRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TInitiateMultipartUploadRequest): IRequest; overload;
    class function Instance: IInitiateMultipartUploadRequestMarshaller; static;
  end;
  
implementation

{ TInitiateMultipartUploadRequestMarshaller }

function TInitiateMultipartUploadRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TInitiateMultipartUploadRequest(AInput));
end;

function TInitiateMultipartUploadRequestMarshaller.Marshall(PublicRequest: TInitiateMultipartUploadRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'POST';

  if PublicRequest.IsSetACL then
    Request.Headers.Add(THeaderKeys.XAmzAclHeader, PublicRequest.ACL.Value);

  if (PublicRequest.IsSetExpectedBucketOwner) then
      Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

//  var headers := PublicRequest.Headers;
//  for var key in headers.Keys do
//    Request.Headers.Add(key, headers[key]);
//
//  THeaderACLRequestMarshaller.Marshall(Request, PublicRequest);

  if PublicRequest.IsSetServerSideEncryption then
    Request.Headers.Add(THeaderKeys.XAmzServerSideEncryptionHeader, TS3Transforms.ToStringValue(PublicRequest.ServerSideEncryption.Value));
  if PublicRequest.IsSetSSECustomerAlgorithm then
    Request.Headers.Add(THeaderKeys.XAmzSSECustomerAlgorithmHeader, PublicRequest.SSECustomerAlgorithm);
  if PublicRequest.IsSetSSECustomerKey then
  begin
    Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyHeader, PublicRequest.SSECustomerKey);
    if PublicRequest.IsSetSSECustomerKeyMD5 then
      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, PublicRequest.SSECustomerKeyMD5)
    else
      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, TAmazonS3Util.ComputeEncodedMD5FromEncodedString(PublicRequest.SSECustomerKey));
  end;

  if PublicRequest.IsSetSSEKMSKeyId then
      Request.Headers.Add(THeaderKeys.XAmzServerSideEncryptionAwsKmsKeyIdHeader, PublicRequest.SSEKMSKeyId);

  if PublicRequest.IsSetSSEKMSEncryptionContext then
      Request.Headers.Add('x-amz-server-side-encryption-context', PublicRequest.SSEKMSEncryptionContext);

  if PublicRequest.IsSetStorageClass then
    Request.Headers.Add(THeaderKeys.XAmzStorageClassHeader, TS3Transforms.ToStringValue(PublicRequest.StorageClass.Value));

  if PublicRequest.IsSetWebsiteRedirectLocation then
    Request.Headers.Add(THeaderKeys.XAmzWebsiteRedirectLocationHeader, TS3Transforms.ToStringValue(PublicRequest.WebsiteRedirectLocation));
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add(TS3Constants.AmzHeaderRequestPayer, TS3Transforms.ToStringValue(PublicRequest.RequestPayer.Value));

  if PublicRequest.IsSetObjectLockLegalHoldStatus then
    Request.Headers.Add('x-amz-object-lock-legal-hold', TS3Transforms.ToStringValue(PublicRequest.ObjectLockLegalHoldStatus.Value));
  if PublicRequest.IsSetObjectLockMode then
    Request.Headers.Add('x-amz-object-lock-mode', TS3Transforms.ToStringValue(PublicRequest.ObjectLockMode.Value));
  if PublicRequest.IsSetObjectLockRetainUntilDate then
    Request.Headers.Add('x-amz-object-lock-retain-until-date', TS3Transforms.ToStringValue(PublicRequest.ObjectLockRetainUntilDate, TAWSSDKUtils.ISO8601DateFormat));

  if PublicRequest.IsSetTagging then
    Request.Headers.Add(TS3Constants.AmzHeaderTagging, PublicRequest.Tagging);

  if PublicRequest.IsSetBucketKeyEnabled then
    Request.Headers.Add(TS3Constants.AmzHeaderBucketKeyEnabled, TS3Transforms.ToStringValue(PublicRequest.BucketKeyEnabled));

//  TAmazonS3Util.SetMetadataHeaders(Request, PublicRequest.Metadata);

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');
  if string.IsNullOrEmpty(PublicRequest.Key) then
    raise EArgumentException.Create('Key is a required property and must be set before making this call');

  Request.ResourcePath := Format('/%s/%s', [
    TS3Transforms.ToStringValue(PublicRequest.BucketName),
    TS3Transforms.ToStringValue(PublicRequest.Key)]);

  Request.AddSubResource('uploads');

  Request.UseQueryString := True;

  Result := Request;
end;

class constructor TInitiateMultipartUploadRequestMarshaller.Create;
begin
  FInstance := TInitiateMultipartUploadRequestMarshaller.Create;
end;

class function TInitiateMultipartUploadRequestMarshaller.Instance: IInitiateMultipartUploadRequestMarshaller;
begin
  Result := FInstance;
end;

end.
