unit AWS.S3.Transform.GetObjectRetentionRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetObjectRetentionRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IGetObjectRetentionRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetObjectRetentionRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetObjectRetentionRequest>, IGetObjectRetentionRequestMarshaller)
  strict private
    class var FInstance: IGetObjectRetentionRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetObjectRetentionRequest): IRequest; overload;
    class function Instance: IGetObjectRetentionRequestMarshaller; static;
  end;
  
implementation

{ TGetObjectRetentionRequestMarshaller }

function TGetObjectRetentionRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetObjectRetentionRequest(AInput));
end;

function TGetObjectRetentionRequestMarshaller.Marshall(PublicRequest: TGetObjectRetentionRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('retention');
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

class constructor TGetObjectRetentionRequestMarshaller.Create;
begin
  FInstance := TGetObjectRetentionRequestMarshaller.Create;
end;

class function TGetObjectRetentionRequestMarshaller.Instance: IGetObjectRetentionRequestMarshaller;
begin
  Result := FInstance;
end;

end.
