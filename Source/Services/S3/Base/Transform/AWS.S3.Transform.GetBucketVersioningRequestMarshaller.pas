unit AWS.S3.Transform.GetBucketVersioningRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketVersioningRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketVersioningRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketVersioningRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketVersioningRequest>, IGetBucketVersioningRequestMarshaller)
  strict private
    class var FInstance: IGetBucketVersioningRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketVersioningRequest): IRequest; overload;
    class function Instance: IGetBucketVersioningRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketVersioningRequestMarshaller }

function TGetBucketVersioningRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketVersioningRequest(AInput));
end;

function TGetBucketVersioningRequestMarshaller.Marshall(PublicRequest: TGetBucketVersioningRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('versioning');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketVersioningRequestMarshaller.Create;
begin
  FInstance := TGetBucketVersioningRequestMarshaller.Create;
end;

class function TGetBucketVersioningRequestMarshaller.Instance: IGetBucketVersioningRequestMarshaller;
begin
  Result := FInstance;
end;

end.
