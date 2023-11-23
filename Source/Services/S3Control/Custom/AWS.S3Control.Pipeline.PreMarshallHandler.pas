unit AWS.S3Control.Pipeline.PreMarshallHandler;

interface

uses
  AWS.Arn,
  AWS.Internal.PipelineHandler,
  AWS.Runtime.Contexts,
  AWS.Internal.Request,
  AWS.S3Control.Model.CreateAccessPointRequest,
  AWS.S3Control.Internal.S3ArnUtils,
  AWS.S3Control.Internal.S3OutpostResource,
  AWS.S3Control.Internal.S3Resource;

type
  TAmazonS3ControlPreMarshallHandler = class(TPipelineHandler)
  strict private
    class procedure ProcessPreRequestHandlers(AExecutionContext: TExecutionContext); static;
  strict protected
    procedure PreInvoke(AExecutionContext: TExecutionContext);
  public
    procedure InvokeSync(AExecutionContext: TExecutionContext); override;
  end;

implementation

{ TAmazonS3ControlPreMarshallHandler }

procedure TAmazonS3ControlPreMarshallHandler.InvokeSync(AExecutionContext: TExecutionContext);
begin
  PreInvoke(AExecutionContext);
  inherited InvokeSync(AExecutionContext);
end;

procedure TAmazonS3ControlPreMarshallHandler.PreInvoke(AExecutionContext: TExecutionContext);
begin
  ProcessPreRequestHandlers(AExecutionContext);
end;

class procedure TAmazonS3ControlPreMarshallHandler.ProcessPreRequestHandlers(AExecutionContext: TExecutionContext);
begin
  var request := AExecutionContext.RequestContext.OriginalRequest;

  if not (request is TCreateAccessPointRequest) then Exit;

  // For CreateAccessPoint, the bucket needs to be extracted from the Arn before
  // it is added to the request payload. Setting outpost id so that the header isn't
  // lost in the case of an outpost request
  var createAccessPointRequest := request as TCreateAccessPointRequest;
  var arn: TArn;
  if createAccessPointRequest.IsSetBucket and TArn.TryParse(createAccessPointRequest.Bucket, arn) then
  begin
    var s3Resource: IS3Resource := nil;
    if TS3ArnUtils.IsOutpostArn(arn) then
      s3Resource := TS3ArnUtils.ParseOutpost(arn);

    if s3Resource <> nil then
    begin
      createAccessPointRequest.OutpostId := (s3Resource as TS3OutpostResource).OutpostId;
      createAccessPointRequest.Bucket := s3Resource.Name;
      if createAccessPointRequest.AccountId = '' then
        createAccessPointRequest.AccountId := arn.AccountId;
    end;
  end;
end;

end.
