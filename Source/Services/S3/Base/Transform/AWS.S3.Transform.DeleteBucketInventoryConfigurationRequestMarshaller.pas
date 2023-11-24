unit AWS.S3.Transform.DeleteBucketInventoryConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketInventoryConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketInventoryConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketInventoryConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketInventoryConfigurationRequest>, IDeleteBucketInventoryConfigurationRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketInventoryConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketInventoryConfigurationRequest): IRequest; overload;
    class function Instance: IDeleteBucketInventoryConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketInventoryConfigurationRequestMarshaller }

function TDeleteBucketInventoryConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketInventoryConfigurationRequest(AInput));
end;

function TDeleteBucketInventoryConfigurationRequestMarshaller.Marshall(PublicRequest: TDeleteBucketInventoryConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
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

class constructor TDeleteBucketInventoryConfigurationRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketInventoryConfigurationRequestMarshaller.Create;
end;

class function TDeleteBucketInventoryConfigurationRequestMarshaller.Instance: IDeleteBucketInventoryConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
