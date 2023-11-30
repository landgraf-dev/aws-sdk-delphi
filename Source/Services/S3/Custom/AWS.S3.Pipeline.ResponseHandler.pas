unit AWS.S3.Pipeline.ResponseHandler;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Internal.WebResponseData,
  AWS.Runtime.Contexts,
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
  AWS.S3.Model.UploadPartRequest;

type
  TAmazonS3ResponseHandler = class(TPipelineHandler)
  strict private
    class procedure ProcessResponseHandlers(AExecutionContext: TExecutionContext); static;
  strict protected
    procedure PostInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3ResponseHandler }

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
//  var isSse := HasSSEHeaders(webResponseData);

  if response is TGetObjectResponse then
  begin
    var getObjectResponse := response as TGetObjectResponse;
    var getObjectRequest := request.OriginalRequest as TGetObjectRequest;
    getObjectResponse.BucketName := getObjectRequest.BucketName;
    getObjectResponse.Key := getObjectRequest.Key;

    // If ETag is present and is an MD5 hash (not a multi-part upload ETag), and no byte range is specified,
    // wrap the response stream in an MD5Stream.
    // If there is a customer encryption algorithm the etag is not an MD5.
    {$MESSAGE WARN 'Todo: add a MD5 stream'}
//    if not string.IsNullOrEmpty(getObjectResponse.ETag)
//        and not getObjectResponse.ETag.Contains('-')
//        and not isSse
//        and (getObjectRequest.ByteRange = nil) then
//    begin
//    end;
  end;

  if response is TDeleteObjectsResponse then
  begin
    var deleteObjectsResponse := response as TDeleteObjectsResponse;
    if (deleteObjectsResponse.DeleteErrors <> nil) and (deleteObjectsResponse.DeleteErrors.Count > 0) then
      raise EDeleteObjectsException.Create(deleteObjectsResponse);
  end;

  if response is TPutObjectResponse then
  begin
    {$MESSAGE WARN 'Todo: check the input hash stream'}
  end;

  if response is TListObjectsResponse then
  begin
    {$MESSAGE WARN 'Todo: proccess next marker'}
  end;

  if request.OriginalRequest is TUploadPartRequest then
  begin
    {$MESSAGE WARN 'Todo: check the input hash stream'}
  end;

  if response is TCopyPartResponse then
  begin
    {$MESSAGE WARN 'Todo: set part number'}
  end;

  TAmazonS3ClientExtensions.CleanupRequest(Request.OriginalRequest as TAmazonWebServiceRequest);
end;

end.
