unit AWS.S3.Transform.ListObjectsV2RequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListObjectsV2Request, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IListObjectsV2RequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListObjectsV2RequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListObjectsV2Request>, IListObjectsV2RequestMarshaller)
  strict private
    class var FInstance: IListObjectsV2RequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListObjectsV2Request): IRequest; overload;
    class function Instance: IListObjectsV2RequestMarshaller; static;
  end;
  
implementation

{ TListObjectsV2RequestMarshaller }

function TListObjectsV2RequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListObjectsV2Request(AInput));
end;

function TListObjectsV2RequestMarshaller.Marshall(PublicRequest: TListObjectsV2Request): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('list-type', '2');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetRequestPayer then
    Request.Headers.Add('x-amz-request-payer', PublicRequest.RequestPayer.Value);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if PublicRequest.IsSetContinuationToken then
    Request.Parameters.Add('continuation-token', TStringUtils.Fromstring(PublicRequest.ContinuationToken));
  if PublicRequest.IsSetDelimiter then
    Request.Parameters.Add('delimiter', TStringUtils.Fromstring(PublicRequest.Delimiter));
  if PublicRequest.IsSetEncodingType then
    Request.Parameters.Add('encoding-type', PublicRequest.EncodingType.Value);
  if PublicRequest.IsSetFetchOwner then
    Request.Parameters.Add('fetch-owner', TStringUtils.FromBoolean(PublicRequest.FetchOwner));
  if PublicRequest.IsSetMaxKeys then
    Request.Parameters.Add('max-keys', TStringUtils.FromInteger(PublicRequest.MaxKeys));
  if PublicRequest.IsSetPrefix then
    Request.Parameters.Add('prefix', TStringUtils.Fromstring(PublicRequest.Prefix));
  if PublicRequest.IsSetStartAfter then
    Request.Parameters.Add('start-after', TStringUtils.Fromstring(PublicRequest.StartAfter));
  Request.ResourcePath := '/{Bucket}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListObjectsV2RequestMarshaller.Create;
begin
  FInstance := TListObjectsV2RequestMarshaller.Create;
end;

class function TListObjectsV2RequestMarshaller.Instance: IListObjectsV2RequestMarshaller;
begin
  Result := FInstance;
end;

end.
