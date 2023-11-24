unit AWS.S3.Transform.GetObjectTaggingRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetObjectTaggingRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IGetObjectTaggingRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetObjectTaggingRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetObjectTaggingRequest>, IGetObjectTaggingRequestMarshaller)
  strict private
    class var FInstance: IGetObjectTaggingRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetObjectTaggingRequest): IRequest; overload;
    class function Instance: IGetObjectTaggingRequestMarshaller; static;
  end;
  
implementation

{ TGetObjectTaggingRequestMarshaller }

function TGetObjectTaggingRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetObjectTaggingRequest(AInput));
end;

function TGetObjectTaggingRequestMarshaller.Marshall(PublicRequest: TGetObjectTaggingRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('tagging');
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
  if PublicRequest.IsSetVersionId then
    Request.Parameters.Add('versionId', TStringUtils.Fromstring(PublicRequest.VersionId));
  Request.ResourcePath := '/{Bucket}/{Key+}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TGetObjectTaggingRequestMarshaller.Create;
begin
  FInstance := TGetObjectTaggingRequestMarshaller.Create;
end;

class function TGetObjectTaggingRequestMarshaller.Instance: IGetObjectTaggingRequestMarshaller;
begin
  Result := FInstance;
end;

end.
