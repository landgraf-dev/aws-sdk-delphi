unit AWS.S3.ClientExtensions;

interface

uses
  System.SysUtils,
  AWS.Runtime.Model,
  AWS.S3.Model.PutObjectRequest,
  AWS.S3.Model.UploadPartRequest;

type
  TAmazonS3ClientExtensions = class
  public
    class procedure CleanupRequest(Request: TAmazonWebServiceRequest); static;

  end;

implementation

{ TAmazonS3ClientExtensions }

class procedure TAmazonS3ClientExtensions.CleanupRequest(Request: TAmazonWebServiceRequest);
begin
  if Request is TPutObjectRequest then
  begin
    {Todo: review if this is needed}
    var putObjectRequest := Request as TPutObjectRequest;
//    if (putObjectRequest.InputStream <> nil) and
//      (not string.IsNullOrEmpty(putObjectRequest.FilePath) or putObjectRequest.AutoCloseStream) then
//      putObjectRequest.InputStream := nil;

    // Set the input stream to nil since it was created during the request to represent the filepath or content body
    if (not string.IsNullOrEmpty(putObjectRequest.FilePath)) or not string.IsNullOrEmpty(putObjectRequest.ContentBody) then
      putObjectRequest.InputStream := nil;
  end;

  if Request is TUploadPartRequest then
  begin
    var uploadPartRequest := Request as TUploadPartRequest;
    // FilePath was set, so we created the underlying stream, so we must close it
//    if (uploadPartRequest.FilePath <> '') and (uploadPartRequest.InputStream <> nil) then
//      uploadPartRequest.InputStream := nil;

    if uploadPartRequest.FilePath <> '' then
      uploadPartRequest.InputStream := nil;
  end;

end;

end.
