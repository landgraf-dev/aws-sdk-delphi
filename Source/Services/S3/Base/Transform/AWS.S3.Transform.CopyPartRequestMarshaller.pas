unit AWS.S3.Transform.CopyPartRequestMarshaller;

interface

uses
  System.DateUtils,
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.CopyPartRequest,
  AWS.Internal.DefaultRequest,
  AWS.Internal.StringUtils,
  System.Classes,
  AWS.Xml.Writer,
  System.SysUtils,
  AWS.S3.Internal.S3ArnUtils,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  AWS.SDKUtils;

type
  ICopyPartRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TCopyPartRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TCopyPartRequest>, ICopyPartRequestMarshaller)
  strict private
    class var FInstance: ICopyPartRequestMarshaller;
    class constructor Create;
    class function ConstructCopySourceHeaderValue(const Bucket, Key, Version: string): string; static;
    class function ConstructCopySourceRangeHeader(FirstByte, LastByte: Int64): string; static;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TCopyPartRequest): IRequest; overload;
    class function Instance: ICopyPartRequestMarshaller; static;
  end;
  
implementation

{ TCopyPartRequestMarshaller }

function TCopyPartRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TCopyPartRequest(AInput));
end;

function TCopyPartRequestMarshaller.Marshall(PublicRequest: TCopyPartRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');

  var sourceKey := TAmazonS3Util.RemoveLeadingSlash(PublicRequest.SourceKey);
  var destinationKey := TAmazonS3Util.RemoveLeadingSlash(PublicRequest.DestinationKey);
  Request.HttpMethod := 'PUT';

  if (PublicRequest.IsSetSourceBucket) then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceHeader, ConstructCopySourceHeaderValue(PublicRequest.SourceBucket, sourceKey, PublicRequest.SourceVersionId));

  if (PublicRequest.IsSetCopySourceIfMatch) then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceIfMatchHeader, (PublicRequest.CopySourceIfMatch));

  if (PublicRequest.IsSetCopySourceIfNoneMatch) then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceIfNoneMatchHeader, (PublicRequest.CopySourceIfNoneMatch));

  if (PublicRequest.IsSetCopySourceIfModifiedSince) then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceIfModifiedSinceHeader,
      FormatDateTime(TAWSSDKUtils.GMTDateFormat, TTimeZone.Local.ToUniversalTime(PublicRequest.CopySourceIfModifiedSince)));

  if (PublicRequest.IsSetCopySourceIfUnmodifiedSince) then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceIfUnmodifiedSinceHeader,
      FormatDateTime(TAWSSDKUtils.GMTDateFormat, TTimeZone.Local.ToUniversalTime(PublicRequest.CopySourceIfUnmodifiedSince)));

  if (PublicRequest.IsSetSSECustomerAlgorithm) then
    Request.Headers.Add(THeaderKeys.XAmzSSECustomerAlgorithmHeader, PublicRequest.SSECustomerAlgorithm);

  if (PublicRequest.IsSetSSECustomerKey) then
  begin
    Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyHeader, PublicRequest.SSECustomerKey);
    if (PublicRequest.IsSetSSECustomerKeyMD5) then
      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, PublicRequest.SSECustomerKeyMD5)
    else
      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, TAmazonS3Util.ComputeEncodedMD5FromEncodedString(PublicRequest.SSECustomerKey));
  end;

  if (PublicRequest.IsSetCopySourceSSECustomerAlgorithm) then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceSSECustomerAlgorithmHeader, PublicRequest.CopySourceSSECustomerAlgorithm);

  if (PublicRequest.IsSetCopySourceSSECustomerKey) then
  begin
    Request.Headers.Add(THeaderKeys.XAmzCopySourceSSECustomerKeyHeader, PublicRequest.CopySourceSSECustomerKey);
    if (PublicRequest.IsSetCopySourceSSECustomerKeyMD5) then
      Request.Headers.Add(THeaderKeys.XAmzCopySourceSSECustomerKeyMD5Header, PublicRequest.CopySourceSSECustomerKeyMD5)
    else
      Request.Headers.Add(THeaderKeys.XAmzCopySourceSSECustomerKeyMD5Header, TAmazonS3Util.ComputeEncodedMD5FromEncodedString(PublicRequest.CopySourceSSECustomerKey));
  end;

  if PublicRequest.FirstByte.HasValue and PublicRequest.LastByte.HasValue then
    Request.Headers.Add(THeaderKeys.XAmzCopySourceRangeHeader, ConstructCopySourceRangeHeader(PublicRequest.FirstByte, PublicRequest.LastByte));

  if (PublicRequest.IsSetExpectedBucketOwner) then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if (PublicRequest.IsSetExpectedSourceBucketOwner) then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedSourceBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedSourceBucketOwner));

  if (string.IsNullOrEmpty(PublicRequest.DestinationBucket)) then
    raise EArgumentException.Create('DestinationBucket is a required property and must be set before making this call.');

  if (string.IsNullOrEmpty(destinationKey)) then
    raise EArgumentException.Create('DestinationKey is a required property and must be set before making this call.');

  Request.ResourcePath := Format('/%s/%s', [
    TS3Transforms.ToStringValue(PublicRequest.DestinationBucket),
    TS3Transforms.ToStringValue(destinationKey)]);

  Request.AddSubResource('partNumber', TS3Transforms.ToStringValue(PublicRequest.PartNumber));
  Request.AddSubResource('uploadId', TS3Transforms.ToStringValue(PublicRequest.UploadId));

  Request.UseQueryString := True;

  Result := Request;
end;

class function TCopyPartRequestMarshaller.ConstructCopySourceHeaderValue(const Bucket, Key, Version: string): string;
begin
  var source: string;
  if not String.IsNullOrEmpty(key) then
  begin
    var isAccessPoint := TS3ArnUtils.IsS3AccessPointsArn(Bucket) or TS3ArnUtils.IsS3OutpostsArn(Bucket);

    // 'object/' needed appended to key for copy header with access points
    var trailing: string := '/';
    if isAccessPoint then
      trailing := '/object/';
    source := TAmazonS3Util.UrlEncode(Bucket + trailing + Key, not isAccessPoint);
    if not String.IsNullOrEmpty(Version) then
      source := Format('%s?versionId=%s', [source, TAmazonS3Util.UrlEncode(version, True)]);
  end
  else
    source := TAmazonS3Util.UrlEncode(Bucket, True);

  Result := Source;
end;

class function TCopyPartRequestMarshaller.ConstructCopySourceRangeHeader(FirstByte, LastByte: Int64): string;
begin
  Result := Format('bytes=%d-%d', [FirstByte, LastByte]);
end;

class constructor TCopyPartRequestMarshaller.Create;
begin
  FInstance := TCopyPartRequestMarshaller.Create;
end;

class function TCopyPartRequestMarshaller.Instance: ICopyPartRequestMarshaller;
begin
  Result := FInstance;
end;

end.
