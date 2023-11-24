unit AWS.S3.Transform.DeleteCORSConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteCORSConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteCORSConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteCORSConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteCORSConfigurationRequest>, IDeleteCORSConfigurationRequestMarshaller)
  strict private
    class var FInstance: IDeleteCORSConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteCORSConfigurationRequest): IRequest; overload;
    class function Instance: IDeleteCORSConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteCORSConfigurationRequestMarshaller }

function TDeleteCORSConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteCORSConfigurationRequest(AInput));
end;

function TDeleteCORSConfigurationRequestMarshaller.Marshall(PublicRequest: TDeleteCORSConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('cors');
  if PublicRequest.IsSetExpectedBucketOwner then
    Request.Headers.Add('x-amz-expected-bucket-owner', PublicRequest.ExpectedBucketOwner);
  if not PublicRequest.IsSetBucketName then
    raise EAmazonS3Exception.Create('Request object does not have required field BucketName set');
  Request.AddPathResource('{Bucket}', TStringUtils.Fromstring(PublicRequest.BucketName));
  Request.ResourcePath := '/{Bucket}';
  Result := Request;
end;

class constructor TDeleteCORSConfigurationRequestMarshaller.Create;
begin
  FInstance := TDeleteCORSConfigurationRequestMarshaller.Create;
end;

class function TDeleteCORSConfigurationRequestMarshaller.Instance: IDeleteCORSConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
