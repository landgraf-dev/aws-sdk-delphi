unit AWS.S3.Transform.ListMultipartUploadsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListMultipartUploadsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IListMultipartUploadsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListMultipartUploadsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListMultipartUploadsRequest>, IListMultipartUploadsRequestMarshaller)
  strict private
    class var FInstance: IListMultipartUploadsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListMultipartUploadsRequest): IRequest; overload;
    class function Instance: IListMultipartUploadsRequestMarshaller; static;
  end;
  
implementation

{ TListMultipartUploadsRequestMarshaller }

function TListMultipartUploadsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListMultipartUploadsRequest(AInput));
end;

function TListMultipartUploadsRequestMarshaller.Marshall(PublicRequest: TListMultipartUploadsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('uploads');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if PublicRequest.IsSetDelimiter then
    Request.Parameters.Add('delimiter', TStringUtils.Fromstring(PublicRequest.Delimiter));
  if PublicRequest.IsSetEncodingType then
    Request.Parameters.Add('encoding-type', PublicRequest.EncodingType.Value);
  if PublicRequest.IsSetKeyMarker then
    Request.Parameters.Add('key-marker', TStringUtils.Fromstring(PublicRequest.KeyMarker));
  if PublicRequest.IsSetMaxUploads then
    Request.Parameters.Add('max-uploads', TStringUtils.FromInteger(PublicRequest.MaxUploads));
  if PublicRequest.IsSetPrefix then
    Request.Parameters.Add('prefix', TStringUtils.Fromstring(PublicRequest.Prefix));
  if PublicRequest.IsSetUploadIdMarker then
    Request.Parameters.Add('upload-id-marker', TStringUtils.Fromstring(PublicRequest.UploadIdMarker));
  Request.ResourcePath := '/{Bucket}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListMultipartUploadsRequestMarshaller.Create;
begin
  FInstance := TListMultipartUploadsRequestMarshaller.Create;
end;

class function TListMultipartUploadsRequestMarshaller.Instance: IListMultipartUploadsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
