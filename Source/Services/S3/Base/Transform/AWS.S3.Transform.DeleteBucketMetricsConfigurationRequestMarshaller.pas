unit AWS.S3.Transform.DeleteBucketMetricsConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketMetricsConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketMetricsConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketMetricsConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketMetricsConfigurationRequest>, IDeleteBucketMetricsConfigurationRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketMetricsConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketMetricsConfigurationRequest): IRequest; overload;
    class function Instance: IDeleteBucketMetricsConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketMetricsConfigurationRequestMarshaller }

function TDeleteBucketMetricsConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketMetricsConfigurationRequest(AInput));
end;

function TDeleteBucketMetricsConfigurationRequestMarshaller.Marshall(PublicRequest: TDeleteBucketMetricsConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
  Request.AddSubResource('metrics');
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

class constructor TDeleteBucketMetricsConfigurationRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketMetricsConfigurationRequestMarshaller.Create;
end;

class function TDeleteBucketMetricsConfigurationRequestMarshaller.Instance: IDeleteBucketMetricsConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
