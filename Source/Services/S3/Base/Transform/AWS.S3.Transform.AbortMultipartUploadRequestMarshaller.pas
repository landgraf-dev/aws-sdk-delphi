unit AWS.S3.Transform.AbortMultipartUploadRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.AbortMultipartUploadRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IAbortMultipartUploadRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TAbortMultipartUploadRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TAbortMultipartUploadRequest>, IAbortMultipartUploadRequestMarshaller)
  strict private
    class var FInstance: IAbortMultipartUploadRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TAbortMultipartUploadRequest): IRequest; overload;
    class function Instance: IAbortMultipartUploadRequestMarshaller; static;
  end;
  
implementation

{ TAbortMultipartUploadRequestMarshaller }

function TAbortMultipartUploadRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TAbortMultipartUploadRequest(AInput));
end;

function TAbortMultipartUploadRequestMarshaller.Marshall(PublicRequest: TAbortMultipartUploadRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add('x-amz-request-payer', PublicRequest.RequestPayer.Value);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if not PublicRequest.IsSetKey then
    raise EAmazonS3Exception.Create('Request object does not have required field Key set');
  Request.AddPathResource('{Key+}', TStringUtils.Fromstring(PublicRequest.Key.TrimLeft(['/'])));
  if PublicRequest.IsSetUploadId then
    Request.Parameters.Add('uploadId', TStringUtils.Fromstring(PublicRequest.UploadId));
  Request.ResourcePath := '/{Bucket}/{Key+}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TAbortMultipartUploadRequestMarshaller.Create;
begin
  FInstance := TAbortMultipartUploadRequestMarshaller.Create;
end;

class function TAbortMultipartUploadRequestMarshaller.Instance: IAbortMultipartUploadRequestMarshaller;
begin
  Result := FInstance;
end;

end.
