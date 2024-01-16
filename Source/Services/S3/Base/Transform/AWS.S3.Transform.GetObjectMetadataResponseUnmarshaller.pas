unit AWS.S3.Transform.GetObjectMetadataResponseUnmarshaller;

interface

uses
  System.SysUtils,
  AWS.Lib.Utils,
  AWS.Transform.ResponseUnmarshaller,
  AWS.S3.Model.GetObjectMetadataResponse,
  AWS.S3.Transform.S3ResponseUnmarshaller,
  AWS.Runtime.Model,
  AWS.Transform.UnmarshallerContext,
  AWS.S3.Internal.S3Transforms,
  AWS.Runtime.Exceptions,
  AWS.Internal.ErrorResponse,
  AWS.Internal.WebResponseData,
  AWS.Transform.ErrorResponseUnmarshaller,
  AWS.Nullable,
  System.Classes,
  AWS.SDKUtils,
  AWS.S3.Enums,
  AWS.S3.Transform.NoSuchKeyExceptionUnmarshaller,
  AWS.S3.Internal.AWSConfigsS3,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Util.S3Constants,
  AWS.S3.Exception;

type
  IGetObjectMetadataResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetObjectMetadataResponseUnmarshaller = class(TS3ResponseUnmarshaller, IGetObjectMetadataResponseUnmarshaller)
  strict private
    class var FInstance: IGetObjectMetadataResponseUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse; overload; override;
    function UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException; override;
    class function Instance: IGetObjectMetadataResponseUnmarshaller; static;
  end;
  
implementation

{ TGetObjectMetadataResponseUnmarshaller }

function TGetObjectMetadataResponseUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): TAmazonWebServiceResponse;
var
  Response: TGetObjectMetadataResponse;
begin
  Response := TGetObjectMetadataResponse.Create;
  try
    Result := Response;
    var responseData: IWebResponseData := AContext.ResponseData;
    if responseData.IsHeaderPresent('x-amz-delete-marker') then
      response.DeleteMarker := TS3Transforms.ToBool(responseData.GetHeaderValue('x-amz-delete-marker'));
    if responseData.IsHeaderPresent('accept-ranges') then
      response.AcceptRanges := TS3Transforms.ValueToString(responseData.GetHeaderValue('accept-ranges'));
    if AContext.ResponseData.IsHeaderPresent('content-range') then
      response.ContentRange := TS3Transforms.ValueToString(responseData.GetHeaderValue('content-range'));
//    if responseData.IsHeaderPresent('x-amz-expiration') then
//      response.Expiration := new Expiration(responseData.GetHeaderValue('x-amz-expiration'));

//    if responseData.IsHeaderPresent('x-amz-restore') then
//    begin
//      var restoreInProgress: Boolean;
//      var restoreExpiration: NullableDateTime;
//      TAmazonS3Util.ParseAmzRestoreHeader(responseData.GetHeaderValue('x-amz-restore'), restoreInProgress, restoreExpiration);
//
//      response.RestoreInProgress := restoreInProgress;
//      response.RestoreExpiration := restoreExpiration;
//    end;

    if responseData.IsHeaderPresent('Last-Modified') then
      response.LastModified := TS3Transforms.ToDateTime(responseData.GetHeaderValue('Last-Modified'));
    if responseData.IsHeaderPresent('ETag') then
      response.ETag := TS3Transforms.ValueToString(responseData.GetHeaderValue('ETag'));
    if responseData.IsHeaderPresent('x-amz-missing-meta') then
      response.MissingMeta := TS3Transforms.ToInt(responseData.GetHeaderValue('x-amz-missing-meta'));
    if responseData.IsHeaderPresent('x-amz-version-id') then
      response.VersionId := TS3Transforms.ValueToString(responseData.GetHeaderValue('x-amz-version-id'));
    if responseData.IsHeaderPresent('Cache-Control') then
      response.Headers.CacheControl := TS3Transforms.ValueToString(responseData.GetHeaderValue('Cache-Control'));
    if responseData.IsHeaderPresent('Content-Disposition') then
      response.Headers.ContentDisposition := TS3Transforms.ValueToString(responseData.GetHeaderValue('Content-Disposition'));
    if responseData.IsHeaderPresent('Content-Encoding') then
      response.Headers.ContentEncoding := TS3Transforms.ValueToString(responseData.GetHeaderValue('Content-Encoding'));
    if responseData.IsHeaderPresent('Content-Length') then
      response.Headers.ContentLength := StrToInt64(responseData.GetHeaderValue('Content-Length'));
    if responseData.IsHeaderPresent('Content-Type') then
      response.Headers.ContentType := TS3Transforms.ValueToString(responseData.GetHeaderValue('Content-Type'));
    if responseData.IsHeaderPresent('Expires') then
      response.RawExpires := TS3Transforms.ValueToString(responseData.GetHeaderValue('Expires'));
    if responseData.IsHeaderPresent('x-amz-website-redirect-location') then
      response.WebsiteRedirectLocation := TS3Transforms.ValueToString(responseData.GetHeaderValue('x-amz-website-redirect-location'));
    if responseData.IsHeaderPresent('x-amz-server-side-encryption') then
      response.ServerSideEncryption := TS3Transforms.ValueToString(responseData.GetHeaderValue('x-amz-server-side-encryption'));
    if responseData.IsHeaderPresent('x-amz-server-side-encryption-customer-algorithm') then
      response.SSECustomerAlgorithm := responseData.GetHeaderValue('x-amz-server-side-encryption-customer-algorithm');
    if responseData.IsHeaderPresent(THeaderKeys.XAmzServerSideEncryptionAwsKmsKeyIdHeader) then
      response.SSEKMSKeyId := TS3Transforms.ValueToString(responseData.GetHeaderValue(THeaderKeys.XAmzServerSideEncryptionAwsKmsKeyIdHeader));
    if responseData.IsHeaderPresent('x-amz-replication-status') then
      response.ReplicationStatus := TS3Transforms.ValueToString(responseData.GetHeaderValue('x-amz-replication-status'));
    if responseData.IsHeaderPresent(TS3Constants.AmzHeaderMultipartPartsCount) then
      response.PartsCount := TS3Transforms.ToInt(responseData.GetHeaderValue(TS3Constants.AmzHeaderMultipartPartsCount));
    if responseData.IsHeaderPresent('x-amz-object-lock-mode') then
      response.ObjectLockMode := TS3Transforms.ValueToString(responseData.GetHeaderValue('x-amz-object-lock-mode'));
    if responseData.IsHeaderPresent('x-amz-object-lock-retain-until-date') then
      response.ObjectLockRetainUntilDate := TS3Transforms.ToDateTime(responseData.GetHeaderValue('x-amz-object-lock-retain-until-date'));
    if responseData.IsHeaderPresent('x-amz-object-lock-legal-hold') then
      response.ObjectLockLegalHoldStatus := TS3Transforms.ValueToString(responseData.GetHeaderValue('x-amz-object-lock-legal-hold'));
    if responseData.IsHeaderPresent(THeaderKeys.XAmzStorageClassHeader) then
      response.StorageClass := TS3Transforms.ValueToString(responseData.GetHeaderValue(THeaderKeys.XAmzStorageClassHeader));
    if responseData.IsHeaderPresent(TS3Constants.AmzHeaderRequestCharged) then
      response.RequestCharged := TRequestCharged.Create(responseData.GetHeaderValue(TS3Constants.AmzHeaderRequestCharged));
    if responseData.IsHeaderPresent(TS3Constants.AmzHeaderArchiveStatus) then
      response.ArchiveStatus := TS3Transforms.ValueToString(responseData.GetHeaderValue(TS3Constants.AmzHeaderArchiveStatus));
    if responseData.IsHeaderPresent(TS3Constants.AmzHeaderBucketKeyEnabled) then
      response.BucketKeyEnabled := TS3Transforms.ToBool(responseData.GetHeaderValue(TS3Constants.AmzHeaderBucketKeyEnabled));

    for var name in responseData.GetHeaderNames do
    begin
      if name.StartsWith('x-amz-meta-', True) then
      begin
        if TAWSConfigsS3.EnableUnicodeEncodingForObjectMetadata then
          response.Metadata[name] := AWS.Lib.Utils.PercentDecode(responseData.GetHeaderValue(name))
        else
          response.Metadata[name] := responseData.GetHeaderValue(name);
      end;
    end;
  except
    Response.Free;
    raise;
  end;
end;

function TGetObjectMetadataResponseUnmarshaller.UnmarshallException(AContext: TXmlUnmarshallerContext; AInnerException: Exception; AStatusCode: Integer): EAmazonServiceException;
var
  ErrorResponse: TErrorResponse;
  StreamCopy: TStream;
  ContextCopy: TXmlUnmarshallerContext;
begin
  ErrorResponse := TErrorResponseUnmarshaller.Instance.Unmarshall(AContext);
  try
    ErrorResponse.InnerException := AInnerException;
    ErrorResponse.StatusCode := AStatusCode;
    StreamCopy := TBytesStream.Create(AContext.GetResponseBodyBytes);
    try
      ContextCopy := TXmlUnmarshallerContext.Create(StreamCopy, False, nil);
      try
        if ErrorResponse.Code = 'NoSuchKeyException' then
          Exit(TNoSuchKeyExceptionUnmarshaller.Instance.Unmarshall(ContextCopy, ErrorResponse));
      finally
        ContextCopy.Free;
      end;
    finally
      StreamCopy.Free;
    end;
    Exit(EAmazonS3Exception.Create(ErrorResponse.Message, AInnerException, ErrorResponse.ErrorType, ErrorResponse.Code, ErrorResponse.RequestId, AStatusCode));
  finally
    ErrorResponse.Free;
  end;
end;

class constructor TGetObjectMetadataResponseUnmarshaller.Create;
begin
  FInstance := TGetObjectMetadataResponseUnmarshaller.Create;
end;

class function TGetObjectMetadataResponseUnmarshaller.Instance: IGetObjectMetadataResponseUnmarshaller;
begin
  Result := FInstance;
end;

end.
