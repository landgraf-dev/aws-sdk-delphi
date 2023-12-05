unit AWS.S3.Transform.UploadPartRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.UploadPartRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IUploadPartRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TUploadPartRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TUploadPartRequest>, IUploadPartRequestMarshaller)
  strict private
    class var FInstance: IUploadPartRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TUploadPartRequest): IRequest; overload;
    class function Instance: IUploadPartRequestMarshaller; static;
  end;
  
implementation

{ TUploadPartRequestMarshaller }

function TUploadPartRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TUploadPartRequest(AInput));
end;

function TUploadPartRequestMarshaller.Marshall(PublicRequest: TUploadPartRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'PUT';
  if PublicRequest.IsSetContentLength then
    Request.Headers.Add('Content-Length', TStringUtils.FromInt64(PublicRequest.ContentLength));
  if PublicRequest.IsSetContentMD5 then
    Request.Headers.Add('Content-MD5', PublicRequest.ContentMD5);
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add('x-amz-request-payer', PublicRequest.RequestPayer.Value);
  if PublicRequest.IsSetSSECustomerAlgorithm then
    Request.Headers.Add('x-amz-server-side-encryption-customer-algorithm', PublicRequest.SSECustomerAlgorithm);
  if PublicRequest.IsSetSSECustomerKey then
    Request.Headers.Add('x-amz-server-side-encryption-customer-key', PublicRequest.SSECustomerKey);
  if PublicRequest.IsSetSSECustomerKeyMD5 then
    Request.Headers.Add('x-amz-server-side-encryption-customer-key-MD5', PublicRequest.SSECustomerKeyMD5);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if not PublicRequest.IsSetKey then
    raise EAmazonS3Exception.Create('Request object does not have required field Key set');
  Request.AddPathResource('{Key+}', TStringUtils.Fromstring(PublicRequest.Key.TrimLeft(['/'])));
  if PublicRequest.IsSetPartNumber then
    Request.Parameters.Add('partNumber', TStringUtils.FromInteger(PublicRequest.PartNumber));
  if PublicRequest.IsSetUploadId then
    Request.Parameters.Add('uploadId', TStringUtils.Fromstring(PublicRequest.UploadId));
  Request.ResourcePath := '/{Bucket}/{Key+}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TUploadPartRequestMarshaller.Create;
begin
  FInstance := TUploadPartRequestMarshaller.Create;
end;

class function TUploadPartRequestMarshaller.Instance: IUploadPartRequestMarshaller;
begin
  Result := FInstance;
end;

end.
