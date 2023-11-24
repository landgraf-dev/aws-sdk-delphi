unit AWS.S3.Transform.ListObjectsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListObjectsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IListObjectsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListObjectsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListObjectsRequest>, IListObjectsRequestMarshaller)
  strict private
    class var FInstance: IListObjectsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListObjectsRequest): IRequest; overload;
    class function Instance: IListObjectsRequestMarshaller; static;
  end;
  
implementation

{ TListObjectsRequestMarshaller }

function TListObjectsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListObjectsRequest(AInput));
end;

function TListObjectsRequestMarshaller.Marshall(PublicRequest: TListObjectsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add('x-amz-request-payer', PublicRequest.RequestPayer.Value);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if PublicRequest.IsSetDelimiter then
    Request.Parameters.Add('delimiter', TStringUtils.Fromstring(PublicRequest.Delimiter));
  if PublicRequest.IsSetEncodingType then
    Request.Parameters.Add('encoding-type', PublicRequest.EncodingType.Value);
  if PublicRequest.IsSetMarker then
    Request.Parameters.Add('marker', TStringUtils.Fromstring(PublicRequest.Marker));
  if PublicRequest.IsSetMaxKeys then
    Request.Parameters.Add('max-keys', TStringUtils.FromInteger(PublicRequest.MaxKeys));
  if PublicRequest.IsSetPrefix then
    Request.Parameters.Add('prefix', TStringUtils.Fromstring(PublicRequest.Prefix));
  Request.ResourcePath := '/{Bucket}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListObjectsRequestMarshaller.Create;
begin
  FInstance := TListObjectsRequestMarshaller.Create;
end;

class function TListObjectsRequestMarshaller.Instance: IListObjectsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
