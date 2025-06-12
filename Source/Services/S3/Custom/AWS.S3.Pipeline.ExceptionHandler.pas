unit AWS.S3.Pipeline.ExceptionHandler;

interface

uses
  System.SysUtils,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Runtime.Model,
  AWS.SDKUtils,
  AWS.S3.Model.PutObjectRequest,
  AWS.S3.Model.UploadPartRequest,
  AWS.Internal.Util.HashStream,
  AWS.S3.ClientExtensions;

type
  TAmazonS3ExceptionHandler = class(TPipelineHandler)
  strict protected
    procedure HandleException(AExecutionContext: TExecutionContext; AException: Exception);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3ExceptionHandler }

procedure TAmazonS3ExceptionHandler.HandleException(AExecutionContext: TExecutionContext; AException: Exception);
begin
  if AExecutionContext.RequestContext.OriginalRequest is TPutObjectRequest then
  begin
    var putObjectRequest := AExecutionContext.RequestContext.OriginalRequest as TPutObjectRequest;

    // If InputStream was a HashStream, compare calculated hash to returned etag
    if (putObjectRequest.InputStream <> nil) and (putObjectRequest.InputStream is THashStream) then
    begin
      var hashStream := putObjectRequest.InputStream as THashStream;

      // Set InputStream to its original value
      var StreamWasOwned: Boolean;
      putObjectRequest.InputStream := hashStream.GetNonWrapperBaseStream(StreamWasOwned, True);
      putObjectRequest.KeepInputStream := not StreamWasOwned;
    end;
  end;

  if AExecutionContext.RequestContext.OriginalRequest is TUploadPartRequest then
  begin
    var uploadPartRequest := AExecutionContext.RequestContext.OriginalRequest as TUploadPartRequest;

    // If InputStream was a HashStream, compare calculated hash to returned etag
    if (uploadPartRequest.InputStream <> nil) and (uploadPartRequest.InputStream is THashStream) then
    begin
      var hashStream := uploadPartRequest.InputStream as THashStream;

      // Set InputStream to its original value
      var StreamWasOwned: Boolean;
      uploadPartRequest.InputStream := hashStream.GetNonWrapperBaseStream(StreamWasOwned, True);
      uploadPartRequest.KeepInputStream := not StreamWasOwned;
    end;

  end;

  TAmazonS3ClientExtensions.CleanupRequest(AExecutionContext.RequestContext.OriginalRequest);
end;

procedure TAmazonS3ExceptionHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  try
    inherited InvokeSync(AExecutionContext);
  except
    on E: Exception do
    begin
      HandleException(AExecutionContext, E);
      raise;
    end;
  end;
end;

end.
