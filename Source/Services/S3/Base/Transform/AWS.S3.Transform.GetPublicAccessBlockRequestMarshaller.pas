unit AWS.S3.Transform.GetPublicAccessBlockRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetPublicAccessBlockRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetPublicAccessBlockRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetPublicAccessBlockRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetPublicAccessBlockRequest>, IGetPublicAccessBlockRequestMarshaller)
  strict private
    class var FInstance: IGetPublicAccessBlockRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetPublicAccessBlockRequest): IRequest; overload;
    class function Instance: IGetPublicAccessBlockRequestMarshaller; static;
  end;
  
implementation

{ TGetPublicAccessBlockRequestMarshaller }

function TGetPublicAccessBlockRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetPublicAccessBlockRequest(AInput));
end;

function TGetPublicAccessBlockRequestMarshaller.Marshall(PublicRequest: TGetPublicAccessBlockRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('publicAccessBlock');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetPublicAccessBlockRequestMarshaller.Create;
begin
  FInstance := TGetPublicAccessBlockRequestMarshaller.Create;
end;

class function TGetPublicAccessBlockRequestMarshaller.Instance: IGetPublicAccessBlockRequestMarshaller;
begin
  Result := FInstance;
end;

end.
