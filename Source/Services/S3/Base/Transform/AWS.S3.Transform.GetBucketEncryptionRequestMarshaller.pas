unit AWS.S3.Transform.GetBucketEncryptionRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketEncryptionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketEncryptionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketEncryptionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketEncryptionRequest>, IGetBucketEncryptionRequestMarshaller)
  strict private
    class var FInstance: IGetBucketEncryptionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketEncryptionRequest): IRequest; overload;
    class function Instance: IGetBucketEncryptionRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketEncryptionRequestMarshaller }

function TGetBucketEncryptionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketEncryptionRequest(AInput));
end;

function TGetBucketEncryptionRequestMarshaller.Marshall(PublicRequest: TGetBucketEncryptionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('encryption');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketEncryptionRequestMarshaller.Create;
begin
  FInstance := TGetBucketEncryptionRequestMarshaller.Create;
end;

class function TGetBucketEncryptionRequestMarshaller.Instance: IGetBucketEncryptionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
