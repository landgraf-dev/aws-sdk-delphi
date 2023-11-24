unit AWS.S3.Transform.GetBucketMetricsConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketMetricsConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketMetricsConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketMetricsConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketMetricsConfigurationRequest>, IGetBucketMetricsConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetBucketMetricsConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketMetricsConfigurationRequest): IRequest; overload;
    class function Instance: IGetBucketMetricsConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketMetricsConfigurationRequestMarshaller }

function TGetBucketMetricsConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketMetricsConfigurationRequest(AInput));
end;

function TGetBucketMetricsConfigurationRequestMarshaller.Marshall(PublicRequest: TGetBucketMetricsConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
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

class constructor TGetBucketMetricsConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetBucketMetricsConfigurationRequestMarshaller.Create;
end;

class function TGetBucketMetricsConfigurationRequestMarshaller.Instance: IGetBucketMetricsConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
