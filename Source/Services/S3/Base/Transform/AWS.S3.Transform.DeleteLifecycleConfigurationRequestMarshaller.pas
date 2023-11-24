unit AWS.S3.Transform.DeleteLifecycleConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteLifecycleConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteLifecycleConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteLifecycleConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteLifecycleConfigurationRequest>, IDeleteLifecycleConfigurationRequestMarshaller)
  strict private
    class var FInstance: IDeleteLifecycleConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteLifecycleConfigurationRequest): IRequest; overload;
    class function Instance: IDeleteLifecycleConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteLifecycleConfigurationRequestMarshaller }

function TDeleteLifecycleConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteLifecycleConfigurationRequest(AInput));
end;

function TDeleteLifecycleConfigurationRequestMarshaller.Marshall(PublicRequest: TDeleteLifecycleConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('lifecycle');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeleteLifecycleConfigurationRequestMarshaller.Create;
begin
  FInstance := TDeleteLifecycleConfigurationRequestMarshaller.Create;
end;

class function TDeleteLifecycleConfigurationRequestMarshaller.Instance: IDeleteLifecycleConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
