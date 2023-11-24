unit AWS.S3.Transform.GetCORSConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetCORSConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetCORSConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetCORSConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetCORSConfigurationRequest>, IGetCORSConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetCORSConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetCORSConfigurationRequest): IRequest; overload;
    class function Instance: IGetCORSConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetCORSConfigurationRequestMarshaller }

function TGetCORSConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetCORSConfigurationRequest(AInput));
end;

function TGetCORSConfigurationRequestMarshaller.Marshall(PublicRequest: TGetCORSConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('cors');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetCORSConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetCORSConfigurationRequestMarshaller.Create;
end;

class function TGetCORSConfigurationRequestMarshaller.Instance: IGetCORSConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
