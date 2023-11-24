unit AWS.S3.Transform.GetBucketAccelerateConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketAccelerateConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketAccelerateConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketAccelerateConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketAccelerateConfigurationRequest>, IGetBucketAccelerateConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetBucketAccelerateConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketAccelerateConfigurationRequest): IRequest; overload;
    class function Instance: IGetBucketAccelerateConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketAccelerateConfigurationRequestMarshaller }

function TGetBucketAccelerateConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketAccelerateConfigurationRequest(AInput));
end;

function TGetBucketAccelerateConfigurationRequestMarshaller.Marshall(PublicRequest: TGetBucketAccelerateConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('accelerate');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetBucketAccelerateConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetBucketAccelerateConfigurationRequestMarshaller.Create;
end;

class function TGetBucketAccelerateConfigurationRequestMarshaller.Instance: IGetBucketAccelerateConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
