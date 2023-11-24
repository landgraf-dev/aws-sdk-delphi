unit AWS.S3.Transform.GetObjectLockConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetObjectLockConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetObjectLockConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetObjectLockConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetObjectLockConfigurationRequest>, IGetObjectLockConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetObjectLockConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetObjectLockConfigurationRequest): IRequest; overload;
    class function Instance: IGetObjectLockConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetObjectLockConfigurationRequestMarshaller }

function TGetObjectLockConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetObjectLockConfigurationRequest(AInput));
end;

function TGetObjectLockConfigurationRequestMarshaller.Marshall(PublicRequest: TGetObjectLockConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('object-lock');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetObjectLockConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetObjectLockConfigurationRequestMarshaller.Create;
end;

class function TGetObjectLockConfigurationRequestMarshaller.Instance: IGetObjectLockConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
