unit AWS.S3.Transform.PutObjectRequestMarshaller;

interface

uses
  System.SysUtils, System.Classes,
  AWS.Internal.DefaultRequest,
  AWS.Internal.Request,
  AWS.Internal.StringUtils,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.SDKUtils,
  AWS.Internal.Util.HashStream,
  AWS.S3.Model.PutObjectRequest,
  AWS.S3.Exception,
  AWS.S3.Internal.AWSConfigsS3,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  AWS.S3.Util.AmazonS3Util;

type
  IPutObjectRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TPutObjectRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TPutObjectRequest>, IPutObjectRequestMarshaller)
  strict private
    class var FInstance: IPutObjectRequestMarshaller;
    class constructor Create;
    class function GetStreamWithLength(BaseStream: TStream; HintLength: Int64): TStream; static;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TPutObjectRequest): IRequest; overload;
    class function Instance: IPutObjectRequestMarshaller; static;
  end;
  
implementation

{ TPutObjectRequestMarshaller }

function TPutObjectRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TPutObjectRequest(AInput));
end;

function TPutObjectRequestMarshaller.Marshall(PublicRequest: TPutObjectRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  Request.HttpMethod := 'PUT';

  if PublicRequest.IsSetACL then
    Request.Headers.Add(THeaderKeys.XAmzAclHeader, TS3Transforms.ToStringValue(PublicRequest.ACL.Value));

//  var headers := PublicRequest.Headers;
//  for var Key in headers.Keys do
//    Request.Headers[Key] := headers[key];

  if PublicRequest.IsSetMD5Digest then
    Request.Headers.Add(THeaderKeys.ContentMD5Header, PublicRequest.MD5Digest);

//  THeaderACLRequestMarshaller.Marshall(Request, PublicRequest);

  if PublicRequest.IsSetServerSideEncryption then
    Request.Headers.Add(THeaderKeys.XAmzServerSideEncryptionHeader, TS3Transforms.ToStringValue(PublicRequest.ServerSideEncryption.Value));

  if PublicRequest.IsSetStorageClass then
    Request.Headers.Add(THeaderKeys.XAmzStorageClassHeader, TS3Transforms.ToStringValue(PublicRequest.StorageClass.Value));

  if PublicRequest.IsSetWebsiteRedirectLocation then
    Request.Headers.Add(THeaderKeys.XAmzWebsiteRedirectLocationHeader, TS3Transforms.ToStringValue(PublicRequest.WebsiteRedirectLocation));

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

  if PublicRequest.IsSetObjectLockLegalHoldStatus then
    Request.Headers.Add('x-amz-object-lock-legal-hold', TS3Transforms.ToStringValue(PublicRequest.ObjectLockLegalHoldStatus.Value));

  if PublicRequest.IsSetObjectLockMode then
    Request.Headers.Add('x-amz-object-lock-mode', TS3Transforms.ToStringValue(PublicRequest.ObjectLockMode.Value));

  if PublicRequest.IsSetObjectLockRetainUntilDate then
    Request.Headers.Add('x-amz-object-lock-retain-until-date', TS3Transforms.ToStringValue(PublicRequest.ObjectLockRetainUntilDate, TAWSSDKUtils.ISO8601DateFormat));

  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add(TS3Constants.AmzHeaderRequestPayer, TS3Transforms.ToStringValue(PublicRequest.RequestPayer.Value));

  if PublicRequest.IsSetTagging then
    Request.Headers.Add(TS3Constants.AmzHeaderTagging, PublicRequest.Tagging);

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

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

  if PublicRequest.InputStream <> nil then
  begin
    // Wrap the stream in a stream that has a length
    var streamWithLength := GetStreamWithLength(PublicRequest.InputStream, PublicRequest.ContentLength);
    try
      if (streamWithLength.Size > 0) and not PublicRequest.DisablePayloadSigning then
        Request.UseChunkEncoding := PublicRequest.UseChunkEncoding;
      var length := streamWithLength.Size - streamWithLength.Position;
      if not Request.Headers.ContainsKey(THeaderKeys.ContentLengthHeader) then
        Request.Headers.AddOrSetValue(THeaderKeys.ContentLengthHeader, IntToStr(length));

      Request.DisablePayloadSigning := PublicRequest.DisablePayloadSigning;

      // Calculate Content-MD5 if not already set
      if not PublicRequest.IsSetMD5Digest and PublicRequest.CalculateContentMD5Header then
      begin
        var md5 := TAmazonS3Util.GenerateMD5ChecksumForStream(PublicRequest.InputStream);

        if md5 <> '' then
          Request.Headers.AddOrSetValue(THeaderKeys.ContentMD5Header, md5);
      end;

      var DisableMD5 := TAWSConfigsS3.DisableMD5Stream;
      if PublicRequest.DisableMD5Stream.HasValue then
        DisableMD5 := PublicRequest.DisableMD5Stream.HasValue;

      var OwnsOriginalStream := not PublicRequest.KeepInputStream;
      if not DisableMD5 then
      begin
        // Wrap input stream in MD5Stream
        var hashStream := TMD5Stream.Create(streamWithLength, [], length, OwnsOriginalStream);
        PublicRequest.KeepInputStream := True;
        PublicRequest.InputStream := hashStream;
        PublicRequest.KeepInputStream := False;
      end;
    except
      raise;
    end;
  end;

  Request.ContentStream := PublicRequest.InputStream;
  Request.OwnsContentStream := False;
  if not Request.Headers.ContainsKey(THeaderKeys.ContentTypeHeader) then
    Request.Headers.Add(THeaderKeys.ContentTypeHeader, 'text/plain');

  Result := Request;

  // =====
  // Extra-code (headers)
  if PublicRequest.IsSetCacheControl then
    Request.Headers.Add('Cache-Control', PublicRequest.CacheControl);
  if PublicRequest.IsSetContentDisposition then
    Request.Headers.Add('Content-Disposition', PublicRequest.ContentDisposition);
  if PublicRequest.IsSetContentEncoding then
    Request.Headers.Add('Content-Encoding', PublicRequest.ContentEncoding);
  if PublicRequest.IsSetContentLanguage then
    Request.Headers.Add('Content-Language', PublicRequest.ContentLanguage);
  if PublicRequest.IsSetContentLength then
    Request.Headers.Add('Content-Length', TStringUtils.FromInt64(PublicRequest.ContentLength));
  if PublicRequest.IsSetContentType then
    Request.Headers.Add('Content-Type', PublicRequest.ContentType);
  if PublicRequest.IsSetExpires then
    Request.Headers.Add('Expires', TStringUtils.FromDateTimeToRFC822(PublicRequest.Expires));

  // Extra-code (grants)
  if PublicRequest.IsSetGrantFullControl then
    Request.Headers.Add('x-amz-grant-full-control', PublicRequest.GrantFullControl);
  if PublicRequest.IsSetGrantRead then
    Request.Headers.Add('x-amz-grant-read', PublicRequest.GrantRead);
  if PublicRequest.IsSetGrantReadACP then
    Request.Headers.Add('x-amz-grant-read-acp', PublicRequest.GrantReadACP);
  if PublicRequest.IsSetGrantWriteACP then
    Request.Headers.Add('x-amz-grant-write-acp', PublicRequest.GrantWriteACP);
end;

class constructor TPutObjectRequestMarshaller.Create;
begin
  FInstance := TPutObjectRequestMarshaller.Create;
end;

class function TPutObjectRequestMarshaller.GetStreamWithLength(BaseStream: TStream; HintLength: Int64): TStream;
begin
  Result := BaseStream;
end;

class function TPutObjectRequestMarshaller.Instance: IPutObjectRequestMarshaller;
begin
  Result := FInstance;
end;

end.
