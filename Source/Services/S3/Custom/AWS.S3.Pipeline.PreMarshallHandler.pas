unit AWS.S3.Pipeline.PreMarshallHandler;

interface

uses
  System.SysUtils, System.Classes, System.IOUtils,
  AWS.Internal.PipelineHandler,
  AWS.Internal.Request,
  AWS.Runtime.ClientConfig,
  AWS.Runtime.Contexts,
  AWS.SDKUtils,
  AWS.S3.Model.PutObjectRequest,
  AWS.S3.Model.PutBucketRequest,
  AWS.S3.Model.DeleteBucketRequest,
  AWS.S3.Model.UploadPartRequest,
  AWS.S3.Model.InitiateMultipartUploadRequest,
  AWS.S3.Util.AmazonS3Util,
  AWS.S3.Util.S3Constants;

type
  TAmazonS3PreMarshallHandler = class(TPipelineHandler)
  strict private
    class procedure ProcessPreRequestHandlers(AExecutionContext: TExecutionContext); static;

    class procedure ProcessPutObjectRequest(PutObjectRequest: TPutObjectRequest);
    class procedure ProcessPutBucketRequest(PutBucketRequest: TPutBucketRequest; Config: IClientConfig);
    class procedure ProcessDeleteBucketRequest(DeleteBucketRequest: TDeleteBucketRequest; Config: IClientConfig);
    class procedure ProcessUploadPartRequest(UploadPartRequest: TUploadPartRequest);
    class procedure ProcessInitiateMultipartUploadRequest(InitMultipartRequest: TInitiateMultipartUploadRequest);

    class function DetermineBucketRegionCode(Config: IClientConfig): string; static;
  strict protected
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3PreMarshallHandler }

class function TAmazonS3PreMarshallHandler.DetermineBucketRegionCode(Config: IClientConfig): string;
begin
  if (config.RegionEndpoint <> nil) and string.IsNullOrEmpty(Config.ServiceURL) then
    Exit(Config.RegionEndpoint.SystemName);
  Result := TAWSSDKUtils.DetermineRegion(Config.DetermineServiceURL);
end;

procedure TAmazonS3PreMarshallHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

procedure TAmazonS3PreMarshallHandler.PreInvoke(AExecutionContext: TExecutionContext);
begin
  ProcessPreRequestHandlers(AExecutionContext);
end;

class procedure TAmazonS3PreMarshallHandler.ProcessDeleteBucketRequest(DeleteBucketRequest: TDeleteBucketRequest; Config: IClientConfig);
begin
  if DeleteBucketRequest.UseClientRegion and (DeleteBucketRequest.BucketRegionName = '') then
  begin
    var regionCode := DetermineBucketRegionCode(config);
    if regionCode = TS3Constants.REGION_US_EAST_1 then
        regionCode := '';
    //else if regionCode = S3Constants.REGION_EU_WEST_1 then
    //    regionCode = "EU";

    if regionCode <> '' then
      DeleteBucketRequest.BucketRegionName := regionCode;
  end;
end;

class procedure TAmazonS3PreMarshallHandler.ProcessInitiateMultipartUploadRequest(
  InitMultipartRequest: TInitiateMultipartUploadRequest);
begin
  if InitMultipartRequest.IsSetContentType then
  begin
    // Get the extension of the object key.
    var ext := TAWSSDKUtils.GetExtension(initMultipartRequest.Key);

    // Use the extension to get the mime-type
    if not string.IsNullOrEmpty(ext) then
      InitMultipartRequest.ContentType := TAmazonS3Util.MimeTypeFromExtension(ext);
  end;
end;

class procedure TAmazonS3PreMarshallHandler.ProcessPreRequestHandlers(AExecutionContext: TExecutionContext);
begin
  var request := AExecutionContext.RequestContext.OriginalRequest;
  var config := AExecutionContext.RequestContext.ClientConfig;

  if request is TPutObjectRequest then
    ProcessPutObjectRequest(request as TPutObjectRequest);

  if request is TPutBucketRequest then
    ProcessPutBucketRequest(request as TPutBucketRequest, config);

  if request is TDeleteBucketRequest then
    ProcessDeleteBucketRequest(request as TDeleteBucketRequest, config);

  if request is TUploadPartRequest then
    ProcessUploadPartRequest(request as TUploadPartRequest);

  if request is TInitiateMultipartUploadRequest then
    ProcessInitiateMultipartUploadRequest(request as TInitiateMultipartUploadRequest);
end;

class procedure TAmazonS3PreMarshallHandler.ProcessPutBucketRequest(PutBucketRequest: TPutBucketRequest; Config: IClientConfig);
begin
  if PutBucketRequest.UseClientRegion and (PutBucketRequest.BucketRegionName = '') then
  begin
    var regionCode := DetermineBucketRegionCode(Config);
    if regionCode = TS3Constants.REGION_US_EAST_1 then
      regionCode := ''
    else
    if regionCode = TS3Constants.REGION_EU_WEST_1 then
      regionCode := 'EU';

    PutBucketRequest.BucketRegionName := regionCode;
  end;
end;

class procedure TAmazonS3PreMarshallHandler.ProcessPutObjectRequest(PutObjectRequest: TPutObjectRequest);
begin
  if (PutObjectRequest.InputStream <> nil) and not string.IsNullOrEmpty(PutObjectRequest.FilePath) then
    raise EArgumentException.Create('Please specify one of either an InputStream or a FilePath to be PUT as an S3 object');
  if not string.IsNullOrEmpty(putObjectRequest.ContentBody) and not string.IsNullOrEmpty(PutObjectRequest.FilePath) then
    raise EArgumentException.Create('Please specify one of either a FilePath or the ContentBody to be PUT as an S3 object');
  if (PutObjectRequest.InputStream <> nil) and not string.IsNullOrEmpty(PutObjectRequest.ContentBody) then
    raise EArgumentException.Create('Please specify one of either an InputStream or the ContentBody to be PUT as an S3 object');
  if not PutObjectRequest.IsSetContentType then
  begin
    var ext := '';
    if not string.IsNullOrEmpty(PutObjectRequest.FilePath) then
      ext := TAWSSDKUtils.GetExtension(PutObjectRequest.FilePath);
    if string.IsNullOrEmpty(ext) and PutObjectRequest.IsSetKey then
      ext := TAWSSDKUtils.GetExtension(PutObjectRequest.Key);

    if not String.IsNullOrEmpty(ext) then
      PutObjectRequest.ContentType := TAmazonS3Util.MimeTypeFromExtension(ext);
  end;

  if PutObjectRequest.InputStream <> nil then
  begin
    if PutObjectRequest.AutoResetStreamPosition then
      PutObjectRequest.InputStream.Seek(0, soBeginning);
  end;

  if not string.IsNullOrEmpty(PutObjectRequest.FilePath) then
  begin
    PutObjectRequest.InputStream := TFileStream.Create(PutObjectRequest.FilePath, fmOpenRead, fmShareDenyWrite);
    PutObjectRequest.KeepInputStream := False;
    if string.IsNullOrEmpty(PutObjectRequest.Key) then
      PutObjectRequest.Key := TPath.GetFileName(PutObjectRequest.FilePath);
  end
  else
  if PutObjectRequest.InputStream = nil then
  begin
    if string.IsNullOrEmpty(PutObjectRequest.ContentType) then
      PutObjectRequest.ContentType := 'text/plain';

    var payload := TEncoding.UTF8.GetBytes(PutObjectRequest.ContentBody);
    PutObjectRequest.InputStream := TBytesStream.Create(payload);
    PutObjectRequest.KeepInputStream := False;
  end;
end;

class procedure TAmazonS3PreMarshallHandler.ProcessUploadPartRequest(UploadPartRequest: TUploadPartRequest);
begin
  if (UploadPartRequest.InputStream <> nil) and not string.IsNullOrEmpty(UploadPartRequest.FilePath) then
    raise EArgumentException.Create('Please specify one of either a InputStream or a FilePath to be PUT as an S3 object.');
  if UploadPartRequest.FilePath <> '' then
  begin
    var fileStream := TFileStream.Create(UploadPartRequest.FilePath, fmOpenRead, fmShareDenyWrite);
    fileStream.Position := UploadPartRequest.FilePosition;
    UploadPartRequest.InputStream := fileStream;
    UploadPartRequest.KeepInputStream := False;
  end;
end;

end.
