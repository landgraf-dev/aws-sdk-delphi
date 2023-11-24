unit AWS.S3.Transform.GetBucketAnalyticsConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.GetBucketAnalyticsConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IGetBucketAnalyticsConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TGetBucketAnalyticsConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TGetBucketAnalyticsConfigurationRequest>, IGetBucketAnalyticsConfigurationRequestMarshaller)
  strict private
    class var FInstance: IGetBucketAnalyticsConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TGetBucketAnalyticsConfigurationRequest): IRequest; overload;
    class function Instance: IGetBucketAnalyticsConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TGetBucketAnalyticsConfigurationRequestMarshaller }

function TGetBucketAnalyticsConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TGetBucketAnalyticsConfigurationRequest(AInput));
end;

function TGetBucketAnalyticsConfigurationRequestMarshaller.Marshall(PublicRequest: TGetBucketAnalyticsConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'GET';
  Request.AddSubResource('analytics');
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

class constructor TGetBucketAnalyticsConfigurationRequestMarshaller.Create;
begin
  FInstance := TGetBucketAnalyticsConfigurationRequestMarshaller.Create;
end;

class function TGetBucketAnalyticsConfigurationRequestMarshaller.Instance: IGetBucketAnalyticsConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
