unit AWS.S3.Transform.WriteGetObjectResponseRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.WriteGetObjectResponseRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception, 
  AWS.Internal.Util.HostPrefixUtils;

type
  IWriteGetObjectResponseRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TWriteGetObjectResponseRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TWriteGetObjectResponseRequest>, IWriteGetObjectResponseRequestMarshaller)
  strict private
    class var FInstance: IWriteGetObjectResponseRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TWriteGetObjectResponseRequest): IRequest; overload;
    class function Instance: IWriteGetObjectResponseRequestMarshaller; static;
  end;
  
implementation

{ TWriteGetObjectResponseRequestMarshaller }

function TWriteGetObjectResponseRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TWriteGetObjectResponseRequest(AInput));
end;

function TWriteGetObjectResponseRequestMarshaller.Marshall(PublicRequest: TWriteGetObjectResponseRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'POST';
  if PublicRequest.IsSetAcceptRanges then
    Request.Headers.Add('x-amz-fwd-header-accept-ranges', PublicRequest.AcceptRanges);
  if PublicRequest.IsSetBucketKeyEnabled then
    Request.Headers.Add('x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled', TStringUtils.FromBoolean(PublicRequest.BucketKeyEnabled));
  if PublicRequest.IsSetCacheControl then
    Request.Headers.Add('x-amz-fwd-header-Cache-Control', PublicRequest.CacheControl);
  if PublicRequest.IsSetContentDisposition then
    Request.Headers.Add('x-amz-fwd-header-Content-Disposition', PublicRequest.ContentDisposition);
  if PublicRequest.IsSetContentEncoding then
    Request.Headers.Add('x-amz-fwd-header-Content-Encoding', PublicRequest.ContentEncoding);
  if PublicRequest.IsSetContentLanguage then
    Request.Headers.Add('x-amz-fwd-header-Content-Language', PublicRequest.ContentLanguage);
  if PublicRequest.IsSetContentLength then
    Request.Headers.Add('Content-Length', TStringUtils.FromInt64(PublicRequest.ContentLength));
  if PublicRequest.IsSetContentRange then
    Request.Headers.Add('x-amz-fwd-header-Content-Range', PublicRequest.ContentRange);
  if PublicRequest.IsSetContentType then
    Request.Headers.Add('x-amz-fwd-header-Content-Type', PublicRequest.ContentType);
  if PublicRequest.IsSetDeleteMarker then
    Request.Headers.Add('x-amz-fwd-header-x-amz-delete-marker', TStringUtils.FromBoolean(PublicRequest.DeleteMarker));
  if PublicRequest.IsSetETag then
    Request.Headers.Add('x-amz-fwd-header-ETag', PublicRequest.ETag);
  if PublicRequest.IsSetErrorCode then
    Request.Headers.Add('x-amz-fwd-error-code', PublicRequest.ErrorCode);
  if PublicRequest.IsSetErrorMessage then
    Request.Headers.Add('x-amz-fwd-error-message', PublicRequest.ErrorMessage);
  if PublicRequest.IsSetExpiration then
    Request.Headers.Add('x-amz-fwd-header-x-amz-expiration', PublicRequest.Expiration);
  if PublicRequest.IsSetExpires then
    Request.Headers.Add('x-amz-fwd-header-Expires', TStringUtils.FromDateTimeToRFC822(PublicRequest.Expires));
  if PublicRequest.IsSetLastModified then
    Request.Headers.Add('x-amz-fwd-header-Last-Modified', TStringUtils.FromDateTimeToRFC822(PublicRequest.LastModified));
  if PublicRequest.IsSetMissingMeta then
    Request.Headers.Add('x-amz-fwd-header-x-amz-missing-meta', TStringUtils.FromInteger(PublicRequest.MissingMeta));
  if PublicRequest.IsSetObjectLockLegalHoldStatus then
    Request.Headers.Add('x-amz-fwd-header-x-amz-object-lock-legal-hold', PublicRequest.ObjectLockLegalHoldStatus.Value);
  if PublicRequest.IsSetObjectLockMode then
    Request.Headers.Add('x-amz-fwd-header-x-amz-object-lock-mode', PublicRequest.ObjectLockMode.Value);
  if PublicRequest.IsSetObjectLockRetainUntilDate then
    Request.Headers.Add('x-amz-fwd-header-x-amz-object-lock-retain-until-date', TStringUtils.FromDateTimeToISO8601(PublicRequest.ObjectLockRetainUntilDate));
  if PublicRequest.IsSetPartsCount then
    Request.Headers.Add('x-amz-fwd-header-x-amz-mp-parts-count', TStringUtils.FromInteger(PublicRequest.PartsCount));
  if PublicRequest.IsSetReplicationStatus then
    Request.Headers.Add('x-amz-fwd-header-x-amz-replication-status', PublicRequest.ReplicationStatus.Value);
  if PublicRequest.IsSetRequestCharged then
    Request.Headers.Add('x-amz-fwd-header-x-amz-request-charged', PublicRequest.RequestCharged.Value);
  if PublicRequest.IsSetRequestRoute then
    Request.Headers.Add('x-amz-request-route', PublicRequest.RequestRoute);
  if PublicRequest.IsSetRequestToken then
    Request.Headers.Add('x-amz-request-token', PublicRequest.RequestToken);
  if PublicRequest.IsSetRestore then
    Request.Headers.Add('x-amz-fwd-header-x-amz-restore', PublicRequest.Restore);
  if PublicRequest.IsSetSSECustomerAlgorithm then
    Request.Headers.Add('x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm', PublicRequest.SSECustomerAlgorithm);
  if PublicRequest.IsSetSSECustomerKeyMD5 then
    Request.Headers.Add('x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5', PublicRequest.SSECustomerKeyMD5);
  if PublicRequest.IsSetSSEKMSKeyId then
    Request.Headers.Add('x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id', PublicRequest.SSEKMSKeyId);
  if PublicRequest.IsSetServerSideEncryption then
    Request.Headers.Add('x-amz-fwd-header-x-amz-server-side-encryption', PublicRequest.ServerSideEncryption.Value);
  if PublicRequest.IsSetStatusCode then
    Request.Headers.Add('x-amz-fwd-status', TStringUtils.FromInteger(PublicRequest.StatusCode));
  if PublicRequest.IsSetStorageClass then
    Request.Headers.Add('x-amz-fwd-header-x-amz-storage-class', PublicRequest.StorageClass.Value);
  if PublicRequest.IsSetTagCount then
    Request.Headers.Add('x-amz-fwd-header-x-amz-tagging-count', TStringUtils.FromInteger(PublicRequest.TagCount));
  if PublicRequest.IsSetVersionId then
    Request.Headers.Add('x-amz-fwd-header-x-amz-version-id', PublicRequest.VersionId);
  Request.ResourcePath := '/WriteGetObjectResponse';
  var hostPrefixLabels_RequestRoute := TStringUtils.Fromstring(PublicRequest.RequestRoute);
  if not THostPrefixUtils.IsValidLabelValue(hostPrefixLabels_RequestRoute) then
    raise EAmazonS3Exception.Create('RequestRoute can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');
  Request.HostPrefix := 'RequestRoute.';
  Result := Request;
end;

class constructor TWriteGetObjectResponseRequestMarshaller.Create;
begin
  FInstance := TWriteGetObjectResponseRequestMarshaller.Create;
end;

class function TWriteGetObjectResponseRequestMarshaller.Instance: IWriteGetObjectResponseRequestMarshaller;
begin
  Result := FInstance;
end;

end.
