unit AWS.S3.Transform.WriteGetObjectResponseRequestMarshaller;

interface

uses
  System.SysUtils, System.Classes,
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.WriteGetObjectResponseRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception, 
  AWS.S3.Internal.S3Transforms,
  AWS.S3.Util.AmazonS3Util,
  AWS.Internal.Util.HostPrefixUtils,
  AWS.Util.Streams,
  AWS.SDKUtils;

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

  if not PublicRequest.IsSetRequestRoute then
    raise EArgumentException.Create('RequestRoute is a required property and must be set before making this call.');
  if not PublicRequest.IsSetRequestToken then
    raise EArgumentException.Create('RequestToken is a required property and must be set before making this call.');

  if (PublicRequest.IsSetRequestRoute) then
    Request.Headers.AddOrSetValue('x-amz-Request-route', TS3Transforms.ToStringValue(PublicRequest.RequestRoute));

  if (PublicRequest.IsSetRequestToken) then
    Request.Headers.AddOrSetValue('x-amz-Request-token', TS3Transforms.ToStringValue(PublicRequest.RequestToken));

  if (PublicRequest.IsSetStatusCode) then
    Request.Headers.AddOrSetValue('x-amz-fwd-status', TS3Transforms.ToStringValue(PublicRequest.StatusCode.ToString));

  if (PublicRequest.IsSetErrorCode) then
    Request.Headers.AddOrSetValue('x-amz-fwd-error-code', TS3Transforms.ToStringValue(PublicRequest.ErrorCode));

  if (PublicRequest.IsSetErrorMessage) then
    Request.Headers.AddOrSetValue('x-amz-fwd-error-message', TS3Transforms.ToStringValue(PublicRequest.ErrorMessage));

  if (PublicRequest.IsSetAcceptRanges) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-accept-ranges', TS3Transforms.ToStringValue(PublicRequest.AcceptRanges));

  if (PublicRequest.IsSetCacheControl) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-Cache-Control', TS3Transforms.ToStringValue(PublicRequest.CacheControl));

  if (PublicRequest.IsSetContentDisposition) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-Content-Disposition', TS3Transforms.ToStringValue(PublicRequest.ContentDisposition));

  if (PublicRequest.IsSetContentEncoding) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-Content-Encoding', TS3Transforms.ToStringValue(PublicRequest.ContentEncoding));

  if (PublicRequest.IsSetContentLanguage) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-Content-Language', TS3Transforms.ToStringValue(PublicRequest.ContentLanguage));

  if (PublicRequest.IsSetContentRange) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-Content-Range', TS3Transforms.ToStringValue(PublicRequest.ContentRange));

  if (PublicRequest.IsSetContentType) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-Content-Type', TS3Transforms.ToStringValue(PublicRequest.ContentType));

  if (PublicRequest.IsSetDeleteMarker) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-delete-marker', TS3Transforms.ToStringValue(PublicRequest.DeleteMarker));

  if (PublicRequest.IsSetETag) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-ETag', TS3Transforms.ToStringValue(PublicRequest.ETag));

  if (PublicRequest.IsSetExpires) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-Expires', TS3Transforms.ToStringValue(PublicRequest.Expires));

  if (PublicRequest.IsSetExpiration) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-expiration', TS3Transforms.ToStringValue(PublicRequest.Expiration));

  if (PublicRequest.IsSetLastModified) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-Last-Modified', TS3Transforms.ToStringValue(PublicRequest.LastModified));

  if (PublicRequest.IsSetMissingMeta) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-missing-meta', TS3Transforms.ToStringValue(PublicRequest.MissingMeta.ToString));

  TAmazonS3Util.SetMetadataHeaders(Request, PublicRequest.Metadata);

  if (PublicRequest.IsSetObjectLockMode) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-object-lock-mode', TS3Transforms.ToStringValue(PublicRequest.ObjectLockMode.Value));

  if (PublicRequest.IsSetObjectLockLegalHoldStatus) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-object-lock-legal-hold', TS3Transforms.ToStringValue(PublicRequest.ObjectLockLegalHoldStatus.Value));

  if (PublicRequest.IsSetObjectLockRetainUntilDate) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-object-lock-retain-until-date', TS3Transforms.ToStringValue(PublicRequest.ObjectLockRetainUntilDate));

  if (PublicRequest.IsSetPartsCount) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-mp-parts-count', TS3Transforms.ToStringValue(PublicRequest.PartsCount.ToString));

  if (PublicRequest.IsSetReplicationStatus) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-replication-status', TS3Transforms.ToStringValue(PublicRequest.ReplicationStatus.Value));

  if (PublicRequest.IsSetRequestCharged) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-Request-charged', TS3Transforms.ToStringValue(PublicRequest.RequestCharged.Value));

  if (PublicRequest.IsSetRestore) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-restore', TS3Transforms.ToStringValue(PublicRequest.Restore));

  if PublicRequest.IsSetServerSideEncryption then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-server-side-encryption', TS3Transforms.ToStringValue(PublicRequest.ServerSideEncryption.Value));

  if (PublicRequest.IsSetSSECustomerAlgorithm) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm', TS3Transforms.ToStringValue(PublicRequest.SSECustomerAlgorithm));

  if (PublicRequest.IsSetSSEKMSKeyId) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id', TS3Transforms.ToStringValue(PublicRequest.SSEKMSKeyId));

  if (PublicRequest.IsSetSSECustomerKeyMD5) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5', TS3Transforms.ToStringValue(PublicRequest.SSECustomerKeyMD5));

  if (PublicRequest.IsSetStorageClass) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-storage-class', TS3Transforms.ToStringValue(PublicRequest.StorageClass.Value));

  if (PublicRequest.IsSetTagCount) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-tagging-count', TS3Transforms.ToStringValue(PublicRequest.TagCount.ToString));

  if (PublicRequest.IsSetVersionId) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-version-id', TS3Transforms.ToStringValue(PublicRequest.VersionId));

  if (PublicRequest.IsSetBucketKeyEnabled) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled', TS3Transforms.ToStringValue(PublicRequest.BucketKeyEnabled));

  if PublicRequest.Body <> nil then
    Request.ContentStream := PublicRequest.Body
  else
  begin
    Request.ContentStream := TMemoryStream.Create;
    Request.OwnsContentStream := True;
  end;
  
  if (PublicRequest.IsSetContentLength) then
  begin
    var length := PublicRequest.ContentLength;
    Request.Headers.AddOrSetValue('Content-Length', length.ToString);
  end
  else 
  if CanSeek(Request.ContentStream) then
  begin
    Request.Headers.AddOrSetValue('Content-Length', Request.ContentStream.Size.ToString);
  end
  else
  begin
    Request.Headers.AddOrSetValue(THeaderKeys.TransferEncodingHeader, 'chunked');
  end;

  Request.DisablePayloadSigning := True;

  if (not PublicRequest.IsSetContentType) then
    Request.Headers.AddOrSetValue('x-amz-fwd-header-Content-Type', 'binary/octet-stream');

  var RequestRoute := TStringUtils.FromString(PublicRequest.RequestRoute);

  if not THostPrefixUtils.IsValidLabelValue(RequestRoute) then
    raise EAmazonS3Exception.Create('RequestRoute can only contain alphanumeric characters and dashes and must be between 1 and 63 characters long.');

  Request.HostPrefix := Format('%s.', [RequestRoute]);

  Request.ResourcePath := Format('/%s', [TS3Transforms.ToStringValue('WriteGetObjectResponse')]);

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
