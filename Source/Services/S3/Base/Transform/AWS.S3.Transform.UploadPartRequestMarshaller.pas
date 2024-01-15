unit AWS.S3.Transform.UploadPartRequestMarshaller;

interface

uses
  System.SysUtils,
  AWS.Internal.Request,
  AWS.Transform.RequestMarshaller,
  AWS.Runtime.Model,
  AWS.S3.Model.UploadPartRequest,
  AWS.Internal.DefaultRequest,
  AWS.Internal.StringUtils,
  AWS.S3.Internal.AWSConfigsS3,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Util.S3Constants,
  AWS.S3.Internal.S3Transforms,
  AWS.S3.Exception,
  AWS.Internal.Util.HashStream,
  AWS.Util.PartialWrapperStream,
  AWS.SDKUtils;

type
  IUploadPartRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUploadPartRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUploadPartRequest>, IUploadPartRequestMarshaller)
  strict private
    class var FInstance: IUploadPartRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUploadPartRequest): IRequest; overload;
    class function Instance: IUploadPartRequestMarshaller; static;
  end;
  
implementation

{ TUploadPartRequestMarshaller }

function TUploadPartRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUploadPartRequest(AInput));
end;

function TUploadPartRequestMarshaller.Marshall(PublicRequest: TUploadPartRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';

  if PublicRequest.IsSetContentMD5 then
    Request.Headers.Add(THeaderKeys.ContentMD5Header, PublicRequest.ContentMD5);

  if PublicRequest.IsSetSSECustomerAlgorithm then
    Request.Headers.Add(THeaderKeys.XAmzSSECustomerAlgorithmHeader, PublicRequest.SSECustomerAlgorithm);
  if PublicRequest.IsSetSSECustomerKey then
  begin
    Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyHeader, PublicRequest.SSECustomerKey);
    if PublicRequest.IsSetSSECustomerKeyMD5 then
      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, PublicRequest.SSECustomerKeyMD5)
    else
      Request.Headers.Add(THeaderKeys.XAmzSSECustomerKeyMD5Header, TAmazonS3Util.ComputeEncodedMD5FromEncodedString(PublicRequest.SSECustomerKeyMD5));
  end;
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add(TS3Constants.AmzHeaderRequestPayer, TS3Transforms.ToStringValue(PublicRequest.RequestPayer.Value));

  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add(TS3Constants.AmzHeaderExpectedBucketOwner, TS3Transforms.ToStringValue(PublicRequest.ExpectedBucketOwner));

  if string.IsNullOrEmpty(PublicRequest.BucketName) then
    raise EArgumentException.Create('BucketName is a required property and must be set before making this call');
  if string.IsNullOrEmpty(PublicRequest.Key) then
    raise EArgumentException.Create('Key is a required property and must be set before making this call');

  Request.ResourcePath := Format('/%s/%s', [
    TS3Transforms.ToStringValue(PublicRequest.BucketName),
    TS3Transforms.ToStringValue(PublicRequest.Key)]);

  if PublicRequest.IsSetPartNumber then
    Request.AddSubResource('partNumber', TS3Transforms.ToStringValue(PublicRequest.PartNumber));
  if PublicRequest.IsSetUploadId then
    Request.AddSubResource('uploadId', TS3Transforms.ToStringValue(PublicRequest.UploadId));

  if PublicRequest.InputStream <> nil then
  begin
    // Wrap input stream in partial wrapper (to upload only part of the stream)
    var OwnsOriginalStream := not PublicRequest.KeepInputStream;
    var partialStream := TPartialWrapperStream.Create(PublicRequest.InputStream, PublicRequest.PartSize, OwnsOriginalStream);
    PublicRequest.KeepInputStream := True;
    PublicRequest.InputStream := partialStream;
    PublicRequest.KeepInputStream := False;

    if (partialStream.Size > 0) and not (PublicRequest.DisablePayloadSigning.ValueOrDefault) then
      Request.UseChunkEncoding := PublicRequest.UseChunkEncoding;
    if not Request.Headers.ContainsKey(THeaderKeys.ContentLengthHeader) then
      Request.Headers.Add(THeaderKeys.ContentLengthHeader, partialStream.Size.ToString);

    Request.DisablePayloadSigning := PublicRequest.DisablePayloadSigning;

    // Calculate Content-MD5 if not already set
    if not PublicRequest.IsSetMD5Digest and PublicRequest.CalculateContentMD5Header then
    begin
      var md5 := TAmazonS3Util.GenerateMD5ChecksumForStream(partialStream);
      if not string.IsNullOrEmpty(md5) then
        Request.Headers[THeaderKeys.ContentMD5Header] := md5;
    end;

    var DisableMD5 := TAWSConfigsS3.DisableMD5Stream;
    if PublicRequest.DisableMD5Stream.HasValue then
      DisableMD5 := PublicRequest.DisableMD5Stream.HasValue;
    if not DisableMD5 then
    begin
      // Wrap input stream in MD5Stream; after this we can no longer seek or position the stream
      var OwnsInputStream := not PublicRequest.KeepInputStream;
      var hashStream := TMD5Stream.Create(partialStream, [], partialStream.Size, OwnsInputStream);
      PublicRequest.KeepInputStream := True;
      PublicRequest.InputStream := hashStream;
      PublicRequest.KeepInputStream := False;
    end;
  end;

  Request.ContentStream := PublicRequest.InputStream;
  Request.OwnsContentStream := False;
  if not Request.Headers.ContainsKey(THeaderKeys.ContentTypeHeader) then
    Request.Headers.Add(THeaderKeys.ContentTypeHeader, 'text/plain');

  Result := Request;
end;

class constructor TUploadPartRequestMarshaller.Create;
begin
  FInstance := TUploadPartRequestMarshaller.Create;
end;

class function TUploadPartRequestMarshaller.Instance: IUploadPartRequestMarshaller;
begin
  Result := FInstance;
end;

end.
