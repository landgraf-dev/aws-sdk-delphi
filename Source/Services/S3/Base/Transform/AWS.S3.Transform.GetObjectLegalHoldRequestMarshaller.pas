unit AWS.S3.Transform.GetObjectLegalHoldRequestMarshaller;

interface

uses
  System.SysUtils, 
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetObjectLegalHoldRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.Internal.StringUtils, 
  AWS.S3.Exception;

type
  IGetObjectLegalHoldRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetObjectLegalHoldRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetObjectLegalHoldRequest>, IGetObjectLegalHoldRequestMarshaller)
  strict private
    class var FInstance: IGetObjectLegalHoldRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetObjectLegalHoldRequest): IRequest; overload;
    class function Instance: IGetObjectLegalHoldRequestMarshaller; static;
  end;
  
implementation

{ TGetObjectLegalHoldRequestMarshaller }

function TGetObjectLegalHoldRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetObjectLegalHoldRequest(AInput));
end;

function TGetObjectLegalHoldRequestMarshaller.Marshall(PublicRequest: TGetObjectLegalHoldRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('legal-hold');
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

class constructor TGetObjectLegalHoldRequestMarshaller.Create;
begin
  FInstance := TGetObjectLegalHoldRequestMarshaller.Create;
end;

class function TGetObjectLegalHoldRequestMarshaller.Instance: IGetObjectLegalHoldRequestMarshaller;
begin
  Result := FInstance;
end;

end.
