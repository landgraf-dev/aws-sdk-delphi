unit AWS.S3.Transform.GetObjectMetadataResponseUnmarshaller;

interface

uses
  System.SysUtils, 
  AWS.S3.Model.GetObjectMetadataResponse, 
  AWS.Transform.ResponseUnmarshaller, 
  AWS.Runtime.Model, 
  AWS.Transform.UnmarshallerContext, 
  AWS.S3.Internal.S3Transforms, 
  AWS.Runtime.Exceptions, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.ErrorResponseUnmarshaller, 
  System.Classes, 
  AWS.S3.Transform.NoSuchKeyExceptionUnmarshaller, 
  AWS.S3.Exception;

type
  IGetObjectMetadataResponseUnmarshaller = IResponseUnmarshaller;
  
  TGetObjectMetadataResponseUnmarshaller = class(TXmlResponseUnmarshaller, IGetObjectMetadataResponseUnmarshaller)
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
    if AContext.ResponseData.IsHeaderPresent('accept-ranges') then
      Response.AcceptRanges := AContext.ResponseData.GetHeaderValue('accept-ranges');
    if AContext.ResponseData.IsHeaderPresent('x-amz-archive-status') then
      Response.ArchiveStatus := AContext.ResponseData.GetHeaderValue('x-amz-archive-status');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-bucket-key-enabled') then
      Response.BucketKeyEnabled := StrToBool(AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-bucket-key-enabled'));
    if AContext.ResponseData.IsHeaderPresent('Cache-Control') then
      Response.CacheControl := AContext.ResponseData.GetHeaderValue('Cache-Control');
    if AContext.ResponseData.IsHeaderPresent('Content-Disposition') then
      Response.ContentDisposition := AContext.ResponseData.GetHeaderValue('Content-Disposition');
    if AContext.ResponseData.IsHeaderPresent('Content-Encoding') then
      Response.ContentEncoding := AContext.ResponseData.GetHeaderValue('Content-Encoding');
    if AContext.ResponseData.IsHeaderPresent('Content-Language') then
      Response.ContentLanguage := AContext.ResponseData.GetHeaderValue('Content-Language');
    if AContext.ResponseData.IsHeaderPresent('Content-Length') then
      Response.ContentLength := StrToInt64(AContext.ResponseData.GetHeaderValue('Content-Length'));
    if AContext.ResponseData.IsHeaderPresent('Content-Type') then
      Response.ContentType := AContext.ResponseData.GetHeaderValue('Content-Type');
    if AContext.ResponseData.IsHeaderPresent('x-amz-delete-marker') then
      Response.DeleteMarker := StrToBool(AContext.ResponseData.GetHeaderValue('x-amz-delete-marker'));
    if AContext.ResponseData.IsHeaderPresent('ETag') then
      Response.ETag := AContext.ResponseData.GetHeaderValue('ETag');
    if AContext.ResponseData.IsHeaderPresent('x-amz-expiration') then
      Response.Expiration := AContext.ResponseData.GetHeaderValue('x-amz-expiration');
    if AContext.ResponseData.IsHeaderPresent('Expires') then
      Response.Expires := TS3Transforms.ToDateTime(AContext.ResponseData.GetHeaderValue('Expires'));
    if AContext.ResponseData.IsHeaderPresent('Last-Modified') then
      Response.LastModified := TS3Transforms.ToDateTime(AContext.ResponseData.GetHeaderValue('Last-Modified'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-missing-meta') then
      Response.MissingMeta := StrToInt(AContext.ResponseData.GetHeaderValue('x-amz-missing-meta'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-object-lock-legal-hold') then
      Response.ObjectLockLegalHoldStatus := AContext.ResponseData.GetHeaderValue('x-amz-object-lock-legal-hold');
    if AContext.ResponseData.IsHeaderPresent('x-amz-object-lock-mode') then
      Response.ObjectLockMode := AContext.ResponseData.GetHeaderValue('x-amz-object-lock-mode');
    if AContext.ResponseData.IsHeaderPresent('x-amz-object-lock-retain-until-date') then
      Response.ObjectLockRetainUntilDate := TS3Transforms.ToDateTime(AContext.ResponseData.GetHeaderValue('x-amz-object-lock-retain-until-date'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-mp-parts-count') then
      Response.PartsCount := StrToInt(AContext.ResponseData.GetHeaderValue('x-amz-mp-parts-count'));
    if AContext.ResponseData.IsHeaderPresent('x-amz-replication-status') then
      Response.ReplicationStatus := AContext.ResponseData.GetHeaderValue('x-amz-replication-status');
    if AContext.ResponseData.IsHeaderPresent('x-amz-request-charged') then
      Response.RequestCharged := AContext.ResponseData.GetHeaderValue('x-amz-request-charged');
    if AContext.ResponseData.IsHeaderPresent('x-amz-restore') then
      Response.Restore := AContext.ResponseData.GetHeaderValue('x-amz-restore');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-customer-algorithm') then
      Response.SSECustomerAlgorithm := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-customer-algorithm');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-customer-key-MD5') then
      Response.SSECustomerKeyMD5 := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-customer-key-MD5');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption-aws-kms-key-id') then
      Response.SSEKMSKeyId := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption-aws-kms-key-id');
    if AContext.ResponseData.IsHeaderPresent('x-amz-server-side-encryption') then
      Response.ServerSideEncryption := AContext.ResponseData.GetHeaderValue('x-amz-server-side-encryption');
    if AContext.ResponseData.IsHeaderPresent('x-amz-storage-class') then
      Response.StorageClass := AContext.ResponseData.GetHeaderValue('x-amz-storage-class');
    if AContext.ResponseData.IsHeaderPresent('x-amz-version-id') then
      Response.VersionId := AContext.ResponseData.GetHeaderValue('x-amz-version-id');
    if AContext.ResponseData.IsHeaderPresent('x-amz-website-redirect-location') then
      Response.WebsiteRedirectLocation := AContext.ResponseData.GetHeaderValue('x-amz-website-redirect-location');
    Result := Response;
    Response := nil;
  finally
    Response.Free;
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
