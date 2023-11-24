unit AWS.S3.Transform.GetObjectMetadataRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetObjectMetadataRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IGetObjectMetadataRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetObjectMetadataRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetObjectMetadataRequest>, IGetObjectMetadataRequestMarshaller)
  strict private
    class var FInstance: IGetObjectMetadataRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetObjectMetadataRequest): IRequest; overload;
    class function Instance: IGetObjectMetadataRequestMarshaller; static;
  end;
  
implementation

{ TGetObjectMetadataRequestMarshaller }

function TGetObjectMetadataRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetObjectMetadataRequest(AInput));
end;

function TGetObjectMetadataRequestMarshaller.Marshall(PublicRequest: TGetObjectMetadataRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'HEAD';
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetIfMatch then
    Request.Headers.Add('If-Match', PublicRequest.IfMatch);
  if PublicRequest.IsSetIfModifiedSince then
    Request.Headers.Add('If-Modified-Since', TStringUtils.FromDateTimeToRFC822(PublicRequest.IfModifiedSince));
  if PublicRequest.IsSetIfNoneMatch then
    Request.Headers.Add('If-None-Match', PublicRequest.IfNoneMatch);
  if PublicRequest.IsSetIfUnmodifiedSince then
    Request.Headers.Add('If-Unmodified-Since', TStringUtils.FromDateTimeToRFC822(PublicRequest.IfUnmodifiedSince));
  if PublicRequest.IsSetRange then
    Request.Headers.Add('Range', PublicRequest.Range);
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
  if PublicRequest.IsSetVersionId then
    Request.Parameters.Add('versionId', TStringUtils.Fromstring(PublicRequest.VersionId));
  Request.ResourcePath := '/{Bucket}/{Key+}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TGetObjectMetadataRequestMarshaller.Create;
begin
  FInstance := TGetObjectMetadataRequestMarshaller.Create;
end;

class function TGetObjectMetadataRequestMarshaller.Instance: IGetObjectMetadataRequestMarshaller;
begin
  Result := FInstance;
end;

end.
