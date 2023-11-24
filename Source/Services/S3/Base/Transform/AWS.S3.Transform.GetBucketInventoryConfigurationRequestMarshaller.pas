unit AWS.S3.Transform.GetBucketInventoryConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketInventoryConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketInventoryConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketInventoryConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketInventoryConfigurationRequest>, IGetBucketInventoryConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetBucketInventoryConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketInventoryConfigurationRequest): IRequest; overload;
    class function Instance: IGetBucketInventoryConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketInventoryConfigurationRequestMarshaller }

function TGetBucketInventoryConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketInventoryConfigurationRequest(AInput));
end;

function TGetBucketInventoryConfigurationRequestMarshaller.Marshall(PublicRequest: TGetBucketInventoryConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('inventory');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  if PublicRequest.IsSetId then
    Request.Parameters.Add('id', TStringUtils.Fromstring(PublicRequest.Id));
  Request.ResourcePath := '/{Bucket}';
  Request.UseQueryString := True;
  Result := Request;
end;

class constructor TGetBucketInventoryConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetBucketInventoryConfigurationRequestMarshaller.Create;
end;

class function TGetBucketInventoryConfigurationRequestMarshaller.Instance: IGetBucketInventoryConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
