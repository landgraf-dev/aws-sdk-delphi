unit AWS.S3.Transform.ListPartsRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.ListPartsRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IListPartsRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TListPartsRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TListPartsRequest>, IListPartsRequestMarshaller)
  strict private
    class var FInstance: IListPartsRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TListPartsRequest): IRequest; overload;
    class function Instance: IListPartsRequestMarshaller; static;
  end;
  
implementation

{ TListPartsRequestMarshaller }

function TListPartsRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TListPartsRequest(AInput));
end;

function TListPartsRequestMarshaller.Marshall(PublicRequest: TListPartsRequest): IRequest;
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
  if not PublicRequest.IsSetKey then
    raise EAmazonS3Exception.Create('Request object does not have required field Key set');
  Request.AddPathResource('{Key+}', TStringUtils.Fromstring(PublicRequest.Key.TrimLeft(['/'])));
  if PublicRequest.IsSetMaxParts then
    Request.Parameters.Add('max-parts', TStringUtils.FromInteger(PublicRequest.MaxParts));
  if PublicRequest.IsSetPartNumberMarker then
    Request.Parameters.Add('part-number-marker', TStringUtils.FromInteger(PublicRequest.PartNumberMarker));
  if PublicRequest.IsSetUploadId then
    Request.Parameters.Add('uploadId', TStringUtils.Fromstring(PublicRequest.UploadId));
  Request.ResourcePath := '/{Bucket}/{Key+}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TListPartsRequestMarshaller.Create;
begin
  FInstance := TListPartsRequestMarshaller.Create;
end;

class function TListPartsRequestMarshaller.Instance: IListPartsRequestMarshaller;
begin
  Result := FInstance;
end;

end.
