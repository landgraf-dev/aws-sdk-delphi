unit AWS.S3.Transform.CopyObjectRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CopyObjectRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils,
  AWS.S3.ArnExtensions,
  AWS.S3.Enums,
  AWS.S3.Internal.S3Transforms,
  AWS.S3.Internal.S3ArnUtils,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Util.S3Constants,
  System.Classes, 
  AWS.Xml.Writer, 
  System.SysUtils, 
  AWS.SDKUtils;

type
  ICopyObjectRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCopyObjectRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCopyObjectRequest>, ICopyObjectRequestMarshaller)
  strict private
    class var FInstance: ICopyObjectRequestMarshaller;
    class constructor Create;
    class function ConstructCopySourceHeaderValue(const Bucket, Key, Version: string): string; static;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCopyObjectRequest): IRequest; overload;
    class function Instance: ICopyObjectRequestMarshaller; static;
  end;
  
implementation

{ TCopyObjectRequestMarshaller }

function TCopyObjectRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCopyObjectRequest(AInput));
end;

function TCopyObjectRequestMarshaller.Marshall(PublicRequest: TCopyObjectRequest): IRequest;
const
  MetadataDirectiveStr: array[TMetadataDirective] of string = ('COPY', 'REPLACE');
var
  Request: IRequest;
begin
  var sourceKey := TAmazonS3Util.RemoveLeadingSlash(PublicRequest.SourceKey);
  var destinationKey := TAmazonS3Util.RemoveLeadingSlash(PublicRequest.DestinationKey);

  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'PUT';

  if PublicRequest.IsSetACL then
    Request.Headers.Add(THeaderKeys.XAmzAclHeader, TS3Transforms.ToStringValue(PublicRequest.ACL.Value));

  var headers := PublicRequest.Headers;
  for var key in headers.Keys do
    Request.Headers.AddOrSetValue(key, headers[key]);

//  THeaderACLRequestMarshaller.Marshall(Request, PublicRequest);

  if PublicRequest.IsSetSourceBucket then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceHeader, ConstructCopySourceHeaderValue(PublicRequest.SourceBucket, sourceKey, PublicRequest.SourceVersionId));

  if PublicRequest.IsSetCopySourceIfMatch then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceIfMatchHeader, TS3Transforms.ToStringValue(PublicRequest.CopySourceIfMatch));

  if PublicRequest.IsSetCopySourceIfModifiedSince then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceIfModifiedSinceHeader, TS3Transforms.ToStringValue(PublicRequest.CopySourceIfModifiedSince));

  if PublicRequest.IsSetCopySourceIfNoneMatch then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceIfNoneMatchHeader, TS3Transforms.ToStringValue(PublicRequest.CopySourceIfNoneMatch));

  if PublicRequest.IsSetCopySourceIfUnmodifiedSince then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceIfUnmodifiedSinceHeader, TS3Transforms.ToStringValue(PublicRequest.CopySourceIfUnmodifiedSince));

  if PublicRequest.IsSetTagging then
  begin
    Request.Headers.Add(TS3Constants.AmzHeaderTagging, PublicRequest.Tagging);
    Request.Headers.Add(TS3Constants.AmzHeaderTaggingDirective, TTaggingDirective.REPLACE.Value);
  end
  else
  begin
    Request.Headers.Add(TS3Constants.AmzHeaderTaggingDirective, TTaggingDirective.COPY.Value);
  end;

  Request.Headers.Add(THeaderKeys.XAmzMetadataDirectiveHeader, TS3Transforms.ToStringValue(MetadataDirectiveStr[PublicRequest.MetadataDirective]));

  if PublicRequest.IsSetObjectLockLegalHoldStatus then
    Request.Headers.Add('x-amz-object-lock-legal-hold', TS3Transforms.ToStringValue(PublicRequest.ObjectLockLegalHoldStatus.Value));
  if PublicRequest.IsSetObjectLockMode then
    Request.Headers.Add('x-amz-object-lock-mode', TS3Transforms.ToStringValue(PublicRequest.ObjectLockMode.Value));
  if PublicRequest.IsSetObjectLockRetainUntilDate then
    Request.Headers.Add('x-amz-object-lock-retain-until-date', TS3Transforms.ToStringValue(PublicRequest.ObjectLockRetainUntilDate, TAWSSDKUtils.ISO8601DateFormat));

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

  if PublicRequest.IsSetCopySourceSSECustomerAlgorithm then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceSSECustomerAlgorithmHeader, PublicRequest.CopySourceSSECustomerAlgorithm);
  if PublicRequest.IsSetCopySourceSSECustomerKey then
  begin
    Request.Headers.Add(THeaderKeys.XAmzCopySourceSSECustomerKeyHeader, PublicRequest.CopySourceSSECustomerKey);
    if PublicRequest.IsSetCopySourceSSECustomerKeyMD5 then
      Request.Headers.Add(THeaderKeys.XAmzCopySourceSSECustomerKeyMD5Header, PublicRequest.CopySourceSSECustomerKeyMD5)
    else
      Request.Headers.Add(THeaderKeys.XAmzCopySourceSSECustomerKeyMD5Header, TAmazonS3Util.ComputeEncodedMD5FromEncodedString(PublicRequest.CopySourceSSECustomerKey));
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

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if PublicRequest.IsSetExpectedSourceBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedSourceBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedSourceBucketOwner));

  if PublicRequest.IsSetBucketKeyEnabled then
    Request.Headers.Add(TS3Constants.AmzHeaderBucketKeyEnabled, TS3Transforms.ToStringValue(PublicRequest.BucketKeyEnabled));

  TAmazonS3Util.SetMetadataHeaders(request, PublicRequest.Metadata);

  if string.IsNullOrEmpty(PublicRequest.DestinationBucket) then
    raise EArgumentException.Create('DestinationBucket is a required property and must be set before making this call');
  if string.IsNullOrEmpty(destinationKey) then
    raise EArgumentException.Create('DestinationKey is a required property and must be set before making this call.');

  Request.ResourcePath := Format('/%s/%s',
    [TS3Transforms.ToStringValue(PublicRequest.DestinationBucket),
    TS3Transforms.ToStringValue(destinationKey)]);
  Request.UseQueryString := True;

  Result := Request;
end;

class function TCopyObjectRequestMarshaller.ConstructCopySourceHeaderValue(const Bucket, Key, Version: string): string;
begin
  if not String.IsNullOrEmpty(Key) then
  begin
    var isAccessPoint := TS3ArnUtils.IsS3AccessPointsArn(Bucket) or TS3ArnUtils.IsS3OutpostsArn(Bucket);

    // 'object/' needed appended to key for copy header with access points
    var str: string := '/';
    if isAccessPoint then
      str := '/object/';
    
    Result := TAmazonS3Util.UrlEncode(bucket + str + key, not isAccessPoint);
    if Version <> '' then
      Result := Format('%s?versionId=%s', [Result, TAmazonS3Util.UrlEncode(Version, True)]);
  end
  else
    Result := TAmazonS3Util.UrlEncode(Bucket, True);
end;

class constructor TCopyObjectRequestMarshaller.Create;
begin
  FInstance := TCopyObjectRequestMarshaller.Create;
end;

class function TCopyObjectRequestMarshaller.Instance: ICopyObjectRequestMarshaller;
begin
  Result := FInstance;
end;

end.
