unit AWS.S3.Transform.DeleteBucketEncryptionRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketEncryptionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketEncryptionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketEncryptionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketEncryptionRequest>, IDeleteBucketEncryptionRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketEncryptionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketEncryptionRequest): IRequest; overload;
    class function Instance: IDeleteBucketEncryptionRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketEncryptionRequestMarshaller }

function TDeleteBucketEncryptionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketEncryptionRequest(AInput));
end;

function TDeleteBucketEncryptionRequestMarshaller.Marshall(PublicRequest: TDeleteBucketEncryptionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('encryption');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeleteBucketEncryptionRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketEncryptionRequestMarshaller.Create;
end;

class function TDeleteBucketEncryptionRequestMarshaller.Instance: IDeleteBucketEncryptionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
