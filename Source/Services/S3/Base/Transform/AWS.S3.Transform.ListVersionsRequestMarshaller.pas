unit AWS.S3.Transform.ListVersionsRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListVersionsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IListVersionsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListVersionsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListVersionsRequest>, IListVersionsRequestMarshaller)
  strict private
    class var FInstance: IListVersionsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListVersionsRequest): IRequest; overload;
    class function Instance: IListVersionsRequestMarshaller; static;
  end;
  
implementation

{ TListVersionsRequestMarshaller }

function TListVersionsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListVersionsRequest(AInput));
end;

function TListVersionsRequestMarshaller.Marshall(PublicRequest: TListVersionsRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('versions');
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
  if PublicRequest.IsSetMaxKeys then
    Request.Parameters.Add('max-keys', TStringUtils.FromInteger(PublicRequest.MaxKeys));
  if PublicRequest.IsSetPrefix then
    Request.Parameters.Add('prefix', TStringUtils.Fromstring(PublicRequest.Prefix));
  if PublicRequest.IsSetVersionIdMarker then
    Request.Parameters.Add('version-id-marker', TStringUtils.Fromstring(PublicRequest.VersionIdMarker));
  Request.ResourcePath := '/{Bucket}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListVersionsRequestMarshaller.Create;
begin
  FInstance := TListVersionsRequestMarshaller.Create;
end;

class function TListVersionsRequestMarshaller.Instance: IListVersionsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
