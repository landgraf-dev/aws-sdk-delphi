unit AWS.S3.Transform.CopyObjectRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.CopyObjectRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
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
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetACL then
    Request.Headers.Add('x-amz-acl', PublicRequest.ACL.Value);
  if PublicRequest.IsSetBucketKeyEnabled then
    Request.Headers.Add('x-amz-server-side-encryption-bucket-key-enabled', TStringUtils.FromBoolean(PublicRequest.BucketKeyEnabled));
  if PublicRequest.IsSetCacheControl then
    Request.Headers.Add('Cache-Control', PublicRequest.CacheControl);
  if PublicRequest.IsSetContentDisposition then
    Request.Headers.Add('Content-Disposition', PublicRequest.ContentDisposition);
  if PublicRequest.IsSetContentEncoding then
    Request.Headers.Add('Content-Encoding', PublicRequest.ContentEncoding);
  if PublicRequest.IsSetContentLanguage then
    Request.Headers.Add('Content-Language', PublicRequest.ContentLanguage);
  if PublicRequest.IsSetContentType then
    Request.Headers.Add('Content-Type', PublicRequest.ContentType);
  if PublicRequest.IsSetCopySourceIfMatch then
    Request.Headers.Add('x-amz-copy-source-if-match', PublicRequest.CopySourceIfMatch);
  if PublicRequest.IsSetCopySourceIfModifiedSince then
    Request.Headers.Add('x-amz-copy-source-if-modified-since', TStringUtils.FromDateTimeToRFC822(PublicRequest.CopySourceIfModifiedSince));
  if PublicRequest.IsSetCopySourceIfNoneMatch then
    Request.Headers.Add('x-amz-copy-source-if-none-match', PublicRequest.CopySourceIfNoneMatch);
  if PublicRequest.IsSetCopySourceIfUnmodifiedSince then
    Request.Headers.Add('x-amz-copy-source-if-unmodified-since', TStringUtils.FromDateTimeToRFC822(PublicRequest.CopySourceIfUnmodifiedSince));
  if PublicRequest.IsSetCopySourceSSECustomerAlgorithm then
    Request.Headers.Add('x-amz-copy-source-server-side-encryption-customer-algorithm', PublicRequest.CopySourceSSECustomerAlgorithm);
  if PublicRequest.IsSetCopySourceSSECustomerKey then
    Request.Headers.Add('x-amz-copy-source-server-side-encryption-customer-key', PublicRequest.CopySourceSSECustomerKey);
  if PublicRequest.IsSetCopySourceSSECustomerKeyMD5 then
    Request.Headers.Add('x-amz-copy-source-server-side-encryption-customer-key-MD5', PublicRequest.CopySourceSSECustomerKeyMD5);
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetExpectedSourceBucketOwner then
    Request.Headers.Add('x-amz-source-expected-bucket-owner', PublicRequest.ExpectedSourceBucketOwner);
  if PublicRequest.IsSetExpires then
    Request.Headers.Add('Expires', TStringUtils.FromDateTimeToRFC822(PublicRequest.Expires));
  if PublicRequest.IsSetGrantFullControl then
    Request.Headers.Add('x-amz-grant-full-control', PublicRequest.GrantFullControl);
  if PublicRequest.IsSetGrantRead then
    Request.Headers.Add('x-amz-grant-read', PublicRequest.GrantRead);
  if PublicRequest.IsSetGrantReadACP then
    Request.Headers.Add('x-amz-grant-read-acp', PublicRequest.GrantReadACP);
  if PublicRequest.IsSetGrantWriteACP then
    Request.Headers.Add('x-amz-grant-write-acp', PublicRequest.GrantWriteACP);
  if PublicRequest.IsSetMetadataDirective then
    Request.Headers.Add('x-amz-metadata-directive', PublicRequest.MetadataDirective.Value);
  if PublicRequest.IsSetObjectLockLegalHoldStatus then
    Request.Headers.Add('x-amz-object-lock-legal-hold', PublicRequest.ObjectLockLegalHoldStatus.Value);
  if PublicRequest.IsSetObjectLockMode then
    Request.Headers.Add('x-amz-object-lock-mode', PublicRequest.ObjectLockMode.Value);
  if PublicRequest.IsSetObjectLockRetainUntilDate then
    Request.Headers.Add('x-amz-object-lock-retain-until-date', TStringUtils.FromDateTimeToISO8601(PublicRequest.ObjectLockRetainUntilDate));
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add('x-amz-request-payer', PublicRequest.RequestPayer.Value);
  if PublicRequest.IsSetSSECustomerAlgorithm then
    Request.Headers.Add('x-amz-server-side-encryption-customer-algorithm', PublicRequest.SSECustomerAlgorithm);
  if PublicRequest.IsSetSSECustomerKey then
    Request.Headers.Add('x-amz-server-side-encryption-customer-key', PublicRequest.SSECustomerKey);
  if PublicRequest.IsSetSSECustomerKeyMD5 then
    Request.Headers.Add('x-amz-server-side-encryption-customer-key-MD5', PublicRequest.SSECustomerKeyMD5);
  if PublicRequest.IsSetSSEKMSEncryptionContext then
    Request.Headers.Add('x-amz-server-side-encryption-context', PublicRequest.SSEKMSEncryptionContext);
  if PublicRequest.IsSetSSEKMSKeyId then
    Request.Headers.Add('x-amz-server-side-encryption-aws-kms-key-id', PublicRequest.SSEKMSKeyId);
  if PublicRequest.IsSetServerSideEncryption then
    Request.Headers.Add('x-amz-server-side-encryption', PublicRequest.ServerSideEncryption.Value);
  if PublicRequest.IsSetStorageClass then
    Request.Headers.Add('x-amz-storage-class', PublicRequest.StorageClass.Value);
  if PublicRequest.IsSetTagging then
    Request.Headers.Add('x-amz-tagging', PublicRequest.Tagging);
  if PublicRequest.IsSetTaggingDirective then
    Request.Headers.Add('x-amz-tagging-directive', PublicRequest.TaggingDirective.Value);
  if PublicRequest.IsSetWebsiteRedirectLocation then
    Request.Headers.Add('x-amz-website-redirect-location', PublicRequest.WebsiteRedirectLocation);
  Request.ResourcePath := '/{Bucket}/{Key+}';
  var XmlStream := TBytesStream.Create;
  try
    var XmlWriter := TXmlWriter.Create(XmlStream, False, TEncoding.UTF8);
    try
      XmlWriter.WriteStartElement('', '');
      if PublicRequest.IsSetDestinationBucket then
        XmlWriter.WriteElementString('DestinationBucket', '', TStringUtils.Fromstring(PublicRequest.DestinationBucket));
      if PublicRequest.IsSetDestinationKey then
        XmlWriter.WriteElementString('DestinationKey', '', TStringUtils.Fromstring(PublicRequest.DestinationKey));
      if PublicRequest.IsSetSourceBucket then
        XmlWriter.WriteElementString('SourceBucket', '', TStringUtils.Fromstring(PublicRequest.SourceBucket));
      if PublicRequest.IsSetSourceKey then
        XmlWriter.WriteElementString('SourceKey', '', TStringUtils.Fromstring(PublicRequest.SourceKey));
      if PublicRequest.IsSetSourceVersionId then
        XmlWriter.WriteElementString('SourceVersionId', '', TStringUtils.Fromstring(PublicRequest.SourceVersionId));
      XmlWriter.WriteEndElement;
    finally
      XmlWriter.Free;
    end;
    Request.Content := Copy(XmlStream.Bytes, 0, XmlStream.Size);
    Request.Headers.AddOrSetValue('Content-Type', 'application/xml');
    var content := TEncoding.UTF8.GetString(Request.Content);
    Request.Headers.AddOrSetValue(THeaderKeys.XAmzApiVersion, '2006-03-01');
  finally
    XmlStream.Free;
  end;
  Result := Request;
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
