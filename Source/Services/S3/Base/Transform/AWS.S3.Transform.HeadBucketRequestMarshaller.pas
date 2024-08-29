unit AWS.S3.Transform.HeadBucketRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.HeadBucketRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IHeadBucketRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  THeadBucketRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, THeadBucketRequest>, IHeadBucketRequestMarshaller)
  strict private
    class var FInstance: IHeadBucketRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: THeadBucketRequest): IRequest; overload;
    class function Instance: IHeadBucketRequestMarshaller; static;
  end;
  
implementation

{ THeadBucketRequestMarshaller }

function THeadBucketRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(THeadBucketRequest(AInput));
end;

function THeadBucketRequestMarshaller.Marshall(PublicRequest: THeadBucketRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'HEAD';
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor THeadBucketRequestMarshaller.Create;
begin
  FInstance := THeadBucketRequestMarshaller.Create;
end;

class function THeadBucketRequestMarshaller.Instance: IHeadBucketRequestMarshaller;
begin
  Result := FInstance;
end;

end.
