unit AWS.S3.Transform.DeleteBucketReplicationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketReplicationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketReplicationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketReplicationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketReplicationRequest>, IDeleteBucketReplicationRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketReplicationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketReplicationRequest): IRequest; overload;
    class function Instance: IDeleteBucketReplicationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketReplicationRequestMarshaller }

function TDeleteBucketReplicationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketReplicationRequest(AInput));
end;

function TDeleteBucketReplicationRequestMarshaller.Marshall(PublicRequest: TDeleteBucketReplicationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('replication');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeleteBucketReplicationRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketReplicationRequestMarshaller.Create;
end;

class function TDeleteBucketReplicationRequestMarshaller.Instance: IDeleteBucketReplicationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
