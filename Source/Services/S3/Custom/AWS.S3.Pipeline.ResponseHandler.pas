unit AWS.S3.Pipeline.ResponseHandler;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Internal.WebResponseData,
  AWS.Internal.Util.HashStream,
  AWS.Runtime.Contexts,
  AWS.Runtime.Exceptions,
  AWS.Runtime.Model,
  AWS.SDKUtils,
  AWS.S3.ClientExtensions,
  AWS.S3.Model.CopyPartResponse,
  AWS.S3.Model.DeleteObjectsException,
  AWS.S3.Model.GetObjectResponse,
  AWS.S3.Model.GetObjectRequest,
  AWS.S3.Model.DeleteObjectsResponse,
  AWS.S3.Model.ListObjectsResponse,
  AWS.S3.Model.PutObjectRequest,
  AWS.S3.Model.PutObjectResponse,
  AWS.S3.Model.UploadPartRequest,
  AWS.S3.Model.UploadPartResponse;

type
  TAmazonS3ResponseHandler = class(TPipelineHandler)
  strict private
    class procedure ProcessResponseHandlers(AExecutionContext: TExecutionContext); static;
    class function HasSSEHeaders(WebResponseData: IWebResponseData): Boolean; static;
    class procedure CompareHashes(const ETag: string; const Hash: TArray<Byte>); static;
  strict protected
    procedure PostInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3ResponseHandler }

class procedure TAmazonS3ResponseHandler.CompareHashes(const ETag: string; const Hash: TArray<Byte>);
begin
  if string.IsNullOrEmpty(ETag) then
    Exit;

  // if etag contains '-' character, the file was a multi-upload and we can't
  // compare the etag to the hash value
  if Etag.Contains('-') then
    Exit;

  var LEtag := Etag.Trim(['\', '"']);

  var hexHash := TAWSSDKUtils.BytesToHexString(Hash);
  if not SameText(LEtag, hexHash) then
    raise EAmazonClientException.Create('Expected hash not equal to calculated hash');
end;

class function TAmazonS3ResponseHandler.HasSSEHeaders(WebResponseData: IWebResponseData): Boolean;
begin
  var usesCustomerAlgorithm := not string.IsNullOrEmpty(webResponseData.GetHeaderValue(THeaderKeys.XAmzSSECustomerAlgorithmHeader));
  var usesKmsKeyId := not string.IsNullOrEmpty(webResponseData.GetHeaderValue(THeaderKeys.XAmzServerSideEncryptionAwsKmsKeyIdHeader));
  Result := usesCustomerAlgorithm or usesKmsKeyId;
end;

procedure TAmazonS3ResponseHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  inherited InvokeSync(AExecutionContext);
  PostInvoke(AExecutionContext);
end;

procedure TAmazonS3ResponseHandler.PostInvoke(AExecutionContext: TExecutionContext);
begin
  ProcessResponseHandlers(AExecutionContext);
end;

class procedure TAmazonS3ResponseHandler.ProcessResponseHandlers(AExecutionContext: TExecutionContext);
begin
  var response := AExecutionContext.ResponseContext.Response;
  var request := AExecutionContext.RequestContext.Request;
  var webResponseData := AExecutionContext.ResponseContext.HttpResponse;
  var isSse := HasSSEHeaders(webResponseData);

  if response is TGetObjectResponse then
  begin
    var getObjectResponse := response as TGetObjectResponse;
    var getObjectRequest := request.OriginalRequest as TGetObjectRequest;
    getObjectResponse.BucketName := getObjectRequest.BucketName;
    getObjectResponse.Key := getObjectRequest.Key;

    // If ETag is present and is an MD5 hash (not a multi-part upload ETag), and no byte range is specified,
    // wrap the response stream in an MD5Stream.
    // If there is a customer encryption algorithm the etag is not an MD5.
    if not string.IsNullOrEmpty(getObjectResponse.ETag)
        and not getObjectResponse.ETag.Contains('-')
        and not isSse
        and (getObjectRequest.ByteRange = nil) then
    begin
      var etag := getObjectResponse.ETag.Trim(['\', '"']);
      var expectedHash := TAWSSDKUtils.HexStringToBytes(etag);
      var hashStream: THashStream := TMD5Stream.Create(
        getObjectResponse.ResponseStream, expectedHash, getObjectResponse.ContentLength, not getObjectResponse.KeepBody);
      getObjectResponse.KeepBody := True;
      getObjectResponse.ResponseStream := hashStream;
      getObjectResponse.KeepBody := False;
    end;
  end;

  if response is TDeleteObjectsResponse then
  begin
    var deleteObjectsResponse := response as TDeleteObjectsResponse;
    if (deleteObjectsResponse.DeleteErrors <> nil) and (deleteObjectsResponse.DeleteErrors.Count > 0) then
      raise EDeleteObjectsException.Create(deleteObjectsResponse);
  end;

  if request.OriginalRequest is TPutObjectRequest then
  begin
    var putObjectResponse := response as TPutObjectResponse;
    var putObjectRequest := request.OriginalRequest as TPutObjectRequest;

    // If InputStream was a HashStream, compare calculated hash to returned etag
    if putObjectRequest.InputStream is THashStream then
    begin
      if putObjectRequest.InputStream is THashstream then
      begin
        var hashStream := putObjectRequest.InputStream as THashStream;
        if (putObjectResponse <> nil) and not isSse then
        begin
          // Stream may not have been closed, so force calculation of hash
          CompareHashes(putObjectResponse.ETag, hashStream.CalculatedHash);
        end;

        // Set InputStream to its original value
        var OriginalWrappedStream := hashStream.GetNonWrapperBaseStream;
        hashStream.OwnsStream := False;
        putObjectRequest.InputStream := OriginalWrappedStream;
      end;
    end;
  end;

  if response is TListObjectsResponse then
  begin
    {$MESSAGE WARN 'Todo: proccess next marker'}
  end;

  if request.OriginalRequest is TUploadPartRequest then
  begin
    var uploadPartRequest := request.OriginalRequest as TUploadPartRequest;
    var uploadPartResponse := response as TUploadPartResponse;

    {$MESSAGE WARN 'PartNumber'}
//    uploadPartResponse.PartNumber := uploadPartRequest.PartNumber;

    // If InputStream was a HashStream, compare calculated hash to returned etag
    if uploadPartRequest.InputStream is THashStream then
    begin
      var hashStream := uploadPartRequest.InputStream as THashStream;
      if (uploadPartResponse <> nil) and not isSse then
      begin
        CompareHashes(uploadPartResponse.ETag, hashStream.CalculatedHash);
      end;

      // Set InputStream to its original value
      var OriginalWrappedStream := hashStream.GetNonWrapperBaseStream;
      hashStream.OwnsStream := False;
      uploadPartRequest.InputStream := OriginalWrappedStream;
    end;
  end;

  {$MESSAGE WARN 'Todo: set part number'}
//  if response is TCopyPartResponse then
//  begin
//  end;

  TAmazonS3ClientExtensions.CleanupRequest(Request.OriginalRequest as TAmazonWebServiceRequest);
end;

end.
