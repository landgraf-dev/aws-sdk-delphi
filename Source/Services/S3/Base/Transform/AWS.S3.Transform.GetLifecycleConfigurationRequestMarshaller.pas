unit AWS.S3.Transform.GetLifecycleConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetLifecycleConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetLifecycleConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetLifecycleConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetLifecycleConfigurationRequest>, IGetLifecycleConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetLifecycleConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetLifecycleConfigurationRequest): IRequest; overload;
    class function Instance: IGetLifecycleConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetLifecycleConfigurationRequestMarshaller }

function TGetLifecycleConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetLifecycleConfigurationRequest(AInput));
end;

function TGetLifecycleConfigurationRequestMarshaller.Marshall(PublicRequest: TGetLifecycleConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('lifecycle');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TGetLifecycleConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetLifecycleConfigurationRequestMarshaller.Create;
end;

class function TGetLifecycleConfigurationRequestMarshaller.Instance: IGetLifecycleConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
