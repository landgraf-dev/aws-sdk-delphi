unit AWS.S3.Transform.GetBucketReplicationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketReplicationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketReplicationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketReplicationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketReplicationRequest>, IGetBucketReplicationRequestMarshaller)
  strict private
    class var FInstance: IGetBucketReplicationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketReplicationRequest): IRequest; overload;
    class function Instance: IGetBucketReplicationRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketReplicationRequestMarshaller }

function TGetBucketReplicationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketReplicationRequest(AInput));
end;

function TGetBucketReplicationRequestMarshaller.Marshall(PublicRequest: TGetBucketReplicationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('replication');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketReplicationRequestMarshaller.Create;
begin
  FInstance := TGetBucketReplicationRequestMarshaller.Create;
end;

class function TGetBucketReplicationRequestMarshaller.Instance: IGetBucketReplicationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
