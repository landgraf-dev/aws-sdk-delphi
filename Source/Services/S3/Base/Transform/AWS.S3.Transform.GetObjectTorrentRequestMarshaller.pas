unit AWS.S3.Transform.GetObjectTorrentRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetObjectTorrentRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IGetObjectTorrentRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetObjectTorrentRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetObjectTorrentRequest>, IGetObjectTorrentRequestMarshaller)
  strict private
    class var FInstance: IGetObjectTorrentRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetObjectTorrentRequest): IRequest; overload;
    class function Instance: IGetObjectTorrentRequestMarshaller; static;
  end;
  
implementation

{ TGetObjectTorrentRequestMarshaller }

function TGetObjectTorrentRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetObjectTorrentRequest(AInput));
end;

function TGetObjectTorrentRequestMarshaller.Marshall(PublicRequest: TGetObjectTorrentRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('torrent');
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
  Request.ResourcePath := '/{Bucket}/{Key+}';
  Result := Request;
end;

class constructor TGetObjectTorrentRequestMarshaller.Create;
begin
  FInstance := TGetObjectTorrentRequestMarshaller.Create;
end;

class function TGetObjectTorrentRequestMarshaller.Instance: IGetObjectTorrentRequestMarshaller;
begin
  Result := FInstance;
end;

end.
