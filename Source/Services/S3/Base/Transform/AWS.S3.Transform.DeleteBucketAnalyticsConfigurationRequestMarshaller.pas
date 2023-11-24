unit AWS.S3.Transform.DeleteBucketAnalyticsConfigurationRequestMarshaller;

interface

uses
  AWS.Internal.Request, 
  AWS.Transform.RequestMarshaller, 
  AWS.Runtime.Model, 
  AWS.S3.Model.DeleteBucketAnalyticsConfigurationRequest, 
  AWS.Internal.DefaultRequest, 
  AWS.S3.Exception, 
  AWS.Internal.StringUtils;

type
  IDeleteBucketAnalyticsConfigurationRequestMarshaller = IMarshaller<IRequest, TAmazonWebServiceRequest>;
  
  TDeleteBucketAnalyticsConfigurationRequestMarshaller = class(TInterfacedObject, IMarshaller<IRequest, TDeleteBucketAnalyticsConfigurationRequest>, IDeleteBucketAnalyticsConfigurationRequestMarshaller)
  strict private
    class var FInstance: IDeleteBucketAnalyticsConfigurationRequestMarshaller;
    class constructor Create;
  public
    function Marshall(AInput: TAmazonWebServiceRequest): IRequest; overload;
    function Marshall(PublicRequest: TDeleteBucketAnalyticsConfigurationRequest): IRequest; overload;
    class function Instance: IDeleteBucketAnalyticsConfigurationRequestMarshaller; static;
  end;
  
implementation

{ TDeleteBucketAnalyticsConfigurationRequestMarshaller }

function TDeleteBucketAnalyticsConfigurationRequestMarshaller.Marshall(AInput: TAmazonWebServiceRequest): IRequest;
begin
  Result := Marshall(TDeleteBucketAnalyticsConfigurationRequest(AInput));
end;

function TDeleteBucketAnalyticsConfigurationRequestMarshaller.Marshall(PublicRequest: TDeleteBucketAnalyticsConfigurationRequest): IRequest;
var
  Request: IRequest;
begin
  Request := TDefaultRequest.Create(PublicRequest, 'Amazon.S3');
  Request.HttpMethod := 'DELETE';
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

class constructor TDeleteBucketAnalyticsConfigurationRequestMarshaller.Create;
begin
  FInstance := TDeleteBucketAnalyticsConfigurationRequestMarshaller.Create;
end;

class function TDeleteBucketAnalyticsConfigurationRequestMarshaller.Instance: IDeleteBucketAnalyticsConfigurationRequestMarshaller;
begin
  Result := FInstance;
end;

end.
