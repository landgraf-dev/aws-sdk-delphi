unit AWS.S3.Transform.DeletePublicAccessBlockRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeletePublicAccessBlockRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeletePublicAccessBlockRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeletePublicAccessBlockRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeletePublicAccessBlockRequest>, IDeletePublicAccessBlockRequestMarshaller)
  strict private
    class var FInstance: IDeletePublicAccessBlockRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeletePublicAccessBlockRequest): IRequest; overload;
    class function Instance: IDeletePublicAccessBlockRequestMarshaller; static;
  end;
  
implementation

{ TDeletePublicAccessBlockRequestMarshaller }

function TDeletePublicAccessBlockRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeletePublicAccessBlockRequest(AInput));
end;

function TDeletePublicAccessBlockRequestMarshaller.Marshall(PublicRequest: TDeletePublicAccessBlockRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('publicAccessBlock');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeletePublicAccessBlockRequestMarshaller.Create;
begin
  FInstance := TDeletePublicAccessBlockRequestMarshaller.Create;
end;

class function TDeletePublicAccessBlockRequestMarshaller.Instance: IDeletePublicAccessBlockRequestMarshaller;
begin
  Result := FInstance;
end;

end.
