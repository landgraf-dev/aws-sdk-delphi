unit AWS.S3.Transform.DeleteObjectRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteObjectRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IDeleteObjectRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteObjectRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteObjectRequest>, IDeleteObjectRequestMarshaller)
  strict private
    class var FInstance: IDeleteObjectRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteObjectRequest): IRequest; overload;
    class function Instance: IDeleteObjectRequestMarshaller; static;
  end;
  
implementation

{ TDeleteObjectRequestMarshaller }

function TDeleteObjectRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteObjectRequest(AInput));
end;

function TDeleteObjectRequestMarshaller.Marshall(PublicRequest: TDeleteObjectRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  if PublicRequest.IsSetBypassGovernanceRetention then
    Request.Headers.Add('x-amz-bypass-governance-retention', TStringUtils.FromBoolean(PublicRequest.BypassGovernanceRetention));
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if PublicRequest.IsSetMFA then
    Request.Headers.Add('x-amz-mfa', PublicRequest.MFA);
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

class constructor TDeleteObjectRequestMarshaller.Create;
begin
  FInstance := TDeleteObjectRequestMarshaller.Create;
end;

class function TDeleteObjectRequestMarshaller.Instance: IDeleteObjectRequestMarshaller;
begin
  Result := FInstance;
end;

end.
